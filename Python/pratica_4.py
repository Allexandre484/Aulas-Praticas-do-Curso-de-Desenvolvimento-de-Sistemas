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


#Exercicio 5: Solicite um número inteiro positivo N ao usuário e calcule a soma dos primeiros N números naturais.
num=int(input("Insira um número positivo e inteiro: "))
num2 = num
while num2 >0:
    num2-=1
    num=num+num2
print("A soma dos números naturais até este número é equivalente à: {}".format(num))


#Exercicio 6: Solicite ao usuário a quantidade de notas que ele deseja inserir, em seguida, solicite essas notas e calcule a média.
qnt=int(input("Insira o número equivalente à quantidade de notas que você deseja descobrir a média: "))
media=0
print('')
for qnt in range(1,qnt+1):
    nota=int(input("Insira a sua nota: "))
    media +=nota
print("A sua média é equivalente à:",media/qnt)


#Exercicio 7: Solicite um número inteiro positivo ao usuário e calcule o fatorial desse número.
num=int(input("Insira um número inteiro e positivo: "))
soma = 1
for i in range(1,num+1):
    soma*=i
print("O valor fatorial do número",num,"! é equivalente à:",soma)


#Exercicio 8: Desenvolva um programa em Python que permita ao usuário escolher um número e gere a tabuada desse número até um limite especificado pelo próprio usuário.
num=int(input("Insira o número correspondente a tabuada desejada: "))
num2=int(input("Até que número você deseja ver a tabuada: "))
valor=1

for i in range(1,num2+1):
    print(num,"X",valor,"=",(num*valor))
    valor+=1



#Exercicio 9: Desenvolva um programa em Python que solicite ao usuário um número inteiro. O programa deverá então exibir a tabuada de multiplicação até o número escolhido pelo usuário, fazendo as multiplicações de 1 até 10.
num=int(input("Insira o número correspondente à até que tabuada você deseja ver: "))
for i in range(1,num+1):
    print('')
    for y in range(1,11):
       print('{} x {} = {}'.format(i,y,i*y))

   
   
