def end_other(a, b)
  a_down=a.downcase
  b_down=b.downcase
  a_len=a.length
  b_len=b.length

  if b_down.slice(-(a_len)..-1) == a_down || a_down.slice(-(b_len)..-1) == b_down
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
end_other('Hiabc', 'abc') 
end_other('AbC', 'HiaBc')
end_other('abc', 'HaIoBc')