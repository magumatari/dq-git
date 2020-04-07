class Brave
    def initialize
        @name = "テリー"
        @hp = 500
        @offense = 150
        @defense = 100
    end
    
    def name=(name)
        @name = name
    end
    
    def name
        @name
    end
    
    def hp=(hp)
        @hp = hp
    end
    
    def hp
        @hp
    end
    
    def offense=(offense)
        @offense = offense
    end
    
    def offense
        @offense
    end
    
    def defense=(defense)
        @defense = defense
    end
    
    def defense
        @defense
    end

end

brave = Brave.new


puts "NAME:#{brave.name}"
puts "HP:#{brave.hp}"
puts "OFFENSE:#{brave.offense}"
puts "DEFENSE:#{brave.defense}"
