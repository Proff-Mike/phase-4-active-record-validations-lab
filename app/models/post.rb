class Post < ApplicationRecord
  validates :title, presense: true
  validates :content, length: { minimum 250 }
  validates :summary, lenght: { maximum 250 }
  validate :must_contain_wont_believe, :must_contain_secret, 
           :must_contain_top_number, :must_contain_guess
  
  def must_contain_wont_believe
    if title.present?
  end
end
