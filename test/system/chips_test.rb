require "application_system_test_case"

class ChipsTest < ApplicationSystemTestCase
  setup do
    @chip = chips(:one)
  end

  test "visiting the index" do
    visit chips_url
    assert_selector "h1", text: "Chips"
  end

  test "creating a Chip" do
    visit chips_url
    click_on "New Chip"

    fill_in "Amount", with: @chip.amount
    fill_in "Shikigami", with: @chip.shikigami_id
    fill_in "Status", with: @chip.status
    fill_in "User", with: @chip.user_id
    click_on "Create Chip"

    assert_text "Chip was successfully created"
    click_on "Back"
  end

  test "updating a Chip" do
    visit chips_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @chip.amount
    fill_in "Shikigami", with: @chip.shikigami_id
    fill_in "Status", with: @chip.status
    fill_in "User", with: @chip.user_id
    click_on "Update Chip"

    assert_text "Chip was successfully updated"
    click_on "Back"
  end

  test "destroying a Chip" do
    visit chips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chip was successfully destroyed"
  end
end
