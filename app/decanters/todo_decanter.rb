class TodoDecanter < Decanter::Base
    strict true
    
    input :completed, :boolean
    input :title, :string
    input :description, :string
end