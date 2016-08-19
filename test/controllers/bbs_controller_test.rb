require 'test_helper'

class BbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bb = bbs(:one)
  end

  test "should get index" do
    get bbs_url
    assert_response :success
  end

  test "should get new" do
    get new_bb_url
    assert_response :success
  end

  test "should create bb" do
    assert_difference('Bb.count') do
      post bbs_url, params: { bb: { body: @bb.body, name: @bb.name } }
    end

    assert_redirected_to bb_url(Bb.last)
  end

  test "should show bb" do
    get bb_url(@bb)
    assert_response :success
  end

  test "should get edit" do
    get edit_bb_url(@bb)
    assert_response :success
  end

  test "should update bb" do
    patch bb_url(@bb), params: { bb: { body: @bb.body, name: @bb.name } }
    assert_redirected_to bb_url(@bb)
  end

  test "should destroy bb" do
    assert_difference('Bb.count', -1) do
      delete bb_url(@bb)
    end

    assert_redirected_to bbs_url
  end
end
