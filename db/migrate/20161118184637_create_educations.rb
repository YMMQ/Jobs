class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.references :institute, foreign_key: true
      t.references :degree, foreign_key: true
      t.integer :tmarks
      t.integer :omarks
      t.date :sdate
      t.date :endyear
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
