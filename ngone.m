function c=ngone(n)
  r=1
  theta=0
  lphi=[360/n:360/n:360+360/n]
  lphi=lphi-360/(2*n)
  lphi=lphi*pi/180
  x=zeros(1,n+1)
  y=zeros(1,n+1)
  x=cos(lphi)
  y=sin(lphi)
  plot(x,y), axis equal
  c=[x;y]
end

