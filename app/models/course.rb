class Course < ActiveRecord::Base
  has_many :classrooms

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :status, presence: true
end
