function out = TytoLogy_Configuration
%------------------------------------------------------------------------
% out = TytoLogy_Configuration
%------------------------------------------------------------------------
% 
% Sets initial configuration for the TytoLogy programs
% 
% Comment out/in the settings for your configuration!
% 
%------------------------------------------------------------------------
% Input Arguments:
% 	none
% 
% Output Arguments:
% 	out		struct containing settings for requested type
%------------------------------------------------------------------------
% See also: HPSearch_Configuration, HPSearch_tdtinit
%------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Sharad J. Shanbhag
% sharad.shanbhag@einstein.yu.edu
%--------------------------------------------------------------------------
% Revision History
%	2 December, 2009 (SJS):
% 		-	created from HPSearch_Configuration
%	3 Feb 2010 (SJS)
% 		- changed TDT_LOCK_FILE to TDTLOCKFILE
% 		- changed TytosettingsPath to TytoLogySettingsPath
%--------------------------------------------------------------------------
% TO DO: there's gotta be a better way to manage different hardware 
% 			setups.  
%--------------------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UNCOMMENT SECTION THAT WILL BE USED & 
% COMMENT OUT THE INAPPROPRIATE BITS!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is for using RX_8(2) for output (headphones) 
% and RX5 + medusa for spike input.
% This is the default setup for 
% the Pena Lab Free-field rig
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
out.CONFIGNAME = 'MEDUSA+HEADPHONES';
out.TDT = 'TDT4';
out.INDEV = 'MEDUSA4'; 
out.OUTDEV = 'HEADPHONES';
out.IOFUNCTION = @headphonestim_medusarec;
out.TDTSETFUNCTION = @HPSearch_medusasettings;
out.DATAPATH = pwd;
out.CALDATAPATH = 'C:\Users\TytoLogy\main\Calibration\CalibrationData';
out.TYTOLOGY_ROOT_PATH = 'H:\Code\TytoLogy\';
out.TYTOLOGY_SETTINGS_PATH = TytoLogySettingsPath;
out.TYTOLOGY_PROTOCOL_PATH = [out.TYTOLOGY_SETTINGS_PATH 'Protocols\']
out.TDTLOCKFILE = [out.TYTOLOGY_SETTINGS_PATH '.tdtlock.mat']
%------------------------------------------------------------------------

%------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is for using RX_8 for both input and output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% out.CONFIGNAME = 'RX8_IO'
% out.TDT = 'TDT_SINGLECHANNEL';
% out.INDEV = 'IODEV'; 
% out.OUTDEV = [];
% out.IOFUNCTION = @headphone_spikeio;
% out.TDTSETFUNCTION = @HPSearch_RX8iosettings
% out.DATAPATH = 'C:\Users\Data';
% out.CALDATAPATH = 'C:\Users\CalibrationData';
%------------------------------------------------------------------------

