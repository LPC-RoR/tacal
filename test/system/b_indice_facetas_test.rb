require "application_system_test_case"

class BIndiceFacetasTest < ApplicationSystemTestCase
  setup do
    @b_indice_faceta = b_indice_facetas(:one)
  end

  test "visiting the index" do
    visit b_indice_facetas_url
    assert_selector "h1", text: "B Indice Facetas"
  end

  test "creating a B indice faceta" do
    visit b_indice_facetas_url
    click_on "New B Indice Faceta"

    fill_in "B clave faceta", with: @b_indice_faceta.b_clave_faceta_id
    fill_in "Ref class", with: @b_indice_faceta.ref_class
    fill_in "Ref", with: @b_indice_faceta.ref_id
    click_on "Create B indice faceta"

    assert_text "B indice faceta was successfully created"
    click_on "Back"
  end

  test "updating a B indice faceta" do
    visit b_indice_facetas_url
    click_on "Edit", match: :first

    fill_in "B clave faceta", with: @b_indice_faceta.b_clave_faceta_id
    fill_in "Ref class", with: @b_indice_faceta.ref_class
    fill_in "Ref", with: @b_indice_faceta.ref_id
    click_on "Update B indice faceta"

    assert_text "B indice faceta was successfully updated"
    click_on "Back"
  end

  test "destroying a B indice faceta" do
    visit b_indice_facetas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B indice faceta was successfully destroyed"
  end
end
