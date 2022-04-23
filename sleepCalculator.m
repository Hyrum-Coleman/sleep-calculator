% Sleep calculator script
clear; clc; close all;


amountOfHoursRemaining = input("How many hours of estimated work do you have remaining? ");
amountOfTasksToComplete = input("How many assignments are remaining? ");
hoursSinceLastSleep = input("How many hours has it been since you last slept? ");
time = clock;
fix(time);
currentMinute = time(5);
currentHour = time(4) + currentMinute / 60;
sleepE = @(x) exp(-x); % boring equation, could be better actually so cringe lmao
fplot(sleepE, [0, 5]);


%Combine tasks and hours of work
workVal = TasksAndHours(amountOfHoursRemaining, amountOfTasksToComplete);
% Combine current hour and hours since last sleep
timeVal = SleepAndTime(hoursSinceLastSleep, currentHour);
% Constrain workVal and timeVal

% if statement with workVal and timeVal directing to options

% Output script
% option 1 grind it out
% option 2 take a nap (quantity?)
% option 3 go to bed
% option 4 finish some tasks


function [posRoot, negRoot] = Quadratic(a, b, c)

if((b .^ 2) - (4 .* a .* c) >= 0 ) 
    posRoot = (-b + sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
    negRoot = (-b - sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
else
    error("Roots are complex, aborting program") 
end

end

function workVal = TasksAndHours(amountOfHours, amountOfTasks)

workVal = amountOfHours * amountOfTasks - (1/sqrt(amountOfHours * amountOfTasks + 1));

end

function timeVal = SleepAndTime(timeSinceLastSleep, currentTime)

% So currentTime will vary between 0-23 or 1-24 idk but it's like that
% time sinceLastSleep will be between 0-24
% I want timeVal to be be big (bad) if timeSinceLastSleep is large

% If currentTime is between 22-6 then the score should remain very big
if ((currentTime <= 6) || (currentTime >= 22))
    timeVal = timeSinceLastSleep;
% if current time is any other value it should go to the mid range
else
    timeVal = timeSinceLastSleep - 10;
end

end


