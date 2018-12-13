class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :biz_name, null: false
      t.integer :price, null: false
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.float :lat, null: false
      t.float :lng, null: false
      t.integer :rating, null: false
      t.text :hours, null: false
      t.text :business_info, null: false
      t.string :phone_number
      t.string :website
      t.boolean :takes_reservations, default: false, null: false
      t.boolean :take_out, default: false, null: false
      t.boolean :delivery, default: false, null: false
      t.boolean :credit_card, default: false, null: false
      t.boolean :bike_parking, default: false, null: false
      t.boolean :free_wifi, default: false, null: false
      t.boolean :pets_allowed, default: false, null: false
      t.boolean :wheelchair_accessible, default: false, null: false
      t.boolean :good_for_kids, default: false, null: false
      t.boolean :good_for_groups, default: false, null: false
      t.boolean :outdoor_seating, default: false, null: false
      t.boolean :caters, default: false, null: false
      t.integer :owner_id, null: false
      t.timestamps
    end
    add_index :businesses, :biz_name
    add_index :businesses, :address_1, unique: true
    add_index :businesses, :city
    add_index :businesses, :state
    add_index :businesses, :zipcode
    add_index :businesses, :owner_id
  end
end
