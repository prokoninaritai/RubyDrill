def lone_sum(ary)
 uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end
 sum = 0
 uniq_nums.each do |unique_num|
  sum += unique_num
 end
 puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])
lone_sum([3, 2, 3])
lone_sum([3, 3, 3])

#実現したいこと⇒配列の中の数字をたしたい。
#条件⇒配列の中に同じ数字が入っているときは合計する要素に含めない
#配列同士一つ一つ取り出して、同じ数字かどうかを判定していく必要がある
#重複しない数字が足し算の答えになるか、３つとも数字がバラバラですべて足した答えになる

#lone_sum(ary)の引数が[3, 2, 3]だった場合
#空の配列をuniq_numsに格納しておく

#num = 3　の時
#countは0  
#i = 3
#num = i　なので、count = 1
#i = 2
#num = i ではないので、count=1のまま
#i = 3
#num = i なので、count = 2
#count が２以上（配列に重複している数値がある）なので、
#uniq_nums << numは行われない（<<はuniq_numsの配列にnumの値を追加する）

#num = 2の時
#countは0  
#i = 3
#count = 0
#i = 2
#count = 1
#i = 3
#count = 1

#countが２未満なので、uniq_numsの配列に追加される

#num = 3の時は１番上同様

#sum = 0
  #uniq_nums.each do |unique_num|
    #sum += unique_num
  #end
  #puts sum
#end

#uniq_numsの配列には2が入っている
#sum = 0 + 2
#出力結果は2になる

