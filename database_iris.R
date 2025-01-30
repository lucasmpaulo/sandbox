# Dataset iris carregado
data(iris)

# 1. Teste de hipóteses para comprimento da sépala entre setosa e versicolor
setosa_sep_len <- iris$Sepal.Length[iris$Species == "setosa"]
versicolor_sep_len <- iris$Sepal.Length[iris$Species == "versicolor"]

# Testando amostras independentes
t.test(setosa_sep_len, versicolor_sep_len)

# 2. Teste de hipóteses para a largura da pétala entre a versicolor e virginica
versicolor_pet_width <- iris$Sepal.Width[iris$Species == "versicolor"]
virginica_pet_width <- iris$Sepal.Width[iris$Species == "virginica"]

# Teste t para amostras independentes
t.test(versicolor_pet_width, virginica_pet_width)

# 3. Teste de hipótese para o comprimento da sépala da espécie virginica é igual a 6.5 cm
virginica_pet_len <- iris$Sepal.Width[iris$Species == "virginica"]

# Teste t de uma única amostra
t.test(virginica_pet_len, mu = 6.5)
