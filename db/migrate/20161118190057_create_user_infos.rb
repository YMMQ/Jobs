class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.string :fname
      t.string :lname
      t.boolean :gender
      t.date :dob
      t.string :picture
      t.string :mobile
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
