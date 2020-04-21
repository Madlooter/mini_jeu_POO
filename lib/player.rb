

class Player
	attr_accessor :name, :life_points

	def initialize(name, life_points=10)
		@name = name
		@life_points = life_points
	end

	def self name
		return name
	end

	def self life_points
		return life_points
	end

	def show_state
		"#{name} a #{life_points} points de vie."
	end

	def gets_damage(damage)
		@life_points -= damage
		if life_points <= 0
			puts "le joueur #{name} a été tué !"
		end
	end

	def attacks(attacked_player)
		damage_inflicted = compute_damage
		puts "Le joueur #{name} attaque le joueur #{attacked_player.name}"
		puts "Il lui inflige #{damage_inflicted} points de dommages"
		attacked_player.gets_damage(damage_inflicted)
	end

	def compute_damage
    	return rand(1..6)
  	end

end 