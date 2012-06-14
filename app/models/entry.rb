class Entry < ActiveRecord::Base
  attr_accessible :url, :title

  def fetch_title

    html = open(self.url).read
    match = html.match(/<title>(.*)<\/title>/)
    self.title = match[1]
  end

end
