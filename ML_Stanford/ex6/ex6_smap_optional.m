%% Machine Learning Online Class
%  Exercise 6 | Spam Classification with SVMs
%  Optinal ungraded exercise

%  All the fodlers in the https://spamassassin.apache.org/old/publiccorpus/
%  need to be downloaded in a folder called 'emails' of the folder 
%  where this script is running

%  Initialize workspace
clear ; close all; home;

%  Assign the content of all dirs in 'emails' folders to a strcut variable

path = 'C:\octave-work\ML_Stanford\ex6\'; % Replace with your working path
email_struct.('easy_ham') = dir([path, 'emails\easy_ham']); % Create email_struct.easy_ham key anm assign dir of files in folder easy_ham
email_struct = setfield (email_struct, {1}, 'easy_ham', {1}, 'spam', []); % Add a 'spam' key to the easy_ham struct2cell
[email_struct.easy_ham.spam] = deal(0); % assign label (y=1 spam; y=0 non-spam) to easy_ham struct
email_struct.('easy_ham_2') = dir([path, 'emails\easy_ham_2']);
email_struct = setfield (email_struct, {1}, 'easy_ham_2', {1}, 'spam', []);
[email_struct.easy_ham_2.spam] = deal(0);
email_struct.('hard_ham') = dir([path, '\emails\hard_ham']);
email_struct = setfield (email_struct, {1}, 'hard_ham', {1}, 'spam', []);
[email_struct.hard_ham.spam] = deal(0);
email_struct.('spam') = dir([path, 'emails\spam']);
email_struct = setfield (email_struct, {1}, 'spam', {1}, 'spam', []);
[email_struct.spam.spam] = deal(1);
email_struct.('spam_2') = dir([path, 'emails\spam_2']);
email_struct = setfield (email_struct, {1}, 'spam_2', {1}, 'spam', []);
[email_struct.spam_2.spam] = deal(1);

%%  ======Loop over email_struct to populate X and y vectors===

% Initialize vectors and matrices

vocabList = [];
vocabFreq = [];
X = [];
y = [];

for [val, key] = email_struct
  key
  val
endfor

