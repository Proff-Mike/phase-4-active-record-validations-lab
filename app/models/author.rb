class Author < ApplicationRecord
  validates :name, presense: uniqueness:  true
  validates :phone_number, length: { maximum: 10 }
end
