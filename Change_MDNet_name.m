contents = dir('./');
eval(['!rename' ' ' 'Human4-2_pyMDNet.mat' ' ' 'Human4_pyMDNet.mat']);
names = {};
for k = 1:numel(contents),
    name = contents(k).name;
    if ~strcmp(name, '.') && ~strcmp(name, '..') && ~strcmp(name, 'Change_MDNet_name.m')
        names{end+1} = name;
    end
end
for k = 1:numel(names)
    old_filename=names{k};
    if(strcmp(old_filename,'Human4-2_pyMDNet.mat')==1)
        old_filename = 'Human4_pyMDNet.mat';
    end
    new_filename=strcat(old_filename(1:end-4),'_otb2otb.mat');
    eval(['!rename' ' ' old_filename ' ' new_filename]);
end