%% SGD 2017 SI Workshop Attendance Survey Results
% Author: Justin Alvey
% Date Created: 3/30/17

%% Detox
clc; clear all; close all;

%% Initializations
numSurveyQuestions = 18;

%% Define Survey Responses and Scores
% Scores are based on a 1,2,3,4 : Will not attend, probably not attend,
% probably attend, definitely attend
Question1 = struct('Name','Integrating CTP into my teaching','Score',100*sum([2*1 4*2 16*3 7*4])/116);
Question2 = struct('Name','Summative and formative assessment (including grading)','Score',100*sum([3*1 6*2 10*3 10*4])/116);
Question3 = struct('Name','Supporting students to design their own games','Score',100*sum([2*1 3*2 8*3 16*4])/116);
Question4 = struct('Name','More on how to teach using guided discovery pedagogy','Score',100*sum([4*1 8*2 10*3 7*4])/116);
Question5 = struct('Name','Integrating math in game/simulation design (additional stipend)','Score',100*sum([3*1 2*2 9*3 15*4])/116);
Question6 = struct('Name','Common core math in programming (additional stipend)','Score',100*sum([10*1 4*2 3*3 12*4])/116);
Question7 = struct('Name','Programming review topics such as Pacman/Journey/Contagion','Score',100*sum([4*1 11*2 7*3 7*4])/116);
Question8 = struct('Name','Programming new topics (counters, clocks, hand tools)','Score',100*sum([2*1 4*2 7*3 16*4])/116);
Question9 = struct('Name','Advanced features of ACO','Score',100*sum([3*1 1*2 5*3 20*4])/116);
Question10 = struct('Name','Generating and Analyzing data in simulations','Score',100*sum([1*1 4*2 7*3 17*4])/116);
Question11 = struct('Name','Art-centered (design and story) game and simulation design','Score',100*sum([6*1 5*2 10*3 8*4])/116);
Question12 = struct('Name','How to hold a Student Showcase - small or large','Score',100*sum([9*1 6*2 7*3 7*4])/116);
Question13 = struct('Name','Integrate SGD into Language Arts','Score',100*sum([10*1 10*2 8*3 1*4])/116);
Question14 = struct('Name','Design thinking and creation of projects in small groups','Score',100*sum([5*1 8*2 11*3 5*4])/116);
Question15 = struct('Name','Capstone project: design, planning, etc','Score',100*sum([6*1 5*2 13*3 5*4])/116);
Question16 = struct('Name','How to teach game/simulation design in a virtual environment','Score',100*sum([7*1 6*2 11*3 5*4])/116);
Question17 = struct('Name','What to teach during a semester-long game design course','Score',100*sum([8*1 7*2 5*3 9*4])/116);
Question18 = struct('Name','MakeyMakey Kits and AC-O','Score',100*sum([6*1 6*2 8*3 9*4])/116);


% Organize in cell data structure
Questions = {Question1 Question2 Question3 Question4 Question5 Question6 Question7 Question8 Question9 Question10 Question11 Question12 Question13 Question14 Question15 Question16 Question17 Question18};

% Store all scores separately
for i = 1:numSurveyQuestions
scores(i) = Questions{i}.Score;
end

% Find the top 5 scores from the survey results
for j = 1:5
    maxScore{j}.Score = max(scores);
    for i = 1:numSurveyQuestions
        if Questions{i}.Score == maxScore{j}.Score
            maxScore{j}.Name = Questions{i}.Name;
        end
    end
end

