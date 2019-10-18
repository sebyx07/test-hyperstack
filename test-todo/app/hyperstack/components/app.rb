class App < HyperComponent
  include Hyperstack::Router
  render(SECTION) do
    Header()
    Index()
    Footer()
  end
end

