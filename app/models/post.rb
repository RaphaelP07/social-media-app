class Post < ApplicationRecord
  before_save :set_permalink

  validates :name, presence: true, uniqueness: true

  private

  def set_permalink
    self.permalink = name.parameterize
  end
end
