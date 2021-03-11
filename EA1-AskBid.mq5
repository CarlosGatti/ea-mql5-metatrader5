


void OnTick()
  {
      double ask, bid;
      ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK); //Obtém a atualização do preço Ask (preço de venda para quem entra comprado numa posição).
      bid = SymbolInfoDouble(_Symbol, SYMBOL_BID); //Obtém a atualização do preço Bid (preço de compra para quem entra vendido numa posição).
      
      Comment("Price ASK = ", ask, "\nPrice BID = ", bid); 
  }
