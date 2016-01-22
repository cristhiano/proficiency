class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates :course_id, presence: true
  validates :student_id, presence: true, uniqueness: {
    scope: :course_id,
    message: 'Este aluno já pertence a este curso'
  }

  before_create do
    self.entry_at = Time.now
  end
end
