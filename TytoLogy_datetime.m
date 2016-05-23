function out = TytoLogy_datetime(f)
%------------------------------------------------------------------------
% datetime.m
%------------------------------------------------------------------------
% TytoLogy Toolbox
%------------------------------------------------------------------------
% Script to generate date and time strings for TytoLogy2 scripts
%
%------------------------------------------------------------------------
%  Input Argument: 
%   f = format string
% 		'date'				date in 'yyyy-mm-dd' format
% 		'date_compact'		date in 'yyyymmdd' format
% 		'time'				time in 'HH:MM:SS' format
%------------------------------------------------------------------------

%------------------------------------------------------------------------
%  Go Ashida and Sharad Shanbhag
%   ashida@umd.edu
%	sshanbhag@neomed.edu
%------------------------------------------------------------------------
% Original Version (HPSearch2_datetime) : October 2011 by GA
% Generalized Version (TytoLogy2_datetime) : May 2012 by GA
% TytoLogy version (TytoLogy_datetime) : May 2016 by SJS
%------------------------------------------------------------------------
% 23 May, 2016 (SJS): added 'date_compact' option
%------------------------------------------------------------------------

f = lower(f);

if strcmpi(f,'date')   
    out = datestr(now,29); % 'yyyy-mm-dd' format
elseif strcmpi(f,'time')
    out = datestr(now,13); % 'HH:MM:SS' format
elseif strcmpi(f, 'date_compact') % 'yyyymmdd' format
	out = [datestr(now, 10) datestr(now, 5) datestr(now, 7)]; 
end

