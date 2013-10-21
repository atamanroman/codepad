class Snippet < ActiveRecord::Base

  before_create :set_default_values
  validates :code, presence:git  true

  def set_default_values
    self.title = 'untitled' if self.title.blank?
    self.author = 'unknown' if self.author.blank?
  end

end
