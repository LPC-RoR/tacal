require "application_system_test_case"

class MedioContactosTest < ApplicationSystemTestCase
  setup do
    @medio_contacto = medio_contactos(:one)
  end

  test "visiting the index" do
    visit medio_contactos_url
    assert_selector "h1", text: "Medio Contactos"
  end

  test "creating a Medio contacto" do
    visit medio_contactos_url
    click_on "New Medio Contacto"

    fill_in "Medio contacto", with: @medio_contacto.medio_contacto
    click_on "Create Medio contacto"

    assert_text "Medio contacto was successfully created"
    click_on "Back"
  end

  test "updating a Medio contacto" do
    visit medio_contactos_url
    click_on "Edit", match: :first

    fill_in "Medio contacto", with: @medio_contacto.medio_contacto
    click_on "Update Medio contacto"

    assert_text "Medio contacto was successfully updated"
    click_on "Back"
  end

  test "destroying a Medio contacto" do
    visit medio_contactos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medio contacto was successfully destroyed"
  end
end
