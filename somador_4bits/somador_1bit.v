module somador_1bit(X,Y, TE, S, TS);

input X,Y,TE; //entradas de controle(X e Y são 1bit cada)e o transporte de entrada

output S,TS; // sinais intermediarios (S  é a resposta soma e TS o trasporte de saida quando houver excesso de bit)
wire [3:0]E; //sinal intermediario de saida que irá para a proxima casa binaria

assign S = ((X)^(Y)^(TE)); // expressão booleana para a a soma
assign TS = ((X&Y)|(X&TE)|(Y&TE)); //expressão booleana para o TS

//expressões para cada bit que será mostrada no dislay de 7 segmentos
  assign E[3] = 0;
  assign E[2] = 0;
  assign E[1] = TS;
  assign E[0] = S;
  
//expressão para chamar o decodificador e mostrar o resultado


endmodule
