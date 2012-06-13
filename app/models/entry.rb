class Entry < ActiveRecord::Base
  attr_accessible :url, :title



  def fetch_title
    
    length = "<title>".length
    str = open(self.url).read
    top = str.index("<title>") + length
    bottum = str.index("</title>")
    
    self.title = str.slice(top,bottum-top)
  end

end
