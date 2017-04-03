%Loads the database of 400 faces to a
function a = load_database
for i=1:40
        cd(strcat('s',num2str(i)));
        for j=1:10
            a(:,:,i,j)=(imread(strcat(num2str(j),'.pgm')));
        end
        cd ..
end

