require "application_system_test_case"

class BPalabrasTest < ApplicationSystemTestCase
  setup do
    @b_palabra = b_palabras(:one)
  end

  test "visiting the index" do
    visit b_palabras_url
    assert_selector "h1", text: "B Palabras"
  end

  test "creating a B palabra" do
    visit b_palabras_url
    click_on "New B Palabra"

    fill_in "B clave", with: @b_palabra.b_clave_id
    fill_in "B palabra", with: @b_palabra.b_palabra
    click_on "Create B palabra"

    assert_text "B palabra was successfully created"
    click_on "Back"
  end

  test "updating a B palabra" do
    visit b_palabras_url
    click_on "Edit", match: :first

    fill_in "B clave", with: @b_palabra.b_clave_id
    fill_in "B palabra", with: @b_palabra.b_palabra
    click_on "Update B palabra"

    assert_text "B palabra was successfully updated"
    click_on "Back"
  end

  test "destroying a B palabra" do
    visit b_palabras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B palabra was successfully destroyed"
  end
end
