require 'test_helper'

class BClavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_clave = b_claves(:one)
  end

  test "should get index" do
    get b_claves_url
    assert_response :success
  end

  test "should get new" do
    get new_b_clave_url
    assert_response :success
  end

  test "should create b_clave" do
    assert_difference('BClave.count') do
      post b_claves_url, params: { b_clave: { b_clave: @b_clave.b_clave } }
    end

    assert_redirected_to b_clave_url(BClave.last)
  end

  test "should show b_clave" do
    get b_clave_url(@b_clave)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_clave_url(@b_clave)
    assert_response :success
  end

  test "should update b_clave" do
    patch b_clave_url(@b_clave), params: { b_clave: { b_clave: @b_clave.b_clave } }
    assert_redirected_to b_clave_url(@b_clave)
  end

  test "should destroy b_clave" do
    assert_difference('BClave.count', -1) do
      delete b_clave_url(@b_clave)
    end

    assert_redirected_to b_claves_url
  end
end
