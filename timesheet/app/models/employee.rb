class Employee < ActiveRecord::Base
  has_many :timecards

  def full_name
    firstName + ' ' + lastName
  end

end
