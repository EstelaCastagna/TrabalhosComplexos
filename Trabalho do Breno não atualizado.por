programa
{
	inclua biblioteca Util-->u

funcao inicio() {
	cadeia user, senha
		escreva("Digite seu login: ")
		leia(user)

		escreva("Digite sua senha: ")
          leia(senha)
          
		se(user == "adm" e senha == "senai") {
		escreva("BEM VINDO\n")	
		limpa()
          menu()
		}	

		senao{
			escreva("Usuário ou senha incorretos.\n" )
			limpa()
			inicio()
		}
}                         
funcao menu() {
       
      inteiro opcao
 	
      escreva("\n---------MENU----------\n")
      escreva("1)Ponto eletrônico\n")
      escreva("2)Gerência\n")
      escreva("3)Relatório\n")
      escreva("4)Cadastro de funcionário\n")
      escreva("5)Setores\n")
      escreva("6)Sair do menu\n")
      escreva("Digite a opção: ")
      leia(opcao)
      limpa()
     
      escolha(opcao){

      caso 1:
      pontoE()
      pare

      
      caso 2:
      gerencia()
      pare

      
      caso 3:
      relatorio()
      pare

      caso 4:
      CDE()
      pare

      
      caso 5:
      setor()
      pare

      
      caso 6:
      fim()
      pare

      caso contrario:
      escreva("Opção inválida.")

      	
}
}
   
   funcao pontoE() {       
   	   cadeia colocar, nome
        inteiro tempo_i=1, tempo_f=3


        escreva("Digite seu nome: ")
        leia(nome)
        escreva("Insira seu dedo para bater o ponto e aperte uma tecla.\n")
        leia(colocar)
        limpa()

        escreva("Escaneando\n")
		
	   enquanto (tempo_i<=tempo_f) {
			limpa()
			escreva (tempo_i)
			u.aguarde(500)
			tempo_i++
		}
		limpa()
		menu()
}                

funcao gerencia() {      
	
	   inteiro opec, numale1
        cadeia nof, cpff, logf, senf
 	   
 	    escreva("------Menu do Gerente-----")
         escreva("\n1)Cadastrar funcionário\n")
         escreva("2)Número de funcionários que bateram ponto\n")
         escreva("3)Relatório de renda do mês\n")
         escreva("Digite a opção: ")
         leia(opec)
         limpa()
         
         escolha(opec) {
         	
         caso 1:
              escreva("Escreva o nome do funcionário: ")
              leia(nof)
              escreva("Escreva o CPF do funcionário: ")
              leia(cpff)
              escreva("Login do funcionário: ")
              leia(logf)
              escreva("Escreva uma senha: ")
              leia(senf)

              limpa()
              
              escreva("Login do funcionário: ",logf)
              escreva("\nCPF: ",cpff )
              escreva("\nSenha: ",senf )

              menu()
         pare

         caso 2: numale1=u.sorteia(1,100000)
                 escreva(numale1," funcionários bateram o ponto hoje.")
                 menu()
         pare   

         caso 3:  numale1=u.sorteia(1,100000)
            escreva("A renda do mês foi: ", numale1,",00")
            menu()
         pare

         caso contrario:
           escreva("Opção inválida.")
           gerencia()
          }
             	
 }
funcao relatorio() {        
	    
	    cadeia opc
         inteiro numale
	
         escreva("\n----------Relatórios-----------\n") 
         escreva("1)Número de funcionários\n")
         escreva("2)Número de funcionários com atestado\n")
         escreva("Digite a opção: ")
         leia(opc)
         limpa()

         se(opc == "1"){
		
		numale=u.sorteia(1,100)
         	escreva ("O número de funcionários trabalhando hoje é ",numale, ".\n")

         	menu()
         }


         senao se(opc == "2"){
         	numale=u.sorteia(1,100)
         	escreva("O número de funcionários com atestado hoje é ",numale,".\n")
		
         	menu()
         }

         senao {
               escreva("\nOpção inválida, selecione novamente")
               relatorio()
         }
}                              

funcao CDE() {
            
         cadeia nome, cargo, data, cpf, cas, escolhas
             

         escreva("Digite seu nome completo: ")
         leia(nome)

         escreva("Digite sua data de nascimento: ")
         leia(data)

         escreva("Digite seu CPF: ")
         leia(cpf)

         escreva("Digite seu cargo dentro da empresa: ")
         leia(cargo)
         limpa()
         escreva("Verifique seus dados: \n")       
         escreva("Nome: ",nome,".\n")
         escreva("Data de nascimento: ",data,".\n")
         escreva("CPF: ",cpf,".\n")
         escreva("Cargo: ",cargo,".\n")
         escreva("\nOs seus dados estão corretos?(SIM OU NAO)\n")
         leia(cas)
         limpa()
         se(cas == "SIM" ou cas == "sim" ){
         	escreva("SEJA BEM VINDO(A) à nossa empresa, ", nome,".\n" )
         	menu()
         }
         
         senao {
         	escreva("Deseja corrigir o erro ou abandonar o cadastro? (escolha 1 ou 2 respectivamente) \n")
         	leia(escolhas)
         	
         	se(escolhas == "1"){
             CDE()
         	}

          senao{
           menu()
          }

         }              	
}


funcao setor() {
              
              real lucpre, lucro, preju, acoven, adchapa, chapaven
              inteiro chapa, funcit, refina, opcaoset
              
              escreva("Escolha o setor.\n")
            
              escreva("1)/nSetor financeiro.\n")
              escreva("2)Setor comercial.\n")
              escreva("3)Setor operacional.\n")
              escreva("Digite a opção: ")
              leia(opcaoset)
              limpa()

               escolha(opcaoset){

               caso 1:
               escreva("Digite 1 para lucro ou 2 para prejuízo mensal da empresa: ")
               leia(lucpre)
               
               se(lucpre == 1 ){
               escreva("Lucro de: ")
               leia(lucro)

               escreva("A empresa teve lucro de: ",lucro)

                menu()
               }

               senao{
               	escreva("Prejuízo de: ")
               	leia(preju)

               	escreva("A empresa teve prejuízo de: ", preju)

               	menu()
               }
               pare




               caso 2:
                   escreva("Quantidade de aço vendido em kg: ")
                   leia(acoven)

                   escreva("Valor da chapa de aço em dollar: ")
                   leia(adchapa)

                   escreva("Informe o número chapas vendidas: ")
                   leia(chapaven)

                   escreva("\nA empresa vendeu ",acoven,"kg de aço, ",chapaven," chapas de aço com o valor da chapa em ",adchapa," dollares.")

                   menu()
                 
               pare

               caso 3:
               escreva("Informe o número de chapas de aço utilizadas no dia: ")
               leia(chapa)
               escreva("Informe o número de funcionários trabalhando no dia: ")
               leia(funcit)
               escreva("Informe o número de refinados no dia: ")
               leia(refina)

               escreva("Número de chapas: ",chapa,".\n")
               escreva("Número de funcionários: ",funcit,".\n")
               escreva("Número de itens refinados: ",refina,".\n")

               menu()
               
               pare

               caso contrario:
               escreva("Opção inválida.")
               setor()

               }	
}
funcao fim() {
            	escreva("Obrigado, tenha um bom dia")
            }

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */