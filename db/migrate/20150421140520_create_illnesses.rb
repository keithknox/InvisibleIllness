class CreateIllnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :name
      t.text :statistics
      t.text :quote
      t.text :blurb
      t.string :charity_name
      t.text :charity_url

      t.timestamps null: false
    end
  end
end
