# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.integer :balance, default: 10_000

      t.timestamps
    end
  end
end
