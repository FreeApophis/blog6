class BlogPost < ApplicationRecord
  has_rich_text :content

  scope :published, -> { where('published_at < ?', Time.zone.now) }
  scope :unpublished, -> { where('published_at >= ?', Time.zone.now) }

  def published?
    published_at && published_at < DateTime.now
  end
end
