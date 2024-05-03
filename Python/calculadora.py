def coleta():
    num1=int(input("Insira um número: "))
    num2=int(input("Insira um outro número: "))
    opr=input(" Insira que operação você deseja realizar com os dois números: +(adição), -(subtração), *(multiplicação), /(divisão): ").upper()

    if(opr=="+" or opr=="ADIÇÃO"):
        adicao(num1,num2)
    elif(opr=="-" or opr=="SUBTRAÇÃO"):
        sub(num1,num2)
    elif(opr=="*" or opr=="MULTIPLICAÇÃO"):
        multi(num1,num2)
    elif(opr=="/" or opr=="DIVISÃO"):
        div(num1,num2)
    else:
        print("Insira uma operação válida")

def adicao(num1,num2):
    print("Resultado:",(num1+num2))
    print('')
    reiniciar()

def sub(num1,num2):
    print("Resultado:",(num1-num2))
    print('')
    reiniciar()
    
def multi(num1,num2):
    print("Resultado:",(num1*num2))
    print('')
    reiniciar()
    
def div(num1,num2):
    print("Resultado:",(num1/num2))
    print('')
    reiniciar()
    
def reiniciar():
    p1=input("Você deseja fazer uma nova operação?\n1)Sim.\n2)Não\n\nResposta:")
    if(p1=="1"):
        print('')
        coleta()
    elif(p1=="2"):
        print('')
        print("Fim do programa.")
    else:
        reiniciar()

coleta()
    