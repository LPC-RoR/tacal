require "application_system_test_case"

class CursosTest < ApplicationSystemTestCase
  setup do
    @curso = cursos(:one)
  end

  test "visiting the index" do
    visit cursos_url
    assert_selector "h1", text: "Cursos"
  end

  test "creating a Curso" do
    visit cursos_url
    click_on "New Curso"

    fill_in "Institucion", with: @curso.institucion
    fill_in "Pcd", with: @curso.pcd_id
    fill_in "Periodo", with: @curso.periodo
    fill_in "Titulo grado", with: @curso.titulo_grado
    click_on "Create Curso"

    assert_text "Curso was successfully created"
    click_on "Back"
  end

  test "updating a Curso" do
    visit cursos_url
    click_on "Edit", match: :first

    fill_in "Institucion", with: @curso.institucion
    fill_in "Pcd", with: @curso.pcd_id
    fill_in "Periodo", with: @curso.periodo
    fill_in "Titulo grado", with: @curso.titulo_grado
    click_on "Update Curso"

    assert_text "Curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso" do
    visit cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso was successfully destroyed"
  end
end
