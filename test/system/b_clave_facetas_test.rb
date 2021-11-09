require "application_system_test_case"

class BClaveFacetasTest < ApplicationSystemTestCase
  setup do
    @b_clave_faceta = b_clave_facetas(:one)
  end

  test "visiting the index" do
    visit b_clave_facetas_url
    assert_selector "h1", text: "B Clave Facetas"
  end

  test "creating a B clave faceta" do
    visit b_clave_facetas_url
    click_on "New B Clave Faceta"

    fill_in "Campo", with: @b_clave_faceta.campo
    fill_in "Modelo", with: @b_clave_faceta.modelo
    fill_in "Valor", with: @b_clave_faceta.valor
    click_on "Create B clave faceta"

    assert_text "B clave faceta was successfully created"
    click_on "Back"
  end

  test "updating a B clave faceta" do
    visit b_clave_facetas_url
    click_on "Edit", match: :first

    fill_in "Campo", with: @b_clave_faceta.campo
    fill_in "Modelo", with: @b_clave_faceta.modelo
    fill_in "Valor", with: @b_clave_faceta.valor
    click_on "Update B clave faceta"

    assert_text "B clave faceta was successfully updated"
    click_on "Back"
  end

  test "destroying a B clave faceta" do
    visit b_clave_facetas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B clave faceta was successfully destroyed"
  end
end
