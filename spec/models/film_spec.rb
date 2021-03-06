require 'rails_helper'

describe Film do
  it { should validate_presence_of :title }
  it { should validate_presence_of :url }
  it { should validate_presence_of :description }
  it { should have_many :comments }
end
