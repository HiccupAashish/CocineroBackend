class AddAvatarToChefs < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :avatar, :string
  end
end
