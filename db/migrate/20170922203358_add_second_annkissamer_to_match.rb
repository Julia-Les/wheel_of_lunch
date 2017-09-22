class AddSecondAnnkissamerToMatch < ActiveRecord::Migration[5.1]
  def change
    change_table :matches do |m|
      m.rename :annkissamer_id, :annkissamer1_id
    end

    add_column :matches, :annkissamer2_id, :integer
  end
end
