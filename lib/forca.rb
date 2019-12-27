require_relative 'palavra'

class Forca
	attr_reader :palavra_secreta
	attr_reader :letras_erradas
	attr_reader :letras_corretas
	attr_reader :venceu

	def initialize
		@palavra_secreta = Palavras.sortearPalavra
		@letras_corretas = []
		limparVetor(palavra_secreta.length-1)
		@letras_erradas = []
		@venceu = false
	end
	def limparVetor(tam)
		x = 0 
		while tam >= x
			letras_corretas[x] = " __ "
			x += 1
		end	
	end

	def adivinhar(letra)
		
		if palavra_secreta.include? letra
			x = 0
			vetor = palavra_secreta.split("")	
			while vetor.length-1 >= x
				if vetor[x] == letra
					letras_corretas[x] = letra
					system('CLS')
					boneco(letras_erradas.length)
					print letras_corretas.join
				end
				x += 1
			end
			puts " "
			if palavra_secreta == letras_corretas.join
				@venceu = true
				puts "Você Ganhou!"
			end	
		else 
			letras_erradas.push(letra)
			boneco(letras_erradas.length)
			print letras_corretas.join
			puts " "
		end
	end

	def boneco(erros)
		if erros == 1
			puts "  o  "
			puts " /|\\"
			puts " /   "
		elsif erros == 2
			puts "  o  "
			puts " /|\\"
			puts "     "
		elsif erros == 3
			puts "  o  "
			puts " /|  "
			puts "     "
		elsif erros == 4
			puts "  o  "
			puts "  |  "
			puts "     "
		elsif erros == 5
			puts "  o  "
			puts "     "
			puts "     "
		elsif erros >= 6
			puts "     "
			puts "     "
			puts "     "
		else
			puts "  o  "
			puts " /|\\"
			puts " / \\"
		end
	end
end





