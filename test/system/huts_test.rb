require "application_system_test_case"

class HutsTest < ApplicationSystemTestCase
  setup do
    @hut = huts(:one)
  end

  test "visiting the index" do
    visit huts_url
    assert_selector "h1", text: "Huts"
  end

  test "creating a Hut" do
    visit huts_url
    click_on "New Hut"

    fill_in "Level", with: @hut.level
    fill_in "Name", with: @hut.name
    click_on "Create Hut"

    assert_text "Hut was successfully created"
    click_on "Back"
  end

  test "updating a Hut" do
    visit huts_url
    click_on "Edit", match: :first

    fill_in "Level", with: @hut.level
    fill_in "Name", with: @hut.name
    click_on "Update Hut"

    assert_text "Hut was successfully updated"
    click_on "Back"
  end

  test "destroying a Hut" do
    visit huts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hut was successfully destroyed"
  end
end
