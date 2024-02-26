function penta()
  c=ngone(5)
  x=c(1,:)
  y=c(2,:)
  hold on
  plot(x,y), axis equal
  for k=1:length(x)/2
    plot([x(k),x(k+2)],[y(k),y(k+2)],"k")
  end
  plot([x(1),x(4)],[y(1),y(4)],"k")
  plot([x(2),x(5)],[y(2),y(5)],"k")
