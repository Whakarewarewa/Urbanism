function [c] = Main(n)
places_of_interest=cell(n);    
    for i=1:n
        places_of_interest(i)=input('Enter address please: ','s');
        places_of_interest=char(places_of_interest); %cell/char problem...
    end
    coordinates=cell(n, 2);
    for k=1:n
        coordinates(k)=GoogleAddressToGeocode(places_of_interest(k),'AIzaSyD5ZffsBjRdpZW1um9vBFw3LLI8_AkxV5I');
    end
    c=CreateMatrixC(coordinates);
end

