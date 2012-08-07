require 'spec_helper'

describe Review do
  
  it { should validate_presence_of :body }
  it { should belong_to :user }
  it { should belong_to :code_submission }
  
end
