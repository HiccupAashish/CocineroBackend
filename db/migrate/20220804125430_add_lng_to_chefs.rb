class AddLngToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :lng, :string
  end
end
