def withdraw(balance, amount)
  fee = 110    # 手数料
  balance -= amount + fee
  if balance >= 0
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000   # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)