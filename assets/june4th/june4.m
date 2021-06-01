%% Meet the GUI
%
% There is still no code here. These are a bunch of COMMENTS.
%
% The idea here is to remind me about all the things in the GUI that I want
% to show you.

%% Command window
% - Entering commands
%     type: x=5
%     type: x+1
%     clc

%% Editor window
% Files with Matlab code (scripts) have a  .m  ending
%
% This file is called 'Lesson1a_MeetTheGUI.m'
% It's always best that your file names do not have spaces
% - Opening multiple files in the editor
% - Line numbers on the left
% - F9 button and other shortcuts

%% Current Folder
% This is the folder where matlab will search for and save files by default

cd('C:\Research'); % change directories
cd('C:\Research\Courses\Matlab Basics\Lesson1_MatlabBasics');
dir % list folder contents


%% Workspace
% -- Variable editor

a = 5

% -- clear all

%% Command history
% -- Executing commands
% -- Create m-file
% -- Create shortcut

%% Matlab basics
% The idea is to lay out the basic building blocks and name them

%% Variables
%   The basic entity of computation in all programing languages is the
%   variable. A variable can take on different values and can be
%   manipulated in different ways.
%


%% A variable can be a scalar/number/integer:

% This is a scalar
a = 5

% Here is another
b = 6

% Here is their sum
a+b

% Here is their product
a*b

% More math
c = ((a*b)^a / (a*b))

% Look at the variables you've created so far in the workspace window

%% Data types

% double - default numeric data type
% logical - values of 1 or 0 (T and F respectively)
% char - character data (strings are stored as a vector of characters)
% cell array - array of indexed cells, each capable of storing an array of
             % a different dimension and data type

%% The semi-colon  ;

% When you want to perform a computation without displaying the result

%% Over-writing variables:

a = 20

c = a

%% Clearing your variables:

clear a
clear

%% Getting help regarding a function

help max

doc max

