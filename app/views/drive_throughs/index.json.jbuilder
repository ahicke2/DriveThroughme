json.array!(@drive_throughs) do |drive_through|
  json.extract! drive_through, :id, :user_id, :food, :total_macros
  json.url drive_through_url(drive_through, format: :json)
end
