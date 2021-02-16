% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Set Track Data Structure
% ==============================================================================================================================================================

nTracks = uint16(100);
nTrackHistoryPoints = uint16(100);

% State Data Structure
StateParam = struct;
StateParam.px = single(0);
StateParam.vx = single(0);
StateParam.ax = single(0);
StateParam.py = single(0);
StateParam.vy = single(0);
StateParam.ay = single(0);
StateParam.ErrCOV = single(zeros(6,6));

% Data structure specific to camera
StateCamSpecificParam  = struct;
StateCamSpecificParam.Classification = int16(0);
StateCamSpecificParam.ClassificationScore = single(0);
StateCamSpecificParam.BoundingBoxDim = single(zeros(3,1));
StateCamSpecificParam.BoundingBoxPoint = single(zeros(3,1));

% Data structure specific to Radar
StateRadSpecificParam = struct;
StateRadSpecificParam.Classification = int16(0);
StateRadSpecificParam.ClassificationScore = single(0);
StateRadSpecificParam.rcs = single(0);

% Data structure specific to state accuracy
StateParamAccuracy = struct;
StateParamAccuracy.pxSigma = single(0);
StateParamAccuracy.pySigma = single(0);
StateParamAccuracy.vxSigma = single(0);
StateParamAccuracy.vySigma = single(0);
StateParamAccuracy.axSigma = single(0);
StateParamAccuracy.aySigma = single(0);

% Data structure specific to Sensor catch
SensorCatch = struct;
SensorCatch.RadarDetection = false;
SensorCatch.CameraDetection = false;
SensorCatch.RadarCameraDetection = false;
SensorCatch.RadarSensorCatch = false(1,nRadars);
SensorCatch.CameraSensorCatch = false(1,nCameras);

% Data structure specific to Track Quality
TrackQuality = struct;
TrackQuality.TrackedTime = single(0);   
TrackQuality.RegionConfidence = single(0);         
TrackQuality.PredictedCounter = uint16(0);        
TrackQuality.GatedCounter = uint16(0);

% Data structure specific to Track Status
TrackStatus = struct;
TrackStatus.New = false;         
TrackStatus.Existing = false;   
TrackStatus.Lost = false;       
TrackStatus.Predicted = false;   
TrackStatus.Gated = false;      
TrackStatus.OutOfFov = false;    
TrackStatus.Occluded = false;    
TrackStatus.Stationary = false;  
TrackStatus.SlowMoving = false;  
TrackStatus.Moving = false;        
TrackStatus.Obstacle = false;   
TrackStatus.Object = false;

% Data structure for Track Parameters
TrackParam = struct; 
TrackParam.id = uint16(0);
TrackParam.StateParam = StateParam;
TrackParam.StateCamSpecificParam = StateCamSpecificParam;
TrackParam.StateRadSpecificParam = StateRadSpecificParam;
TrackParam.StateParamAccuracy = StateParamAccuracy;
TrackParam.SensorCatch = SensorCatch;
TrackParam.TrackQuality = TrackQuality;
TrackParam.TrackStatus = TrackStatus;

% Track Data Structure & Track Indexes for track management
TRACK_ESTIMATES = struct;
TRACK_ESTIMATES.nValidTracks = uint16(0);                  
TRACK_ESTIMATES.TrackParam = TrackParam(ones(1, nTracks));
TRACK_ESTIMATES.TrackIDList = uint16(1:1:nTracks);       % list of all possible track ids
TRACK_ESTIMATES.IsTrackIDused = false(1,nTracks);        % are there track ids assigned to track(s) 
TRACK_ESTIMATES.FirstAvailableIDindex = uint16(1);       % index to the first available track id (track ids not currently used by existing tracks) 
TRACK_ESTIMATES.LastAvailableIDindex = uint16(nTracks);  % index to the last available track id (track ids not currently used by existing tracks) 

% Data Structure for Track History
TrackHistory = struct;
TrackHistory.id = uint16(0);
TrackHistory.TrackEstRefIdx   = uint16(0);
TrackHistory.BufferStartIndex = uint16(0);               % number of elements held in the buffer
TrackHistory.WriteIndex       = uint16(1);               % buffer array index where the latest element has to be copied
TrackHistory.Length           = single(0);               % trajectory length 
TrackHistory.isInitialized    = false;                   % is the trajectory buffer initialized 
TrackHistory.HistoryBufferPx  = single(zeros(1,nTrackHistoryPoints));
TrackHistory.HistoryBufferPy  = single(zeros(1,nTrackHistoryPoints));
TrackHistory.HistoryBufferVx  = single(zeros(1,nTrackHistoryPoints));
TrackHistory.HistoryBufferVy  = single(zeros(1,nTrackHistoryPoints));
TrackHistory.HistoryBufferAx  = single(zeros(1,nTrackHistoryPoints));
TrackHistory.HistoryBufferAy  = single(zeros(1,nTrackHistoryPoints));

% Data Structure Trajectory History
TRAJECTORY_HISTORY = struct;
TRAJECTORY_HISTORY.nConfirmedTracks = uint16(0);
TRAJECTORY_HISTORY.TrackHistory = TrackHistory(ones(1,nTracks));

% Initial Parameters
TRACK_EST_RAD_INIT = TRACK_ESTIMATES;
TRACK_EST_CAM_INIT = TRACK_ESTIMATES;
TRACK_EST_FUS_INIT = TRACK_ESTIMATES;
TRACK_HISTORY_INIT = TRAJECTORY_HISTORY;







