%Character creation
function personality = makecharacter
marker = 0;
while marker ~= 1
yoursex = input('Are you a boy or a girl: ', 's');
yourname = input('Oh yes I see that now. so what is your name: ', 's'); %Add in personalized meassage according to their sex
yourage = input('Well then hello. One last thing how old are you: ', 's'); %Add in personalized message according to name

personality = struct('sex',yoursex, 'name', yourname, 'age', yourage);
disp(' ')
disp(personality)
marker = checkcorrect;
end
disp('Good')
end