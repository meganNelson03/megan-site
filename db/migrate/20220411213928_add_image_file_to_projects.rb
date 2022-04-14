class AddImageFileToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :image_file, :string
  end
end
