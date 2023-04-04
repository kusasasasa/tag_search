class AddAddressToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :address, :string
  end
end
