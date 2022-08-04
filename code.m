N = input('Please Enter a Positive number N : ');

for i = 1:N
    
    D = ['D(' num2str(i) ') = {'];
    A = [];
    
    if (i == 1)
        D = [D '1}'];
        disp([D newline]);
        continue;
    end
   
    
    for k = 2:i-1
        if (mod(i,k) == 0)
            A = [A ' , ' num2str(k)];
        end
    end
    
    
    if(numel(A) == 0)
        isprime = 1;
    else
        isprime = 0;
    end
    
    
    A = [num2str(1) A ' , ' num2str(i)];
    
    if (isprime == 1)
        disp([D A '}' '   IsPrime !' newline]);
    else
        disp([D A '}' newline]);
    end

end