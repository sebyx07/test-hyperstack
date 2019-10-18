class Index < HyperComponent
  include Hyperstack::Router::Helpers
  before_mount { @new_todo = Todo.new }

  render(SECTION, class: "todo-list") do
    UL do
      Todo.send(match.params[:scope]).each do |todo|
        TodoItem(todo: todo)
      end
    end

    EditItem(todo: @new_todo, class: "new-todo").on(:saved) do |e|
      mutate @new_todo = Todo.new
    end
  end
end