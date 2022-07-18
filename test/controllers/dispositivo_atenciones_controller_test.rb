require 'test_helper'

class DispositivoAtencionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispositivo_atencion = dispositivo_atenciones(:one)
  end

  test "should get index" do
    get dispositivo_atenciones_url
    assert_response :success
  end

  test "should get new" do
    get new_dispositivo_atencion_url
    assert_response :success
  end

  test "should create dispositivo_atencion" do
    assert_difference('DispositivoAtencion.count') do
      post dispositivo_atenciones_url, params: { dispositivo_atencion: { dispositivo_atencion: @dispositivo_atencion.dispositivo_atencion, frecuencia_control: @dispositivo_atencion.frecuencia_control, lugar_atencion: @dispositivo_atencion.lugar_atencion, pcd_id: @dispositivo_atencion.pcd_id, profesional: @dispositivo_atencion.profesional, tratamiento: @dispositivo_atencion.tratamiento } }
    end

    assert_redirected_to dispositivo_atencion_url(DispositivoAtencion.last)
  end

  test "should show dispositivo_atencion" do
    get dispositivo_atencion_url(@dispositivo_atencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_dispositivo_atencion_url(@dispositivo_atencion)
    assert_response :success
  end

  test "should update dispositivo_atencion" do
    patch dispositivo_atencion_url(@dispositivo_atencion), params: { dispositivo_atencion: { dispositivo_atencion: @dispositivo_atencion.dispositivo_atencion, frecuencia_control: @dispositivo_atencion.frecuencia_control, lugar_atencion: @dispositivo_atencion.lugar_atencion, pcd_id: @dispositivo_atencion.pcd_id, profesional: @dispositivo_atencion.profesional, tratamiento: @dispositivo_atencion.tratamiento } }
    assert_redirected_to dispositivo_atencion_url(@dispositivo_atencion)
  end

  test "should destroy dispositivo_atencion" do
    assert_difference('DispositivoAtencion.count', -1) do
      delete dispositivo_atencion_url(@dispositivo_atencion)
    end

    assert_redirected_to dispositivo_atenciones_url
  end
end
