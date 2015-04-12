json.array!(@cores) do |cor|
  json.extract! cor, :id, :nome, :hexadecimal
  json.url cor_url(cor, format: :json)
end
