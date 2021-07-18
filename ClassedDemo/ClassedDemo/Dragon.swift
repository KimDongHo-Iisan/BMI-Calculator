
class Dragon : Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly Forwards")
    }
    
    override func attack() {
        super.attack() // SuperClass의 Attack 메소드를 사용하고 싶을때에는 super 키워드를 사용하면 사용할수 있게 된다. 
        print("Spits Fires, does 10 damage")
    }
}
