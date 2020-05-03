class AlbumsController < ApplicationController
  expose_decorated(:albums, collection: true, decorator: AlbumsDecorator) { Album.all }
end
