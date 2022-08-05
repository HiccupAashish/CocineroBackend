class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :password_digest
      t.string :bio
      t.string :avatar

      t.timestamps
    end
  end
end
