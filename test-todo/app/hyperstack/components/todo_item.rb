class TodoItem < HyperComponent
  param :todo

  render(LI) do
    input
    todo.full_name
  end

  def input
    INPUT(type: :checkbox, checked: todo.completed).on(:change) do
      todo.update(completed: !todo.completed)
    end
  end
end