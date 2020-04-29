class CreateSkillLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :skill_levels do |t|
      t.string :name

      t.timestamps
    end
    add_index :skill_levels, :name, unique: true
  end
end
