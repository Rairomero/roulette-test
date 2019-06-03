class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.references :player, foreign_key: true
      t.references :round, foreign_key: true
      t.integer :amount
      t.integer :target
      t.timestamps
    end
  end
end
