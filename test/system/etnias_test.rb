require "application_system_test_case"

class EtniasTest < ApplicationSystemTestCase
  setup do
    @etnia = etnias(:one)
  end

  test "visiting the index" do
    visit etnias_url
    assert_selector "h1", text: "Etnias"
  end

  test "creating a Etnia" do
    visit etnias_url
    click_on "New Etnia"

    fill_in "Etnia", with: @etnia.etnia
    click_on "Create Etnia"

    assert_text "Etnia was successfully created"
    click_on "Back"
  end

  test "updating a Etnia" do
    visit etnias_url
    click_on "Edit", match: :first

    fill_in "Etnia", with: @etnia.etnia
    click_on "Update Etnia"

    assert_text "Etnia was successfully updated"
    click_on "Back"
  end

  test "destroying a Etnia" do
    visit etnias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Etnia was successfully destroyed"
  end
end
