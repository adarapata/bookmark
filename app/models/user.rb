class User < ActiveRecord::Base
  attr_accessible :id, :lastupdate, :name, :pass
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :pass, presence: true
end
