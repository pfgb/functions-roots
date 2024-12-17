function [y, n, c] = secante(f, x0, x1, e, N, raiz)
  # function [y, n, c] = secante(f, x0, x1, e, N, raiz)
  # y: raiz encontrada
  # n: n�mero de itera��es
  # c: diferen�a absoluta entre x1 e a raiz
  # f: fun��o
  # x0, x1: intervalo inicial
  # e: crit�rio de parada, tamanho m�nimo do intervalo
  # raiz: raiz que deve ser encontrada
  # N: limite de itera��es
  c = abs(x1-raiz);
  g = (f(x1)-f(x0))/(x1-x0);
  n = 0;
  while (abs(x1-x0) >= e) && (n <= N) && (g!=0)
    if f(x1) == 0
      return
    else
      c0 = c;
      g = (f(x1)-f(x0))/(x1-x0);
      x0 = x1;
      x1 = x0 - f(x0)/g;
      n = n + 1;
      c = abs(x1-raiz);
      cr = c/c0
    endif
  endwhile
  y = x1;
endfunction  
