class App < HyperComponent
  include Hyperstack::Router
  render do
    DIV do

      # define routes using the Route psuedo component.  Examples:
      # Route('/foo', mounts: Foo)                : match the path beginning with /foo and mount component Foo here
      # Route('/foo') { Foo(...) }                : display the contents of the block
      # Route('/', exact: true, mounts: Home)     : match the exact path / and mount the Home component
      # Route('/user/:id/name', mounts: UserName) : path segments beginning with a colon will be captured in the match param
      # see the hyper-router gem documentation for more details

      H1 { "Hello world from Hyperstack!" }
      UL do
        Todo.all.each_with_index do |todo, i|
          LI do
            SPAN { todo.title + todo.id.to_s }
          end
        end
      end
    end
  end
end

