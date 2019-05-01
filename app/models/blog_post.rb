class BlogPost < ApplicationRecord
  has_rich_text :content

  def published?
    published_at < DateTime.now
  end
end
