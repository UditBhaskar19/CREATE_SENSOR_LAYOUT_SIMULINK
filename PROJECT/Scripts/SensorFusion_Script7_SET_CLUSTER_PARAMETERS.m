% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Set Clustering Parameters
% ==============================================================================================================================================================
clusterSize = max(maxNumMeasRadar, maxNumMeasCamera);
ClusterCenter_SNSR = single(zeros(dimVector, clusterSize));
ClusterCov_SNSR = single(zeros(dimVector, dimVector, clusterSize));
ClusterSizes_SNSR = uint16(zeros(1,clusterSize));
MeasToClusterAssignment_SNSR = uint16(zeros(1,clusterSize));
isMeasVisitedFlagArray_SNSR = false(1,clusterSize);
ClusterMemArray_SNSR = uint16(zeros(1,clusterSize));

CLSTR_SNSR_DELAY_INIT = struct;
CLSTR_SNSR_DELAY_INIT.ClusterCenter = ClusterCenter_SNSR;
CLSTR_SNSR_DELAY_INIT.ClusterCovariance = ClusterCov_SNSR;
CLSTR_SNSR_DELAY_INIT.ClusterSizes = ClusterSizes_SNSR;
CLSTR_SNSR_DELAY_INIT.ClusterToMeasAssignment = MeasToClusterAssignment_SNSR;
CLSTR_SNSR_DELAY_INIT.isMeasVisitedFlag = isMeasVisitedFlagArray_SNSR;
CLSTR_SNSR_DELAY_INIT.nClusters = uint16(0);
CLSTR_SNSR_DELAY_INIT.ClusterMember = ClusterMemArray_SNSR;

% Radar and Camera Cluster
dbscan_eps = single(5);  % less than or equal to 5
nn_eps = single(5);  % less than or equal to 5