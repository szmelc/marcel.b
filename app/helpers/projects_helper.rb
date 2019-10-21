module ProjectsHelper
  def project_photo_style(photo)
    "background-image: url(#{photo.picture.url(:medium)})"
  end
end
