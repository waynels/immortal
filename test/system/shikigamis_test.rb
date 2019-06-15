require "application_system_test_case"

class ShikigamisTest < ApplicationSystemTestCase
  setup do
    @shikigami = shikigamis(:one)
  end

  test "visiting the index" do
    visit shikigamis_url
    assert_selector "h1", text: "Shikigamis"
  end

  test "creating a Shikigami" do
    visit shikigamis_url
    click_on "New Shikigami"

    fill_in "Level", with: @shikigami.level
    check "Limited" if @shikigami.limited
    fill_in "Name", with: @shikigami.name
    click_on "Create Shikigami"

    assert_text "Shikigami was successfully created"
    click_on "Back"
  end

  test "updating a Shikigami" do
    visit shikigamis_url
    click_on "Edit", match: :first

    fill_in "Level", with: @shikigami.level
    check "Limited" if @shikigami.limited
    fill_in "Name", with: @shikigami.name
    click_on "Update Shikigami"

    assert_text "Shikigami was successfully updated"
    click_on "Back"
  end

  test "destroying a Shikigami" do
    visit shikigamis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shikigami was successfully destroyed"
  end
end
