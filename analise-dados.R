#Satisfação x Salario
#img 1362x705
boxplot(Dados_RH$satisfaction.level ~ Dados_RH$salary,
                 main="Boxplot de Nivel de Satisfação por proporção de salario",
                 xlab="Salario", ylab="Nivel de Satisfação",
                 col=c("yellow","orange","red"))

#Grafico de setores para departamento
pie(table(Dados_RH$department),
    main="Gráfico de setores:Departamentos",
        col = c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Numero de pessoass por departamento
barplot(table(Dados_RH$department), col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"),
        ylim=c(0,5000),
        space=.8,
        main="Número de pessoas por Departamento",
        xlab="Departamentos", ylab="Número de Pessoas")

#salario por pessoas
barplot(table(Dados_RH$salary), col=c("yellow","red", "green"),
        ylim=c(0,8000),
        space=.8,
        main="Salarios",
        xlab="Salarios", ylab="Número de Pessoas")

#Horas por departamento
boxplot(Dados_RH$time.spend.company ~ Dados_RH$department,
        main="Boxplot de tempo gasto na empresa por departamento",
        xlab="Departamento", ylab="Tempo",
        col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Horas medias mensais por departamento
boxplot(Dados_RH$average.montly.hours~ Dados_RH$department,
                 main="Boxplot de média de horas mensais por departamento",
                 xlab="Departamento", ylab="Média de hora mensal",
                 col=c("white","brown","yellow","pink","red", "green", "violet","blue", "navy","magenta"))

#Histogramas de nivel de satisfação
hist(satisfaction.level, col="green",
     main="Histograma de Nivel de satisfação",
     xlab = "Nivel de satisfacao",
     ylab = "Frequencia")

#Histograma de avaliação
hist(last.evaluation, col="blue",
     main="Histograma de avaliações",
     xlab = "Ultima avaliação",
     ylab = "Frequencia")

#visualização de horas gastas na companhia com o nivel de satisfação
plot(satisfaction.level, time.spend.company,col=ifelse(time.spend.company > 6,"blue", "red"),
     main = "Grafico de dispersão: Tempo gasto na companhia x Nivel de Satisfação",
     ylab = "Tempo gasto na companhia (horas)",
     xlab = "Nivel de Satisfação")
abline(h=mean(time.spend.company), v=mean(satisfaction.level),col=c("green", "black"))

#visualização de media de horas gasta na companhia por satisfacao
plot(satisfaction.level, average.montly.hours, col=ifelse(satisfaction.level < 0.5,"blue", "red"),main = "Grafico de dispersão: Media de horas gastas por mês x Nivel de satisfação",
     ylab = "Hora",
     xlab = "Nivel de Satisfação")
abline(h=mean(average.montly.hours), v=mean(satisfaction.level),col=c("green", "black"))

#visualizacao de tempo gasto com saida
plot(time.spend.company, left, ylab = "Deixou a companhia", xlab = "Tempo",
     main="Grafico de dispersão: Tempo gasto na companhia x Deixou a companhia",
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
#Tabela de promoções
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






