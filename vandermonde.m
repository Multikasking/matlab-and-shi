function M=vandermonde(n)
  M=zeros(n,n);
  for j=1:n
    M(1,j)=1;
  for k=2:n
    for j=1:n
      M(k,j)=j^(k-1);
    endfor
  endfor
  end
