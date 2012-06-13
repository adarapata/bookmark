require 'open-uri'
class Bookmarks < ActiveRecord::Base
  attr_accessible :comment, :entry_id, :title, :user_id
  belongs_to :entry

  validates :entry_id, presence: true
  validates :user_id, presence: true
  validates :title, presence: true
  
  def fetch_title(url)
   
    length = "<title>".length
    str = open(url).read
    top = str.index("<title>") + length
    bottum = str.index("</title>")
    
    self.title = str.slice(top,bottum-top)
  end

end
