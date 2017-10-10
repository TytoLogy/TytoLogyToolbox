function [user_name, os_type, host_name] = username
%------------------------------------------------------------------------
% [user_name, os_type, host_name] = username
%------------------------------------------------------------------------
% TytoLogyTools toolbox
%------------------------------------------------------------------------
% 
% returns system username, os type, machine name (hostname)
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	user_name		operating system-defined user name
%	os_type	operating system name
%	host_name	system host name
%------------------------------------------------------------------------
% See also: computer, system, echo
%------------------------------------------------------------------------

%------------------------------------------------------------------------
%  Sharad J. Shanbhag
%	sshanbhag@neomed.edu
%------------------------------------------------------------------------
% Created: 2 December, 2009 (SJS)
%
% Revisions:
%	10 May, 2011:	added MACI64 as valid os_type
%	3 May, 2012:	added MACI as valid os_type
%	19 Apr, 2016:	added PCWIN64 as valid os_type
%	10 Oct, 2017:	added host_name as output value
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------

% get operating system type 
os_type = computer;

% actions depend on system type
switch os_type
	case {'PCWIN', 'PCWIN64'}
		% get user name
		[~, tmp] = system('echo %UserName%');
		user_name = tmp(1:end-1);
		% get host name
		[~, tmp] = system('echo %ComputerName%');
		host_name = tmp(1:end-1);
		
	case {'MAC', 'MACI', 'GLNXA64', 'MACI64'}
		% get user name
		[~, tmp] = system('whoami');
		user_name = sscanf(tmp, '%s');
		% get host name
		[~, tmp] = system('hostname');
		host_name = sscanf(tmp, '%s');
		
	otherwise
		error([mfilename ': ' os_type ' is unknown computer'])
end


