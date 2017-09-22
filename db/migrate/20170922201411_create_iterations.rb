class CreateIterations < ActiveRecord::Migration[5.1]
  def change
    create_table :iterations do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
