require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.camera = "asfasfasf"
    subject.film = "asfasfasf"
    expect(subject).to be_valid
  end
end
