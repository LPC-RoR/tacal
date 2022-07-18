require "application_system_test_case"

class NivelEducacionalesTest < ApplicationSystemTestCase
  setup do
    @nivel_educacional = nivel_educacionales(:one)
  end

  test "visiting the index" do
    visit nivel_educacionales_url
    assert_selector "h1", text: "Nivel Educacionales"
  end

  test "creating a Nivel educacional" do
    visit nivel_educacionales_url
    click_on "New Nivel Educacional"

    fill_in "Nivel educacional", with: @nivel_educacional.nivel_educacional
    click_on "Create Nivel educacional"

    assert_text "Nivel educacional was successfully created"
    click_on "Back"
  end

  test "updating a Nivel educacional" do
    visit nivel_educacionales_url
    click_on "Edit", match: :first

    fill_in "Nivel educacional", with: @nivel_educacional.nivel_educacional
    click_on "Update Nivel educacional"

    assert_text "Nivel educacional was successfully updated"
    click_on "Back"
  end

  test "destroying a Nivel educacional" do
    visit nivel_educacionales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nivel educacional was successfully destroyed"
  end
end
