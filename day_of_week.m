function day_of_week(n)
if n == 1
    fprintf('sunday');
    day_type = 2;
elseif n == 2
    fprintf ('monday');
    day_type = 1
elseif n == 3
    fprintf ('tuesday');
    day_type = 1
elseif n == 4
    fprintf ('wednesday');
    day_type = 1
elseif n == 5
    fprint ('thursday');
    day_type = 1
elseif n == 6
    fprintf ('friday');
    day_type = 1
elseif n == 7
    fprintf ('saturday');
    day_type = 2
else
    fprintf('number must be from 1 to 7.\n');
    return
end
if day_type==1
    fprintf('which is a week day\n');
else
    fprintf('which is a weekend day\n');
end
    