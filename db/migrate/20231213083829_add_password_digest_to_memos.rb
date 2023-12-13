class AddPasswordDigestToMemos < ActiveRecord::Migration[7.0]
  def change
    add_column :memos, :password_digest, :string
  end
end
