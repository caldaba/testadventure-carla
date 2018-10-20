require "application_system_test_case"

class AdventuesTest < ApplicationSystemTestCase
  setup do
    @adventue = adventues(:one)
  end

  test "visiting the index" do
    visit adventues_url
    assert_selector "h1", text: "Adventues"
  end

  test "creating a Adventue" do
    visit adventues_url
    click_on "New Adventue"

    fill_in "Carla", with: @adventue.carla
    click_on "Create Adventue"

    assert_text "Adventue was successfully created"
    click_on "Back"
  end

  test "updating a Adventue" do
    visit adventues_url
    click_on "Edit", match: :first

    fill_in "Carla", with: @adventue.carla
    click_on "Update Adventue"

    assert_text "Adventue was successfully updated"
    click_on "Back"
  end

  test "destroying a Adventue" do
    visit adventues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adventue was successfully destroyed"
  end
end
