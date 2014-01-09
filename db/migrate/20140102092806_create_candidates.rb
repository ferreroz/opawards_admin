class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :location
      t.datetime :shooting_date
      t.string :equipment
      t.string :creator
      t.integer :phone_number
      t.string :email
      t.float :exp
      t.string :profession

      t.timestamps
    end
  end
end
