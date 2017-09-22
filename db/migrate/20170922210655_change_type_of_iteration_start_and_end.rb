class ChangeTypeOfIterationStartAndEnd < ActiveRecord::Migration[5.1]
  def change
    remove_column :iterations, :start_date, :datetime
    remove_column :iterations, :end_date, :datetime

    add_column :iterations, :start_date, :date
    add_column :iterations, :end_date, :date
  end
end
