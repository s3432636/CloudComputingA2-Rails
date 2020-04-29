class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :fname
      t.string :lname
      t.text :bio
      t.date :dob
      t.string :password_digest
      t.references :gender, null: false, foreign_key: true
      t.string :profile_image
      t.string :city
      t.string :post_code
      t.datetime :last_active
      t.boolean :is_private
      t.boolean :is_active
      t.boolean :is_banned
      t.boolean :is_admin

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
