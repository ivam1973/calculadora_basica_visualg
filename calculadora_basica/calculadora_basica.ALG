Algoritmo "16-09-21-calculadora-legal-v1.0"
// Disciplina: L�gica de Programa��o
// Professor:  Edilson Valentim dos Santos Bitencourt
// Descri��o:  Calculadora Legal
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
      escreva("Digite o primeiro n�mero => ")
      leia(num1)
      escreva("Digite o segundo  n�mero => ")
      leia(num2)
fimprocedimento

procedimento escolherOperacao
inicio
      escreval("")
      escreval("Escolha a opera��o: ( ou tecle s para fechar)")
      escreva("  +    -    *   /   => ")
      leia(operacao)
      escreva()
fimprocedimento

procedimento mostrarResultado
inicio
      escreval()
      escreval("==>>>  C�LCULO REALIZADO COM SUCESSO  <<<==")
      escreval("       O resultado do c�lculo �: ", resultado:2:2)
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
        escreval("=>>      A   T   E   N   C   �   O      <<=")
        escreval("=>>  Digite somente caracteres v�lidos  <<=")
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
