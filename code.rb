# frozen_string_literal: true

require 'pry'

def caesar_cipher(_str, number)
  @array_of_letters = _str.split('')
  @caesar_cipher = []
  @array_of_letters.each do |chr|
    @new_position = chr.ord + number
    if (65..90).include?(chr.ord) && @new_position > 90
      @caesar_cipher << (64 + @new_position - 90).chr
    elsif (65..90).include?(chr.ord)
      @caesar_cipher << @new_position.chr
    elsif (97..122).include?(chr.ord) && @new_position > 122
      @caesar_cipher << (96 + @new_position - 122).chr
    elsif (97..122).include?(chr.ord)
      @caesar_cipher << @new_position.chr
    end
  end
  @caesar_cipher.join('')
end
