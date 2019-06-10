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
%	17 Jan 2017 (SJS): updated pcwinroot path for current settings dir
%	18 Jan 2017 (SJS): updating
%	3 Feb 2017 (SJS): added PCWIN64
%	10 Jan 2019 (SJS): added check for 'Toolboxes'
%------------------------------------------------------------------------
% TO DO:
%------------------------------------------------------------------------

% different paths depending on OS
PCWINroot = 'C:\TytoLogy\Toolbox\TytoLogySettings\';
PCWINroot_alternate = 'C:\TytoLogy\Toolboxes\TytoLogySettings\';
MACroot = '/Users/';
MACtytopath = '/Work/Code/Matlab/dev/TytoLogy/TytoLogySettings/';
LINUXroot = '/home/';

% get os type (mac, pcwin, linux) and username
os_type = computer;
name = username;

% different settings based on OS
switch os_type
	case {'PCWIN', 'PCWIN64'}
		if exist(PCWINroot, 'dir')
			rootp = PCWINroot;
		elseif exist(PCWINroot_alternate, 'dir')
			rootp = PCWINroot_alternate;
		else
			warning('%s: could not find PCWINroot OR PCWINROOT_alternate', ...
							mfilename);
			fprintf('%s: using current working directory instead', mfilename);
			rootp = pwd;
		end
		% return full path
		p = [fullfile(rootp, name) filesep];
	case 'MAC'
		if exist(MACroot, 'dir')
			rootp = MACroot;
		else
			warning('%s: could not find MACroot', ...
							mfilename);
			fprintf('%s: using current working directory instead', mfilename);
			rootp = pwd;
		end
		% return full path
		p = [fullfile(rootp, name) filesep];
	case 'GLNXA64'
		if exist(LINUXroot, 'dir')
			rootp = LINUXroot;
		else
			warning('%s: could not find LINUXroot', ...
							mfilename);
			fprintf('%s: using current working directory instead', mfilename);
			rootp = pwd;
		end
		% return full path
		p = [fullfile(rootp, name) filesep];
	case 'MACI64'
		rootp = MACroot;
		% return full path
		p = fullfile(rootp, name, MACtytopath);
	otherwise
		warning([mfilename ': ' os_type ' is unknown computer']);
		fprintf('%s: using current working directory instead', mfilename);
		rootp = pwd;
		% return full path
		p = [fullfile(rootp, name) filesep];		
end

