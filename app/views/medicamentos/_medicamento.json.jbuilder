json.extract! medicamento, :id, :medicamento, :dosis, :autonomia_administracion, :adherencia_tratamiento, :pcd_id.integer, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
