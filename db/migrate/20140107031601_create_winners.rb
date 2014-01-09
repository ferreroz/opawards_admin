class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.integer :candidate_id
      t.datetime :publish_date
      t.string :judge
      t.string :comment

      t.timestamps
    end
  end
end
