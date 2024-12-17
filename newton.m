function [y, n, c] = newton(f, g, x0, e, N, raiz)
  # function [y, n, c] = newton(f, g, x0, e, N, raiz)
  # y: raiz encontrada
  # n: número de iterações
  # c: diferença eabsoluta entre x1 e a raiz
  # f: função
  # g: derivada de f
  # x0: valor de x inicial
  # e: critério de parada, tamanho mínimo do intervalo
  # raiz: raiz que deve ser encontrada
  # N: limite de iterações
  c = abs(x0-raiz);
  x1 = x0 - f(x0)/g(x0);
  n = 0;
  while (abs(x1-x0) >= e) && (n <= N) & (g(x0)!=0)
    if f(x1) == 0
      return
    else
      c0 = c;
      x0 = x1;
      x1 = x0 - f(x0)/g(x0);
      n = n + 1;
      c = abs(x1-raiz);
      cr = c/c0
    endif
  endwhile
  y = x1;
endfunction  