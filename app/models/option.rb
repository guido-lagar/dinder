class Option < ApplicationRecord
  has_one_attached :photo
  has_many :option_choices, foreign_key: :option_id
  has_many :choices, through: :option_choices
end
