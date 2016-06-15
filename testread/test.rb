array = Array.new
File.open("SG_hum50_LODG.gro").each do |line|
   array.push line
end


puts array[1..array.length]
