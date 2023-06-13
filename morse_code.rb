MORSE_CODE_ALPHABET = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?'
}.freeze

def decode_character(morse_character)
  MORSE_CODE_ALPHABET[morse_character]
end

def decode_word(morse_word)
  morse_word.split.map { |morse_character| decode_character(morse_character) }.join
end

def decode_sentense(morse_sentense)
  morse_sentense.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

puts decode_sentense('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
