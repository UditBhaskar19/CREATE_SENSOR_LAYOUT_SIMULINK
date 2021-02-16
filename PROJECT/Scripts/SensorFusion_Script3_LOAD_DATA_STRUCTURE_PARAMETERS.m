% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : This script creates the data structure and the necessary arrays for Sensor Fusion execution.
%               (A seperate script is written for data struct initialization so that it will be helpful in 
%                determining the memory consumption of the system)
% ==============================================================================================================================================================
nMeas = uint16(200); % maximum number of sensor measurements possible (per sensor)
nRadars = uint8(6);  % number of radars installed subject vehicle
nCameras = uint8(8); % number of cameras installed around subject vehicle
nRadarTypes = uint8(2);  % number of types of radars (as of now two types of radars : LRR and MRR)
nCameraTypes = uint8(2); % number of types of cameras (NFOV, WFOV)
nTracks = 100;        % maximum number of tracks
dimVector = int16(2); % measurement dimension for radar and camera measurements (px, vx, py, vy) % only range measurements are used
dimInfo = 2; % to maintain other info (meas index in CAN and sensor ID)
maxNumMeasRadar = uint16(nRadars)*nMeas;   % maximum number of measurements (all radar sensors)
maxNumMeasCamera = uint16(nCameras)*nMeas; % maximum number of measurements (all camera sensors)
maxNumMeasUpperLimit = max(maxNumMeasRadar, maxNumMeasCamera);
INVALID_NO = single(-999999999);
nFOVpoints = uint16(20); % on one side of the FOV symmetry
MaxNoHypothesis = uint16(100); % maximum number of hypothesis
% ==============================================================================================================================================================











