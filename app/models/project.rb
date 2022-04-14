class Project < ApplicationRecord
    mount_uploader :image_file, ImageUploader
    has_and_belongs_to_many :categories

    def categories
        self.category_ids
    end
end
