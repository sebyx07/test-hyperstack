class TodoItem < HyperComponent
  param :todo

  render(LI, class: "todo-item") do
    toggle_complete_todo
    name_todo
    remove_todo
  end

  def toggle_complete_todo
    INPUT(type: :checkbox, class: :toggle, checked: todo.completed).on(:change) do
      todo.update(completed: !todo.completed)
    end
  end

  def name_todo
    if @editing
      EditItem(todo: todo).on(:saved, :cancel) { mutate @editing = false }
    else
      SPAN { @Todo.full_name }.on(:click) { mutate @editing = true }
    end
  end

  def remove_todo
    A { "-X-" }.on(:click) { todo.destroy }
  end
end