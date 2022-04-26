class Project < ApplicationRecord
    mount_uploader :image_file, ImageUploader
    has_and_belongs_to_many :categories

    validates :order, numericality: { other_than: -1 }

    def categories
        self.category_ids
    end

    
end
