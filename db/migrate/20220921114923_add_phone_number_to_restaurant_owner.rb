class AddPhoneNumberToRestaurantOwner < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_owners, :contact, :string
    rename_column :restaurant_owners, :type, :food_type
  end
end
