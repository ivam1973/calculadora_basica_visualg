Algoritmo "16-09-21-calculadora-legal-v1.0"
// Disciplina: Lógica de Programação
// Professor:  Edilson Valentim dos Santos Bitencourt
// Descrição:  Calculadora Legal
// Autor:      Aluno (Ivam Steffens Oliveira)
// Data atual: 16/09/2021
// Linguagem:  Visulag 3.0.7.0
Var
   resultado, num1, num2: real
   operacao: caracter

procedimento banner
inicio
      escreval("  _                         _   _   _       ")
      escreval(" /   /\  |  /  | | |   /\  | \ / \ |_)  /\  ")
      escreval(" \_ /--\ |_ \_ |_| |_ /--\ |_/ \_/ | \ /--\ ")
fimprocedimento

procedimento separador
inicio
      escreval("********************************************")
fimprocedimento

procedimento amarelo
inicio
      mudacor("Amarelo", "frente")
fimprocedimento

procedimento verde
inicio
      mudacor("Verde", "frente")
fimprocedimento

procedimento vermelho
inicio
      mudacor("Vermelho", "frente")
fimprocedimento

procedimento azul
inicio
      mudacor("Azul", "frente")
fimprocedimento

procedimento entradaDeDados
inicio
      escreval()
      escreva("Digite o primeiro número => ")
      leia(num1)
      escreva("Digite o segundo  número => ")
      leia(num2)
fimprocedimento

procedimento escolherOperacao
inicio
      escreval("")
      escreval("Escolha a operação: ( ou tecle s para fechar)")
      escreva("  +    -    *   /   => ")
      leia(operacao)
      escreva()
fimprocedimento

procedimento mostrarResultado
inicio
      escreval()
      escreval("==>>>  CÁLCULO REALIZADO COM SUCESSO  <<<==")
      escreval("       O resultado do cálculo é: ", resultado:2:2)
      separador
      escreval()
      escreval()
fimprocedimento

procedimento validarSinal
var
sinal: caracter
inicio
      se (sinal <> "+") ou (sinal <> "-") ou (sinal <> "*") ou (sinal <> "/") entao
        escreval()
        escreval("=>>      A   T   E   N   C   Ã   O      <<=")
        escreval("=>>  Digite somente caracteres válidos  <<=")
         separador
         escreval()
      fimse
fimprocedimento

funcao somar(x,y: real): real
inicio
      retorne x + y
fimfuncao

funcao sub(x,y: real): real
inicio
      retorne x - y
fimfuncao

funcao mult(x,y: real): real
inicio
      retorne x * y
fimfuncao

funcao divid(x,y: real): real
inicio
      retorne x / y
fimfuncao

inicio
limpatela
banner
 enquanto operacao <> "s" faca

   validarSinal
    escolherOperacao

   escolha operacao

   caso "+"
      entradaDeDados
       resultado <- somar(num1, num2)
        separador
         amarelo
          mostrarResultado

   caso "-"
      entradaDeDados
       resultado <- sub(num1, num2)
        separador
         verde
          mostrarResultado

   caso "*"
      entradaDeDados
       resultado <- mult(num1, num2)
        separador
         azul
          mostrarResultado
         
   caso "/"
      entradaDeDados
       resultado <- divid(num1, num2)
        separador
         vermelho
          mostrarResultado
         
   fimescolha
fimenquanto

Fimalgoritmo
