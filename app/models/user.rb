class User < ActiveRecord::Base
  attr_accessible :id, :lastupdate, :name, :pass
end
