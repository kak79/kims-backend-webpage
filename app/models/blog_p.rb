class BlogP < ApplicationRecord
  belongs_to :blogs, dependent: :destroy
end
