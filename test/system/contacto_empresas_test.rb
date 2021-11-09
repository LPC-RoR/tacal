require "application_system_test_case"

class ContactoEmpresasTest < ApplicationSystemTestCase
  setup do
    @contacto_empresa = contacto_empresas(:one)
  end

  test "visiting the index" do
    visit contacto_empresas_url
    assert_selector "h1", text: "Contacto Empresas"
  end

  test "creating a Contacto empresa" do
    visit contacto_empresas_url
    click_on "New Contacto Empresa"

    fill_in "Direccion", with: @contacto_empresa.direccion
    fill_in "Razon social", with: @contacto_empresa.razon_social
    fill_in "Rut", with: @contacto_empresa.rut
    click_on "Create Contacto empresa"

    assert_text "Contacto empresa was successfully created"
    click_on "Back"
  end

  test "updating a Contacto empresa" do
    visit contacto_empresas_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @contacto_empresa.direccion
    fill_in "Razon social", with: @contacto_empresa.razon_social
    fill_in "Rut", with: @contacto_empresa.rut
    click_on "Update Contacto empresa"

    assert_text "Contacto empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacto empresa" do
    visit contacto_empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacto empresa was successfully destroyed"
  end
end
