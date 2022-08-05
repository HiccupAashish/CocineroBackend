class AddColumnsToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :bio1, :text
    add_column :chefs, :bio2, :text
    # add_column :chefs, :address, :string
    # add_column :chefs, :lat, :string
    # add_column :chefs, :lng, :string
    # add_column :chefs, :img1, :string
    # add_column :chefs, :img2, :string
    # add_column :chefs, :img3, :string
  end
end
