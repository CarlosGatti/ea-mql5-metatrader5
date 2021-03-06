void OnTick()
  {
      //Variaveis
      double ask, bid, last;
      //Destino que copiaremos os dados do buffer
      double smaArray[];
      //Armazena o resultado do indicador
      int smaHandle;
      //Preco da cotacao para venda
      ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
      //Preco da cotacao para compra
      bid = SymbolInfoDouble(_Symbol, SYMBOL_BID);
      //Preco da ultima operacao
      last = SymbolInfoDouble(_Symbol, SYMBOL_LAST);

      //Resposavel por retornar o resultado do indicador
      smaHandle = iMA(_Symbol, _Period, 20, 0, MODE_SMA, PRICE_CLOSE);
      //Construcao do Array dinamico
      ArraySetAsSeries(smaArray, true);
      //Obtem dados de um buffer especifico, vindo de um indicador 
      CopyBuffer(smaHandle, 0, 0, 3, smaArray);

      //Exibe o resultado conforme o indicador
      if(last>smaArray[0])
         {
            Comment("Compra");
         }
      else if(last<smaArray[0])
         {
            Comment("Venda");
         }
  }
