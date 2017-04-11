-- TITLE: Random.lua
-- AUTHOR: Guilherme Marques
-- VERSION: 1.0
-- DATE: 10/04/2017
-- CONTENT: 30 lines

local random = {}

-- Função auxiliar que gera um número aleatório entre 1 e um limite superior
-- PRE: upper_bound é um inteiro
-- POS: é retonado um inteiro entre 1 e o limite superior(upper_bound) passado como parâmetro
function random.generate_number(upper_bound)
  return math.random(upper_bound)
end

-- Função auxiliar que checa se o valor selecionado é um inteiro válido
-- PRE: upper_bound é uma string
-- POS: é retonado true se é um string de um inteiro e false se não
function random.validate_number(number)
  if number == nil then
    return false
  elseif number < 2 then
    return false
  else
    return true
  end
end

return random
