class AddDrawToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :draw, :boolean
  end
end
