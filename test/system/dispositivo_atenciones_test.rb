require "application_system_test_case"

class DispositivoAtencionesTest < ApplicationSystemTestCase
  setup do
    @dispositivo_atencion = dispositivo_atenciones(:one)
  end

  test "visiting the index" do
    visit dispositivo_atenciones_url
    assert_selector "h1", text: "Dispositivo Atenciones"
  end

  test "creating a Dispositivo atencion" do
    visit dispositivo_atenciones_url
    click_on "New Dispositivo Atencion"

    fill_in "Dispositivo atencion", with: @dispositivo_atencion.dispositivo_atencion
    fill_in "Frecuencia control", with: @dispositivo_atencion.frecuencia_control
    fill_in "Lugar atencion", with: @dispositivo_atencion.lugar_atencion
    fill_in "Pcd", with: @dispositivo_atencion.pcd_id
    fill_in "Profesional", with: @dispositivo_atencion.profesional
    check "Tratamiento" if @dispositivo_atencion.tratamiento
    click_on "Create Dispositivo atencion"

    assert_text "Dispositivo atencion was successfully created"
    click_on "Back"
  end

  test "updating a Dispositivo atencion" do
    visit dispositivo_atenciones_url
    click_on "Edit", match: :first

    fill_in "Dispositivo atencion", with: @dispositivo_atencion.dispositivo_atencion
    fill_in "Frecuencia control", with: @dispositivo_atencion.frecuencia_control
    fill_in "Lugar atencion", with: @dispositivo_atencion.lugar_atencion
    fill_in "Pcd", with: @dispositivo_atencion.pcd_id
    fill_in "Profesional", with: @dispositivo_atencion.profesional
    check "Tratamiento" if @dispositivo_atencion.tratamiento
    click_on "Update Dispositivo atencion"

    assert_text "Dispositivo atencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispositivo atencion" do
    visit dispositivo_atenciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispositivo atencion was successfully destroyed"
  end
end
