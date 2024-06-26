# O Homem e o sorvete:
import time

def acordar():
    nome = input("Seja bem-vindo, primeiramente dê um nome ao seu personagem: ")
    print('')
    time.sleep(0.5)
    print("O seu nome é {}, e você mora na cidade de Belém localizada no Brasil, onde as pessoas sofrem calor extremo durante 222 dias do ano. O seu objetivo nesse programa é sanar o desejo do personagem e obter a aprovação do seu relacionamento por parte dos seus pais da sua namorada.".format(nome))
    time.sleep(0.5)
    print('')
    time.sleep(0.5)
    print("Em certo dia, acordando pelas 11hrs, você se depara com uma intensa vontade de tomar sorvete, mas a sua casa está uma bagunça. E os pais da sua namorada irão visita-lo às 14hrs desse dia. E você precisa ganhar a aprovação deles para o relacionamento de vocês.")
    time.sleep(0.5)
    print('')
    pergunta_1()

def pergunta_1():
    p1 = input("Qual das decisões seguintes você deseja tomar?\n 1)Organizar a casa primeiro e depois ir à sorveteria.\n 2)Ir à sorveteria primeiro e depois organizar a casa.\n\n Resposta: ")
    
    print('')
    
    if(p1=="1"):
        time.sleep(0.5)
        print("Você terminou a tarefa às 12:30pm. Indo pelo caminho mais rápido até sorveteria, você se despara com uma construção urbana, onde há um grande congestionamento de pessoas.")
        print('')
        time.sleep(0.5)
        pergunta_2()
        
    elif(p1=="2"):
           time.sleep(0.5)
           print("Você decidiu ir comprar o sorvete primeiro e deixar a tarefa pra depois.\nIndo pelo caminho mais rápido até a sorveteria, você se depara com uma obra urbana que está prestes a começar, o que mais tarde provavelmente iria impedir a sua passagem por aquela via.\nChegando na sorveteria, você tem a sorte de encontrar uma última unidade do seu sabor de sorvete favorito, sanando assim o seu grande desejo.\nNa volta para casa, você se depara com a obra antes vista já em execução, congestionando a passagem por aquela via, e ao olhar o seu relógio, percebe que já são 13:00pm, e em 1hr seu sogros chegarão na sua casa.")
           time.sleep(0.5)
           print('')
           pergunta_4()
    
    else:
        time.sleep(0.5)
        pergunta_1()

def pergunta_2():
    p2 = input("O que você deseja fazer?\n1)Voltar para casa e esperar os seus sogros chegarem.\n2)Dar a volta no quarterão e ir à sorveteria por outro caminho.\n\nResposta:")
    if(p2=="1"):
        print("Você escolheu voltar para casa e esperar os seus sogros chegarem.\nE porque deu prioridade ao compromisso com a sua namorada, não pode sanar o seu desejo por sorvete.\n\nVocê obteve um final ruim.\n\n")
        time.sleep(0.5)
        reiniciar()
    elif(p2=="2"):
        print("Você escolheu dar a volta no quarterão e ir à sorveteria por outro caminho por outro caminho.\nPorém, quando chegou na sorveteria, procurou por seu sabor favorito e não o encontrou.\nQuando indagado, o dono informa que pela manhã foi comprado a última unidade daquele sabor, e que já havia feito o pedido de mais sorvetes daquele sabor, que chegariam na sorveteria às 13:30pm.\n Já são 13:00pm.")
        time.sleep(0.5)
        pergunta_3()
    else:
        time.sleep(0.5)
        pergunta_2()

def pergunta_3():
     p3 = input("Qual das decisões você deseja tomar?\n1)Cancelar o compromisso.\n2)Dar a volta no quarterão e seguir por outro caminho.\n\nResposta:")
     if(p3=="1"):
         print("Você escolheu cancelar o compromisso.\nVocê pôde aproveitar o seu sorvete, porém perdeu crediblidade com os sogros, e terá futuros problemas com isso.\n\nVocê obteve um final razoável.\n\n")
         time.sleep(0.5)
         reiniciar()
     elif(p3=="2"):
         print("Você escolheu dar a volta no quarterão e tentar ir por outro caminho.\n\nNo meio do caminho, você recebe uma ligação da sua namorada, furiosa, perguntando onde você está.\nCalmamente você olha as horas, e percebe que são 14:30")
         time.sleep(0.5)
         print("No final, você tomou o sorvete e sanou o seu grande desejo, porém não teve o seu relacionamento aprovado.\n\nVocê objeteve um final mediano.\n\n")
         time.sleep(0.5)
         reiniciar()
     else:
         pergunts_3()

def pergunta_4():
    time.sleep(0.5)
    p4 = input("O que você decide fazer?\n1)Esperar o sorvete chegar.\n2)Voltar para casa.(seus sogros chegarão às 14:00pm)\n\nResposta:")
    
    if(p4=="1"):
        print("Você escolheu esperar o sorvete chega.\n\nQuando o sabor de sorvete chegou, você o comprou e sanou o seu desejo. Ao olhar o relógio vê que já são 13:30p. Apressadamente você chega em casa às 13:50pm e logo em seguida, sua namorada e sogros chegam.\n\nNo final de tudo, você sanou o seu intenso desejo por sorvete, e por sorte teve a aprovação do seu relacionamento por parte dos seus sogros\n\nVocê obteve o melhor final da história.\n\n")
        time.sleep(0.5)
        reiniciar()
    elif(p4=="2"):
        print("Você escolheu voltar para casa e deixar o sorvete para outro dia.\nE no caminho de volta para casa, esquece que a via que o levava mais rápido estava congestionada, e quando chega nela, percebe que já são 13:30pm, e agora você teria que voltar todo o caminho e ir por outra rua.\nNo meio do caminho, recebe uma ligação da sua namorada furiosa, perguntando onde você está.\nLentamente você olha as horas, e percebe que já são 14:20pm.\n\nNo final de tudo, você não sanou a sua sede por sorvete, e não teve a aprovação dos seus sogros extremamente rigorosos\n\nVocê obteve o pior final da história.\n\n")
        time.sleep(0.5)
        reiniciar()
    else:
        pergunta_4()
    
def reiniciar():
    recomecar=input("Você deseja recomeçar a história? \n\nResposta:\n1)Sim.\n2)Não\n\nResposta: ").upper()
    if(recomecar=="1"):
        acordar()
    elif(recomecar=="1"):
        print("Fim do programa.")
    else:
        reiniciar()
        
acordar()

#Melhor final(2,1)
#Final razoável(1,2,1)
#Final mediano(1,2,2)
#Final ruim(1,1)
#Pior final(2,2) 


