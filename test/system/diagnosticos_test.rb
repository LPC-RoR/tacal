require "application_system_test_case"

class DiagnosticosTest < ApplicationSystemTestCase
  setup do
    @diagnostico = diagnosticos(:one)
  end

  test "visiting the index" do
    visit diagnosticos_url
    assert_selector "h1", text: "Diagnosticos"
  end

  test "creating a Diagnostico" do
    visit diagnosticos_url
    click_on "New Diagnostico"

    fill_in "Diagnostico", with: @diagnostico.diagnostico
    check "Hospitalizacion" if @diagnostico.hospitalizacion
    fill_in "Secuela", with: @diagnostico.secuela
    fill_in "Ultima crisis", with: @diagnostico.ultima_crisis
    click_on "Create Diagnostico"

    assert_text "Diagnostico was successfully created"
    click_on "Back"
  end

  test "updating a Diagnostico" do
    visit diagnosticos_url
    click_on "Edit", match: :first

    fill_in "Diagnostico", with: @diagnostico.diagnostico
    check "Hospitalizacion" if @diagnostico.hospitalizacion
    fill_in "Secuela", with: @diagnostico.secuela
    fill_in "Ultima crisis", with: @diagnostico.ultima_crisis
    click_on "Update Diagnostico"

    assert_text "Diagnostico was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnostico" do
    visit diagnosticos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnostico was successfully destroyed"
  end
end
