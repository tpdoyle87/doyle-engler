class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :thumbnail
end
