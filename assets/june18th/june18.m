%% Loops
% show decision strucutre picture
% Basic scripting and flow control

clear

%% Create a data matrix:
data = [4 14 6 11 3 14 8 23 17 12 10 18;
        7 20 22 8 10 5 8 7 11 9 17 12;
        12 4 6 13 20 14 18 7 6 12 9 18];
cat = [1 3 2 2 3 1 1 2 3 3 2 1];


%% Flow control
% In a typical Matlab script we want to perform a bunch of computations and
% control their flow. Perform some computations over and over and other
% computations only under certain predefined circumstances.

% if 

if data(2,4)==8; 
    a = 10; 
    v = 5;
    k = 3;
end;

if data(2,4)==8
    a = 5;
end

if size(data,1) > 2
    disp(['Data can only have two rows. Your data has ' num2str(size(data,1)) ' rows'])
end

% This is a comment
if data(2,2)< 21 | data(2,2)> 25
    a = 8;
    k = 10;
    v = a+k;
end

if data(2,2)< 15 & data(2,4)== 8
    a = 10;
end


% elseif and else
if data(2,4) > 10
    a = 5;
elseif data(2,4) < 10
    a = -5;
else
    a = 0;
end


% for loop
% Do something several times

for i = 1:10
    disp(['Current iteration is: ' num2str(i)])
end

for i = [2 5 10]
    disp(['Current iteration is: ' num2str(i)])
end


for i = 1:size(data,1)
    sub_mean(i) = mean(data(i,:));
end

for i = 1:size(data,1)
    if mean(data(i,:))< 11.5
        break;      % stops the for loop
    else   
        test(i) = mean(data(i,:));
    end
    
end

a = 1;
for sub = 1:3
    for i = 1:3
        cat_cells = cat==i;
        temp_data = data(sub,cat_cells);
        cat_mean(sub,i) = mean(temp_data);
    end
end


% while loop
% Do something until (when you want to loop, but don't know how many times)
x = 0;
i = 0;
while x==0
    i = i+1;
    if data(i) > 20
        x = 1;
    end
end

%% Functions
% defines some function called average.m that accepts an input vector,
   % calculates the average of the values, and returns the result
   
function ave = average(x)
    ave = sum(x(:))/numel(x); 
end

% call function from the command line
z = 1:99;
ave = average(z)

% multiple outputs
% define some function stat.m that returns mean and stdev of input vector
function [m,s] = stat(x)
    n = length(x);
    m = sum(x)/n;
    s = sqrt(sum((x-m).^2/n));
end

% call function from command line
values = [12.7, 45.4, 98.9, 26.6, 53.1];
[ave,stdev] = stat(values)
   
%% Plotting

% linear
x = [0:5:100];
y = x;
plot(x, y)

% squared matrix [note the (.)]
x = [1 2 3 4 5 6 7 8 9 10];
x = [-100:20:100];
y = x.^2;
plot(x, y)

% one wavy boi (sinusoidal)
x = [0:0.01:10];
y = sin(x);
plot(x, y), xlabel('x'), ylabel('Sin(x)'), title('Sin(x) Graph'),
grid on, axis equal

% two wavy bois
x = [0 : 0.01: 10];
y = sin(x);
g = cos(x);
plot(x, y, x, g, '.-'), legend('Sin(x)', 'Cos(x)')

% polynomials
x = [-10 : 0.01: 10];
y = 3*x.^4 + 2 * x.^3 + 7 * x.^2 + 2 * x + 9;
g = 5 * x.^3 + 9 * x + 2;
plot(x, y, 'r', x, g, 'g')

% plotting color code % w=white; k=black; b=blue; r=red; c=cyan; g=green;
   % m=magenta; y=yellow
   
% setting axis scales
axis ( [xmin xmax ymin ymax] )

% generating sub-plots
subplot(m, n, p)
