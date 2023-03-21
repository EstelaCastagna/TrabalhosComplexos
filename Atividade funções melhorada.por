programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Calendario --> calen
	
	funcao inicio() {
		
		cadeia usuario, senha, iniciar
		inteiro tempo_i = 1, tempo_f = 2
		
		escreva ("-----------------------\n")
		escreva("\t LOGIN\t\n")
		escreva ("-----------------------\n")
		escreva("NOME DE USUÁRIO: ")
		leia (usuario)
		escreva ("SENHA: ")
		leia (senha)
		limpa()

		se (usuario == "ADMIN" e senha == "1234") {
			escreva("Login efetuado!")
			escreva("\nIr ao menu (Sim/Não)? ")
			leia(iniciar)
			se (iniciar == "Sim" ou iniciar == "sim"){
			limpa()
			menu()
			}
			senao se (iniciar == "SIM"){
			limpa()
			menu()	
			}
			senao{
			limpa()
			escreva ("Programa Finalizado!\n")
			}
		}
		senao se (usuario != "ADMIN" e senha == "1234") {
			escreva("Usuário inválido!\n")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(1000)
			tempo_i++
			limpa()
		}
		inicio()
		}
		senao se (usuario == "ADMIN" e senha != "1234") {
			escreva("Senha inválida!\n")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(1000)
			tempo_i++
			limpa()
		}
		inicio()
		}
		senao { 
			escreva ("Usuário e senha inválidos.\n")
			
              enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(1000)
			tempo_i++
			limpa()
		}
		limpa()
		inicio()
		}
	
		
	}
	funcao menu() {
		inteiro opcao, tempo_i = 1, tempo_f = 3
		
		escreva("MENU\n")
		para(inteiro i = 0; i < 50; i++) {
		  escreva ("-")
		}
		escreva("\n1) Ponto Eletrônico\n")
		escreva("2) Gerência\n")
		escreva("3) Relatório\n")
		escreva("4) Cadastro de Funcionário\n")
		escreva("5) Setores\n")
		escreva("6) Sair\n")
		para(inteiro i = 0; i < 50; i++) {
		  escreva ("-")
		}
		escreva("\nDigite a opção escolhida: ")
		leia (opcao)
		limpa()

		escolha (opcao) {
			caso 1:
			limpa()
			pontoEletronico()
			pare

			caso 2:
			limpa()
			gerencia()
			pare

			caso 3:
			limpa()
			relatorio()
			pare

			caso 4:
			limpa()
			CDE()
			pare

			caso 5:
			limpa()
			setores()
			pare

			caso 6:
			limpa()
			escreva ("Programa Finzalizado!\n")
			pare

			caso contrario:
			limpa()
			escreva ("Opção Inválida\n")
		
              enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(500)
			tempo_i++
			limpa()
		}
		limpa()
		menu()
		}
		
	}
	funcao pontoEletronico (){
		
		cadeia nome, ponto
		inteiro hora_atual, entrada_h, entrada_m, entrada_s, saida_h, saida_m, saida_s, minuto_atual, segundo_atual, tempo_i = 1, tempo_f = 3
		
		escreva ("Entrada ou saída (E/S)? ")
		leia (ponto)
		limpa()
		se (ponto == "E" ou ponto == "e") {
		escreva ("Insira o nome do funcionário: ")
		leia (nome)
		limpa()
		entrada_h = calen.hora_atual(falso)
		entrada_m = calen.minuto_atual()
		entrada_s = calen.segundo_atual()
		escreva ("-----------------------\n")
		escreva (nome, " ENTRADA ", entrada_h,":", entrada_m,":", entrada_s)
		escreva ("\n-----------------------\n")
		retornarMenu()
		}
		senao se (ponto == "S" ou ponto == "s"){
		escreva ("Insira o nome do funcionário: ")
		leia (nome)
		limpa()
		saida_h = calen.hora_atual(falso)
		saida_m = calen.minuto_atual()
		saida_s = calen.segundo_atual()
		escreva ("-----------------------\n")
		escreva (nome, " SAÍDA ", saida_h,":", saida_m,":", saida_s)
		escreva ("\n-----------------------\n")
		retornarMenu()
		}
		senao {
			limpa()
			escreva ("Opção Inválida\n")
		
              enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(500)
			tempo_i++
			limpa()
		}
		limpa()
		menu()
		}
		
	}

	funcao gerencia() {

		cadeia volta, sair
		inteiro opcao2, tempo_i = 1, tempo_f = 3
		
		escreva("SELECIONE UMA OPÇÃO: \n")
		escreva ("----------------------------\n")
		escreva("1) Relatório\n")
		escreva("2) Cadastro de Funcionário\n")
		escreva("3) Setores\n")
		escreva("4) Acesso às Camêras\n")
		escreva("5) Financeiro\n")
		escreva("6) Voltar ao Menu Inicial\n")
		escreva ("----------------------------\n")
		escreva("Insira a opção desejada: ")
		leia (opcao2)

		escolha (opcao2) {
			
			caso 1:
			limpa()
			relatorio()
			pare

			caso 2:
			limpa()
			cadastroFuncionario()
			pare

			caso 3:
			limpa()
			setores()
			pare

			caso 4:
			limpa()
			escreva("Câmeras exibidas. Digite 'Sair' quando desejar.\n")
			leia (sair)
			retornarMenu() 
			pare

			caso 5:
			limpa()
			financeiro()
			pare

			caso 6:
			limpa()
			retornarMenu()
			pare

			caso contrario:
			limpa()
			escreva ("Opção Inválida\n")
		
              enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i)
			u.aguarde(500)
			tempo_i++
			limpa()
		}
		limpa()
		gerencia() 
		}
		
		}
		

	funcao relatorio() {
		cadeia setor[] = {"Construção", "Segurança", "Equipe Gestão", "Recursos H.", "Programação"}
		inteiro numFuncionario, total_fun = 0

		escreva(" RELAÇÃO DE FUNCIONÁRIOS")
		escreva ("\n--------------------------\n")
		
		para (inteiro posicao = 0; posicao < 5; posicao++)
		{
			numFuncionario=u.sorteia(1,100)
			escreva (setor[posicao], "\t\t", numFuncionario, "\n")
			total_fun = total_fun + numFuncionario
		}
		escreva ("--------------------------\n")
		escreva("Total de funcionários: ", total_fun,"\n")
		retornarMenu()
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
         escreva("\nOs seus dados estão corretos(Sim/Não)? ")
         leia(cas)
         limpa()
         se(cas == "SIM" ou cas == "sim" ){
         	escreva("SEJA BEM VINDO(A) à nossa empresa, ", nome,".\n" )
         	retornarMenu()
         }
         senao se(cas == "Sim"){
         	escreva("SEJA BEM VINDO(A) à nossa empresa, ", nome,".\n" )
         	retornarMenu()
         }
         
         senao {
         	escreva("Deseja corrigir o erro ou abandonar o cadastro? (escolha 1 ou 2 respectivamente) \n")
         	leia(escolhas)
         	
         	se(escolhas == "1"){
           limpa()
           CDE()
         	}

          senao{
           retornarMenu()
          }

         }              	
}
	
	funcao cadastroFuncionario() {
		
		cadeia nome_f, email, rua, bairro
		inteiro idade, n, telefone, cpf

		
		escreva ("------------------------\n")
		escreva ("\tCADASTRO\t")
		escreva ("\n------------------------\n")
		escreva ("Nome: ")
		leia (nome_f)
		escreva ("Idade: ")
		leia (idade)
		escreva ("Telefone: ")
		leia (telefone)
		escreva ("Email: ")
		leia (email)
		escreva ("CPF: ")
		leia (cpf)
		escreva ("Rua: ")
		leia (rua)
		escreva ("Bairro: ")
		leia (bairro)
		escreva ("Número: ")
		leia (n)
		limpa()
		escreva ("Cadastro do(a) ", nome_f," efetuado.")
		retornarMenu()
	}

	funcao setores() {
		escreva("Setores da empresa: \n")
		escreva ("------------------------\n")
		escreva("\nConstrução\n")
		escreva("Segurança\n")
		escreva("Equipe de Gestão\n")
		escreva("Recursos Humanos\n")
		escreva("Programação\n")
		escreva ("------------------------\n")
		retornarMenu()
	}

	funcao financeiro() {
		inteiro meses, renda
		real bruto = 0.0, despesa, saldo
		
		escreva ("Quantos meses deseja analisar? ")
		leia (meses)
		limpa()
		para (inteiro i=1; i<= meses; i++){
		renda=u.sorteia(1,100000)
          escreva("\nA renda do mês " , i, " foi: ", renda)
		bruto = bruto + renda
		}
		escreva ("\nA renda total bruta dos ", meses, " meses é de R$ "+ bruto)
		escreva ("\nInsira o total de despesas dos ", meses, " meses: ")
		leia (despesa)
		saldo = bruto - despesa
		limpa()
		escreva ("O saldo da empresa é de R$ "+saldo)
		retornarMenu()
		 
	}

	funcao retornarMenu() {
		
		cadeia voltaMenu
		escreva("\nVoltar ao menu (Sim/Não)? ")
		leia (voltaMenu)
		se (voltaMenu == "Sim" ou voltaMenu == "sim"){
			limpa()
			menu()
			}
			senao se (voltaMenu == "SIM"){
			limpa()
			menu()	
			}
			senao{
			limpa()
			escreva ("Programa Finalizado!\n")
			}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7955; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */