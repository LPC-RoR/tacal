require "application_system_test_case"

class BClavesTest < ApplicationSystemTestCase
  setup do
    @b_clave = b_claves(:one)
  end

  test "visiting the index" do
    visit b_claves_url
    assert_selector "h1", text: "B Claves"
  end

  test "creating a B clave" do
    visit b_claves_url
    click_on "New B Clave"

    fill_in "B clave", with: @b_clave.b_clave
    click_on "Create B clave"

    assert_text "B clave was successfully created"
    click_on "Back"
  end

  test "updating a B clave" do
    visit b_claves_url
    click_on "Edit", match: :first

    fill_in "B clave", with: @b_clave.b_clave
    click_on "Update B clave"

    assert_text "B clave was successfully updated"
    click_on "Back"
  end

  test "destroying a B clave" do
    visit b_claves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B clave was successfully destroyed"
  end
end
