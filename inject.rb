
p [1,2,3,4,1,2,3,4,5,5,5,5].inject({}) { |m, a| m[a] = m[a].to_i+ 1; m }

