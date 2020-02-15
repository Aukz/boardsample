require 'rails_helper'

RSpec.describe User, type: :model do

  it "isn't less than 1 character" do
      user = User.new
      expect(user).not_to be_valid
    end

    it "ミニテスト変換" do
      user = User.new(name: "test", email: "testr@test.com",
                   password: "foobar", password_confirmation: "foobar")
      user.name = " "
      expect(user).not_to be_valid             
    end
end
