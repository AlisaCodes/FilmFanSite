class Film < ActiveRecord::Base
  has_many :comments
  validates :title, :url, :description, :presence => true
end
