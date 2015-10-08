class Student < ActiveRecord::Base
  belongs_to :parent
  has_many :grades
  belongs_to :teacher
  has_secure_password

end
