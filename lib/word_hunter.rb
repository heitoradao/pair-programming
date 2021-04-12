class WordHunter
  def self.find_words(matrix, words)
    array = []
    array += busca_horizontal(matrix, words)
    array += busca_vertical(matrix, words)
  end


  def self.busca_vertical(matrix, words)
    array = []
    words.each do |w|
      
      for coluna in 0...(matrix[0].size)
        palavra = ""
        for linha in 0...(matrix.size)
          palavra += matrix[linha][coluna]
        end

        if palavra.include? w
          array << w
        end
      end
    end
    array
  end

  def self.busca_horizontal(matrix, words)
    array = []
    words.each do |w|
      matrix.each do |item|
        if item.join.include?(w)
          array << w
        end
      end
    end
    array
  end
end
