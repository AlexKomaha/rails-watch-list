class Article < ApplicationRecord
  has_one_attached :photo
end

class Article < ApplicationRecord
  has_many_attached :photos
end
