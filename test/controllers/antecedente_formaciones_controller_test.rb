require 'test_helper'

class AntecedenteFormacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @antecedente_formacion = antecedente_formaciones(:one)
  end

  test "should get index" do
    get antecedente_formaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_antecedente_formacion_url
    assert_response :success
  end

  test "should create antecedente_formacion" do
    assert_difference('AntecedenteFormacion.count') do
      post antecedente_formaciones_url, params: { antecedente_formacion: { institucion: @antecedente_formacion.institucion, pcd_id: @antecedente_formacion.pcd_id, periodo: @antecedente_formacion.periodo, titulo_grado: @antecedente_formacion.titulo_grado } }
    end

    assert_redirected_to antecedente_formacion_url(AntecedenteFormacion.last)
  end

  test "should show antecedente_formacion" do
    get antecedente_formacion_url(@antecedente_formacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_antecedente_formacion_url(@antecedente_formacion)
    assert_response :success
  end

  test "should update antecedente_formacion" do
    patch antecedente_formacion_url(@antecedente_formacion), params: { antecedente_formacion: { institucion: @antecedente_formacion.institucion, pcd_id: @antecedente_formacion.pcd_id, periodo: @antecedente_formacion.periodo, titulo_grado: @antecedente_formacion.titulo_grado } }
    assert_redirected_to antecedente_formacion_url(@antecedente_formacion)
  end

  test "should destroy antecedente_formacion" do
    assert_difference('AntecedenteFormacion.count', -1) do
      delete antecedente_formacion_url(@antecedente_formacion)
    end

    assert_redirected_to antecedente_formaciones_url
  end
end
