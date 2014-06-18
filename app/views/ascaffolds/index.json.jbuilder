json.array!(@ascaffolds) do |ascaffold|
  json.extract! ascaffold, :id
  json.url ascaffold_url(ascaffold, format: :json)
end
