class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments

    with_options presence: true do
     validates :title
     validates :text
    end
    
  def self.search(search)
   if search !=""
    Tweet.where('text LIKE(?)', "%#{search}%")
   else
     Tweet.all
   end
  end
end
