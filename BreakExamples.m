%exmples of skipping remainer of iterations

%%example1
%%skipping is accomplished in the while condition
ii=1;
while ii < length(readings) && readings (ii) <=100
    readings(ii) = 0;
    ii = ii + 1;
end

%% exmaple 2
%skipping is accomplished with a break statment
for ii = 1:length(readings)
    if readings(ii)>100
        break;
    else
        readings(ii) = 0
    end
end

%%example 3
%shows for-loop index retains is last value
%afetr the loop is exited. its similar to example 2 but omits the setting
%of the values to 0 and prints the index of the first reading above 100
for ii = 1:length(readings)
    if readings (ii) > 100
        break;
    end
end
fprintf ('first reading above 100 is at index %d.n|n', ii);

