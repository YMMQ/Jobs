class CreateAddvs < ActiveRecord::Migration[5.0]
  def change
    create_table :addvs do |t|
      t.string :addv_title
      t.string :image
      t.references :newspaper, foreign_key: true
      t.references :city, foreign_key: true
      t.references :organization, foreign_key: true
      t.date :addv_date
      t.date :last_date

      t.timestamps
    end
  end
end
