json.array!(@frequently_askeds) do |frequently_asked|
  json.extract! frequently_asked, :id
  json.url frequently_asked_url(frequently_asked, format: :json)
end
