require "application_system_test_case"

class AntecedenteFormacionesTest < ApplicationSystemTestCase
  setup do
    @antecedente_formacion = antecedente_formaciones(:one)
  end

  test "visiting the index" do
    visit antecedente_formaciones_url
    assert_selector "h1", text: "Antecedente Formaciones"
  end

  test "creating a Antecedente formacion" do
    visit antecedente_formaciones_url
    click_on "New Antecedente Formacion"

    fill_in "Institucion", with: @antecedente_formacion.institucion
    fill_in "Pcd", with: @antecedente_formacion.pcd_id
    fill_in "Periodo", with: @antecedente_formacion.periodo
    fill_in "Titulo grado", with: @antecedente_formacion.titulo_grado
    click_on "Create Antecedente formacion"

    assert_text "Antecedente formacion was successfully created"
    click_on "Back"
  end

  test "updating a Antecedente formacion" do
    visit antecedente_formaciones_url
    click_on "Edit", match: :first

    fill_in "Institucion", with: @antecedente_formacion.institucion
    fill_in "Pcd", with: @antecedente_formacion.pcd_id
    fill_in "Periodo", with: @antecedente_formacion.periodo
    fill_in "Titulo grado", with: @antecedente_formacion.titulo_grado
    click_on "Update Antecedente formacion"

    assert_text "Antecedente formacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Antecedente formacion" do
    visit antecedente_formaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Antecedente formacion was successfully destroyed"
  end
end
