#Satisfa��o x Salario
#img 1362x705
boxplot(Dados_RH$satisfaction.level ~ Dados_RH$salary,
                 main="Boxplot de Nivel de Satisfa��o por propor��o de salario",
                 xlab="Salario", ylab="Nivel de Satisfa��o",
                 col=c("yellow","orange","red"))

#Grafico de setores para departamento
pie(table(Dados_RH$department),
    main="Gr�fico de setores:Departamentos",
        col = c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Numero de pessoass por departamento
barplot(table(Dados_RH$department), col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"),
        ylim=c(0,5000),
        space=.8,
        main="N�mero de pessoas por Departamento",
        xlab="Departamentos", ylab="N�mero de Pessoas")

#salario por pessoas
barplot(table(Dados_RH$salary), col=c("yellow","red", "green"),
        ylim=c(0,8000),
        space=.8,
        main="Salarios",
        xlab="Salarios", ylab="N�mero de Pessoas")

#Horas por departamento
boxplot(Dados_RH$time.spend.company ~ Dados_RH$department,
        main="Boxplot de tempo gasto na empresa por departamento",
        xlab="Departamento", ylab="Tempo",
        col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Horas medias mensais por departamento
boxplot(Dados_RH$average.montly.hours~ Dados_RH$department,
                 main="Boxplot de m�dia de horas mensais por departamento",
                 xlab="Departamento", ylab="M�dia de hora mensal",
                 col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Histogramas de nivel de satisfa��o
hist(satisfaction.level, col="green",
     main="Histograma de Nivel de satisfa��o",
     xlab = "Nivel de satisfacao",
     ylab = "Frequencia")

#Histograma de avalia��o
hist(last.evaluation, col="blue",
     main="Histograma de avalia��es",
     xlab = "Ultima avalia��o",
     ylab = "Frequencia")

#visualiza��o de horas gastas na companhia com o nivel de satisfa��o
plot(satisfaction.level, time.spend.company,col=ifelse(time.spend.company > 6,"blue", "red"),
     main = "Grafico de dispers�o: Tempo gasto na companhia x Nivel de Satisfa��o",
     ylab = "Tempo gasto na companhia (horas)",
     xlab = "Nivel de Satisfa��o")
abline(h=mean(time.spend.company), v=mean(satisfaction.level),col=c("green", "black"))

#visualiza��o de media de horas gasta na companhia por satisfacao
plot(satisfaction.level, average.montly.hours, col=ifelse(satisfaction.level < 0.5,"blue", "red"),main = "Grafico de dispers�o: Media de horas gastas por m�s x Nivel de satisfa��o",
     ylab = "Hora",
     xlab = "Nivel de Satisfa��o")
abline(h=mean(average.montly.hours), v=mean(satisfaction.level),col=c("green", "black"))

#visualizacao de tempo gasto com saida
plot(time.spend.company, left, ylab = "Deixou a companhia", xlab = "Tempo",
     main="Grafico de dispers�o: Tempo gasto na companhia x Deixou a companhia",
     col=ifelse(time.spend.company > 6,"blue", "red"))
abline(v=mean(time.spend.company),col=c("green"))

#summary
summary(Dados_RH)

#Tabela de frequencias absolutas left
freq_left <- table(Dados_RH$left)
freq_left
#Tabela de frequencia absolutas horas gastas
freq_gastas <- table(Dados_RH$time_spend_company)
freq_gastas
#Tabela de frequencia absolutas projetos
freq_projetos <- table(Dados_RH$number_project)
freq_projetos
#Tabela de frequencia absolutas departamento
freq_dep <- table(Dados_RH$department)
freq_dep
#Tabela de frequencia absolutas salario
freq_sal <- table(Dados_RH$salary)
freq_sal
#Tabela de promo��es
freq_promo <- table(Dados_RH$promotion_last_5years)
freq_promo

#Tabela de frequencia relativas
freq_rel <- prop.table(Dados_RH$left)
freq_rel
#Porcentagem(100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
p_freq_rel
#Sum
freq <- c(freq, sum(freq))
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[3] <- "Total"

freq






