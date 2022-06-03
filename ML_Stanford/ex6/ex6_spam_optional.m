%% Machine Learning Online Class
%  Exercise 6 | Spam Classification with SVMs
%  Optinal ungraded exercise

%  All the fodlers in the https://spamassassin.apache.org/old/publiccorpus/
%  need to be downloaded in a folder called 'emails' of the folder 
%  where this script is running

%  Initialize workspace
clear ; close all; home;
pkg load io;

%  Assign the content of all dirs in 'emails' folders to a strcut variable

path = 'C:\octave-work\ML_Stanford\ex6\'; % Replace with your working path

email_struct = collectEmails(path);

%%  ======Loop over email_struct to populate X and y vectors===

cont = 0;
acum = 0;
vocabFile = 'vocabList.csv';

for [val, key] = email_struct
%    key
%    val
  
    acum = acum + length(val);
    
    for i = 1:length(val)
    
        if (val(i).isdir == 1)
              continue
        elseif strcmp(val(i).name, 'cmds')
              continue
        endif
        
        cont = cont + 1;
        
        email_file =  [val(i).folder, '\', val(i).name];
        
        % Extract Features
        fprintf('Processing email file #%d of %d\n%s\n\n', cont, acum, email_file);
        file_contents = readFile(email_file);
        [word_indices, vocabList] = processEmail_headers(file_contents);
        createVocabListFile(vocabFile, vocabList);
        
    endfor
   
endfor

