class Review < ActiveRecord::Base
  acts_as_voteable
  
  attr_accessible :body, :code_submission_id, :user_id, :vote_count
  
  validates_presence_of :body
  
  belongs_to :code_submission
  belongs_to :user
  has_many :comments
  
end
