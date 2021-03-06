require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it { expect(subject).to belong_to :student }
  it { expect(subject).to belong_to :course }

  it { expect(subject).to validate_presence_of :student_id }
  it { expect(subject).to validate_presence_of :course_id }

  describe 'entry_at' do
    let(:classroom) { create(:classroom) }

    it { expect(classroom.entry_at).to_not be_nil }
  end
end
