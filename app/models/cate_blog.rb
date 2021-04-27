class CateBlog < ApplicationRecord
    self.table_name = "blog_cate"
    has_many :blog,
    primary_key: :id, 
    foreign_key: :cate_parent
end
