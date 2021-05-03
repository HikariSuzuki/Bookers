require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get def" do
    get books_def_url
    assert_response :success
  end

  test "should get new" do
    get books_new_url
    assert_response :success
  end

end
