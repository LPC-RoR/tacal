require "application_system_test_case"

class ContactoPersonasTest < ApplicationSystemTestCase
  setup do
    @contacto_persona = contacto_personas(:one)
  end

  test "visiting the index" do
    visit contacto_personas_url
    assert_selector "h1", text: "Contacto Personas"
  end

  test "creating a Contacto persona" do
    visit contacto_personas_url
    click_on "New Contacto Persona"

    fill_in "Apellido materno", with: @contacto_persona.apellido_materno
    fill_in "Apellido paterno", with: @contacto_persona.apellido_paterno
    fill_in "Email", with: @contacto_persona.email
    fill_in "Nombres", with: @contacto_persona.nombres
    fill_in "Rut", with: @contacto_persona.rut
    fill_in "Telefono", with: @contacto_persona.telefono
    click_on "Create Contacto persona"

    assert_text "Contacto persona was successfully created"
    click_on "Back"
  end

  test "updating a Contacto persona" do
    visit contacto_personas_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @contacto_persona.apellido_materno
    fill_in "Apellido paterno", with: @contacto_persona.apellido_paterno
    fill_in "Email", with: @contacto_persona.email
    fill_in "Nombres", with: @contacto_persona.nombres
    fill_in "Rut", with: @contacto_persona.rut
    fill_in "Telefono", with: @contacto_persona.telefono
    click_on "Update Contacto persona"

    assert_text "Contacto persona was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacto persona" do
    visit contacto_personas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacto persona was successfully destroyed"
  end
end
