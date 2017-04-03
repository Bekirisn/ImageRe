%Run script for getting the 8 testing files using the test function and changing 
%each time the noise and rotation values
a = load_database;

for i = 1:2
    switch (i)
        case 1
            noise = 'gaussian';   
            for j = 2:2:8
                rotation = j;
                M = test( a,noise,rotation );
                save(strcat(noise,rotation),M);
                clear
            end
        case 2
            noise = 'localvar';
            for j = 2:2:8
                rotation = j;
                M = test( a,noise,rotation );
                save(strcat(noise,rotation),M);
                clear
            end
    end
end
