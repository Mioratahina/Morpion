require 'pry'

class Game
	attr_accessor :player, :symbol_of_player
	case_used = []

	def initialize(name, symbol)
		@player = name
		@symbol_of_player = symbol
		@empty_case = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
	end

	def asking_choice
		puts "Voici les choix encore disponible : "
		empty_case.each do |vide|
			puts @empty_case[vide].join(', ')
		end
	end

	def making_choice
		case_used = []
		puts "Entrer votre choix :"
		choice = gets.chomp
		case choice
		when "A1"
			a1 = joeur_symbole
    when "A2"
      a2 = joeur_symbole
    when "A3"
      a3 = joeur_symbole
    when "B1"
      b1 = joeur_symbole
    when "B2"
      b2 = joeur_symbole
    when "B3"
      b3 = joeur_symbole
    when "C1"
      c1 = joeur_symbole
    when "C2"
      c2 = joeur_symbole
    when "C3"
      c3 = joeur_symbole
    else
    	puts "choix invalidé, rechoisir : "
    	choice = gets.chomp
    end
    case_used << choice
    return case_used
  end

	def delete_case_used
		case_used = making_choice
		case_used.each do |i|
			empty_case.each do |j|
				if i == j
					empty_case.delete(j)
				end
			end
		end
	end