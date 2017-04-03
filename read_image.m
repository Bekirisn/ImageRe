%Reads an image and saves it as c
function c = read_image( x,y,noise,rotation )
 cd(strcat('s',num2str(x)));
 c = imrotate(imnoise(imread(strcat(num2str(y),'.pgm')),noise),rotation);
 cd ..
end

