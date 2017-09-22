class CreateAnnkissamers < ActiveRecord::Migration[5.1]
  def change
    create_table :annkissamers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
