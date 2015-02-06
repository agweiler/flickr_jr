class CreatePhotosMigration < ActiveRecord::Migration
  def change
      create_table :photos do |p|
      p.string :file
      p.integer :album_id
      p.timestamps null: false
    end

  end
end
