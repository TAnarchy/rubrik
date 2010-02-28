class Submission < ActiveRecord::Base
  has_many :GradedComponents
  belongs_to :User
end
