json.array!(@uniformes) do |uniforme|
  json.extract! uniforme, :id, :equipe, :cor_id, :modelo_id
  json.url uniforme_url(uniforme, format: :json)
end
