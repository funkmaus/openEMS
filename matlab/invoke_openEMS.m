function invoke_openEMS( opts )

if nargin < 1
    error 'specify the xml file to simulate'
end

% opts = [opts ' --disable-dumps'];
% opts = [opts ' --debug-material'];
% opts = [opts ' --debug-boxes'];
% opts = [opts ' --engine=sse'];
% opts = [opts ' --engine=multithreaded'];

filename = mfilename('fullpath');
dir = fileparts( filename );
openEMS_Path = [dir filesep '..' filesep];
    
if isunix
	openEMS_Path = [openEMS_Path 'openEMS.sh'];
else
	openEMS_Path = [openEMS_Path 'openEMS'];
end

command = [openEMS_Path ' ' opts];
disp( ['invoking openEMS simulator: ' command] );
system(command);