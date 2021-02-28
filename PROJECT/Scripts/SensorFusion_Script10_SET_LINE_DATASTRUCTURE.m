% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Set Lane Line Data Structure
% ==============================================================================================================================================================

LineTrack = struct;
LineTrack.LateralOffset = single(0);
LineTrack.HeadingAngle = single(0);
LineTrack.Curvature = single(0);
LineTrack.CurvatureDerivative = single(0);
LineTrack.CurveLengthStart = single(0);
LineTrack.CurveLength = single(0);
LineTrack.ErrCOV = single(zeros(4,4));
LANE_LINE_TRACK = LineTrack;

nPtsFront = 200;
nPtsRear = 200;
n = nPtsFront + nPtsRear;
LineGridstruct = struct;
LineGridstruct.px = single(zeros(1,n));
LineGridstruct.py = single(zeros(1,n));
LineGridstruct.arcLength = single(zeros(1,n));
LineGridstruct.HeadingAngle = single(zeros(1,n));
LineGridstruct.Curvature = single(zeros(1,n));
LineGridstruct.CurvatureDerivative = single(zeros(1,n));
LineGridstruct.validCurvLenFront = single(0);
LineGridstruct.validCurvLenRear = single(0);
LineGridstruct.BufferLastValidIdx = uint16(0);
ROAD_GRID_STRUCT = struct;
ROAD_GRID_STRUCT.EgoLaneNxtNxtLeftBoundary = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneNxtLeftBoundary = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneLeftBoundary = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneCenter = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneRightBoundary = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneNxtRightBoundary = LineGridstruct;
ROAD_GRID_STRUCT.EgoLaneNxtNxtRightBoundary = LineGridstruct;

