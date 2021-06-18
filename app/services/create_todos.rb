class CreateTodos
    attr_reader :title, :description, :completed

    def initialize(todo = {})
        @title       = todo[:title]
        @description = todo[:description]
        @completed   = todo[:completed]
    end

    def call
        create_todo
    end

    private

    def create_todo
        p '*** Creating new todo ***'
        Todo.find_or_create_by!(title: title) do |todo|
            todo.assign_attributes(
                description: description,
                completed: completed
            )
        end
    end


end