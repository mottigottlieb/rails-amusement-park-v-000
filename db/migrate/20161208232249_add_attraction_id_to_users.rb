class AddAttractionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attraction_id, :integer
  end
end
