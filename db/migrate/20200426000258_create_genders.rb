class CreateGenders < ActiveRecord::Migration[6.0]
  def change
    create_table :genders do |t|
      t.string :identity

      t.timestamps
    end
    add_index :genders, :identity, unique: true
  end
end
