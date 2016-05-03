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
%   f = format ('date' or 'time')
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

f = lower(f);

if strcmp(f,'date')   
    out = datestr(now,29); % 'yyyy-mm-dd' format
elseif strcmp(f,'time')
    out = datestr(now,13); % 'HH:MM:SS' format
end

