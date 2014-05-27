json.array!(@captodos) do |captodo|
  json.extract! captodo, :id, :name, :finished
  json.url captodo_url(captodo, format: :json)
end
