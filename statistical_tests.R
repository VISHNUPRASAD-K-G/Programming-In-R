data("mtcars")
data("iris")

x=mtcars$hp
y=mtcars$wt

oneSmp=t.test(x=x,y=NULL,mu=28)#ONE_SAMPLE
print(oneSmp)

twoSmp=t.test(x,y,var.equal=TRUE)#TWO_SAMPLE
print(twoSmp)

pair=t.test(x,y,paired = TRUE,mu = 18)#Paired_Test
print(pair)

cat("\tANNOVA Test\n\n")
annova=aov(x~y,data=mtcars)#ANNOVA
print(annova)

shapiro=shapiro.test(x)#Shapiro_Test
print(shapiro)

ks=ks.test(x,y,exact = NULL)#ks_test
print(ks)

wilcox=wilcox.test(iris$Sepal.Width,y=NULL)#wilcoxon_test
print(wilcox)

comp_means=kruskal.test(iris$Sepal.Length~Species,
                        data=iris)#Kruscal_test
print(comp_means)

comp_var=fligner.test(x,y)#Flinger_Test
print(comp_var)

x=64
n=100
p=.60
prop_test=prop.test(x,n,p)#Proposition_Test
print(prop_test)

bernoli=binom.test(x,n,p)#Bernolis_Test
print(bernoli)

ans_brd=ansari.test(iris$Sepal.Length,
                    iris$Sepal.Width)#Ansari_Bradely
print(ans_brd)

