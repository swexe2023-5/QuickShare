class AddExpirationDateToMemos < ActiveRecord::Migration[7.0]
  def change
    add_column :memos, :expiration_date, :datetime
  end
end
