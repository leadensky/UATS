class TimeCardEntry < ActiveRecord::Base
  belongs_to :timecard
  belongs_to :project
  belongs_to :timecard_category

  def total_hours
    days.inject{|v, t| v + t }
  end

  private
  def days
    [mon,tue,wed,thu,fri,sat,sun].compact  #remove nils with compact
  end
end