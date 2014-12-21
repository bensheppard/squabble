class CreateSquabbleTable < ActiveRecord::Migration
  def change
    create_table :squabbles do |t|
      t.text :description
      t.text :argument_for
      t.text :argument_against

      t.timestamps
    end
  end
end
