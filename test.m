%Gets image c,adds noise and rotation and calls the xcorr_res function
function M = test( a,noise,rotation )
    M = zeros(40,10,3,40,10);
    for x = 1:40
        for y = 1:10
            c = read_image( x,y,noise,rotation );
            
            mrc = xcorr_res(a,c);
            
            M(:,:,:,x,y) = mrc;
            
        end
        
    end

end


