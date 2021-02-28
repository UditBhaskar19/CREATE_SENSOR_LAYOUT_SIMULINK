% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Set Grid Parameters
% ==============================================================================================================================================================
% Grid Parameters
xFront = single(210);
xRear  = single(160);
yRight = single(105);
yLeft  = single(105);
xRes   = single(0.5);
yRes   = single(0.5);

% Initialize array to store the grid
nCellx = floor(xFront/xRes) - floor(-xRear/xRes) + 1; 
nCelly = floor(yRight/yRes) - floor(-yLeft/yRes) + 1; 
nCells = nCellx * nCelly;
GridCellIDs = single(zeros(1,nCells));
GridCell2D =  single(zeros(nCellx, nCelly));
RegionConfidenceRAD = single(zeros(nRadars, nCells));
FOVOverlapRAD = false(nRadars, nCells);
RegionConfidenceCAM = single(zeros(nCameras, nCells));
FOVOverlapCAM = false(nCameras, nCells);

% Load Data for Region Confidence Computation
CONFI_VALS = single([1.0, 0.9, 0.8, 0.7; ...
                     0.9, 0.8, 0.7, 0.6; ...
                     0.8, 0.7, 0.6, 0.5; ...
			         0.7, 0.6, 0.5, 0.4]);
CONFI_RANGE_X = single([0 , 50 , 100, 150]);
CONFI_RANGE_Y = single([0 , 5  , 10,  15]);