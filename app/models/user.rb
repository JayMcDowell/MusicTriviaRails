class User < ActiveRecord::Base
  attr_accessible :initials
  has_many :answers
end
