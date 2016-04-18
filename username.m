function [name, os_type] = username
%------------------------------------------------------------------------
% [name, os_type] = username
%------------------------------------------------------------------------
% TytoLogyTools toolbox
%------------------------------------------------------------------------
% 
% returns system username and os type 
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	name		operating system-defined user name
%	os_type	operating system name
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
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------


os_type = computer;
switch os_type
	case {'PCWIN', 'PCWIN64'}	
		[tmp, name] = system('echo %UserName%');
		name = name(1:end-1);
		
	case {'MAC', 'MACI', 'GLNXA64', 'MACI64'}
		[tmp, name] = system('whoami');
		name = sscanf(name, '%s');

	otherwise
		error([mfilename ': ' os_type ' is unknown computer'])
end


