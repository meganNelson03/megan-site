class Category < ApplicationRecord
    has_and_belongs_to_many :projects

    def format_category_by_id(id)
        Category.find(id).name ||= "N/A"
    end

end
