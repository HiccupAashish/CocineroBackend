class AddImagesToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :images, :string
  end
end
