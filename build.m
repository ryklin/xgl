% Build xgl mex files

% Copyright (C) 2006
% Center for Perceptual Systems
% University of Texas at Austin
%
% jsp Wed Aug  9 14:15:58 CDT 2006

switch mexext
    case 'mexw64'
    archdir='x64';
    case 'mexw32'
    archdir='x86';
    otherwise
    error('Unknown architecture');
end

fprintf('Compiling for %s\n',archdir);

cmd=['mex -I''C:/Program Files (x86)/Microsoft DirectX 9.0 SDK (February 2005)/Include/'' '...
     '-L''C:/Program Files (x86)/Microsoft DirectX 9.0 SDK (February 2005)/Lib/%s/'' '...
     '-l''d3d9'' '...
     '-l''d3dx9'' '...
     '-D%s '...
     'xglmex.cpp xglhandlers.cpp xgl.cpp'];
cmd=sprintf(cmd,archdir,upper(mexext));
fprintf('Evaluating "%s"\n',cmd)
eval(cmd)

fprintf('Done\n')
