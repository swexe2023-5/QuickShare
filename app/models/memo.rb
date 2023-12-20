class Memo < ApplicationRecord
  validates :content, presence: true
  validates :password, presence: true, uniqueness: { case_sensitive: false }


  

end
