class Person < ActiveRecord::Base
  has_many :links
  
  validates_presence_of :name
  
end
