class CateForum < ApplicationRecord
    self.table_name = "forum_cate"
    has_many :forum,
           primary_key: :id_cate, 
           foreign_key: :id_cate_forum
end
