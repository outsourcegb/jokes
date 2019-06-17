require 'test_helper'

class JokesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joke = jokes(:one)
  end

  test "should get index" do
    get jokes_url
    assert_response :success
  end

  test "should get new" do
    get new_joke_url
    assert_response :success
  end

  test "should create joke" do
    assert_difference('Joke.count') do
      post jokes_url, params: { joke: { active: @joke.active, content: @joke.content, pub_date: @joke.pub_date, user_id: @joke.user_id } }
    end

    assert_redirected_to joke_url(Joke.last)
  end

  test "should show joke" do
    get joke_url(@joke)
    assert_response :success
  end

  test "should get edit" do
    get edit_joke_url(@joke)
    assert_response :success
  end

  test "should update joke" do
    patch joke_url(@joke), params: { joke: { active: @joke.active, content: @joke.content, pub_date: @joke.pub_date, user_id: @joke.user_id } }
    assert_redirected_to joke_url(@joke)
  end

  test "should destroy joke" do
    assert_difference('Joke.count', -1) do
      delete joke_url(@joke)
    end

    assert_redirected_to jokes_url
  end
end
