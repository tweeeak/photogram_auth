class Photo < ActiveRecord::Base
  #validates :user_id, :presence => true This works, but the association validation is better
  validates :user, :presence => true

  belongs_to :user
  #Make it destroy dependents on delete
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
end
