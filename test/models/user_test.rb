require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "test", email: "testr@test.com",
                 password: "foobar", password_confirmation: "foobar")
  end

  test "vaild" do
    assert @user.valid?
  end

  test "名前がからじゃないか？" do
    @user.name = "   "
    assert_not @user.valid?
  end

  test "emailがからじゃないか？" do
    @user.email = "   "
    assert_not @user.valid?
  end

  test "名前長さ？" do
    @user.name = "a"*10
    assert @user.valid?
  end

  test "名前が10以上" do
    @user.name = "a"*11
    assert_not @user.valid?
  end

  test "emailの長さ" do
    @user.email = "a"*87+ "@exsample.com"
    assert @user.valid?
  end

  test "emailの長さ101" do
    @user.email = "a"*88+ "@exsample.com"
    assert_not @user.valid?
  end










end
