require "application_system_test_case"

class PiplesTest < ApplicationSystemTestCase
  setup do
    @piple = piples(:one)
  end

  test "visiting the index" do
    visit piples_url
    assert_selector "h1", text: "Piples"
  end

  test "creating a Piple" do
    visit piples_url
    click_on "New Piple"

    fill_in "Beardth date", with: @piple.beardth_date
    fill_in "Customer", with: @piple.customer_id
    fill_in "Email", with: @piple.email
    fill_in "First name", with: @piple.first_name
    fill_in "Last name", with: @piple.last_name
    fill_in "Other date", with: @piple.other_date
    fill_in "Parens name", with: @piple.parens_name
    fill_in "Phone", with: @piple.phone
    fill_in "Sex", with: @piple.sex
    click_on "Create Piple"

    assert_text "Piple was successfully created"
    click_on "Back"
  end

  test "updating a Piple" do
    visit piples_url
    click_on "Edit", match: :first

    fill_in "Beardth date", with: @piple.beardth_date
    fill_in "Customer", with: @piple.customer_id
    fill_in "Email", with: @piple.email
    fill_in "First name", with: @piple.first_name
    fill_in "Last name", with: @piple.last_name
    fill_in "Other date", with: @piple.other_date
    fill_in "Parens name", with: @piple.parens_name
    fill_in "Phone", with: @piple.phone
    fill_in "Sex", with: @piple.sex
    click_on "Update Piple"

    assert_text "Piple was successfully updated"
    click_on "Back"
  end

  test "destroying a Piple" do
    visit piples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piple was successfully destroyed"
  end
end
