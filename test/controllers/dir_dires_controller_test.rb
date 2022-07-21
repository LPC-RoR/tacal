require 'test_helper'

class DirDiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dir_dir = dir_dires(:one)
  end

  test "should get index" do
    get dir_dires_url
    assert_response :success
  end

  test "should get new" do
    get new_dir_dir_url
    assert_response :success
  end

  test "should create dir_dir" do
    assert_difference('DirDir.count') do
      post dir_dires_url, params: { dir_dir: { child_id: @dir_dir.child_id, parent_id: @dir_dir.parent_id } }
    end

    assert_redirected_to dir_dir_url(DirDir.last)
  end

  test "should show dir_dir" do
    get dir_dir_url(@dir_dir)
    assert_response :success
  end

  test "should get edit" do
    get edit_dir_dir_url(@dir_dir)
    assert_response :success
  end

  test "should update dir_dir" do
    patch dir_dir_url(@dir_dir), params: { dir_dir: { child_id: @dir_dir.child_id, parent_id: @dir_dir.parent_id } }
    assert_redirected_to dir_dir_url(@dir_dir)
  end

  test "should destroy dir_dir" do
    assert_difference('DirDir.count', -1) do
      delete dir_dir_url(@dir_dir)
    end

    assert_redirected_to dir_dires_url
  end
end
