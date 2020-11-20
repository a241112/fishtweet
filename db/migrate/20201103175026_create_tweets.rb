class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :type_name , null: false
      t.datetime :datetime , null: false
      t.integer :quantity_id , null: false
      t.integer :size_id , null: false
      t.integer :weather_id , null: false
      t.integer :wind_id 
      t.string :feed , null: false
      t.string :address , null: false
      t.float :latitude , null: false
      t.float :longitude , null: false
      t.text :description 
      t.integer :user_id , null: false , foreign_key: true
      t.timestamps
    end
  end
end
