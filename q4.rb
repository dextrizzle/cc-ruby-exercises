def parse(hash)
  hash.each do |key,value|
    cities = []
    value.each do |city|
      cities << city
    end
    *a, x = cities.join(', ').split(',',-1)
    p "#{key} has #{value.length} main cities: #{a.join(',')+' and'+x}"
  end
end

# BC has 3 main cities: Vancouver, Victoria and Prince George
# AB has 2 main cities: Edmonton and Calgary

major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}
parse(major_cities)
