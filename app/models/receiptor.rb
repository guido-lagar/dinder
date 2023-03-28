class Receiptor < ApplicationRecord
  belongs_to :user
  belongs_to :choice

  validates :name, presence: true
  validates :email, presence: true
end
