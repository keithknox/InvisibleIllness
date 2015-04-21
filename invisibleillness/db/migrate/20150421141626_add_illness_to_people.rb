class AddIllnessToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :illness
  end
end
