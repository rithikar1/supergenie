class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :acttask
      t.boolean :completed
      t.references :user

      t.timestamps
    end
    add_index :tasks, :user_id
  end
end
