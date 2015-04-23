class ChangeDefaultValOnPeople < ActiveRecord::Migration
  def change
    change_column :people, :user_submitted, :boolean, default: true
  end
end
