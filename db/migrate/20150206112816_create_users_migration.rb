class CreateUsersMigration < ActiveRecord::Migration
  def change
       create_table :users do |p|
         p.string :name
         p.string :email
         p.string :password

         p.timestamps null: false
    end
  end
end
