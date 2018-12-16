class ChangeBusinessColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :businesses, :takes_reservations
    add_column :businesses, :takes_reservations, :string
    remove_column :businesses, :take_out
    add_column :businesses, :take_out, :string
    remove_column :businesses, :delivery
    add_column :businesses, :delivery, :string
    remove_column :businesses, :credit_card
    add_column :businesses, :credit_card, :string
    remove_column :businesses, :bike_parking
    add_column :businesses, :bike_parking, :string
    remove_column :businesses, :free_wifi
    add_column :businesses, :free_wifi, :string
    remove_column :businesses, :pets_allowed
    add_column :businesses, :pets_allowed, :string
    remove_column :businesses, :wheelchair_accessible
    add_column :businesses, :wheelchair_accessible, :string
    remove_column :businesses, :good_for_kids
    add_column :businesses, :good_for_kids, :string
    remove_column :businesses, :good_for_groups
    add_column :businesses, :good_for_groups, :string
    remove_column :businesses, :outdoor_seating
    add_column :businesses, :outdoor_seating, :string
    remove_column :businesses, :caters
    add_column :businesses, :caters, :string
  end
end
