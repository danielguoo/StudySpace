require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar", 
      major: "computer science", gradyear: 2019, bio: "four score and seven years ago....", facebook: "")
  end

  test "should be valid" do
    assert @user.valid?
  end
  test "name should be present (non blank)" do
  	@user.name = " " * 50
    assert_not @user.valid?
  end
  test "email should be present(non blank)" do
    @user.email = " " * 255
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "facebook should not be too long" do
    @user.facebook = "a" * 256
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end


  test "major should be present (non blank)" do
    @user.major = " " * 25
    assert_not @user.valid?
  end
  test "major should not be too long" do
    @user.major = "a" * 26
    assert_not @user.valid?
  end

  test "gradyear should be present" do
    @user.gradyear = " " * 4
    assert_not @user.valid?
  end

  test "gradyear should not be too short" do
    @user.gradyear = "a" * 3
    assert_not @user.valid?
  end

  test "gradyear validation should accept valid addresses" do
    valid_years = %w[2019 2012 1979 ]
    valid_years.each do |v|
      @user.gradyear = v
      assert @user.valid?, "#{v.inspect} should be valid"
    end
  end

  test "gradyear validation should reject invalid addresses" do
    invalid_years = %w[1949 2050 2027]
    invalid_years.each do |v|
      @user.gradyear = v
      assert_not @user.valid?, "#{v.inspect} should be invalid"
    end
  end

  test "bio should be present" do
    invalid = " " * 250
    @user.bio = invalid
    assert_not @user.valid?, "#{invalid.inspect} should be invalid"
  end

  test "bio should not be too long" do
    @user.bio = "a" * 251
    assert_not @user.valid?
  end

end
