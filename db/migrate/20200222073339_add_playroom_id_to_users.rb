class AddPlayroomIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :playroom_id, :integer
  end
end
