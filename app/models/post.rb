class Post < ApplicationRecord
  validates_presence_of :title
  has_rich_text :content
  has_many :comments, dependent: :destroy

  after_update_commit -> { broadcast_replace_to itself }
  # broadcasts_to :post
end
