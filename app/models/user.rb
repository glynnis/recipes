class User < ActiveRecord::Base
  has_many :recipes

  #t.string first_name
  #t.string last_name
  #t.string email
end
