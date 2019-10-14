class ProjectsController < ApplicationController
  expose_decorated(:projects, collection: true, decorator: ProjectsDecorator) { Project.all }
end
