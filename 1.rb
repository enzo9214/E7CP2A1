 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

 print a.map{|v| v += 1 }
 puts "\n***********************************"
 print a.map{|v| v.to_f}
 puts "\n***********************************"
 print a.map{|v| v.to_s}
 puts "\n***********************************"
 print a.reject{|v| v < 5}
 puts "\n***********************************"
 print a.select{|v| v < 5}
 puts "\n***********************************"
 print a.inject(0){|sum,v| sum+=v}
 puts "\n***********************************"
 print a.group_by{|v| v.even?}
 puts "\n***********************************"
 print a.group_by{|v| v>6}