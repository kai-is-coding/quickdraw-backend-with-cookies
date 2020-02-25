class CreateDraws < ActiveRecord::Migration[5.2]
  def change
    create_table :draws do |t|
      t.text :data

      t.timestamps
    end
  end
end
