function poltp(n)
  PBcan=zeros(n,n)
  for k=1:n
    Bcan(k,k)=1;
  end
  U=zeros(1,n);
  U(1)=1;
  U(3)=1;
  PBtild=zeros(n,n);
  PBtild(1,1)=1;
  PBtild(2,2)=1; %on construit btild;
  for j=3:n
    u=zeros(1,n);
    u(j-2)=1;
    t=multpol(u,n)';
    PBtild(:,j)=PBtild(:,j)+t;%c'est la matrice de passage de la base x^2+1 a la base can



end
PBcan=PBtild^(-1); %la matrice de passage de la base can a la base x^2+1
MBtild=zeros(n,n);
MBtild(1,1)=1;
MBtild(2,2)=1;
%pour le reste des colonnes, ma matrice sera uniquement l'écriture des vecteurs de la base canonique allant de la coordonnée 1 jusqu'a x^n-2
for k=3:n
  MBtild(:,k)=PBcan(:,k-2); %c'est la matrice de l'application f en base x^2+1 ecrit en base x^2+1
end
MB=PBtild*MBtild*PBcan
disp(MB)
%a finir demain, j'ai ecrit Mcancan(f)
