-- TITLE: Main.lua
-- AUTHOR: Guilherme Marques
-- VERSION: 1.0
-- DATE: 10/04/2017
-- CONTENT: 29 lines

local random = require('Scripts/random')
local IO = require('Scripts/IO')

-- Função responsável por controlar a interação com o usuário
-- PRE: -
-- POS: O menu foi exibido na tela; Caso o usuário entre com um valor que não é válido ele seja notificado; caso ele entre com 0 o programa pare
function main()
  print('Gerador de números inteiros:')
  while true do
    print('---------------')
    print('Selecione um valor maior que 1 para gerar um número ou 0 para sair:')
    input = tonumber(IO.prompt())
    if input == 0 then
      break
    elseif random.validate_number(input) then
      IO.output_random(random.generate_number(input))
    else
      print('Valor não válido')
    end
  end
end

-- inicia a aplicação
main()
