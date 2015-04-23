class AddColumnsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :title, :text
    add_column :people, :user_submitted, :boolean
    add_column :people, :city, :string
  end
end
