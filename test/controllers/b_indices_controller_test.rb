require 'test_helper'

class BIndicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_indice = b_indices(:one)
  end

  test "should get index" do
    get b_indices_url
    assert_response :success
  end

  test "should get new" do
    get new_b_indice_url
    assert_response :success
  end

  test "should create b_indice" do
    assert_difference('BIndice.count') do
      post b_indices_url, params: { b_indice: { b_clave_id: @b_indice.b_clave_id, ref_class: @b_indice.ref_class, ref_id: @b_indice.ref_id } }
    end

    assert_redirected_to b_indice_url(BIndice.last)
  end

  test "should show b_indice" do
    get b_indice_url(@b_indice)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_indice_url(@b_indice)
    assert_response :success
  end

  test "should update b_indice" do
    patch b_indice_url(@b_indice), params: { b_indice: { b_clave_id: @b_indice.b_clave_id, ref_class: @b_indice.ref_class, ref_id: @b_indice.ref_id } }
    assert_redirected_to b_indice_url(@b_indice)
  end

  test "should destroy b_indice" do
    assert_difference('BIndice.count', -1) do
      delete b_indice_url(@b_indice)
    end

    assert_redirected_to b_indices_url
  end
end
