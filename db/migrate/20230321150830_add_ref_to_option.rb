class AddRefToOption < ActiveRecord::Migration[7.0]
  def change
    add_reference :options, :choice, foreign_key: true
  end
end
