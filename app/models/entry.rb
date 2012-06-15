require 'open-uri'
require 'nkf'
class Entry < ActiveRecord::Base
  attr_accessible :url, :title
  before_save :fetch_title

  def fetch_title
    html = open(self.url).read
    match = html.match(/<title>(.*)<\/title>/)
    self.title = NKF.nkf("-m0 -w", match[1])
  end

end
