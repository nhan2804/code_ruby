class Comment < ApplicationRecord
    self.table_name="cmt"
    belongs_to :account,foreign_key: :id_auth
end
