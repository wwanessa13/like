library(plumber)

#* Falar que x é legal
#* @param x O que você quer que seja dito que é legal
#* @get /mensagem

function(x){
  print(paste0(x, "é legal"))
}

exe <- plumb('/exemplo_api.R')
exe$run(host = '0.0.0.0', port = 8000)
