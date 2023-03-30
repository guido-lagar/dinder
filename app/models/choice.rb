class Choice < ApplicationRecord
  belongs_to :user
  has_many :option_choices
  has_many :options, through: :option_choices
  has_many :receiptors
end
