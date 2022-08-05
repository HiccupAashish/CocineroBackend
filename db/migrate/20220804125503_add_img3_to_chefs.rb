class AddImg3ToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :img3, :string
  end
end
