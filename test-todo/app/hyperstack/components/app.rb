class App < HyperComponent
  include Hyperstack::Router
  render(SECTION, class: "todo-app") do
    Header()
    Route('/', exact: true) { Redirect('/all') }
    Route('/:scope', mounts: Index)
    Footer()
  end
end

