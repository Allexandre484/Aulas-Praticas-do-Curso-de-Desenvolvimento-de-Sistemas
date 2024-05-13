#Exercicio 1: Liste uma sequência de 10 números do maior para o menor.
variavel = 10
while variavel >=1:
    print(variavel)
    variavel -= 1


#Exercicio 2: liste uma sequência numérica que começa em um valor inserido pelo usuário e acaba em um outro valor escolhido pelo usuário
num1= int(input("Insira o número: "))
num2= int(input("Insira um outro número: "))

if(num1<num2):
    for num1 in range(num1,(num2+1)):
        print(num1)
        num1 += 1
elif(num2<num1):
    for num2 in range(num2,(num1+1)):
        print(num2)
        num2 += 1
else:
    print("Os números são iguais.")


#Exercicio 3: Solicite um número ao usuário e imprima a tabuada desse número, de 1 a 10
num=int(input("Insira um número: "))
mult=1

for mult in range(mult,11):
    print(num,"X",mult,"=",(num*mult))
    mult+=1


#Exercicio 4: Solicite dois números ao usuário e verifique quantos números pares ou ímpares existem entre esses dois números .
num1=int(input("Insira um número: "))
num2=int(input("Insira um outro número: "))
par = 0
impar = 0

for i in range(num1,num2+1):
    if(i%2==0):
        par+=1
    else:
        impar+=1
print("\nEntre o intervalo dos números",num1,"e",num2,"existem",par,"números pares, e",impar,"números ímpares.")


#Exercicio 5(incompleta): Solicite um número inteiro positivo N ao usuário e calcule a soma dos primeiros N números naturais.
num=int(input("Insira um número positivo e inteiro: "))
soma = 0
print("A soma dos números naturais até {num} são equivalentes à: {soma}".format(num,soma))
