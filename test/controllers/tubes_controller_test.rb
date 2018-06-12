require 'test_helper'

class TubesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tube = tubes(:one)
  end

  test "should get index" do
    get tubes_url
    assert_response :success
  end

  test "should get new" do
    get new_tube_url
    assert_response :success
  end

  test "should create tube" do
    assert_difference('Tube.count') do
      post tubes_url, params: { tube: { title: @tube.title, transcript: @tube.transcript } }
    end

    assert_redirected_to tube_url(Tube.last)
  end

  test "should show tube" do
    get tube_url(@tube)
    assert_response :success
  end

  test "should get edit" do
    get edit_tube_url(@tube)
    assert_response :success
  end

  test "should update tube" do
    patch tube_url(@tube), params: { tube: { title: @tube.title, transcript: @tube.transcript } }
    assert_redirected_to tube_url(@tube)
  end

  test "should destroy tube" do
    assert_difference('Tube.count', -1) do
      delete tube_url(@tube)
    end

    assert_redirected_to tubes_url
  end
end
