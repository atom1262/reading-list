class Book < ActiveRecord::Base

  scope :recently_finished, ->{ where('finished_on > ?', 15.days.ago)}

  def finished?
    finished_on.present?
  end

end
