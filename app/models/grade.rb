class Grade < ActiveRecord::Base
  belongs_to :student
  has_many :assignments
end
