require "application_system_test_case"

class BReglasTest < ApplicationSystemTestCase
  setup do
    @b_regla = b_reglas(:one)
  end

  test "visiting the index" do
    visit b_reglas_url
    assert_selector "h1", text: "B Reglas"
  end

  test "creating a B regla" do
    visit b_reglas_url
    click_on "New B Regla"

    fill_in "Accion", with: @b_regla.accion
    fill_in "B regla", with: @b_regla.b_regla
    fill_in "Idioma", with: @b_regla.idioma
    fill_in "Tipo palabra", with: @b_regla.tipo_palabra
    click_on "Create B regla"

    assert_text "B regla was successfully created"
    click_on "Back"
  end

  test "updating a B regla" do
    visit b_reglas_url
    click_on "Edit", match: :first

    fill_in "Accion", with: @b_regla.accion
    fill_in "B regla", with: @b_regla.b_regla
    fill_in "Idioma", with: @b_regla.idioma
    fill_in "Tipo palabra", with: @b_regla.tipo_palabra
    click_on "Update B regla"

    assert_text "B regla was successfully updated"
    click_on "Back"
  end

  test "destroying a B regla" do
    visit b_reglas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B regla was successfully destroyed"
  end
end
