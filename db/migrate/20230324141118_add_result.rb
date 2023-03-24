class AddResult < ActiveRecord::Migration[7.0]
  def change
    add_column :choices, :result, :integer
  end
end
