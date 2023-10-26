class Human:
    
    name="İrem"
    age=25

    def __init__(self,name,age) -> None:
        self.name=name 
        self.age=age
        print("Ypıcı blok çalıştı")
        
    def talk(self,message):
        print(message)

    def walk(self):
        print(f"{self.name} is Walking")

human1 = Human("Selika", 25)
human1.talk("selam")
human1.walk()