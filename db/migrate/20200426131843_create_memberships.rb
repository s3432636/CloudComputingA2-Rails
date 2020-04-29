class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.bigint :user_id
      t.bigint :group_id
      t.references :role, null: false, foreign_key: true
      t.boolean :is_banned

      t.timestamps
    end
    add_index :memberships, :user_id
    add_index :memberships, :group_id
    add_index :memberships, [:user_id, :group_id], unique: true
  end
end
