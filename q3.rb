def is_prime?(n)
  for x in (2...n)
    if n%x==0
      return false
    end
  end
  true
end

p is_prime?(12)
p is_prime?(13)
