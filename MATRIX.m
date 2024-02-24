clc;
G=[1 0 0 0 1 1 1;0 1 0 0 1 0 1;0 0 1 0 0 1 1;0 0 0 1 1 1 0];
M=[0 0 0 0;0 0 0 1;0 0 1 0;0 0 1 1;0 1 0 0;0 1 0 1;0 1 1 0;0 1 1 1;1 0 0 0;1 0 0 1;1 0 1 0;1 0 1 1;1 1 0 0;1 1 0 1;1 1 1 0;1 1 1 1];
C=(M*G);
[C]

for i=1:16
    for j = 1:7
        if rem(C(i,j),2)==0
            C(i,j)=0;
        else C(i,j)=1;
        end
    end
end

disp(C);
H=[1 1 0 1 1 0 0;1 0 1 1 0 1 0;1 1 1 0 0 0 1];
R=[0 0 1 1 1 1 0];
S=(R*H');

for i=1:1
    for j=1:3
    if rem(S(i,j),2)==0
            S(i,j)=0;
        else S(i,j)=1;
     end
    end
end
disp(S);
if S==[1 1 1]
    display ('No Error');
else if S==[1 0 1]
        display('No Error');
else if S==[0 1 1]
         display('Error in 3rd bit');
else if S==[1 1 0]
         display('No Error');
else if S==[0 1 1]
         display('No Error');            
else if S==[1 0 0]
         display('No Error');                          
else if S==[0 1 0]
         display('No Error');   
else if S==[0 0 1]
         display('No Error');
end                                
end       
end
end
end
end
end
end