require './character'

class Monster < Character

    POWER_UP_RATE = 1.5
    CALC_HALF_HP = 0.5
    
    def initialize(**params)
        @name = params[:name]
        @hp = params[:hp]
        @offense = params[:offense]
        @defense = params[:defense]
        
        @transform_flag = false
        
        @trigger_of_transform = params[:hp] * CALC_HALF_HP
    end
    
    def attack(brave)
        if @hp <= @trigger_of_transform && @transform_flag == false
            
            @transform_flag = true
            
            transform
        end
        
        puts "#{@name}の攻撃"
        
        damage =calculate_damage(target: brave)
        
        cause_damage(target: brave, damage: damage)
        
        puts "#{brave.name}の残りHPは#{brave.hp}だ"
    end
    
    private
    
        def calculate_damage(**params)
            target = params[:target]
            
            @offense - target.defense
        end
    
        def cause_damage(**params)
            damage = params[:damage]
            target = params[:target]
                
            target.hp -= damage
            
            target.hp =0 if target.hp < 0
            
            puts "#{target.name}は#{damage}のダメージを受けた"
        end
        def transform
            transform_name = "ドラゴン"
            
            puts <<~EOS
            #{@name}は怒っている
            #{@name}は#{transform_name}に変身した
            EOS
            
            @offense *= POWER_UP_RATE
            
            @name = transform_name
        end
end