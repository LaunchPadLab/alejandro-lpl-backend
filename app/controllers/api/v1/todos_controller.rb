class Api::V1::TodosController < ApiController
    include RailsUtil::JsonHelper

    def index
        todos = Todo.in_order_by_created_at
        json_with todos
    end
end
