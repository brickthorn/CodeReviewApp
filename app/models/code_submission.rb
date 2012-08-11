class CodeSubmission < ActiveRecord::Base
  attr_accessible :description, :url, :user_id
  
  validates_presence_of :url, :description
  
  has_many :reviews
  belongs_to :user
  
  # accepts_nested_attributes_for :reviews
end
