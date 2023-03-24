class CreateReceiptors < ActiveRecord::Migration[7.0]
  def change
    create_table :receiptors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
