Algoritmo "menu.cliente.destino"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Marcelo Vasques
// Descri��o   : menu para simular um cadastro para uma ag�ncia de viagens com as seguintes fun��es: cadastro de cliente e cadastro de destino, criar tamb�m uma consulta para cada estrutura de dados.
// Autor(a)    : Juliana Souza Alves Brand�o
// Data atual  : 27/07/2023
Var
// Se��o de Declara��es das vari�veis 
   opcao: inteiro
   vetCliente: vetor [ 1..10] de caracter
   vetDestino: vetor [ 1..10] de caracter
   quantidadeCliente, i: inteiro
   quantidadeDestino, d: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   procedimento cadastroCliente ()
 Inicio
   escreval ("Cadastrar cliente: ")
   leia (vetCliente [quantidadeCliente])
   quantidadeCliente <- quantidadeCliente +1
Fimprocedimento

procedimento cadastroDestino ()
 Inicio
   escreval ("Cadastrar destino: ")
   leia (vetDestino [quantidadeDestino])
   quantidadeDestino <- quantidadeDestino +1
Fimprocedimento

procedimento listarClientes ()
 Inicio
   escreval ("Clientes:")
   para i de 1 at� quantidadeCliente -1 faca
      escreval("Cliente",i,":")
      escreval ("Nome: ",vetCliente[i])
   fimpara
Fimprocedimento

procedimento listarDestino ()
 Inicio
   escreval ("Destino:")
   para d de 1 at� quantidadeDestino -1 faca
      escreval("Destino",d,":")
      escreval("Destino:",vetDestino[d])
   fimpara
Fimprocedimento

   quantidadeCliente <- 1
   quantidadeDestino <- 1
   enquanto Opcao <> 10  faca
      escreval( "Escolha uma op��o")
      escreval ("1.Cadastrar cliente: ")
      escreval ("2.Lista de clientes")
      escreval ("3.Cadastrar o destino: ")
      escreval ("4.Lista de destino")
      escreval ("5.Sair")
      leia (Opcao)

      escolha Opcao
      caso 1
         se quantidadeCliente <= 10 entao
            cadastroCliente ()
         senao
            escreval ("N�o � poss�vel cadastrar cliente")
         fimse

      caso 2
         se quantidadeCliente -1 > 0 entao
            listaClientes ()

         senao
            escreval (" N�o h� clientes cadastrados")
         fimse

         caso 3
         se quantidadeDestino <= 10 entao
            cadastroDestino ()
         senao
            escreval ("N�o � poss�vel cadastrar destino")
         fimse

      caso 4
         se quantidadeDestino -1 > 0 entao
            listaDestino ()

         senao
            escreval (" N�o h� destino cadastrados")
         fimse

      caso 5
         escreval ("At� logo")
      outrocaso
         escreval ("op��o inv�lida")
      fimescolha

   fimenquanto


Fimalgoritmo