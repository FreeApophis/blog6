class BlogPost < ApplicationRecord
  include Commentable

  has_rich_text :content

  belongs_to :user

  scope :published, -> { where('published_at < ?', Time.zone.now) }
  scope :unpublished, -> { where('published_at >= ?', Time.zone.now) }

  def published?
    published_at && published_at < DateTime.now
  end
end
