people=[]
File.open("challenge2input.txt").each_with_index { |line, influenceId|
  influence =   line.split(//)
  people[influenceId] = []
  influence.each_with_index{ |x, i| people[influenceId] <<i if x == 'X' 
                           }
}


def countp(peopleList, person)
  influence_count = 0

  peopleList[person].each do |x|
    influence_count +=1
    influence_count += countp(peopleList, x)
  end
  influence_count
end

total = []
(0..99).each{ |i| total[i] = countp(people, i) }
total = total.sort
puts total[-3..-1]

