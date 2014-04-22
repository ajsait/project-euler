class Integer
  def pentagonal?
    penTest = (Math.sqrt(1 + 24 * self) + 1.0) / 6.0
    penTest == penTest.to_i
  end

  def hexagonal?
    hexTest = (Math.sqrt(1 + 8 * self) + 1.0) / 4.0
    hexTest == hexTest.to_i
  end
end

found = false
n = 285
until found
  n += 1
  t = (n * (n + 1))/2
  if (t.pentagonal? and t.hexagonal?)
    found = true
    puts t
  end
end