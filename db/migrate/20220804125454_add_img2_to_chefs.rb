class AddImg2ToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :img2, :string
  end
end
