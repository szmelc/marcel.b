class AlbumsController < ApplicationController
  expose_decorated(:albums, collection: true, decorator: AlbumsDecorator) do
    Album.order(order: :asc)
  end
end
