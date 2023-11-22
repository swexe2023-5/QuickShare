class CreateMemoIdentifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :memo_identifiers do |t|
      t.integer :memo_id

      t.timestamps
    end
  end
end
