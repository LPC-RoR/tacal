require "application_system_test_case"

class MedicamentosTest < ApplicationSystemTestCase
  setup do
    @medicamento = medicamentos(:one)
  end

  test "visiting the index" do
    visit medicamentos_url
    assert_selector "h1", text: "Medicamentos"
  end

  test "creating a Medicamento" do
    visit medicamentos_url
    click_on "New Medicamento"

    check "Adherencia tratamiento" if @medicamento.adherencia_tratamiento
    check "Autonomia administracion" if @medicamento.autonomia_administracion
    fill_in "Dosis", with: @medicamento.dosis
    fill_in "Medicamento", with: @medicamento.medicamento
    fill_in "Pcd id.integer", with: @medicamento.pcd_id.integer
    click_on "Create Medicamento"

    assert_text "Medicamento was successfully created"
    click_on "Back"
  end

  test "updating a Medicamento" do
    visit medicamentos_url
    click_on "Edit", match: :first

    check "Adherencia tratamiento" if @medicamento.adherencia_tratamiento
    check "Autonomia administracion" if @medicamento.autonomia_administracion
    fill_in "Dosis", with: @medicamento.dosis
    fill_in "Medicamento", with: @medicamento.medicamento
    fill_in "Pcd id.integer", with: @medicamento.pcd_id.integer
    click_on "Update Medicamento"

    assert_text "Medicamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicamento" do
    visit medicamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicamento was successfully destroyed"
  end
end
