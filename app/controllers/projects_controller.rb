class ProjectsController < ApplicationController

    def index
        projects = Project.all 
        render json: projects
    end

    def show
        project = Project.find_by(id: params[:id])
        render json: project
    end

    def create
        new_project = Project.create!(project_params)
        render json: new_project, status: :created
    end

    def update
        update_project = Project.find_by(id: params[:id])
        update_project.update!(project_params)
        render json: update_project
    end

    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy
    end


    private

    def project_params
        params.permit(:project_name, :project_languages, :project_description, :project_cover,:project_images, :id, :project)
    end
    
end
