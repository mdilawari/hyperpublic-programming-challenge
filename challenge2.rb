$results = []

def karma(x)
  return 1000000 if x<0
  return 0 if x==0

  return $results[x] if $results[x]

  a = [
  1 + karma(x-2),
  1 + karma(x-3),
  1 + karma(x-17),
  1 + karma(x-23),
  1 + karma(x-42),
  1 + karma(x-98)
  ]
  $results[x]=a.min
  a.min
end

puts karma(2349) * karma(2102) * karma(2001) * karma(1747)

