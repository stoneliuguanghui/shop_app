require "application_system_test_case"

class OldsTest < ApplicationSystemTestCase
  setup do
    @old = olds(:one)
  end

  test "visiting the index" do
    visit olds_url
    assert_selector "h1", text: "Olds"
  end

  test "creating a Old" do
    visit olds_url
    click_on "New Old"

    click_on "Create Old"

    assert_text "Old was successfully created"
    click_on "Back"
  end

  test "updating a Old" do
    visit olds_url
    click_on "Edit", match: :first

    click_on "Update Old"

    assert_text "Old was successfully updated"
    click_on "Back"
  end

  test "destroying a Old" do
    visit olds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Old was successfully destroyed"
  end
end
