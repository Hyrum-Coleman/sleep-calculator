% Sleep calculator script
clear; clc; close all;


amountOfHoursRemaining = input("How many hours of estimated work do you have remaining? ");
amountOfTasksToComplete = input("How many assignments are remaining? ");
hoursSinceLastSleep = input("How long has it been since you last slept? ");
time = clock;
fix(time);
currentMinute = time(5);
currentHour = time(4) + currentMinute / 60;
sleepE = @(x) exp(-x); % boring equation, could be better actually so cringe lmao
fplot(sleepE, [0, 5]);






function [posRoot, negRoot] = Quadratic(a, b, c)
if((b .^ 2) - (4 .* a .* c) >= 0 ) 
    posRoot = (-b + sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
    negRoot = (-b - sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
else
    error("Roots are complex, aborting program") 
end



end
