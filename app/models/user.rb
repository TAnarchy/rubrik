class User < ActiveRecord::Base
  has_many :Submissions
end
