class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :annkissamer_id
      t.integer :iteration_id

      t.timestamps
    end
  end
end
