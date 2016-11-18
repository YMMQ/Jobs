class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.references :organization, foreign_key: true
      t.references :profession, foreign_key: true
      t.references :city, foreign_key: true
      t.date :sdate
      t.date :endyear
      t.references :user, foreign_key: true
      t.string :remarks

      t.timestamps
    end
  end
end
