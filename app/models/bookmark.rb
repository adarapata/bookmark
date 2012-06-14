require 'open-uri'
class Bookmark < ActiveRecord::Base
  attr_accessible :comment, :entry_id, :user_id
  belongs_to :entry

  validates :entry_id, presence: true
  validates :user_id, presence: true
 
end
