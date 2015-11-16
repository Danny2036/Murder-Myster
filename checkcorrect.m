%checks to make sure if settings is how user want
function x = checkcorrect
yesno = input('This is correct, right? Yes or no? ', 's');
if strcmp(yesno, 'no')
    x = 0;
end
if strcmp(yesno, 'yes')~= 1 && strcmp(yesno, 'no')~= 1
        disp('I am sorry. I did not get that')
        checkcorrect
    end
if strcmp(yesno, 'yes')
        x = 1;
    end
end
    