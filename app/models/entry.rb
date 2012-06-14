require 'open-uri'
class Entry < ActiveRecord::Base
  attr_accessible :url, :title
  before_save :fetch_title

  def fetch_title
    html = open(self.url).read
    match = html.match(/<title>(.*)<\/title>/)
    title = match[1]
    title.encode(Encoding::UTF_8)
    self.title = title
  end

end
