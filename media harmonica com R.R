# Exercicio da aula 5b do curso de Mineração de dados
#
# Calculo da Média Harmonica com a base de dados IRIS.
#

#Carregar as livrarias
library("RWeka")
library("partykit")

classificacao = J48(Species~., data = iris)

# sumário e a Matriz de confusão
summary(classificacao)

#plotar o gráfico
plot(classificacao)

#Calcular os dados com base na Matriz de Confusão

#Verdadeiro positivo (VP): quando o dado original corresponde a um 
#item positivo e a predição foi realizada corretamente 
#(por exemplo,uma mensagem de spam predita como spam).

#Verdadeiro negativo (VN): quando um item classificado como negativo 
#é corretamente predito como negativo (por exemplo, uma mensagem 
#                                      que NÃO é spam predita como NÃO sendo spam).
#Falso positivo (FP): quando um item classificado como negativo é 
#incorretamente predito como positivo (por exemplo, uma mensagem 
#                                      que NÃO é spam predita como spam).
#Falso negativo (FN): quando um item classificado como positivo é 
#incorretamente predito como negativo (por exemplo, um spam predito 
#                                     como NÃO sendo spam)


VP = 48
FN = 2
FP = 1

sensiblidade = (VP/(VP+FN))
precisao = (VP/(VP+FP))

sensiblidade
precisao

MH = 2*((precisao*sensiblidade)/(precisao+sensiblidade))

cat("\n ===  Resultados do Teste com a base de dados IRIS  ===  \n\n",
    "  ==>  A Sensibilidade é:",sensiblidade,"\n",
    "  ==>  A Precisão é:",precisao,"\n",
    "  ==>  A Média Harmônica é:",MH,"\n",
"-------------------------------------------------------------")
