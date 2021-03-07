require "./character.rb"
require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "もときち", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "クラーケン", hp: 210, offense: 140, defense: 80)

puts "#{monster.name}が現れた！"

loop do
  brave.attack_brave(monster)
  monster.attack_monster(brave) if monster.hp > 0
   puts <<~TEXT
   *=*=*=*=*=*=*=*=*=*=*=*
   【#{brave.name}】HP: #{brave.hp}
   【#{monster.name}】HP: #{monster.hp}
   *=*=*=*=*=*=*=*=*=*=*=*
   TEXT
  break if monster.hp == 0 || brave.hp == 0
end
if monster.hp <= 0
  puts "#{monster.name}をやっつけた！"
 else
  puts "#{brave.name}は死んだ。"
end