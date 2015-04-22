class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :image_url
      t.text :video_url
      t.text :story
      t.string :charity_name
      t.text :charity_url
      t.text :personal_website

      t.timestamps null: false
    end
  end
end
