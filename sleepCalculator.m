% Sleep calculator script



amountOfHoursRemaining = input("How many hours of estimated work do you have remaining? ");
amountOfTasksToComplete = input("How many assignments are remaining? ");
time = clock;
fix(time);
currentHour = time(4);
currentMinute = time(5);
hoursMinutes = [currentHour, currentMinute];

sleepE = @(x) exp(-x); % boring equation, could be better
fplot(sleepE, [0, 5]);






function [posRoot, negRoot] = Quadratic(a, b, c)
if((b .^ 2) - (4 .* a .* c) >= 0 ) 
    posRoot = (-b + sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
    negRoot = (-b - sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a);
else
    error("Roots are complex, aborting program") 
end
end
