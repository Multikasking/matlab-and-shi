function u=deriv(A)
  u=zeros(1,length(A))
  for k=2:length(A)
    u(k-1)=A(k)*(k-1)
  endfor
  end

