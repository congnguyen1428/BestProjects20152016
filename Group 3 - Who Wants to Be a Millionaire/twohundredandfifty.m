% First we have to set the handles.
question = handles.question
temp_Answer = handles.temp_Answer
temp_quest = handles.temp_quest
temp_A = handles.temp_A
temp_B = handles.temp_B
temp_C = handles.temp_C
temp_D = handles.temp_D
chosenquestion250000 = handles.chosenquestion250000
% This brings up the randomly generated questions from the SetQuestions.m
% script, as well as the corresponding answers.
temp_quest = chosenquestion250000{1,1}
temp_A = chosenquestion250000{1,2}
temp_B = chosenquestion250000{1,3}
temp_C = chosenquestion250000{1,4}
temp_D = chosenquestion250000{1,5}
temp_Answer = chosenquestion250000{1,6};
question = 13
% Storing the question as a global variable
global global_struct
global_struct.question = question
%Clear the Questions,by setting the answer boxes to empty.
pause(0.3)
set(handles.question_field,'String','You are now just three questions away from becoming a millionaire. Take a look at this next question, its worth �250,000')
set(handles.A,'string','')
set(handles.B,'string','')
set(handles.C,'string','')
set(handles.D,'string','')

% Set A,B,C and D pushbutton colours to Blue
set(handles.A,'BackgroundColor',[0.16862 0.38039 0.82352])
set(handles.B,'BackgroundColor',[0.16862 0.38039 0.82352])
set(handles.C,'BackgroundColor',[0.16862 0.38039 0.82352])
set(handles.D,'BackgroundColor',[0.16862 0.38039 0.82352])
% Make the continue button invisible
set(handles.pushbutton18,'visible','off');
set(handles.result,'string','');

% % Setting the money stage. This links to money ladder on the righthand
% side of the interface. As the game progresses, you move up the ladder,and
% the colours change.
set(handles.q125000,'BackgroundColor',[0 0.7 0])  % Sets the background colour of the static textbox representing the money stage �125,000 to green, since the contestant has made it to the �250,000 question by answering the �125,000 correctly.
set(handles.q250000,'BackgroundColor',[0.87058 0.5 0]) % Sets the background colour of the static textbox representing the money stage �250,000 to orange, as this represents that the contestant is currently on this money stage question.

% Set the question and the Answers
pause(3.5)
set(handles.question_field,'String',temp_quest)
set(handles.A,'string',temp_A)
set(handles.B,'string',temp_B)
set(handles.C,'string',temp_C)
set(handles.D,'string',temp_D)

% Store all changes made to handles in the guidata
handles.temp_Answer = temp_Answer;
handles.temp_quest = temp_quest;
handles.temp_A = temp_A;
handles.temp_B = temp_B;
handles.temp_C = temp_C;
handles.temp_D = temp_D;
handles.question = question;
guidata(hObject,handles);