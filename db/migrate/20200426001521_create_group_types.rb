class CreateGroupTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :group_types do |t|
      t.string :option

      t.timestamps
    end
    add_index :group_types, :option, unique: true
  end
end
