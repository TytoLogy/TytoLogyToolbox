function status = TDTInitStatus(handles)
%------------------------------------------------------------------------
%status = TDTInitStatus(handles)
%------------------------------------------------------------------------
% 
% returns status of TDT hardware
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	handles		project handles
% 
% Output Arguments:
% 	status		0 if not initialized, 1 if initialized
%
%------------------------------------------------------------------------
% See also: 
%------------------------------------------------------------------------

%------------------------------------------------------------------------
%  Sharad J. Shanbhag
%	sharad.shanbhag@einstein.yu.edu
%------------------------------------------------------------------------
% Created: 8 October, 2009 (SJS)
%
% Revisions:
%	3 Feb 2010 (SJS): uses lock file specified in 
% 							handles.config.TDTLOCKFILE instead of 
% 							local.tdtlock.mat file
% 	4 Feb 2010 (SJS):	moved to TytoLogyTools toolbox directory
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------

% check if the lock variable (TDTINIT) in .tdtlock.mat lockfile is set
if ~exist(handles.config.TDTLOCKFILE, 'file')
	warning('%s: could not find TDT lock file %s', mfilename, handles.config.TDTLOCKFILE)
	disp('... assuming TDT HW is not initialized');
	status = 0;
else
	% load the lock information
	load(handles.config.TDTLOCKFILE);
	status = TDTINIT;
end