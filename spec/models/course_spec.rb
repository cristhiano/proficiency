require 'rails_helper'

RSpec.describe Course, type: :model do
  it { expect(subject).to have_many :classrooms }

  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to validate_presence_of :description }
  it { expect(subject).to validate_presence_of :status }
  it { expect(subject).to validate_uniqueness_of :name }
end
