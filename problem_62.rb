found = false
permutations = 5
number = 345

cubes = {}

until found
  number += 1
  key = (number**3).to_s.chars.sort.join
  unless cubes.has_key? key
  cubes[key] = [number, 0]  
  end
  cubes[key][1] += 1
  found = cubes[key][1] == permutations
end

puts cubes.select{ |k,v| v[1] == permutations}.values[0][0]