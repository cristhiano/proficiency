require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it { expect(subject).to belong_to :student }
  it { expect(subject).to belong_to :course }

  it { expect(subject).to validate_presence_of :student_id }
  it { expect(subject).to validate_presence_of :course_id }
  it { expect(subject).to validate_presence_of :entry_at }
end
