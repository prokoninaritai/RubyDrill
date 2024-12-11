def near_ten(num)
  total = (num/100) + (num/10 % 10) + (num % 10)
  remainder = total % 10
  
  if remainder <= 2 || remainder >= 8
    puts "True"
  elsif remainder <= 5
    puts "10の倍数との差は#{remainder}です"
  elsif 
    puts "10の倍数との差は#{10-remainder}です" 
  end
end

near_ten(117)
near_ten(123)
near_ten(111)

#百の位を求める　117/100＝1　　Rubyでは整数同士の計算は小数点以下が切り捨てられる
#十の位を求める　117/10=11.7  11%10=1
#一の位を求める　117%10=7    
#total = 1+1+7  ⇒　9
#remainder(残り)= 9%10  ⇒　1あまり1
#if remainder <= 2 || remainder >= 8 条件に合致するので、Trueと出力される