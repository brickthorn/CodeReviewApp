class CodeSubmission < ActiveRecord::Base
  acts_as_voteable
  
  attr_accessible :description, :url, :user_id, :language, :title, :vote_count
  
  validates_presence_of :url, :description, :language, :title
  validates_format_of :url, with: /https:\/\/(gist.github|github)/i
  
  has_many :reviews
  belongs_to :user
  
  # accepts_nested_attributes_for :reviews


end


