class AddPlayroomIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :playroom_id, :integer
  end
end
