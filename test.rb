puts "数字を入力してください"
puts "0:グー"
puts "1:チョキ"
puts "2:パー"
select = gets.to_i

class Janken

  def player(select)
    @select = select
  end
  def select
    @select
  end
end

class Opponent
  def enemy
    return rand(3)
  end
end

janken = Janken.new
opponent = Opponent.new

janken.player(select)
me = janken.select
you = opponent.enemy

jan = ["グー","チョキ","パー"]
puts "相手は#{jan[you]}を出しました"

while true
  if (me - you + 3) % 3 == 2
    puts "あなたの勝ちです"
    break
  elsif (me - you + 3) % 3 == 1
    puts "あなたの負けです"
    break
  elsif (me - you + 3) % 3 == 0
    puts "あいこで〜"
    break
  end
end
