class Post < ApplicationRecord
  belongs_to :discussion, counter_cache: :post_count, touch: true
  belongs_to :user, default: -> { Current.user }

  has_rich_text :body

  validates :body, presence: true
end
