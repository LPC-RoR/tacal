require "application_system_test_case"

class FichasTest < ApplicationSystemTestCase
  setup do
    @ficha = fichas(:one)
  end

  test "visiting the index" do
    visit fichas_url
    assert_selector "h1", text: "Fichas"
  end

  test "creating a Ficha" do
    visit fichas_url
    click_on "New Ficha"

    fill_in "Acompanates", with: @ficha.acompanates
    fill_in "Agrupacion", with: @ficha.agrupacion
    fill_in "Alimentacion", with: @ficha.alimentacion
    fill_in "Antecedentes consumo", with: @ficha.antecedentes_consumo
    fill_in "Antecedentes penales", with: @ficha.antecedentes_penales
    fill_in "Aseado", with: @ficha.aseado
    fill_in "Aseo personal", with: @ficha.aseo_personal
    fill_in "Atencion", with: @ficha.atencion
    fill_in "Atento", with: @ficha.atento
    fill_in "Ayuda tecnica", with: @ficha.ayuda_tecnica
    fill_in "Certificado antecedentes", with: @ficha.certificado_antecedentes
    fill_in "Comunicacion autonoma", with: @ficha.comunicacion_autonoma
    fill_in "Comunidad otros", with: @ficha.comunidad_otros
    fill_in "Con quien vives", with: @ficha.con_quien_vives
    fill_in "Consumo otros", with: @ficha.consumo_otros
    fill_in "Control esfinteres", with: @ficha.control_esfinteres
    fill_in "Cual ayuda", with: @ficha.cual_ayuda
    fill_in "Documentos legales vigentes", with: @ficha.documentos_legales_vigentes
    check "Escrita" if @ficha.escrita
    fill_in "Evaluador", with: @ficha.evaluador_id
    fill_in "Experiencia laboral", with: @ficha.experiencia_laboral
    fill_in "Familia", with: @ficha.familia
    fill_in "Fecha entrevista", with: @ficha.fecha_entrevista
    check "Gestual" if @ficha.gestual
    fill_in "Idiomas", with: @ficha.idiomas
    fill_in "Interesado", with: @ficha.interesado
    fill_in "Intereses laborales", with: @ficha.intereses_laborales
    fill_in "Laboral formal", with: @ficha.laboral_formal
    fill_in "Laboral informal", with: @ficha.laboral_informal
    fill_in "Manejo computacional", with: @ficha.manejo_computacional
    fill_in "Manejo dinero", with: @ficha.manejo_dinero
    fill_in "Modalidad entrevista", with: @ficha.modalidad_entrevista
    fill_in "Motivado", with: @ficha.motivado
    fill_in "Movilidad", with: @ficha.movilidad
    fill_in "Municipalidad", with: @ficha.municipalidad
    fill_in "Objetivo", with: @ficha.objetivo
    check "Oral" if @ficha.oral
    fill_in "Otro formal", with: @ficha.otro_formal
    fill_in "Otro informal", with: @ficha.otro_informal
    fill_in "Otros", with: @ficha.otros
    fill_in "Otros diagnosticos", with: @ficha.otros_diagnosticos
    fill_in "Pcd", with: @ficha.pcd_id
    fill_in "Profesion titulo tecnico", with: @ficha.profesion_titulo_tecnico
    fill_in "Puntualidad", with: @ficha.puntualidad
    fill_in "Quien vives otro", with: @ficha.quien_vives_otro
    fill_in "Uso celular", with: @ficha.uso_celular
    fill_in "Vestimenta acorde", with: @ficha.vestimenta_acorde
    fill_in "Vestuario", with: @ficha.vestuario
    fill_in "Visa trabajo vigente", with: @ficha.visa_trabajo_vigente
    click_on "Create Ficha"

    assert_text "Ficha was successfully created"
    click_on "Back"
  end

  test "updating a Ficha" do
    visit fichas_url
    click_on "Edit", match: :first

    fill_in "Acompanates", with: @ficha.acompanates
    fill_in "Agrupacion", with: @ficha.agrupacion
    fill_in "Alimentacion", with: @ficha.alimentacion
    fill_in "Antecedentes consumo", with: @ficha.antecedentes_consumo
    fill_in "Antecedentes penales", with: @ficha.antecedentes_penales
    fill_in "Aseado", with: @ficha.aseado
    fill_in "Aseo personal", with: @ficha.aseo_personal
    fill_in "Atencion", with: @ficha.atencion
    fill_in "Atento", with: @ficha.atento
    fill_in "Ayuda tecnica", with: @ficha.ayuda_tecnica
    fill_in "Certificado antecedentes", with: @ficha.certificado_antecedentes
    fill_in "Comunicacion autonoma", with: @ficha.comunicacion_autonoma
    fill_in "Comunidad otros", with: @ficha.comunidad_otros
    fill_in "Con quien vives", with: @ficha.con_quien_vives
    fill_in "Consumo otros", with: @ficha.consumo_otros
    fill_in "Control esfinteres", with: @ficha.control_esfinteres
    fill_in "Cual ayuda", with: @ficha.cual_ayuda
    fill_in "Documentos legales vigentes", with: @ficha.documentos_legales_vigentes
    check "Escrita" if @ficha.escrita
    fill_in "Evaluador", with: @ficha.evaluador_id
    fill_in "Experiencia laboral", with: @ficha.experiencia_laboral
    fill_in "Familia", with: @ficha.familia
    fill_in "Fecha entrevista", with: @ficha.fecha_entrevista
    check "Gestual" if @ficha.gestual
    fill_in "Idiomas", with: @ficha.idiomas
    fill_in "Interesado", with: @ficha.interesado
    fill_in "Intereses laborales", with: @ficha.intereses_laborales
    fill_in "Laboral formal", with: @ficha.laboral_formal
    fill_in "Laboral informal", with: @ficha.laboral_informal
    fill_in "Manejo computacional", with: @ficha.manejo_computacional
    fill_in "Manejo dinero", with: @ficha.manejo_dinero
    fill_in "Modalidad entrevista", with: @ficha.modalidad_entrevista
    fill_in "Motivado", with: @ficha.motivado
    fill_in "Movilidad", with: @ficha.movilidad
    fill_in "Municipalidad", with: @ficha.municipalidad
    fill_in "Objetivo", with: @ficha.objetivo
    check "Oral" if @ficha.oral
    fill_in "Otro formal", with: @ficha.otro_formal
    fill_in "Otro informal", with: @ficha.otro_informal
    fill_in "Otros", with: @ficha.otros
    fill_in "Otros diagnosticos", with: @ficha.otros_diagnosticos
    fill_in "Pcd", with: @ficha.pcd_id
    fill_in "Profesion titulo tecnico", with: @ficha.profesion_titulo_tecnico
    fill_in "Puntualidad", with: @ficha.puntualidad
    fill_in "Quien vives otro", with: @ficha.quien_vives_otro
    fill_in "Uso celular", with: @ficha.uso_celular
    fill_in "Vestimenta acorde", with: @ficha.vestimenta_acorde
    fill_in "Vestuario", with: @ficha.vestuario
    fill_in "Visa trabajo vigente", with: @ficha.visa_trabajo_vigente
    click_on "Update Ficha"

    assert_text "Ficha was successfully updated"
    click_on "Back"
  end

  test "destroying a Ficha" do
    visit fichas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ficha was successfully destroyed"
  end
end
