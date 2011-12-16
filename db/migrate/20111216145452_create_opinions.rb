class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.integer :op_result
      t.references :user

      t.timestamps
    end
    add_index :opinions, :user_id
  end
end
