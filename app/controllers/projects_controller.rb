class ProjectsController < ApplicationController

    def index
        @categories = Category.all
        
        if params[:categories].present?
            @projects = Project.where(
                            id: Project.joins(:categories).where(categories: {id: params[:categories]})
                            ).where(active: true)
        else
            @projects = Project.where(active: true)
        end

        @projects = @projects.order(order: :asc)

        respond_to do |format|
            format.html 
            format.js { render 'filter' }
        end
    end

    def show
        respond_to do |format|
            format.js { render 'show' }
        end
    end

    # AJAX Actions
    def update_filters
        @categories = Category.all
        @filters_html = render_to_string(partial: 'filters', locals: {categories: @categories, selected: params[:categories] })

        render json: { 
                       filters_partial: @filters_html
                    }
    end

    def toggle_all
        @categories = Category.all
        @filters_html = render_to_string(partial: 'toggle_all', locals: {categories: @categories })

        render json: { 
                       filters_partial: @filters_html
                    }
    end
    
end
