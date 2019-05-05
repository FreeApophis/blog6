class BlogPost < ApplicationRecord
  include Commentable

  extend FriendlyId
  friendly_id :title, :use => :history

  has_rich_text :content

  belongs_to :author, class_name: 'User'

  scope :published, -> { where('published_at < ?', Time.zone.now) }
  scope :unpublished, -> { where('published_at >= ?', Time.zone.now) }

  def published?
    published_at && published_at < DateTime.now
  end
end
