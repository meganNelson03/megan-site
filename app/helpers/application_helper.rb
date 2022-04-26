module ApplicationHelper

    def get_project_image(project)
        unless project.image_file.present?
            return asset_path "circuits-rtol.svg"
        end

        begin
            return project.image_file.url
        rescue
            return asset_path "circuits-rtol.svg"
        end
    end

end
