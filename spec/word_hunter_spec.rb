require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = ['BUG']

    expect(WordHunter.find_words(matrix, words)).to eq(['BUG'])
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = ['BUG', 'UVA']

    expect(WordHunter.find_words(matrix, words)).to eq(['BUG'])
  end

  it 'Busca palavras com tamanho menor que a linha da matriz' do
    matrix = [['B', 'U', 'G', 'S'],
              ['J', 'U', 'S', 'z'],
              ['N', 'G', 'S', 'k']]
    words = ['BUG', 'UVA']
    expect(WordHunter.find_words(matrix, words)).to eq(['BUG'])
  end

  it 'Não encontrar nenhuma palavra' do
    matrix = [['U', 'B', 'G', 'S'],
              ['J', 'U', 'S', 'z'],
              ['N', 'G', 'S', 'k']]
    words = ['UVA']

    expect(WordHunter.find_words(matrix, words)).to eq([])
  end

  it 'Ache palavras na vertical' do
    matrix = [['U', 'B', 'G', 'S'],
              ['J', 'U', 'S', 'z'],
              ['N', 'G', 'S', 'k']]
    words = ['BUG', 'UVA']

    expect(WordHunter.find_words(matrix, words)).to eq(['BUG'])
  end

  it 'Ache palavras na vertical, com 4 linhas' do
    matrix = [['F', 'B', 'G', 'S'],
              ['A', 'U', 'S', 'z'],
              ['T', 'U', 'S', 'z'],
              ['O', 'G', 'S', 'k']]
    words = ['FATO']

    expect(WordHunter.find_words(matrix, words)).to eq(['FATO'])
  end
end
