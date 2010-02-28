class Submission < ActiveRecord::Base
  has_many :graded_components
  belongs_to :user
end
