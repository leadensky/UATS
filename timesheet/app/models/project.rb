class Project < ActiveRecord::Base
  validates :name, :presence => true

  has_many :time_card_entries

end
