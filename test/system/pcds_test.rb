require "application_system_test_case"

class PcdsTest < ApplicationSystemTestCase
  setup do
    @pcd = pcds(:one)
  end

  test "visiting the index" do
    visit pcds_url
    assert_selector "h1", text: "Pcds"
  end

  test "creating a Pcd" do
    visit pcds_url
    click_on "New Pcd"

    fill_in "Acreditacion discapacidad", with: @pcd.acreditacion_discapacidad
    fill_in "Apellido materno", with: @pcd.apellido_materno
    fill_in "Apellido paterno", with: @pcd.apellido_paterno
    fill_in "Ciudad", with: @pcd.ciudad
    fill_in "Comuna", with: @pcd.comuna
    fill_in "Condicionado", with: @pcd.condicionado
    check "Conexion internet" if @pcd.conexion_internet
    fill_in "Correo electronico", with: @pcd.correo_electronico
    check "Cuenta rut" if @pcd.cuenta_rut
    fill_in "Direccion", with: @pcd.direccion
    fill_in "Estado civil", with: @pcd.estado_civil
    fill_in "Etnia", with: @pcd.etnia
    fill_in "Fecha nacimiento", with: @pcd.fecha_nacimiento
    fill_in "Genero", with: @pcd.genero
    check "Interdicto" if @pcd.interdicto
    fill_in "Medio contacto", with: @pcd.medio_contacto
    fill_in "Nacionalidad", with: @pcd.nacionalidad
    fill_in "Nivel educacional", with: @pcd.nivel_educacional
    fill_in "Nombres", with: @pcd.nombres
    fill_in "Numero hijos", with: @pcd.numero_hijos
    fill_in "Profesion oficio", with: @pcd.profesion_oficio
    fill_in "Proveedor internet", with: @pcd.proveedor_internet
    fill_in "Region", with: @pcd.region
    fill_in "Responsabilidad parental", with: @pcd.responsabilidad_parental
    fill_in "Rut", with: @pcd.rut
    fill_in "Situacion social", with: @pcd.situacion_social
    fill_in "Telefono casa", with: @pcd.telefono_casa
    fill_in "Telefono personal", with: @pcd.telefono_personal
    click_on "Create Pcd"

    assert_text "Pcd was successfully created"
    click_on "Back"
  end

  test "updating a Pcd" do
    visit pcds_url
    click_on "Edit", match: :first

    fill_in "Acreditacion discapacidad", with: @pcd.acreditacion_discapacidad
    fill_in "Apellido materno", with: @pcd.apellido_materno
    fill_in "Apellido paterno", with: @pcd.apellido_paterno
    fill_in "Ciudad", with: @pcd.ciudad
    fill_in "Comuna", with: @pcd.comuna
    fill_in "Condicionado", with: @pcd.condicionado
    check "Conexion internet" if @pcd.conexion_internet
    fill_in "Correo electronico", with: @pcd.correo_electronico
    check "Cuenta rut" if @pcd.cuenta_rut
    fill_in "Direccion", with: @pcd.direccion
    fill_in "Estado civil", with: @pcd.estado_civil
    fill_in "Etnia", with: @pcd.etnia
    fill_in "Fecha nacimiento", with: @pcd.fecha_nacimiento
    fill_in "Genero", with: @pcd.genero
    check "Interdicto" if @pcd.interdicto
    fill_in "Medio contacto", with: @pcd.medio_contacto
    fill_in "Nacionalidad", with: @pcd.nacionalidad
    fill_in "Nivel educacional", with: @pcd.nivel_educacional
    fill_in "Nombres", with: @pcd.nombres
    fill_in "Numero hijos", with: @pcd.numero_hijos
    fill_in "Profesion oficio", with: @pcd.profesion_oficio
    fill_in "Proveedor internet", with: @pcd.proveedor_internet
    fill_in "Region", with: @pcd.region
    fill_in "Responsabilidad parental", with: @pcd.responsabilidad_parental
    fill_in "Rut", with: @pcd.rut
    fill_in "Situacion social", with: @pcd.situacion_social
    fill_in "Telefono casa", with: @pcd.telefono_casa
    fill_in "Telefono personal", with: @pcd.telefono_personal
    click_on "Update Pcd"

    assert_text "Pcd was successfully updated"
    click_on "Back"
  end

  test "destroying a Pcd" do
    visit pcds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pcd was successfully destroyed"
  end
end
