#!/bin/bash

echo "Digite o primeiro numero:"
read num1

echo "Digite o segundo numero:"
read num2
echo
soma=$[num1+num2]
echo "O resultado da soma é:" $soma
echo
sub=$[num1-num2]
echo "O resultado da subtração é:" $sub
echo
mult=$[num1*num2]
echo "O resultado da multiplicação é:" $mult
echo
div=$[num1/num2]
echo "O resultado da divisão é:" $div
echo


