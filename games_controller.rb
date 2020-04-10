class Games_contoroller
    EXP_CONSTANS = 2
    GOLD_CONSTANS = 3
    
    def battle(**params)
        brave = params[:barave]
        monster = params[:monster]
    
        loop do
            brave.attack(monster)
            break if monster.hp <= 0
            
            monster.attack(brave)
            break if brave.hp <= 0
        end
    
        if battle_result(brave)
            result = calculate_of_exp_and_gold(monster)
            puts "#{brave}は戦いに勝った"
            puts "#{result[:exp]}の経験値と#{result[:gold]}のゴールドを獲得した"
        else
            puts "#{brave.name}はたたかいに負けた"
            puts "目の前が真っ暗になった"
        end
    end
    
    private
    
        def battle_end?
            character.hp > 0
        end
        
        def battle_result
            brave.hp > 0
        end
        
        def calculate_of_exp_and_gold(monster)
            exp = (monster.offense + monster.defense) * EXP_CONSTANS
            gold = (monster.offense + monster.defense) * GOLD_CONSTAS
            result = {exp: exp ,gold: gold}
            
            result
            
        end
end
