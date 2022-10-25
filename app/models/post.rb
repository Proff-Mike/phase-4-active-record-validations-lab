class Post < ApplicationRecord
  VALID_ATTRIBUTES = ("Fiction", "Non-Fiction")
  validates :title, presense: true
  validates :content, length: { minimum 250 }
  validates :summary, lenght: { maximum 250 }
  validates_inclusion_of :category, in => VALID_ATTRIBUTES
  validate :must_contain_wont_believe, :must_contain_secret, 
           :must_contain_top_number, :must_contain_guess
  
  def must_contain_wont_believe
    if title.present?
  end
end
