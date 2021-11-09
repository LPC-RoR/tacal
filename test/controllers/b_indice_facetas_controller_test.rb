require 'test_helper'

class BIndiceFacetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_indice_faceta = b_indice_facetas(:one)
  end

  test "should get index" do
    get b_indice_facetas_url
    assert_response :success
  end

  test "should get new" do
    get new_b_indice_faceta_url
    assert_response :success
  end

  test "should create b_indice_faceta" do
    assert_difference('BIndiceFaceta.count') do
      post b_indice_facetas_url, params: { b_indice_faceta: { b_clave_faceta_id: @b_indice_faceta.b_clave_faceta_id, ref_class: @b_indice_faceta.ref_class, ref_id: @b_indice_faceta.ref_id } }
    end

    assert_redirected_to b_indice_faceta_url(BIndiceFaceta.last)
  end

  test "should show b_indice_faceta" do
    get b_indice_faceta_url(@b_indice_faceta)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_indice_faceta_url(@b_indice_faceta)
    assert_response :success
  end

  test "should update b_indice_faceta" do
    patch b_indice_faceta_url(@b_indice_faceta), params: { b_indice_faceta: { b_clave_faceta_id: @b_indice_faceta.b_clave_faceta_id, ref_class: @b_indice_faceta.ref_class, ref_id: @b_indice_faceta.ref_id } }
    assert_redirected_to b_indice_faceta_url(@b_indice_faceta)
  end

  test "should destroy b_indice_faceta" do
    assert_difference('BIndiceFaceta.count', -1) do
      delete b_indice_faceta_url(@b_indice_faceta)
    end

    assert_redirected_to b_indice_facetas_url
  end
end
