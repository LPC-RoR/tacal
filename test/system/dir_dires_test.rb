require "application_system_test_case"

class DirDiresTest < ApplicationSystemTestCase
  setup do
    @dir_dir = dir_dires(:one)
  end

  test "visiting the index" do
    visit dir_dires_url
    assert_selector "h1", text: "Dir Dires"
  end

  test "creating a Dir dir" do
    visit dir_dires_url
    click_on "New Dir Dir"

    fill_in "Child", with: @dir_dir.child_id
    fill_in "Parent", with: @dir_dir.parent_id
    click_on "Create Dir dir"

    assert_text "Dir dir was successfully created"
    click_on "Back"
  end

  test "updating a Dir dir" do
    visit dir_dires_url
    click_on "Edit", match: :first

    fill_in "Child", with: @dir_dir.child_id
    fill_in "Parent", with: @dir_dir.parent_id
    click_on "Update Dir dir"

    assert_text "Dir dir was successfully updated"
    click_on "Back"
  end

  test "destroying a Dir dir" do
    visit dir_dires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dir dir was successfully destroyed"
  end
end
