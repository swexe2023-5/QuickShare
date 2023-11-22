class MemoIdentifier < ApplicationRecord
    has_many :memo_id
    belongs_to :memo
    
end
