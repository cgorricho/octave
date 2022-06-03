function [list, ind] = addWordToList(list, word, ind)
  
  
    comp = strcmp(list(:,1), word);
    
    if (!max(comp))
      ind = ind + 1;
      list{ind, 1} = word;
      list{ind, 2} = 0;
      list{ind, 2} = list{ind, 2} + 1;
    else
      ind_word = find(strcmp(list, word));
      list{ind_word, 2} = list{ind_word, 2} + 1;
    endif
 

  
  
 end