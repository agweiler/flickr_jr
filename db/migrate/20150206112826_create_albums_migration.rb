class CreateAlbumsMigration < ActiveRecord::Migration
  def change
       create_table :albums do |p|
         p.string :title
         p.integer :user_id

         p.timestamps null: false
    end
  end
end
