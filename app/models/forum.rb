class Forum < ApplicationRecord
    self.table_name = "forum"
    belongs_to :cate_forum,foreign_key: :id_cate_forum
    belongs_to :account,foreign_key: :auth_post
    
end
