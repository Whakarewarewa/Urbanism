function [c]=CreateMatrixC(coordinates, API_KEY)
n=length(coordinates);
c=cell(n);
for i=1:n
    for j=1:n
        c(i, j)=GoogleMapsDistance(coordinates(i), coordinates(j), API_KEY);
    end
end
end

% coordinates={[latitude_1, longitude_1]...[latitude_n, longitude_n]}