json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :type
  json.url instrument_url(instrument, format: :json)
end
