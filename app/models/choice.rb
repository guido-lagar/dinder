class Choice < ApplicationRecord
  belongs_to :user
  has_many :option_choices
  has_many :receiptors

  def options
    Option.where(id: OptionChoice.where(choice: self).pluck(:option_id))
  end
end
