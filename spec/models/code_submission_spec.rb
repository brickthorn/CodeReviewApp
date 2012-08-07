require 'spec_helper'

describe CodeSubmission do
  
  it { should validate_presence_of :url }
  it { should respond_to :description }
  # it { should belong_to :user}
  
end
