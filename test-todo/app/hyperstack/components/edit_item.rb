class EditItem < HyperComponent
  param :todo
  fires :saved
  fires :cancel
  other :etc

  after_mount { focus }

  render do
    INPUT(etc, defaultValue: todo.title, key: todo).on(:enter) do |e|
      todo.update(title: e.target.value )
      saved!
    end.on(:blur) { cancel! }
  end

  def focus
    jQ[dom_node].focus
  end
end