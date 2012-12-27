require 'logger'
require 'wunderground'
require 'json'

class WunderAlmanacManager < WunderBase
  log = Logger.new(STDOUT)
  log.level = Logger::INFO

  def store_almanac
    c = get_almanac
    d = Time.now.at_midnight.utc
    # if we need to..
    a = Climate.find_or_initialize_by_location_and_month_and_day(@location, d.month, d.day)
    if a.new_record? or a.updated_at < d
      a.avg_high_temp = c["temp_high"]["normal"]["F"].to_i
      a.avg_low_temp = c["temp_low"]["normal"]["F"].to_i
      a.record_high_temp = c["temp_high"]["record"]["F"].to_i
      a.record_high_temp_year = c["temp_high"]["recordyear"].to_i
      a.record_low_temp = c["temp_low"]["record"]["F"].to_i
      a.record_low_temp_year = c["temp_low"]["recordyear"].to_i
      a.mean_temp = (a.avg_high_temp + a.avg_low_temp) / 2
      a.save!
    end
  end

  def get_almanac
    @api.almanac_for(@location)["almanac"]
  end
end

w = WunderAlmanacManager.new
c = w.store_almanac
