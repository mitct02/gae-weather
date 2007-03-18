class ArchiveStruct < ActionWebService::Struct
	member	:date,      				            :time
	member	:outside_temp,			            :float
	member	:high_outside_temp,	            :float
	member	:low_outside_temp,	            :float
	member	:pressure,					            :float
	member	:outside_humidity,	            :int
	member	:rainfall,					            :float
	member	:high_rain_rate,		            :float
	member	:average_wind_speed,            :int
	member	:high_wind_speed,		            :int
	member	:direction_of_high_wind_speed,	:int
	member	:prevailing_wind_direction,     :int
	member	:inside_temp,			  	          :float
	member	:inside_humidity, 	      	    :int
  member  :number_of_wind_samples,        :int
  member  :average_uv_index,              :int
  member  :high_uv_index,                 :int
  member  :average_solar_radiation,       :int
  member  :high_solar_radiation,          :int
end