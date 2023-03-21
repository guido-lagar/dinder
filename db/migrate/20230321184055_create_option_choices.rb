class CreateOptionChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :option_choices do |t|
      t.references :options, null: false, foreign_key: true
      t.references :choices, null: false, foreign_key: true
      t.timestamps
    end
  end
end
