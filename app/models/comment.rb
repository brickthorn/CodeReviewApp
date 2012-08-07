class Comment < ActiveRecord::Base
  attr_accessible :body, :review_id, :user_id
  
  validates_presence_of :body
  
  belongs_to :review
  
end
