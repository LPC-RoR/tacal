require 'test_helper'

class PcdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pcd = pcds(:one)
  end

  test "should get index" do
    get pcds_url
    assert_response :success
  end

  test "should get new" do
    get new_pcd_url
    assert_response :success
  end

  test "should create pcd" do
    assert_difference('Pcd.count') do
      post pcds_url, params: { pcd: { acreditacion_discapacidad: @pcd.acreditacion_discapacidad, apellido_materno: @pcd.apellido_materno, apellido_paterno: @pcd.apellido_paterno, ciudad: @pcd.ciudad, comuna: @pcd.comuna, condicionado: @pcd.condicionado, conexion_internet: @pcd.conexion_internet, correo_electronico: @pcd.correo_electronico, cuenta_rut: @pcd.cuenta_rut, direccion: @pcd.direccion, estado_civil: @pcd.estado_civil, etnia: @pcd.etnia, fecha_nacimiento: @pcd.fecha_nacimiento, genero: @pcd.genero, interdicto: @pcd.interdicto, medio_contacto: @pcd.medio_contacto, nacionalidad: @pcd.nacionalidad, nivel_educacional: @pcd.nivel_educacional, nombres: @pcd.nombres, numero_hijos: @pcd.numero_hijos, profesion_oficio: @pcd.profesion_oficio, proveedor_internet: @pcd.proveedor_internet, region: @pcd.region, responsabilidad_parental: @pcd.responsabilidad_parental, rut: @pcd.rut, situacion_social: @pcd.situacion_social, telefono_casa: @pcd.telefono_casa, telefono_personal: @pcd.telefono_personal } }
    end

    assert_redirected_to pcd_url(Pcd.last)
  end

  test "should show pcd" do
    get pcd_url(@pcd)
    assert_response :success
  end

  test "should get edit" do
    get edit_pcd_url(@pcd)
    assert_response :success
  end

  test "should update pcd" do
    patch pcd_url(@pcd), params: { pcd: { acreditacion_discapacidad: @pcd.acreditacion_discapacidad, apellido_materno: @pcd.apellido_materno, apellido_paterno: @pcd.apellido_paterno, ciudad: @pcd.ciudad, comuna: @pcd.comuna, condicionado: @pcd.condicionado, conexion_internet: @pcd.conexion_internet, correo_electronico: @pcd.correo_electronico, cuenta_rut: @pcd.cuenta_rut, direccion: @pcd.direccion, estado_civil: @pcd.estado_civil, etnia: @pcd.etnia, fecha_nacimiento: @pcd.fecha_nacimiento, genero: @pcd.genero, interdicto: @pcd.interdicto, medio_contacto: @pcd.medio_contacto, nacionalidad: @pcd.nacionalidad, nivel_educacional: @pcd.nivel_educacional, nombres: @pcd.nombres, numero_hijos: @pcd.numero_hijos, profesion_oficio: @pcd.profesion_oficio, proveedor_internet: @pcd.proveedor_internet, region: @pcd.region, responsabilidad_parental: @pcd.responsabilidad_parental, rut: @pcd.rut, situacion_social: @pcd.situacion_social, telefono_casa: @pcd.telefono_casa, telefono_personal: @pcd.telefono_personal } }
    assert_redirected_to pcd_url(@pcd)
  end

  test "should destroy pcd" do
    assert_difference('Pcd.count', -1) do
      delete pcd_url(@pcd)
    end

    assert_redirected_to pcds_url
  end
end
