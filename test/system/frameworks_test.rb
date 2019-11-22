require "application_system_test_case"

class FrameworksTest < ApplicationSystemTestCase
  setup do
    @framework = frameworks(:one)
  end

  test "visiting the index" do
    visit frameworks_url
    assert_selector "h1", text: "Frameworks"
  end

  test "creating a Framework" do
    visit frameworks_url
    click_on "New Framework"

    fill_in "Title", with: @framework.title
    click_on "Create Framework"

    assert_text "Framework was successfully created"
    click_on "Back"
  end

  test "updating a Framework" do
    visit frameworks_url
    click_on "Edit", match: :first

    fill_in "Title", with: @framework.title
    click_on "Update Framework"

    assert_text "Framework was successfully updated"
    click_on "Back"
  end

  test "destroying a Framework" do
    visit frameworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Framework was successfully destroyed"
  end
end
