require_relative 'lib/forca'

f = Forca.new
#Enquanto for falso
system('CLS')
until f.venceu do

	puts "--> Informe uma letra (Dica: #{f.palavra_secreta.length} letras)"
	
	letra = gets.chomp
	system('CLS')
	f.adivinhar(letra)

	puts "--- Letras Erradas ---"
	puts f.letras_erradas
end