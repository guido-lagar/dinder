class CreateOptionChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :option_choices do |t|
      t.references :option, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true
      t.timestamps
    end
  end
end
