require "date_duration/version"
require 'rubygems'
require 'active_support/all'
require 'i18n'


class Date
  def self.duration(start_date, end_date)
    common_year_days_in_month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    start_date, end_date = end_date, start_date if start_date > end_date

    start_date_year, start_date_month, start_date_day = start_date.year, start_date.month, start_date.day
    end_date_year, end_date_month, end_date_day = end_date.year, end_date.month, end_date.day

    day_duration = end_date_day - start_date_day

    if (day_duration < 0)
      day_duration = common_year_days_in_month[start_date_month-1] - start_date_day + end_date_day
      end_date_month -= 1
    end

    if (end_date_month < 0)
      end_date_month += 12
      end_date_year -= 1
    end

    month_duration = end_date_month - start_date_month

    if (month_duration < 0)
      month_duration += 12
      end_date_year -= 1
    end

    year_duration = end_date_year - start_date_year

    duration_hash =  { :year => year_duration, :month => month_duration, :day => day_duration }

  	duration_array = []
  	["year", "month", "day"].each do |key|
      value = duration_hash[key.to_sym]
      duration_array << value.to_s + " " + ((value > 1)? I18n.t(key.to_s.pluralize, :default => key.to_s.pluralize.to_s) : I18n.t(key.to_s, :default =>  key.to_s)).to_s if value > 0
    end
    duration_hash[:duration] = duration_array.join(" ").to_s
    duration_hash
  end
end
