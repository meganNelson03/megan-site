class AddFieldsToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :active, :boolean, default: false
    add_column :projects, :description, :text
  end
end
