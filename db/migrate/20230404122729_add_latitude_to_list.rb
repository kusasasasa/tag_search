class AddLatitudeToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :latitude, :float
  end
end
