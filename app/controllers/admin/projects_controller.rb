class Admin::ProjectsController < AdminController
    before_action :set_project, only: %i[ show edit update destroy]
    before_action :set_categories, only: %i[ new edit ]

    def index
        @projects = Project.all
    end

    def show
    end

    def new
        @project = Project.new
    end

    def edit
    end

    def create 
        @project = Project.new(project_params)

        if @project.save
            redirect_to admin_projects_path
        end
    end

    def update
        if @project.update(project_params)
            redirect_to admin_projects_path
        else
            render 'edit'
        end
    end

    def destroy
        @project.destroy
        redirect_to admin_projects_path
    end

    private
        def set_project
            @project = Project.find(params[:id])
        end

        def set_categories
            @categories = Category.all
        end

        def project_params
            params.require(:project).permit(:name, :category_ids => [])
        end

end