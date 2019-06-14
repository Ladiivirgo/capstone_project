require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Capstone Project"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Capstone Project"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Capstone Project"
  end
end