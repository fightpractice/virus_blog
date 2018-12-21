class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :type
      t.integer :user_id
      t.text :content
      t.string :subject_type
      t.string :subject_id
      t.integer :liked_counter, default: 0
      t.integer :viewed_counter, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
