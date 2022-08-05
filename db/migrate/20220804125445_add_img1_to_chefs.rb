class AddImg1ToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :img1, :string
  end
end
