function [c]=CreateMatrixC(coordinates)
n=length(coordinates);
c=zeros(n,n);
for i=1:n
        for j=1:n 
            if i<j 
                c(i, j)=GoogleMapsDistance(cell2mat(coordinates(i)), cell2mat(coordinates(j)), 'AIzaSyD5ZffsBjRdpZW1um9vBFw3LLI8_AkxV5I');
            elseif i>j
                c(i, j)=c(j, i);
            else
                c(i, j)=inf;
            end
        end
end
end

% coordinates={[latitude_1, longitude_1], [latitude_2, longitude_2]}
