class CreateMemos < ActiveRecord::Migration[7.0]
  def change
    create_table :memos do |t|
      t.text :content
      t.boolean :shared
      t.string :password

      t.timestamps
    end
  end
end
