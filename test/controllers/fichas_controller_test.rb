require 'test_helper'

class FichasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha = fichas(:one)
  end

  test "should get index" do
    get fichas_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_url
    assert_response :success
  end

  test "should create ficha" do
    assert_difference('Ficha.count') do
      post fichas_url, params: { ficha: { acompanates: @ficha.acompanates, agrupacion: @ficha.agrupacion, alimentacion: @ficha.alimentacion, antecedentes_consumo: @ficha.antecedentes_consumo, antecedentes_penales: @ficha.antecedentes_penales, aseado: @ficha.aseado, aseo_personal: @ficha.aseo_personal, atencion: @ficha.atencion, atento: @ficha.atento, ayuda_tecnica: @ficha.ayuda_tecnica, certificado_antecedentes: @ficha.certificado_antecedentes, comunicacion_autonoma: @ficha.comunicacion_autonoma, comunidad_otros: @ficha.comunidad_otros, con_quien_vives: @ficha.con_quien_vives, consumo_otros: @ficha.consumo_otros, control_esfinteres: @ficha.control_esfinteres, cual_ayuda: @ficha.cual_ayuda, documentos_legales_vigentes: @ficha.documentos_legales_vigentes, escrita: @ficha.escrita, evaluador_id: @ficha.evaluador_id, experiencia_laboral: @ficha.experiencia_laboral, familia: @ficha.familia, fecha_entrevista: @ficha.fecha_entrevista, gestual: @ficha.gestual, idiomas: @ficha.idiomas, interesado: @ficha.interesado, intereses_laborales: @ficha.intereses_laborales, laboral_formal: @ficha.laboral_formal, laboral_informal: @ficha.laboral_informal, manejo_computacional: @ficha.manejo_computacional, manejo_dinero: @ficha.manejo_dinero, modalidad_entrevista: @ficha.modalidad_entrevista, motivado: @ficha.motivado, movilidad: @ficha.movilidad, municipalidad: @ficha.municipalidad, objetivo: @ficha.objetivo, oral: @ficha.oral, otro_formal: @ficha.otro_formal, otro_informal: @ficha.otro_informal, otros: @ficha.otros, otros_diagnosticos: @ficha.otros_diagnosticos, pcd_id: @ficha.pcd_id, profesion_titulo_tecnico: @ficha.profesion_titulo_tecnico, puntualidad: @ficha.puntualidad, quien_vives_otro: @ficha.quien_vives_otro, uso_celular: @ficha.uso_celular, vestimenta_acorde: @ficha.vestimenta_acorde, vestuario: @ficha.vestuario, visa_trabajo_vigente: @ficha.visa_trabajo_vigente } }
    end

    assert_redirected_to ficha_url(Ficha.last)
  end

  test "should show ficha" do
    get ficha_url(@ficha)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_url(@ficha)
    assert_response :success
  end

  test "should update ficha" do
    patch ficha_url(@ficha), params: { ficha: { acompanates: @ficha.acompanates, agrupacion: @ficha.agrupacion, alimentacion: @ficha.alimentacion, antecedentes_consumo: @ficha.antecedentes_consumo, antecedentes_penales: @ficha.antecedentes_penales, aseado: @ficha.aseado, aseo_personal: @ficha.aseo_personal, atencion: @ficha.atencion, atento: @ficha.atento, ayuda_tecnica: @ficha.ayuda_tecnica, certificado_antecedentes: @ficha.certificado_antecedentes, comunicacion_autonoma: @ficha.comunicacion_autonoma, comunidad_otros: @ficha.comunidad_otros, con_quien_vives: @ficha.con_quien_vives, consumo_otros: @ficha.consumo_otros, control_esfinteres: @ficha.control_esfinteres, cual_ayuda: @ficha.cual_ayuda, documentos_legales_vigentes: @ficha.documentos_legales_vigentes, escrita: @ficha.escrita, evaluador_id: @ficha.evaluador_id, experiencia_laboral: @ficha.experiencia_laboral, familia: @ficha.familia, fecha_entrevista: @ficha.fecha_entrevista, gestual: @ficha.gestual, idiomas: @ficha.idiomas, interesado: @ficha.interesado, intereses_laborales: @ficha.intereses_laborales, laboral_formal: @ficha.laboral_formal, laboral_informal: @ficha.laboral_informal, manejo_computacional: @ficha.manejo_computacional, manejo_dinero: @ficha.manejo_dinero, modalidad_entrevista: @ficha.modalidad_entrevista, motivado: @ficha.motivado, movilidad: @ficha.movilidad, municipalidad: @ficha.municipalidad, objetivo: @ficha.objetivo, oral: @ficha.oral, otro_formal: @ficha.otro_formal, otro_informal: @ficha.otro_informal, otros: @ficha.otros, otros_diagnosticos: @ficha.otros_diagnosticos, pcd_id: @ficha.pcd_id, profesion_titulo_tecnico: @ficha.profesion_titulo_tecnico, puntualidad: @ficha.puntualidad, quien_vives_otro: @ficha.quien_vives_otro, uso_celular: @ficha.uso_celular, vestimenta_acorde: @ficha.vestimenta_acorde, vestuario: @ficha.vestuario, visa_trabajo_vigente: @ficha.visa_trabajo_vigente } }
    assert_redirected_to ficha_url(@ficha)
  end

  test "should destroy ficha" do
    assert_difference('Ficha.count', -1) do
      delete ficha_url(@ficha)
    end

    assert_redirected_to fichas_url
  end
end
