class AddDrawerGuesserToPlayrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :playrooms, :drawer, :integer
    add_column :playrooms, :guesser, :integer
  end
end
