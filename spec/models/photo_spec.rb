require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.camera = "asfasfasf"
    subject.film = "asfasfasf"
    expect(subject).to be_valid
  end

  it "is not valid with too long camera attribute" do
    subject.camera = "a"*201
    subject.film = "asfasfasf"
    expect(subject).to_not be_valid
  end

  it "is not valid with too long film attribute" do
    subject.camera = "asfasf"
    subject.film = "a"*201
    expect(subject).to_not be_valid
  end
end
