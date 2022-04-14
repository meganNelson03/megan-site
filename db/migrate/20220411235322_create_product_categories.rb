class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :projects, :categories do |t|
      t.index [:project_id, :category_id]
    end
  end
end
