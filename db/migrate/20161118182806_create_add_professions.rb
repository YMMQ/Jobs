class CreateAddProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :add_professions do |t|
      t.references :addv, foreign_key: true
      t.references :profession, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
