function createVocabListFile(vocab_file, vocabList)

if (exist(vocab_file) != 0)
     vl_file = csv2cell(vocab_file);  # Carga el archivo existente en la variable
     for i = 1:size(vocabList,1)      # Inicia un iterador sobre vocabList
        vl_file = addWordToList(vl_file, vocabList{i}, length(vl_file));
     endfor
     vec2sort = cell2mat(vl_file(:,2));
     [va1ores, idx] = sort(vec2sort, 'descend');
     vl_file = vl_file(idx,:);
     cell2csv(vocab_file, vl_file);      
else
     vec2sort = cell2mat(vocabList(:,2));
     [valores, idx] = sort(vec2sort, 'descend');
     vocabList = vocabList(idx,:);
     cell2csv(vocab_file, vocabList);
endif
    