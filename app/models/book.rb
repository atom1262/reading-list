class Book < ActiveRecord::Base
  belongs_to :genre

  scope :recently_finished, ->{ where('finished_on > ?', 15.days.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected

  def set_keywords
    self.keywords = [title, author, description].map(&:downcase).join(' ')
  end

end
