class CreateTDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :t_degrees do |t|
      t.string :name

      t.timestamps
    end
  end
end
