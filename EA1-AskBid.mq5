void OnTick()
  {
      double ask, bid;
      //Obtém a atualização do preço Ask (preço de venda para uma posição).
      ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK); 
      //Obtém a atualização do preço Bid (preço de compra para uma posição).
      bid = SymbolInfoDouble(_Symbol, SYMBOL_BID); 
      //Exibe as cotações diretamente no gráfico.
      Comment("Price ASK = ", ask, "\nPrice BID = ", bid); 
  }
