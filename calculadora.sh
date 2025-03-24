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

