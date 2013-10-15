fraza = gets.chomp

while fraza != 'POKA'
fraza_up = fraza.upcase
 if fraza == fraza_up
   year = 1930+rand(21)
   puts 'NET, NI RAZY S ' +year.to_s+ ' GODA! '
 else 
  puts 'AS\'?! GOVORI GROM4E VNUCHOK! '
 end
 fraza = gets.chomp
end
