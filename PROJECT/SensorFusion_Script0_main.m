% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Main M-Script to SetUp the Model
% ==============================================================================================================================================================
% Run the below scripts (in this sequence)
run('Scripts/SensorFusion_Script1_LOAD_SIMULATION_DATA.m');
run('Scripts/SensorFusion_Script3_LOAD_DATA_STRUCTURE_PARAMETERS.m');
run('Scripts/SensorFusion_Script4_CONFIG_PARAMETERS.m');
run('Scripts/SensorFusion_Script5_SET_SENSOR_CONFIG_PARAMETERS.m');
run('Scripts/SensorFusion_Script6_SET_GRID_PARAMETERS.m');
load('DataStructureObjectFusion.mat');


ValidateLAYOUT = true;
% To visualize the sensor layout for validating sensor intrinsic and
% extrinsic parameters set 'ValidateLAYOUT' flag to true

ValidateGRID = true;
% To visualize the sensor layout for validating sensor intrinsic and
% extrinsic parameters set 'ValidateLAYOUT' flag to true and run script 'Grid_Test.m'