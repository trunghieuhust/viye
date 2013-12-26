json.extract! @journey, :id, :user_id, :name, :description, :created_at, :updated_at
json.array!(@journey_events) do |journey_event|
  json.extract! journey_event, :id, :startdate, :enddate, :content, :headline, :media, :mediacaption, :mediacredit
  json.url journey_url(journey_event, format: :json)
end
