class Palavras

	def self.sortearPalavra
		v = []
		File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
			while line = arq.gets
				v.push(line.to_s.chomp)
			end
		end

		v.sample #escolhe um dos meus elementos
		
	end
end
