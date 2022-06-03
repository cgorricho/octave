function email_struct = collectEmails(path)
  
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

end