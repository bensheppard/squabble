class CreateDisputeVotes < ActiveRecord::Migration
  def change
    create_table :dispute_votes do |t|
      t.string :vote
      t.integer :dispute_id

      t.timestamps
    end

    add_foreign_key :dispute_votes, :disputes
  end
end
