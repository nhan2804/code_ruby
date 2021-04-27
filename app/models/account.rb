class Account < ApplicationRecord
    has_many :forum,
           primary_key: :id, 
           foreign_key: :auth_post
    has_many :comment,
           primary_key: :id, 
           foreign_key: :id_auth
end
