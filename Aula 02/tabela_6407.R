#################################################################################
################################    DADOS    ####################################   
#################################################################################

faixa_etaria <- c("0 a 4 anos",
                    "5 a 13 anos",
                    "14 a 17 anos",
                    "18 a 19 anos",
                    "20 a 24 anos",
                    "25 a 29 anos",
                    "30 a 39 anos",
                    "40 a 49 anos",
                    "50 a 59 anos")

intervalo_idades <- c(4,
            sum(c(5,13)),
            sum(c(14,17)),
            sum(c(18,19)),
            sum(c(20,24)),
            sum(c(25,29)),
            sum(c(30,39)),
            sum(c(40,49)),
            sum(c(50,59)))

homens <- c(6726,12937,6305,3367,7993,7413,15939,13738,12201)
mulheres <- c(6346,12400,6078,3244,7950,7891,17132,15176,13802)

# agregando os dados
dados <- data.frame(faixa_etaria, intervalo_idades, homens, mulheres)
dados$idades_medianas <- intervalo_idades/2
dados$total_generos <- dados$homens + dados$mulheres
dados$frequencia <- round(( dados$total_generos * 100 ) / sum(dados$total_generos), 2)
dados$frequencia_acumulada <- cumsum(dados$frequencia)


#################################################################################
#########################    RESPONDENDO AS PERGUNTAS   #########################
#################################################################################
dados
summary(dados)

# média da população? 29
media_populacao <- round(sum(( dados$idades_medianas * dados$total_generos ) / sum(dados$total_generos)), 2)
