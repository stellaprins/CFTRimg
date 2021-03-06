
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%	  QUENCH (IODIDE FIRST)    %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

saveWorkspaceHere       = fullfile(getDesktopDir(),'\CFTRimg\Results\ResultsQuench\Ifirst\quenchIfirst_'); % create filepath for saving the workspace
saveQuenchResultsHere   = fullfile(getDesktopDir(),'\CFTRimg\Results\ResultsQuench\Ifirst');          
inputFolderN						= 1;																				% number of 'input folders' 
input										= createInputStruct_quench(inputFolderN);		% create empty structs

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% input folder 1 
input(1).timeStep				= 2;																		% time between image collection (seconds)
input(1).timeline				= [6,25,70];														% [timpoint after first fluid addition (FSK) , timpoint after second fluid addition (iodide), last timepoint] 
input(1).experimentStr  = {'04-12-17'};													% identifier experiment
input(1).plateStr				= {'04-12-17 Plate_15771'};							% identifier plate 
input(1).folderName			= 'quench_Ifirst';                      % name of folder in which Timepoint folders are located
input(1).baseFolder			= strcat(getDesktopDir(),'\CFTRimg\Data'); % filepath in which folders with Timepoint folders are located	
input(1).filePrefix			= 'quench_Ifirst_';											% prefix file name before C02_s1_w1, C02_s1_w2, C02_s2_w1 etc (C02_s2_w1 -> well C02, site 2, wavelength 1) 
input(1).condition			= {'WT + VX-770 28�C', 'F508del + VX-770 28�C', 'F508del + VX-809 + VX-770 28�C'}; % conditions
input(1).normCondition					 = {'WT + VX-770 28�C'};										% WT on the plate (for calculating the normalised RedInside)
input(1).condWells(1,1:3)					= {'C02','C06','C08'};
input(1).condWells(2,1:3)					= {'D02','D04','D06'};
input(1).condWells(3,1:4)					= {'E02','E04','E06','E08'};
input(1).condWellsControl(1,1:4)	=  {'C03','C05','C07','C09'};
input(1).condWellsControl(2,1:4)	=  {'D03','D05','D07','D09'};
input(1).condWellsControl(3,1:4)	=  {'E03','E05','E07','E09'};

% input folder 2 

% input(2).timeStep					= 2;																						% time between image collection (seconds)
% input(2).timeline					= [first addition , second addition, end] (timepoints)
% input(2).experimentStr		= {'exp'};																			% identifier experiment
% input(2).plateStr					= {'plate'};																		% identifier plate 
% input(2).folderName				= 'foldername';																	% name of folder in which Timepoint folders are located
% input(2).baseFolder				= strcat(getDesktopDir(),'\CFTRimg\example\data'); % filepath in which folders with Timepoint folders are located	
% input(2).filePrefix				= 'prefix';																			% prefix file name before C02_s1_w1, C02_s1_w2, C02_s2_w1 etc (C02_s2_w1 -> well C02, site 2, wavelength 1) 
% input(2).condition				= {'WT', 'cond1', 'cond2'};											% conditions
% input(2).normConditionStr	= {'WT'};																				% WT on the plate (for calculating the normalised RedInside)

%%% condWells are the wells in which CFTR is activated 
% input(2).condWells(1,1:2)	= {'C02','C06'};																% corresponds to WT because WT is the first in the list of conditionStr
% input(2).condWells(2,1:3)	= {'D04','D06','D08'};													% corresponds to cond1 because cond1 is the second in the list of conditionStr
% input(2).condWells(3,1)		= {'E02'};

%%% condWellsControl are the wells in which CFTR is not activated (control condition)
% input(2).condWellsControl(1,1:4)  =  {'C03','C05','C07','C09'};
% input(2).condWellsControl(2,1:4)	=  {'D03','D05','D07','D09'};
% input(2).condWellsControl(3,1:4)	=  {'E03','E05','E07','E09'};
