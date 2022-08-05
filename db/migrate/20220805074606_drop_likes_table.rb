class DropLikesTable < ActiveRecord::Migration[6.1]
  def up   
     drop_table :likes 
  end  
  def down   
     raise ActiveRecord::IrreversibleMigration 
   end
end
