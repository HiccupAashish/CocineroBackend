class AddEmailToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :email, :string
  end
end
