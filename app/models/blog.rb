class Blog < ApplicationRecord
    self.table_name = "blog"
    belongs_to :cate_blog,foreign_key: :cate_parent
end
