Algoritmo "menu.cliente.destino"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Marcelo Vasques
// Descrição   : menu para simular um cadastro para uma agência de viagens com as seguintes funções: cadastro de cliente e cadastro de destino, criar também uma consulta para cada estrutura de dados.
// Autor(a)    : Juliana Souza Alves Brandão
// Data atual  : 27/07/2023
Var
// Seção de Declarações das variáveis 
   opcao: inteiro
   vetCliente: vetor [ 1..10] de caracter
   vetDestino: vetor [ 1..10] de caracter
   quantidadeCliente, i: inteiro
   quantidadeDestino, d: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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
   para i de 1 até quantidadeCliente -1 faca
      escreval("Cliente",i,":")
      escreval ("Nome: ",vetCliente[i])
   fimpara
Fimprocedimento

procedimento listarDestino ()
 Inicio
   escreval ("Destino:")
   para d de 1 até quantidadeDestino -1 faca
      escreval("Destino",d,":")
      escreval("Destino:",vetDestino[d])
   fimpara
Fimprocedimento

   quantidadeCliente <- 1
   quantidadeDestino <- 1
   enquanto Opcao <> 10  faca
      escreval( "Escolha uma opção")
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
            escreval ("Não é possível cadastrar cliente")
         fimse

      caso 2
         se quantidadeCliente -1 > 0 entao
            listaClientes ()

         senao
            escreval (" Não há clientes cadastrados")
         fimse

         caso 3
         se quantidadeDestino <= 10 entao
            cadastroDestino ()
         senao
            escreval ("Não é possível cadastrar destino")
         fimse

      caso 4
         se quantidadeDestino -1 > 0 entao
            listaDestino ()

         senao
            escreval (" Não há destino cadastrados")
         fimse

      caso 5
         escreval ("Até logo")
      outrocaso
         escreval ("opção inválida")
      fimescolha

   fimenquanto


Fimalgoritmo