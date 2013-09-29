  class Timecard < ActiveRecord::Base
    belongs_to :employee
    has_many :time_card_entries

    validates :weekDate, :presence => true

    def total_hours
      tce_totals = time_card_entries.collect{|tce| tce.total_hours }
      tce_totals.inject{|tce_total, t| tce_total + t}
    end
  end

