programa
{

	inclua biblioteca Matematica --> mat
	
     cadeia matriz[][]= {{"243","Pedro","2800.00","28%","5h"},
	                      {"034","Miguel","4820.00","24%","5h"},
	                      {"373","Julio","574.00","10%","3h"},
	                      {"473","Ronaldo","1820.00","5%","1h"},
	                      {"321","Antonio","3200.00","12%","2h"}}

	inteiro extra[] =  {5,5,3,1,2}
	
	real salarios[][] = {{2800.0,28.0},
					{4820.0,24.0},
					{574.0,10.0},
					{1820.0,5.0},
					{3200.0,12.0}}

	real Fhor[5], FComs[5], SALtot[5], EXTtot[5], arredondar[5], com[5]

     funcao inicio(){
		 limpa()
		 calculos()
		 escreva("-----------------------------------------------------")
		 escreva("\n                   TABELA DE DADOS")
		 escreva("\n-----------------------------------------------------\n")
		 escreva("ID\tNOME\t\tSALÁRIO\t\tCOMISSÃO  H\n")
		 escreva("-----------------------------------------------------\n")
         para(inteiro l = 0 ; l<5; l++){
         	   para(inteiro c= 0; c<5;c++ ){
         	   escreva("[",matriz[l][c],"] \t")
         	   }
         	   escreva("\n")
         }
         
     	menu()
     }


	
	funcao menu()
	{
	   
	   
	   inteiro opc


		escreva("\n-----------------------------------------------------")
		escreva("\n                       MENU")
		escreva("\n-----------------------------------------------------\n")
	     escreva("1) Procurar dados de um funcionário.\n")
          escreva("2) Ordenar tabela por ordem alfabética.\n")
          escreva("3) Realizar cálculo de salário de um funcionário.\n")
          escreva("-----------------------------------------------------\n")
          escreva("Digite a opção desejada: ")
	   
        leia(opc)
        limpa()

        escolha(opc){

        caso 1: 
        caso1()
        pare
        
        caso 2:
        
        pare
        
        caso 3:
        caso3()
        pare
        
        caso 4:
        pare
        
        caso 5:
        pare


        	
        }
	}
	funcao calculos(){
		para(inteiro i = 0; i<5; i++){
			//240 = valor de 30 dias trabalhados, contando sabado e domingo como descanso semanal remunerado
			Fhor[i]= salarios[i][0] / 240
            	EXTtot[i] = Fhor[i] * extra[i]
            	arredondar[i]= mat.arredondar(EXTtot[i], 2)
            	com[i] = (salarios[i][1]/100)
               FComs[i]= salarios[i][0] * com[i]
               SALtot[i]= salarios[i][0] + FComs[i] + arredondar[i]
		}
	}

     funcao caso1(){
          limpa()

          
          cadeia funcdesejad, SN,buscacas1

           escreva("-----------------------------------------------------")
		 escreva("\n                   TABELA DE DADOS")
		 escreva("\n-----------------------------------------------------\n")
		 escreva("ID\tNOME\t\tSALÁRIO\t\tCOMISSÃO  H\n")
		 escreva("-----------------------------------------------------\n")
         para(inteiro l = 0 ; l<5; l++){
         	   para(inteiro c= 0; c<5;c++ ){
         	   escreva("[",matriz[l][c],"] \t")
         	   }
         	   escreva("\n")
         }
         escreva("-----------------------------------------------------\n")
        escreva(("\n1) Procurar dados de um funcionário.\n"))
        escreva("Escreva o nome ou ID do funcionário desejado: \n")
        leia(funcdesejad)
        limpa()
        escreva("-----------------------------------------------------\n")
		 escreva("ID\tNOME\t\tSALÁRIO\t\tCOMISSÃO  H\n")
		 escreva("-----------------------------------------------------\n")
        se ((funcdesejad == "243") ou(funcdesejad == "Pedro" ) ou (funcdesejad == "pedro" )){
        	para(inteiro i = 0; i < 5;i++){
        escreva("[",matriz[0][i],"] \t")	}
		retmenucas1()
        }
        
        	
        

        senao se ((funcdesejad == "034") ou(funcdesejad == "Miguel" )ou (funcdesejad == "miguel" )){
        	para(inteiro i = 0; i < 5;i++){
        	 escreva("[",matriz[1][i],"] \t")}	
		escreva("\n-----------------------------------------------------\n")
          retmenucas1()
          
        }
        senao se ((funcdesejad == "373") ou(funcdesejad == "Julio" )ou(funcdesejad == "julio" )){
        	para(inteiro i = 0; i < 5;i++){
        	 escreva("[",matriz[2][i],"] \t")}
		escreva("\n-----------------------------------------------------\n")
        	 retmenucas1()
        	 
        }

        senao se ((funcdesejad == "473") ou(funcdesejad == "Ronaldo" ) ou (funcdesejad == "ronaldo" )){
        	para(inteiro i = 0; i < 5;i++){
        	 escreva("[",matriz[3][i],"] \t")}
		escreva("\n-----------------------------------------------------\n")
        	 retmenucas1()
        	 
        }

        senao se ((funcdesejad == "321") ou(funcdesejad == "Antonio" )ou (funcdesejad == "antonio" )){
        	para(inteiro i = 0; i < 5;i++){
        	 escreva("[",matriz[4][i],"] \t")}
		escreva("\n-----------------------------------------------------\n")
        	 retmenucas1()
        }
          
        senao{
        	limpa()
        	escreva("Nome ou ID nao encontrado, deseja retornar ao menu?(s/n)\n")
              leia(SN)

              se((SN == "s") ou (SN == "S")ou(SN =="sim")ou(SN =="SIM")ou(SN == "Sim")){
              	 escreva("...")
              	 inicio()
              	 limpa()
              	   
              }
              senao{
              	escreva("...")
              	caso1()
              	}
           }
     }

     funcao caso3() {  

		cadeia funcdesejad, SN
		inteiro cass13,cass23,cass33,cass43,cass53
          
        escreva("Escreva o nome ou ID do funcionário desejado: ")
        leia(funcdesejad)
        limpa()
        se ((funcdesejad == "243") ou(funcdesejad == "Pedro" ) ou (funcdesejad == "pedro" )){
        	para(inteiro i=0;i<5;i++){
        		escreva("[",matriz[0][i],"]\t")}
            
            escreva("\n\n1) Salário do funcionário sem adicional de horas extras.")		
            escreva("\n2) Valor de horas extras cumpridas pelo funcionário.")
            escreva("\n3) Valor da hora do funcionário.")
            escreva("\n4) Comissão do funcionário em reais.")	
            escreva("\n5) Salário total do funcionário com acrescimos.")
            escreva("\nDigite a opção desejada: ")
            leia(cass13)
            limpa()

            escolha (cass13){
            	caso 1:
            	escreva("o funcionário ",matriz[0][1]," recebe ",matriz[0][2]," reais.")
            	retmenucas3()
            	pare
            	caso 2:
            	escreva("O funcionário ",matriz[0][1]," cumpriu ",extra[0]," hora(s) extra(s).\nReceberá ",arredondar[0]," reais.")
            	retmenucas3()
            	pare
            	caso 3:
            	escreva("O valor da hora do funcionário é ",Fhor[0])
            	retmenucas3()
               pare
               caso 4:  
            	escreva("A comissão do funcionário ",matriz[1][1]," é ",FComs[0]," reais.")
            	retmenucas3()
            	pare
            	caso 5:
            	escreva("O salário total do funcionário ",matriz[0][1]," é de ", SALtot[0],"\n")
            	retmenucas3()
            	pare
        	
        }
        }

        senao se ((funcdesejad == "034") ou(funcdesejad == "Miguel" )ou (funcdesejad == "miguel" )){
        	para(inteiro i=0;i<5;i++){
        		escreva("[",matriz[1][i],"]\t")}	

        	  escreva("\n\n1) Salário do funcionário sem adicional de horas extras.")		
            escreva("\n2) Valor de horas extras cumpridas pelo funcionário.")
            escreva("\n3) Valor da hora do funcionário.")
            escreva("\n4) Comissão do funcionário em reais.")	
            escreva("\n5) Salário total do funcionário com acrescimos.")
            escreva("\nDigite a opção desejada: ")
            leia(cass23)
            limpa()

            escolha (cass23){
            	caso 1:
            	escreva("o funcionário ",matriz[1][1]," recebe ",matriz[0][2]," reais.")
            
            	retmenucas3()
            	pare
            	caso 2:
            	escreva("O funcionário ",matriz[1][1]," cumpriu ",extra[1]," hora(s) extra(s).\nReceberá ",arredondar[1]," reais.")
            	retmenucas3()
            	pare
            	caso 3:
            	escreva("O valor da hora do funcionário é ",Fhor[1])
            	retmenucas3()
               pare
               caso 4:  
            	escreva("A comissão do funcionário ",matriz[1][1]," é ",FComs[1]," reais.")
            	retmenucas3()
            	pare
            	caso 5:
            	escreva("O salário total do funcionário ",matriz[1][1]," é de ", SALtot[1],"\n")
            	retmenucas3()
            	pare
            }
        }

        senao se ((funcdesejad == "373") ou(funcdesejad == "Julio" )ou(funcdesejad == "julio" )){
        	para(inteiro i=0;i<5;i++){
        		escreva("[",matriz[3][i],"]\t")}

        	  escreva("\n\n1) Salário do funcionário sem adicional de horas extras.")		
            escreva("\n2) Valor de horas extras cumpridas pelo funcionário.")
            escreva("\n3) Valor da hora do funcionário.")
            escreva("\n4) Comissão do funcionário em reais.")	
            escreva("\n5) Salário total do funcionário com acrescimos.")
            escreva("\nDigite a opção desejada: ")
            leia(cass33)
            limpa()

            escolha (cass33){
            	caso 1:
            	escreva("o funcionário ",matriz[2][1]," recebe ",matriz[2][2]," reais.")
            	retmenucas3()
            	pare
            	caso 2:
            	escreva("O funcionário ",matriz[2][1]," cumpriu ",extra[2]," hora(s) extra(s).\nReceberá ",arredondar[2]," reais.")
            	retmenucas3()
            	pare
            	caso 3:
            	escreva("O valor da hora do funcionário é ",Fhor[2])
            	retmenucas3()
               pare
               caso 4:  
            	escreva("A comissão do funcionário ",matriz[2][1]," é ",FComs[2]," reais.")
            	retmenucas3()
            	pare
            	caso 5:
            	escreva("O salário total do funcionário ",matriz[2][1]," é de ", SALtot[2],"\n")
            	retmenucas3()
            	pare
        }
        }

        senao se ((funcdesejad == "473") ou(funcdesejad == "Ronaldo" ) ou (funcdesejad == "ronaldo" )){
        	para(inteiro i=0;i<5;i++){
        		escreva("[",matriz[4][i],"]\t")}

        	  escreva("\n\n1) Salário do funcionário sem adicional de horas extras.")		
            escreva("\n2) Valor de horas extras cumpridas pelo funcionário.")
            escreva("\n3) Valor da hora do funcionário.")
            escreva("\n4) Comissão do funcionário em reais.")	
            escreva("\n5) Salário total do funcionário com acrescimos.")
            escreva("\nDigite a opção desejada: ")
            leia(cass43)
            limpa()

            escolha (cass43){
            	caso 1:
            	escreva("o funcionário ",matriz[3][1]," recebe ",matriz[3][2]," reais.")
            	retmenucas3()
            	pare
            	caso 2:
            	escreva("O funcionário ",matriz[3][1]," cumpriu ",extra[3]," hora(s) extra(s).\nReceberá ",arredondar[3]," reais.")
            	retmenucas3()
            	pare
            	caso 3:
            	escreva("O valor da hora do funcionário é ",Fhor[3])
            	retmenucas3()
               pare
               caso 4:  
            	escreva("A comissão do funcionário ",matriz[3][1]," é ",FComs[3]," reais.")
            	retmenucas3()
            	pare
            	caso 5:
            	escreva("O salário total do funcionário ",matriz[3][1]," é de ", SALtot[3],"\n")
            	retmenucas3()
            	pare	
        }
        }

        senao se ((funcdesejad == "321") ou(funcdesejad == "Antonio")ou (funcdesejad == "antonio" )){
        	para(inteiro i=0;i<5;i++){
        		escreva("[",matriz[5][i],"]\t")}	

        	  escreva("\n\n1) Salário do funcionário sem adicional de horas extras.")		
            escreva("\n2) Valor de horas extras cumpridas pelo funcionário.")
            escreva("\n3) Valor da hora do funcionário.")
            escreva("\n4) Comissão do funcionário em reais.")	
            escreva("\n5) Salário total do funcionário com acrescimos.")
            escreva("\nDigite a opção desejada: ")
            leia(cass53)
            limpa()

            escolha (cass53){
            	caso 1:
            	escreva("o funcionário ",matriz[4][1]," recebe ",matriz[4][2]," reais.")
            	retmenucas3()
            	pare
            	caso 2:
            	escreva("O funcionário ",matriz[4][1]," cumpriu ",extra[4]," hora(s) extra(s).\nReceberá ",arredondar[4]," reais.")
            	retmenucas3()
            	pare
            	caso 3:
            	escreva("O valor da hora do funcionário é ",Fhor[4])
            	retmenucas3()
               pare
               caso 4:  
            	escreva("A comissão do funcionário ",matriz[4][1]," é ",FComs[4]," reais.")
            	retmenucas3()
            	pare
            	caso 5:
            	escreva("O salário total do funcionário ",matriz[4][1]," é de ", SALtot[4],"\n")
            	retmenucas3()
            	
            	pare
        }
        }

        senao{escreva("Nome ou ID incorreto, deseja retornar ao menu? ")
              leia(SN)
         se((SN == "s") ou (SN == "S")){
              	 escreva("...")
              	 inicio()
              	 limpa()
              	   
              }
              senao{
              	escreva("...")
              	caso1()
              	}
        
        }
     }
	   funcao retmenucas1()
	   {

	   cadeia ssnn

	   escreva ("\nDesaja retornar ao menu?\n")
	   leia(ssnn)

	   se((ssnn == "s")ou(ssnn == "S")ou(ssnn == "Sim")ou(ssnn == "sim")){
	   	escreva("...")
	   	limpa()
	   	menu()
	   	
	   }
	   senao{
	      escreva("...")
	      limpa()
	      caso1()
	   }
	   
	   }

	   funcao retmenucas2(){
	   	
	   	cadeia ssnn

	   escreva ("\nDesaja retornar ao menu?\n")
	   leia(ssnn)

	   se((ssnn == "s")ou(ssnn == "S")ou(ssnn == "Sim")ou(ssnn == "sim")){
	   	escreva("...")
	   	limpa()
	   	menu()
	   	
	   }
	   senao{
	      escreva("...")
	      limpa()
	   }
	   	
	} 
	funcao retmenucas3(){
	   	
	   	cadeia ssnn

        escreva("\n-----------------------------------------------------\n")
	   escreva ("\nDeseja retornar ao menu?\n")
	   escreva("\n-----------------------------------------------------\n")
	   leia(ssnn)

	   se((ssnn == "s")ou(ssnn == "S")ou(ssnn == "Sim")ou(ssnn == "sim")){
	   	escreva("...")
	   	limpa()
	   	menu()
	   	
	   }
	   senao{
	      escreva("...")
	      limpa()
	      caso3()
	   }
	   	
	} 
	  
        }

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */