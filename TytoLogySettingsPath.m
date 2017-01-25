function [p, name] = TytoLogySettingsPath
%------------------------------------------------------------------------
% [p, name] = TytoLogySettingsPath
%------------------------------------------------------------------------
% TytoLogyTools toolbox
%------------------------------------------------------------------------
% 
% returns user's Tytology Settings Path
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	p		path to user's settings
%	name	user's name
%------------------------------------------------------------------------
% See also: username, computer, system, echo
%------------------------------------------------------------------------

%------------------------------------------------------------------------
%  Sharad J. Shanbhag
%	sshanbhag@neomed.edu
%------------------------------------------------------------------------
% Created: 2 December, 2009 (SJS)
%
% Revisions:
%	3 Feb 2010 (SJS): name changed to TytoLogySettingsPath.m from
%							TytoSettingsPath.m
%	12 Nov 2012 (SJS): changed PCWINroot value to 
% 							'C:\TytoLogy\TytoLogySettings\'
%	18 Jan 2017 (SJS): updating
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------

% different paths depending on OS
PCWINroot = 'C:\TytoLogy\Toolbox\TytoLogySettings\';
MACroot = '/Users/';
MACtytopath = '/Work/Code/Matlab/dev/TytoLogy/TytoLogySettings/';
LINUXroot = '/home/';

% get os type (mac, pcwin, linux) and username
os_type = computer;
name = username;

% different settings based on OS
switch os_type
	case 'PCWIN'
		rootp = PCWINroot;
		% return full path
		p = [rootp name filesep];
	case 'MAC'
		rootp = MACroot;
		% return full path
		p = [rootp name filesep];
	case 'GLNXA64'
		rootp = LINUXroot;
		% return full path
		p = [rootp name filesep];
	case 'MACI64'
		rootp = MACroot;
		% return full path
		p = [rootp name MACtytopath];
	otherwise
		error([mfilename ': ' os_type ' is unknown computer'])
end

