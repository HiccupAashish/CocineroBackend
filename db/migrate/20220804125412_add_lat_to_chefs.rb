class AddLatToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :lat, :string
  end
end
