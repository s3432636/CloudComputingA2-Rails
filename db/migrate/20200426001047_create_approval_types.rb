class CreateApprovalTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :approval_types do |t|
      t.string :option

      t.timestamps
    end
    add_index :approval_types, :option, unique: true
  end
end
