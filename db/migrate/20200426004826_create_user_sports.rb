class CreateUserSports < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sports do |t|
      t.bigint :user_id
      t.bigint :sport_id
      t.references :skill_level, null: false, foreign_key: true

      t.timestamps
    end
    add_index :user_sports, :user_id
    add_index :user_sports, :sport_id
    add_index :user_sports, [:user_id, :sport_id], unique: true
  end
end
