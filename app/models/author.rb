class Author < ApplicationRecord
  validates :name, presense: true
  validates :name, uniqueness: true
  validates :phone_number, length: { maximum: 10 }
end
