json.array!(@journeys) do |journey|
  json.extract! journey, :id, :startdate, :enddate, :content, :headline, :media, :mediacaption, :mediacredit
  json.url journey_url(journey, format: :json)
end
