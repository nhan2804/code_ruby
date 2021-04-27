class CateCourse < ApplicationRecord
    self.table_name = "course_cate"
    has_many :course,
    primary_key: :id_cate, 
    foreign_key: :cate_parent
end
