seconds_in_year = 365*24*3600
puts 'skol\'ko sekynd prozhul chelovek?'
seconds = gets.chomp
norm_year = seconds.to_i/seconds_in_year
time = Time.new
year_now = time.year
year_begin = year_now - norm_year
days_plus=0
while year_begin != year_now
  if year_begin%4 == 0 and year_begin%100 != 0 
    days_plus+=1
  elsif year_begin%400 ==0
    days_plus+=1
  end
 year_begin+=1
end
full_days = seconds.to_i/(24*3600)+days_plus
full_year = full_days/365
full_months = full_days/30
puts 'etot chelovek prozhul ' +full_year.to_s+' let, ' +full_months.to_s+ ' mesyacev i ' +full_days.to_s+' dnei'
