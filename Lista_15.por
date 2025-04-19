programa {
  inclua biblioteca Matematica --> mat
    funcao inicio() {
        inteiro numero, i, limite 
        real raiz_n 
        logico primo = verdadeiro
       
        
        escreva("Digite um número: ")
        leia(numero)
        

        se (numero <= 1) {
            primo = falso
        } 
        senao se (numero == 2) {  
            primo = verdadeiro
        }
        senao se (numero % 2 == 0) {  
            primo = falso
        }
        senao {
            raiz_n = mat.raiz(numero, 2.0)  
            limite = raiz_n
            se (raiz_n > limite){limite = limite + 1}
        para (i = 3; i <= limite; i += 2) {
                se (numero % i == 0) {
                    primo = falso
                    pare
                }
            }
        }

        se (primo) {
            escreva("O número ", numero, " é primo.")
        } senao {
            escreva("O número ", numero, " não é primo.")
        }


        //FEITO
    }
}