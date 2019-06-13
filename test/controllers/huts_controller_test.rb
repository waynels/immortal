require 'test_helper'

class HutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hut = huts(:one)
  end

  test "should get index" do
    get huts_url
    assert_response :success
  end

  test "should get new" do
    get new_hut_url
    assert_response :success
  end

  test "should create hut" do
    assert_difference('Hut.count') do
      post huts_url, params: { hut: { level: @hut.level, name: @hut.name } }
    end

    assert_redirected_to hut_url(Hut.last)
  end

  test "should show hut" do
    get hut_url(@hut)
    assert_response :success
  end

  test "should get edit" do
    get edit_hut_url(@hut)
    assert_response :success
  end

  test "should update hut" do
    patch hut_url(@hut), params: { hut: { level: @hut.level, name: @hut.name } }
    assert_redirected_to hut_url(@hut)
  end

  test "should destroy hut" do
    assert_difference('Hut.count', -1) do
      delete hut_url(@hut)
    end

    assert_redirected_to huts_url
  end
end
