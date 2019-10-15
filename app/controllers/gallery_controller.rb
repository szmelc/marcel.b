class GalleryController < ApplicationController
  expose(:photos) { GalleryPhoto.all }
end
