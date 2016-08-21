class Bb < ApplicationRecord
  validates :name,
    presence: true,
    length: { maximum: 14 }
  validates :body,
    presence: true,
    length: { maximum: 200 }
  validates :hostname,
    presence: true
end
