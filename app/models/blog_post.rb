class BlogPost < ApplicationRecord

  def published?
    published_at < DateTime.now
  end
end
