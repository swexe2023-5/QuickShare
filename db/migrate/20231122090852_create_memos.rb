class CreateMemos < ActiveRecord::Migration[7.0]
  def change
    create_table :memos do |t|
      t.text :memo
      t.string :pass
      t.boolean :shared

      t.timestamps
    end
  end
end
