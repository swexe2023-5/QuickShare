class Memo < ApplicationRecord
  validates :content, presence: true
  validates :password, presence: true, uniqueness: { case_sensitive: false }


  has_secure_password

end
