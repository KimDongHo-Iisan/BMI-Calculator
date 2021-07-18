
let skleton = Enemy()

skleton.attack()
skleton.move()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15 // 이렇게 속성을 변경시킬수도 있음.

dragon.talk(speech: "Fire")
dragon.attack()
dragon.move()
