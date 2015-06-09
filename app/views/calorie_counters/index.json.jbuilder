json.array!(@calorie_counters) do |calorie_counter|
  json.extract! calorie_counter, :id
  json.url calorie_counter_url(calorie_counter, format: :json)
end
