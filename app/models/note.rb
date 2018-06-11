class Note < ApplicationRecord
   has_one :user

   serialize :content, JSON
end
