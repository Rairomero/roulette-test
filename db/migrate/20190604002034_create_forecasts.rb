# frozen_string_literal: true

class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.date :date
      t.boolean :hot
      t.timestamps
    end
  end
end
