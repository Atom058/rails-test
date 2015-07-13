require 'test_helper'

class PeopleSignupTest < ActionDispatch::IntegrationTest
  test "invalid user added through form" do
    get signup_path
    assert_no_difference "Person.count" do
      post people_path, person: {
        name: "",
        email: "user@invalid",
        password: "foo",
        password_confirmation: "bar"
      }
    end
    assert_template 'people/new'
  end

  test "valid user added through form" do
    get signup_path
    assert_difference "Person.count", 1 do
      post_via_Redirect people_path, person: {
        name: "Example User",
        email: "user@example.com",
        password: "password",
        passwor_confirmation: "password"
      }
    end
    assert_template 'people/show'
  end

end
