function [N,ROC,C,S]=roc_cs(p)

size_p=length(p);
%----sorting the vector as per absolute value----
sort_p=sort(p);
N=0;
A=zeros(1,size_p);
%--1st position is always unique except 0--------
if(abs(sort_p(1))~=0)
   N=1;
   A(1)=1;
end
for k=2:size_p
    if(abs(sort_p(k))==0)
        continue;
    end
%------if previous was same as current----------
    if(abs(sort_p(k-1))==abs(sort_p(k)))
        k=k+1;
%------if previous was not same as current----------
    else
        N=N+1;
        A(k)=1;
    end
end
%--No of unique is always increased by 1--------
N=N+1;

%----------------To calculate ROC--------------
ROC=zeros(N,2);
ROC(1,1)=0;
ROC(N,2)=Inf;
%----control keeps track of rows--------------
control=1;
for nn=1:size_p
    if(A(nn)==1)
        ROC(control,2)=abs(sort_p(nn));
        ROC(control+1,1)=abs(sort_p(nn));
        control=control+1;
    end
end

%------To calculate causality matrix-----------
C=zeros(N,1);
for rows=1:N
        if(rows==N)
            C(rows)=1;
        end
end

%-------To calculate stability matrix-----------
S=zeros(N,1);
for rows=1:N
    left=ROC(rows,1);
    right=ROC(rows,2);
    if(left<1)&&(right>1)
       S(rows)=1;
    end
end
    
end
  

