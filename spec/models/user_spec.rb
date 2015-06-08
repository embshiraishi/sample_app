require 'rails_helper'

RSpec.describe User, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
  before { @user = User.new(name: "", email: "user@example.com") }
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it {should be_valid }

  describe "when name is not presence" do
    before { @user.name = " " }
    it { should_not be_valid }
  end
end
