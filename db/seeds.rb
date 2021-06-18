todos = [
    {
      title: 'Laundry',
      description: 'Do both towels and clothes. Need this done by Friday.'
    },
    {
      title: 'Workout',
      description: 'Cardio: run. Weight: Leg day.'
    },
    {
      title: 'Go to Grocery Store',
      description: 'Need to pick up breakfast items for the week and dinner for tonight.'
    },
    {
      title: 'Finish Todo App',
      description: 'Need to finish building my rails api todo app!'
    },
  ]
  
  todos.each do |todo| 
    Todo.find_or_create_by(title: todo[:title]) do |obj| 
      obj.assign_attributes(description: todo[:description])
    end
  end