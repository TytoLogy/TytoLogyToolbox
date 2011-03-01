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
%	sharad.shanbhag@einstein.yu.edu
%------------------------------------------------------------------------
% Created: 2 December, 2009 (SJS)
%
% Revisions:
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------


os_type = computer;
switch os_type
	case 'PCWIN'	
		[status, name] = system('echo %UserName%');
		name = name(1:end-1);
		
	case {'MAC', 'GLNXA64'}
		[status, name] = system('whoami');

	otherwise
		error([mfilename ': ' os_type ' is unknown computer'])
end


