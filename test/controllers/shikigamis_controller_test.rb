require 'test_helper'

class ShikigamisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shikigami = shikigamis(:one)
  end

  test "should get index" do
    get shikigamis_url
    assert_response :success
  end

  test "should get new" do
    get new_shikigami_url
    assert_response :success
  end

  test "should create shikigami" do
    assert_difference('Shikigami.count') do
      post shikigamis_url, params: { shikigami: { level: @shikigami.level, limited: @shikigami.limited, name: @shikigami.name } }
    end

    assert_redirected_to shikigami_url(Shikigami.last)
  end

  test "should show shikigami" do
    get shikigami_url(@shikigami)
    assert_response :success
  end

  test "should get edit" do
    get edit_shikigami_url(@shikigami)
    assert_response :success
  end

  test "should update shikigami" do
    patch shikigami_url(@shikigami), params: { shikigami: { level: @shikigami.level, limited: @shikigami.limited, name: @shikigami.name } }
    assert_redirected_to shikigami_url(@shikigami)
  end

  test "should destroy shikigami" do
    assert_difference('Shikigami.count', -1) do
      delete shikigami_url(@shikigami)
    end

    assert_redirected_to shikigamis_url
  end
end
