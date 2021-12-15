require "application_system_test_case"

class DocunetsTest < ApplicationSystemTestCase
  setup do
    @docunet = docunets(:one)
  end

  test "visiting the index" do
    visit docunets_url
    assert_selector "h1", text: "Docunets"
  end

  test "creating a Docunet" do
    visit docunets_url
    click_on "New Docunet"

    fill_in "Name document", with: @docunet.name_document
    fill_in "Note", with: @docunet.note
    fill_in "Second column", with: @docunet.second_column
    click_on "Create Docunet"

    assert_text "Docunet was successfully created"
    click_on "Back"
  end

  test "updating a Docunet" do
    visit docunets_url
    click_on "Edit", match: :first

    fill_in "Name document", with: @docunet.name_document
    fill_in "Note", with: @docunet.note
    fill_in "Second column", with: @docunet.second_column
    click_on "Update Docunet"

    assert_text "Docunet was successfully updated"
    click_on "Back"
  end

  test "destroying a Docunet" do
    visit docunets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Docunet was successfully destroyed"
  end
end
