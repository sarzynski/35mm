require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject { described_class.new}

  it "is not valid with too long camera attribute" do
    subject.film = "aggea"
    subject.camera = "a"*201
    expect(subject).to_not be_valid
  end

  it "is not valid with too long film attribute" do
    subject.film = "a"*201
    subject.camera = "asrg"
    expect(subject).to_not be_valid
  end
end
