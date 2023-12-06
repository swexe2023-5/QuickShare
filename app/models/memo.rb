class Memo < ApplicationRecord
  validates :content, presence: true
  validates :password, presence: true

  before_save :hash_password

  private

  def hash_password
    self.password = BCrypt::Password.create(password)
  end
end
