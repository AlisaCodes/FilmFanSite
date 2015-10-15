class Comment <ActiveRecord::Base
  belongs_to :film
  validates :name, :post, :presence => true
end
