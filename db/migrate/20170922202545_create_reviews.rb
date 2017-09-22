class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :rating
      t.string :notes
      t.integer :match_id

      t.timestamps
    end
  end
end
