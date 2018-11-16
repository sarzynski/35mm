require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject { described_class.new }

  it "is valid with valid descriptin attribute" do
    subject.description = "asfasfasf"
    expect(subject).to be_valid
  end

  it "is not valid with not valid description attribute" do
    subject.description = "a"*201
    expect(subject).to_not be_valid
  end

end
