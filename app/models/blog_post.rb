class BlogPost < ApplicationRecord
  include HasComments
  include HasTenants

  extend FriendlyId
  friendly_id :title, :use => :history

  has_rich_text :content

  belongs_to :author, class_name: 'User'

  scope :published, -> { where('published_at < ?', Time.zone.now) }
  scope :unpublished, -> { where('published_at IS NULL OR published_at >= ?', Time.zone.now) }

  validates :title, presence: true

  def published?
    published_at && published_at < DateTime.now
  end
end
