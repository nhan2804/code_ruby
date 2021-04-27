class CateDocument < ApplicationRecord
    self.table_name = "document_cate"
    has_many :document,
           primary_key: :id_cate, 
           foreign_key: :id_cate
end
