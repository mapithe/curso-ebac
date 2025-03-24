# curso-ebac
Arquivos criados no curso de formação analista de dados da EBAC

## Projeto 1  - Calculadora - execução

Para executar o arquivo calculadora.sh, utilizaremos o comando
chmod 644 calculadora.sh

Depois disso, executaremos o arquivo com o comando
./calculadora.sh

O arquivo deve exibir uma mensagem de boas vindas e pedir ao usuário para digitar dois números.
Depois que esses dois números forem digitados, o usuário deverá escolher dentre as opções de operação a serem realizadas.
Uma vez escolhida a operação, será mostrado o resultado.
Se o usuário escolher uma opção inválida, receberá uma mensagem para que escolha uma opção válida.

## Projeto 1 - Calculadora - Código
Esse script faz cálculos de operações básicas, considerando dois números.

Utilizando o editor nano, criaremos o arquivo calculadora.sh, cujo código é
#!/bin/bash
echo "Olá! Bem-vindo à calculadora"


read -p "Digite o primeiro número (x): " num1
read -p "Digite o segundo número (y): " num2


echo "Escolha a operação a ser realizada: "
echo "(1) Adição"
echo "(2) Subtração"
echo "(3) Multiplicação"
echo "(4) Divisão"


read -p "Digite a opção desejada: " operacao


case $operacao in
  1) echo "Adição (x+y) = $(echo "$num1 + $num2" | bc)" ;;
  2) echo "Subtração (x-y) = $(echo "$num1 - $num2" | bc)" ;;
  3) echo "Multiplicação (x*y) = $(echo "$num1 * $num2" | bc)" ;;
  4) echo "Divisão (x/y) = $(echo "scale=2; $num1 / $num2" | bc)" ;;
  *) echo "Escolha uma opção válida" ;;
esac
