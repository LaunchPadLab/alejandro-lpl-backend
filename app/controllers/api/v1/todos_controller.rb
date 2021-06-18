class Api::V1::TodosController < ApiController
    include RailsUtil::JsonHelper

    def index
        todos = Todo.in_order_by_created_at
        json_with todos
    end

    def create
        logger.debug todo_params
        todo = create_todo_service(todo_params).call
        json_with todo
    end

    def show
        todo = Todo.find(params[:id])
        json_with todo
    end

    def update
        todo = Todo.find(params[:id])
        todo.update(todo_params)
        json_with todo
    end

    private

    def todo_params
        @todo_params ||= TodoDecanter.decant(params[:todo])
    end

    def create_todo_service(args = {})
        CreateTodos.new(args)
    end
end
