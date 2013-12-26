class CreateJourneyEvents < ActiveRecord::Migration
  def change
    create_table :journey_events do |t|
      t.references :journey, index: true
      t.datetime :startdate
      t.datetime :enddate
      t.string :content
      t.string :media
      t.string :mediacaption
      t.string :mediacredit

      t.timestamps
    end
  end
end
