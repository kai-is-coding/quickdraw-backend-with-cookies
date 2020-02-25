class AddPlayroomIdNameToDraws < ActiveRecord::Migration[5.2]
  def change
    add_column :draws, :playroom_id, :integer
    add_column :draws, :name, :string
  end
end
