-- TITLE: IO.lua
-- AUTHOR: Guilherme Marques
-- VERSION: 1.0
-- DATE: 10/04/2017
-- CONTENT: 24 lines

local IO = {}

-- Função auxiliar para ler o input do usuário
-- PRE: o texto a ser exibido está em `text`
-- POS: o texto é exibido, retorna o input do usuário
function IO.prompt()
  return io.read()
end

-- Função auxiliar para mostrar um número aleatório
-- PRE: upper_bound deve ser um inteiro
-- POS: é exibido o número gerado aleatoriamente
function IO.output_random(number)
  print('Valor gerado: ' .. number)
end

return IO
