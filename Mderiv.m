function Mf_cc=Mderiv(n)
  Mf_cc=zeros(n,n);
  for k=1:n
    vb=zeros(1,n);
    vb(k)=1;
    vt=deriv(vb);
    vt=vt';
    Mf_cc(:,k)=vt;

  endfor


