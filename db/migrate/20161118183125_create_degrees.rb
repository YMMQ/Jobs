class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.references :t_degree, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
