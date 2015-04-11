class Favorite < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :article_id
  validates_uniqueness_of :article_id, scope: :user
  scope :user_articles, ->(article_id){ where(article_id: article_id) }
end
