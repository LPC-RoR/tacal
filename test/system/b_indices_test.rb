require "application_system_test_case"

class BIndicesTest < ApplicationSystemTestCase
  setup do
    @b_indice = b_indices(:one)
  end

  test "visiting the index" do
    visit b_indices_url
    assert_selector "h1", text: "B Indices"
  end

  test "creating a B indice" do
    visit b_indices_url
    click_on "New B Indice"

    fill_in "B clave", with: @b_indice.b_clave_id
    fill_in "Ref class", with: @b_indice.ref_class
    fill_in "Ref", with: @b_indice.ref_id
    click_on "Create B indice"

    assert_text "B indice was successfully created"
    click_on "Back"
  end

  test "updating a B indice" do
    visit b_indices_url
    click_on "Edit", match: :first

    fill_in "B clave", with: @b_indice.b_clave_id
    fill_in "Ref class", with: @b_indice.ref_class
    fill_in "Ref", with: @b_indice.ref_id
    click_on "Update B indice"

    assert_text "B indice was successfully updated"
    click_on "Back"
  end

  test "destroying a B indice" do
    visit b_indices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B indice was successfully destroyed"
  end
end
