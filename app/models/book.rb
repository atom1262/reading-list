class Book < ActiveRecord::Base

  scope :recently_finished, ->{ where('finished_on > ?', 15.days.ago) }
  scope :search, ->(keyword){ where(title: keyword) if keyword.present? }

  def finished?
    finished_on.present?
  end

end
