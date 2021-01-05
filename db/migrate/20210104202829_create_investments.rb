class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.string :description
      t.integer :amount
      t.references :user, null: false, foreign_key: {on_delete: :cascade}
      t.references :business, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
