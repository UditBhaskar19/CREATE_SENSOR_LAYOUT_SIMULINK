% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : This script consists of input paramters, constants, configurable paramters for Sensor Fusion System execution
%               The version 1.0 fusion architecture is based on centralized fusion architecture involving measurement to track association
%               It is assumed that multiple Radars and multiple Cameras are Installed around the ego vehicle
%               Software Components: SensorLayout(SL),  
%                                    EnvGridMap(EGM), 
%                                    Spatial Allignment(SA), 
%                                    DataAssociation(DA), 
%                                    TrackManagement(TM)   
% ==============================================================================================================================================================
% Spatial Allignment(SA) of the measurements (Coordinate Transformation)
ANTICLOCKWISE_ROT = single(1);
CLOCKWISE_ROT = single(-1);
ROT_CONVENTION = ANTICLOCKWISE_ROT;
