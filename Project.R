# All coments are both in english and polish. Whole project is made in polish.
# Wszystkie komantarze są zarówno w języku angielskim jak i polskim. Cały projekt jest w języku polskim.

# Section One - Sekcja Pierwsza ---------------------------------
# In the beginning I have installed needed libraries. Imported data and selected columns of my interest.
# Na początku instaluję potrzebne biblioteki. Importuję dane i wybieram interesujące mnie kolumny.

library(haven)
install.packages("dplyr")
library(dplyr)
install.packages("openxlsx")
library(openxlsx)
install.packages("rio")
library(rio)

calyPlik <- read_sav('Poczona_baza_danych_z_badania_ludnoci_z_lat_2017_i_2019.sav')
mojeDane<- data.frame(calyPlik$wykszt_7k,calyPlik$m4_1,calyPlik$m4_2 )
colnames(mojeDane) <- c("wykszt", "wyksztMatki", "wyksztOjca")

# Section Two - Sekcja Druga ---------------------------------
# Throughout this section, I selected each child's education level and checked the parent's corresponding education level.
# W tej części wybrałam poziom wykształcenia każdego dziecka i sprawdziłam odpowiadający mu poziom wykształcenia rodzica.
    
# First case: child has lower secondary education or below.
# Przypadek pierwszy: dziecko ma wykształcenie gimnazjalne lub niższe.

gimnazjalne <- data.frame(calyPlik[calyPlik$wykszt_7k==1,])
gimnazjalne <- data.frame(gimnazjalne$wykszt_7k, gimnazjalne$m4_1,gimnazjalne$m4_2 )
colnames(gimnazjalne) <- c("wykszt", "wyksztMatki", "wyksztOjca")

dzieckoGimMatkaGim <- nrow(subset(gimnazjalne, wyksztMatki ==1 | wyksztMatki ==2))
dzieckoGimMatkaZawodowe <- nrow(subset(gimnazjalne, wyksztMatki == 3 ))
dzieckoGimMatkaSrednie  <- nrow(subset(gimnazjalne, wyksztMatki == 4 | wyksztMatki == 5 ))
dzieckoGimMatkaIst  <- nrow(subset(gimnazjalne, wyksztMatki == 6 ))
dzieckoGimMatkaIIst <- nrow(subset(gimnazjalne, wyksztMatki == 7 | wyksztMatki == 8 ))

dzieckoGimOjcaGim <- nrow(subset(gimnazjalne, wyksztOjca == 1 | wyksztOjca ==2))
dzieckoGimOjcaZawodowe <- nrow(subset(gimnazjalne, wyksztOjca == 3 ))
dzieckoGimOjcaSrednie  <- nrow(subset(gimnazjalne, wyksztOjca == 4 | wyksztOjca == 5 ))
dzieckoGimOjcaIst  <- nrow(subset(gimnazjalne, wyksztOjca == 6 ))
dzieckoGimOjcaIIst <- nrow(subset(gimnazjalne, wyksztOjca == 7 | wyksztOjca == 8 ))


# Second case: child has vocational education.
# Przyadek drugi: dziecko ma wykształcenie zawodowe.
zawodowe <- data.frame(calyPlik[calyPlik$wykszt_7k==2,])
zawodowe <- data.frame(zawodowe$wykszt_7k, zawodowe$m4_1,zawodowe$m4_2 )
colnames(zawodowe) <- c("wykszt","wyksztMatki", "wyksztOjca")

dzieckoZawodoweMatkaGim <- nrow(subset(zawodowe, wyksztMatki == 1 | wyksztMatki ==2))
dzieckoZawodoweMatkaZawodowe <- nrow(subset(zawodowe, wyksztMatki == 3 ))
dzieckoZawodoweMatkaSrednie  <- nrow(subset(zawodowe, wyksztMatki == 4 | wyksztMatki == 5 ))
dzieckoZawodoweMatkaIst  <- nrow(subset(zawodowe, wyksztMatki == 6 ))
dzieckoZawodoweMatkaIIst  <- nrow(subset(zawodowe, wyksztMatki == 7 | wyksztMatki == 8 ))

dzieckoZawodoweOjcaGim <- nrow(subset(zawodowe, wyksztOjca == 1| wyksztOjca ==2))
dzieckoZawodoweOjcaZawodowe  <- nrow(subset(zawodowe, wyksztOjca == 3 ))
dzieckoZawodoweOjcaSrednie  <- nrow(subset(zawodowe, wyksztOjca == 4 | wyksztOjca == 5 ))
dzieckoZawodoweOjcaIst  <- nrow(subset(zawodowe, wyksztOjca == 6 ))
dzieckoZawodoweOjcaIIst  <- nrow(subset(zawodowe, wyksztOjca == 7 | wyksztOjca == 8 ))


# Third case: child has high school education.
# Przypadek trzeci: dziecko ma wykształcenie średnie.
srednie <- data.frame(calyPlik[calyPlik$wykszt_7k==3 | calyPlik$wykszt_7k==4 | calyPlik$wykszt_7k==5,])
srednie <- data.frame(srednie$wykszt_7k, srednie$m4_1,srednie$m4_2 )
colnames(srednie) <- c("wykszt", "wyksztMatki", "wyksztOjca")

dzieckoSrednieMatkaGim <- nrow(subset(srednie, wyksztMatki == 1 | wyksztMatki ==2))
dzieckoSrednieMatkaZawodowe  <- nrow(subset(srednie, wyksztMatki == 3 ))
dzieckoSrednieMatkaSrednie  <- nrow(subset(srednie, wyksztMatki == 4 | wyksztMatki == 5))
dzieckoSrednieMatkaIst  <- nrow(subset(srednie, wyksztMatki == 6 ))
dzieckoSrednieMatkaIIst  <- nrow(subset(srednie, wyksztMatki == 7 | wyksztMatki == 8))

dzieckoSrednieOjcaGim <- nrow(subset(srednie, wyksztOjca == 1 | wyksztOjca ==2))
dzieckoSrednieOjcaZawodowe  <- nrow(subset(srednie, wyksztOjca == 3))
dzieckoSrednieOjcaSrednie  <- nrow(subset(srednie, wyksztOjca == 4 |wyksztOjca == 5 ))
dzieckoSrednieOjcaIst  <- nrow(subset(srednie, wyksztOjca == 6 ))
dzieckoSrednieOjcaIIst  <- nrow(subset(srednie, wyksztOjca == 7 |wyksztOjca == 8 ))


# Fourth case: child has bachelor's or engineering degree.
# Przpadek czwarty: dziecko ukończyło pierwszy stopień studiów wyższych.
Istopien <- data.frame(calyPlik[calyPlik$wykszt_7k==6,])
Istopien <- data.frame(Istopien$wykszt_7k, Istopien$m4_1,Istopien$m4_2 )
colnames(Istopien) <- c("wykszt", "wyksztMatki", "wyksztOjca")

dzieckoIstMatkaGim <- nrow(subset(Istopien, wyksztMatki == 1 | wyksztMatki ==2))
dzieckoIstMatkaZawodowe  <- nrow(subset(Istopien, wyksztMatki == 3 ))
dzieckoIstMatkaSrednie  <- nrow(subset(Istopien, wyksztMatki == 4 | wyksztMatki == 5))
dzieckoIstMatkaIst  <- nrow(subset(Istopien, wyksztMatki == 6 ))
dzieckoIstMatkaIIst  <- nrow(subset(Istopien, wyksztMatki == 7 | wyksztMatki == 8 ))

dzieckoIstOjcaGim <- nrow(subset(Istopien, wyksztOjca == 1 | wyksztOjca ==2))
dzieckoIstOjcaZawodowe  <- nrow(subset(Istopien, wyksztOjca == 3 ))
dzieckoIstOjcaSrednie  <- nrow(subset(Istopien, wyksztOjca == 4 | wyksztOjca == 5 ))
dzieckoIstOjcaIst  <- nrow(subset(Istopien, wyksztOjca == 6 ))
dzieckoIstOjcaIIst  <- nrow(subset(Istopien, wyksztOjca == 7 | wyksztOjca == 8 ))



# Fifth case: Child has master's degree or above.
# Przypadek piąty: dziecko ukończyło drugi stopień studiów wyższych lub wyżej.
IIstopien <- data.frame(calyPlik[calyPlik$wykszt_7k==7, ])
IIstopien <- data.frame(IIstopien$wykszt_7k, IIstopien$m4_1,IIstopien$m4_2 )
colnames(IIstopien) <- c("wykszt", "wyksztMatki", "wyksztOjca")

dzieckoIIstMatkaGim <- nrow(subset(IIstopien, wyksztMatki == 1 | wyksztMatki ==2))
dzieckoIIstMatkaZawodowe  <- nrow(subset(IIstopien, wyksztMatki == 3 ))
dzieckoIIstMatkaSrednie  <- nrow(subset(IIstopien, wyksztMatki == 4 | wyksztMatki == 5))
dzieckoIIstMatkaIst  <- nrow(subset(IIstopien, wyksztMatki == 6 ))
dzieckoIIstMatkaIIst  <- nrow(subset(IIstopien, wyksztMatki == 7 | wyksztMatki == 8 ))

dzieckoIIstOjcaGim <- nrow(subset(IIstopien, wyksztOjca == 1 | wyksztOjca ==2))
dzieckoIIstOjcaZawodowe  <- nrow(subset(IIstopien, wyksztOjca == 3))
dzieckoIIstOjcaSrednie  <- nrow(subset(IIstopien, wyksztOjca == 4 | wyksztOjca == 5))
dzieckoIIstOjcaIst  <- nrow(subset(IIstopien, wyksztOjca == 6 ))
dzieckoIIstOjcaIIst  <- nrow(subset(IIstopien, wyksztOjca == 7 | wyksztOjca == 8))

# Section Three - Sekcja Trzecia ---------------------------------
# In the last section I have made contingency tables, went through correspondence analysis to ultimately create the final product - a perception map.
# W ostatniej części zrobiłam tabele kontyngencji, przeprowadziłam analizę korespondencji, aby ostatecznie stworzyć produkt końcowy - mapę percepcji.

podsumowankoMatka <- data.frame(c(dzieckoGimMatkaGim,  dzieckoZawodoweMatkaGim,dzieckoSrednieMatkaGim, dzieckoIstMatkaGim, dzieckoIIstMatkaGim),
                                  c(dzieckoGimMatkaZawodowe,dzieckoZawodoweMatkaZawodowe,dzieckoSrednieMatkaZawodowe, dzieckoIstMatkaZawodowe, dzieckoIIstMatkaZawodowe),
                                  c(dzieckoGimMatkaSrednie, dzieckoZawodoweMatkaSrednie, dzieckoSrednieMatkaSrednie, dzieckoIstMatkaSrednie, dzieckoIIstMatkaSrednie),
                                  c(dzieckoGimMatkaIst, dzieckoZawodoweMatkaIst, dzieckoSrednieMatkaIst, dzieckoIstMatkaIst, dzieckoIIstMatkaIst), 
                                  c(dzieckoGimMatkaIIst, dzieckoZawodoweMatkaIIst, dzieckoSrednieMatkaIIst,dzieckoIstMatkaIIst, dzieckoIIstMatkaIIst ),
                                  row.names = c("dzieckoGim", "dzieckoZawodowe", "dzieckoSrednie", "dzieckoIstopien", "dzieckoIIstopien"))
colnames(podsumowankoMatka) <- c("matkaGim","matkaZawodowe", "matkaSrednie",  "matkaIstopien", "matkaIIstopien")


podsumowankoOjca <- data.frame(c(dzieckoGimOjcaGim, dzieckoZawodoweOjcaGim, dzieckoSrednieOjcaGim, dzieckoIstOjcaGim, dzieckoIIstOjcaGim),
                               c(dzieckoGimOjcaZawodowe,dzieckoZawodoweOjcaZawodowe,dzieckoSrednieOjcaZawodowe, dzieckoIstOjcaZawodowe, dzieckoIIstOjcaZawodowe),
                               c(dzieckoGimOjcaSrednie, dzieckoZawodoweOjcaSrednie,  dzieckoSrednieOjcaSrednie,dzieckoIstOjcaSrednie, dzieckoIIstOjcaSrednie),
                                c(dzieckoGimOjcaIst, dzieckoZawodoweOjcaIst, dzieckoSrednieOjcaIst, dzieckoIstOjcaIst, dzieckoIIstOjcaIst), 
                                c(dzieckoGimOjcaIIst, dzieckoZawodoweOjcaIIst,dzieckoSrednieOjcaIIst, dzieckoIstOjcaIIst, dzieckoIIstOjcaIIst ),
                                row.names = c("dzieckoGim",  "dzieckoZawodowe","dzieckoSrednie", "dzieckoIstopien", "dzieckoIIstopien"))
colnames(podsumowankoOjca) <- c("ojciecGim",  "ojciecZawodowe","ojciecSrednie", "ojciecIstopien", "ojciecIIstopien")


podsumowankoRodzice <- data.frame(c(dzieckoGimOjcaGim + dzieckoGimMatkaGim, dzieckoZawodoweOjcaGim + dzieckoZawodoweMatkaGim, dzieckoSrednieOjcaGim +dzieckoSrednieMatkaGim, dzieckoIstOjcaGim+dzieckoIstMatkaGim, dzieckoIIstOjcaGim +dzieckoIIstMatkaGim),
                                  c(dzieckoGimOjcaZawodowe+dzieckoGimMatkaZawodowe,dzieckoZawodoweOjcaZawodowe+dzieckoZawodoweMatkaZawodowe,dzieckoSrednieOjcaZawodowe+dzieckoSrednieMatkaZawodowe, dzieckoIstOjcaZawodowe+dzieckoIstMatkaZawodowe, dzieckoIIstOjcaZawodowe+dzieckoIIstMatkaZawodowe),
                                  c(dzieckoGimOjcaSrednie+dzieckoGimMatkaSrednie, dzieckoZawodoweOjcaSrednie+dzieckoZawodoweMatkaSrednie, dzieckoSrednieOjcaSrednie+dzieckoSrednieMatkaSrednie, dzieckoIstOjcaSrednie+dzieckoIstMatkaSrednie, dzieckoIIstOjcaSrednie+dzieckoIIstMatkaSrednie),
                                  c(dzieckoGimOjcaIst+dzieckoGimMatkaIst,dzieckoZawodoweOjcaIst+dzieckoZawodoweMatkaIst, dzieckoSrednieOjcaIst+dzieckoSrednieMatkaIst,  dzieckoIstOjcaIst+dzieckoIstMatkaIst, dzieckoIIstOjcaIst+dzieckoIIstMatkaIst), 
                                  c(dzieckoGimOjcaIIst+dzieckoGimMatkaIIst, dzieckoZawodoweOjcaIIst+dzieckoZawodoweMatkaIIst,dzieckoSrednieOjcaIIst+dzieckoSrednieMatkaIIst, dzieckoIstOjcaIIst+dzieckoIstMatkaIIst, dzieckoIIstOjcaIIst+dzieckoIIstMatkaIIst),
                                  row.names = c("dzieckoGim", "dzieckoZawodowe", "dzieckoSrednie", "dzieckoIstopien", "dzieckoIIstopien"))
colnames(podsumowankoRodzice) <- c("rodziceGim", "rodziceZawodowe", "rodziceSrednie", "rodziceIstopien", "rodziceIIstopien")


#CA
install.packages("ca")
library(ca)

daneRodzice <- c(868,302,139,13,30,
                 2022,1115,237,16,16,
                 1644,1508,1203,66,221,
                 132,222,222,36,81,
                 390,611,938,105,502)
macierzRodzice <- matrix(daneRodzice, ncol=5, byrow = TRUE)
rownames(macierzRodzice) <- c("dzieckoGim",  "dzieckoZawodowe","dzieckoSrednie", "dzieckoIst", "dzieckoIIst")
colnames(macierzRodzice) <- c("rodziceGim",  "rodziceZawodowe","rodziceSrednie", "rodziceIst", "rodziceIIst")

testChi <- chisq.test(macierzRodzice)
summary(testChi)

results <- ca(podsumowankoRodzice)
plot(results, col=c("#FFCC00","#9900CC"), col.lab = c("#FFCC00","#9900CC"),
    xlab = "", ylab="", main="Children’s path of studying according to parents’ level of
    education")
results
summary(results)



