class AddOrderToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :order, :integer, default: -1
  end
end
