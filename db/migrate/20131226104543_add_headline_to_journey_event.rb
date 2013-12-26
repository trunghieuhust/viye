class AddHeadlineToJourneyEvent < ActiveRecord::Migration
  def change
    add_column :journey_events, :headline, :string
  end
end
