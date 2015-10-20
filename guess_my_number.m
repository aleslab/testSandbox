function guess_my_number(x)
if x == 42
    fprintf('congrats you guessed my number!\n')
elseif x < 42
    fprintf('too small, try again\n')
else
    fprintf ('not quite you wolly guess again')
end