class Banner < ActiveRecord::Base
  attr_accessible :content, :url

  validates :content, presence: true

  def paragraph(n)
    content.split("\n")[n]
  end
end
