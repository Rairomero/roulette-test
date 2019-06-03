# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_190_603_202_141) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'bets', force: :cascade do |t|
    t.bigint 'player_id'
    t.bigint 'round_id'
    t.integer 'amount'
    t.integer 'target'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['player_id'], name: 'index_bets_on_player_id'
    t.index ['round_id'], name: 'index_bets_on_round_id'
  end

  create_table 'players', force: :cascade do |t|
    t.string 'name'
    t.string 'lastname'
    t.integer 'balance', default: 10_000
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'rounds', force: :cascade do |t|
    t.integer 'result'
    t.integer 'pot'
  end

  add_foreign_key 'bets', 'players'
  add_foreign_key 'bets', 'rounds'
end
