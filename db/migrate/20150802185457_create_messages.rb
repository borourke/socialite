class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :author_id
      t.integer :group_id
      t.text :message, null: false

      t.timestamps
    end
  end
end
