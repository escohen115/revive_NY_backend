class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :industry
      t.string :address
      t.string :phone_number
      t.string :website
      t.integer :goal
      t.integer :amount_raised
      t.string :picture

      t.timestamps
    end
  end
end
