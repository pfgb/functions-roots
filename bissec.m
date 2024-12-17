function [y, n, c] = bissec(f, a, b, e, raiz, N)
  # function [y, n, c] = bissec(f, a, b, e, raiz, N)
  # y: raiz encontrada
  # n: n�mero de itera��es
  # c: diferene�a absoluta de x para a raiz
  # f: fun��o
  # a, b: limites do intervalo
  # e: crit�rio de parada, tamanho m�nimo do intervalo
  # raiz: raiz que deve ser encontrada
  # N: limite de itera��es 
  n = 0;
  sinal_a = sign(f(a));
  sinal_b = sign(f(b));
  while (abs(a-b) >= e) && (n <= N)  
    if sinal_a != sinal_b
      x = (a+b)/2
      sinal_x = sign(f(x));
      n = n + 1
      c = abs(x - raiz)
      if sinal_x == sinal_a
        a = x;
      elseif sinal_x == 0
        y = x;
        return;
      else
        b = x;
      endif 
    endif
  endwhile  
y = (a + b)/2;
c = abs(y - raiz);
endfunction