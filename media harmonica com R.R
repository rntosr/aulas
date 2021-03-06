# Exercicio da aula 5b do curso de Minera��o de dados
#
# Calculo da M�dia Harmonica com a base de dados IRIS.
#

#Carregar as livrarias
library("RWeka")
library("partykit")

classificacao = J48(Species~., data = iris)

# sum�rio e a Matriz de confus�o
summary(classificacao)

#plotar o gr�fico
plot(classificacao)

#Calcular os dados com base na Matriz de Confus�o

#Verdadeiro positivo (VP): quando o dado original corresponde a um 
#item positivo e a predi��o foi realizada corretamente 
#(por exemplo,uma mensagem de spam predita como spam).

#Verdadeiro negativo (VN): quando um item classificado como negativo 
#� corretamente predito como negativo (por exemplo, uma mensagem 
#                                      que N�O � spam predita como N�O sendo spam).
#Falso positivo (FP): quando um item classificado como negativo � 
#incorretamente predito como positivo (por exemplo, uma mensagem 
#                                      que N�O � spam predita como spam).
#Falso negativo (FN): quando um item classificado como positivo � 
#incorretamente predito como negativo (por exemplo, um spam predito 
#                                     como N�O sendo spam)


VP = 48
FN = 2
FP = 1

sensiblidade = (VP/(VP+FN))
precisao = (VP/(VP+FP))

sensiblidade
precisao

MH = 2*((precisao*sensiblidade)/(precisao+sensiblidade))

cat("\n ===  Resultados do Teste com a base de dados IRIS  ===  \n\n",
    "  ==>  A Sensibilidade �:",sensiblidade,"\n",
    "  ==>  A Precis�o �:",precisao,"\n",
    "  ==>  A M�dia Harm�nica �:",MH,"\n",
"-------------------------------------------------------------")
