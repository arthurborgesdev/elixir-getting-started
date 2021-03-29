# Time
IO.inspect Time.utc_now

t = Time.utc_now

IO.inspect t.hour
IO.inspect t.minute
# IO.inspect t.day

# Date
d = Date.utc_today

IO.inspect d

{:ok, date} = Date.new(2020, 12, 12)

IO.inspect Date.day_of_week date

IO.inspect Date.leap_year? date

# NaiveDateTime

IO.inspect NaiveDateTime.utc_now

IO.inspect NaiveDateTime.add(~N[2018-10-01 00:00:14], 30)

# DateTime

IO.inspect DateTime.from_naive(~N[2016-05-24 13:26:08.003], "Etc/UTC")