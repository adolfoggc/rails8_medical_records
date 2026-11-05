class Patient < ApplicationRecord
  require 'date'

  # TODO refactor this method 
  def age
    today = Date.today
    this_year_birthday = Date.new(today.year, birthday.month, birthday.day)
    if this_year_birthday == today
      return {days: 0, months: 0, years: (today.year - birthday.year)} 
    else
      if (this_year_birthday < today)
        if today.day > birthday.day
          # already passed this month
          last_complete_month = Date.new(today.year, today.month, birthday.day)
        else
          last_complete_month = Date.new(today.year, today.month - 1, birthday.day) 
        end
        days = (today - last_complete_month).to_i
        months = last_complete_month.month - birthday.month
        years = today.year - birthday.year
      else
        # birthday still not happened this year
        if today.day > birthday.day
          last_complete_month = Date.new(today.year, today.month - 1, birthday.day)
        else
          last_complete_month = Date.new(today.year, today.month, birthday.day)
        end
        days = (today - last_complete_month).to_i
        months = 12 - (birthday.month - last_complete_month.month)
        years = (today.year - birthday.year) - 1
      end
    end


    return {days: days, months: months, years: years}
  end

  # TODO rename birthday column to birthdate
end
