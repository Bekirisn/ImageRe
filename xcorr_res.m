%Takes c and checks it with all the images of a
function mrc = xcorr_res(a,c)

for i = 1:40
    for j = 1:10,
        xc = (normxcorr2(double(a(:,:,i,j)),double(c)));
        mrc(i,j,1) = max(max(xc));
        [mrc(i,j,2),mrc(i,j,3)] = find(xc == max(max(xc)));
    end
end

end

