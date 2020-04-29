class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.references :sport, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :profile_image
      t.references :approval_type, null: false, foreign_key: true
      t.references :group_type, null: false, foreign_key: true
      t.boolean :has_skill_requirement
      t.references :skill_level, null: false, foreign_key: true
      t.boolean :has_max_capacity
      t.bigint :max_capacity
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :post_code
      t.boolean :is_private
      t.boolean :is_active
      t.boolean :is_banned

      t.timestamps
    end
  end
end
