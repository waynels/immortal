require 'test_helper'

class ChipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chip = chips(:one)
  end

  test "should get index" do
    get chips_url
    assert_response :success
  end

  test "should get new" do
    get new_chip_url
    assert_response :success
  end

  test "should create chip" do
    assert_difference('Chip.count') do
      post chips_url, params: { chip: { amount: @chip.amount, shikigami_id: @chip.shikigami_id, status: @chip.status, user_id: @chip.user_id } }
    end

    assert_redirected_to chip_url(Chip.last)
  end

  test "should show chip" do
    get chip_url(@chip)
    assert_response :success
  end

  test "should get edit" do
    get edit_chip_url(@chip)
    assert_response :success
  end

  test "should update chip" do
    patch chip_url(@chip), params: { chip: { amount: @chip.amount, shikigami_id: @chip.shikigami_id, status: @chip.status, user_id: @chip.user_id } }
    assert_redirected_to chip_url(@chip)
  end

  test "should destroy chip" do
    assert_difference('Chip.count', -1) do
      delete chip_url(@chip)
    end

    assert_redirected_to chips_url
  end
end
