% ==============================================================================================================================================================
% Author Name : Udit Bhaskar Talukdar
% Date        : 01.01.2021
% Description : Set Filtering Parameters
% ==============================================================================================================================================================
dT = SamplingTime;
StateTranMatrix_CA = single([1, dT, 0.5*dT*dT, 0,0,0; ...
                             0, 1,  dT,        0,0,0; ...
                             0, 0,  1,         0,0,0; ...
                             0,0,0,            1, dT, 0.5*dT*dT; ...
                             0,0,0,            0, 1,  dT; ...
                             0,0,0,            0, 0,  1]);
sigma = single(1);
ProcessNoiseCovMat_CA = single(sigma^2*[dT^5/20,    dT^4/8,    dT^3/6,    0,0,0; ...
                                        dT^4/8 ,    dT^3/3,    dT^2/2,    0,0,0; ...
                                        dT^3/6 ,    dT^2/2,    dT,        0,0,0; ...
                                        0,0,0,      dT^5/20,   dT^4/8,    dT^3/6; ... 
                                        0,0,0,      dT^4/8 ,   dT^3/3,    dT^2/2; ...
                                        0,0,0,      dT^3/6 ,   dT^2/2,    dT]);
MeasModelCA2PxPy = single([1,0,0,0,0,0;...
                           0,0,0,1,0,0]);
GammaSq = 9.2103; 
P_G = 0.99;
INVALID_LIKELIHOOD = single(99);