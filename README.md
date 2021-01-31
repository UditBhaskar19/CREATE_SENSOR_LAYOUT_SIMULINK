## SENSOR LAYOUT FOR 6 RADARS & 8 CAMERAS FOR AUTOMATED DRIVING APPLICATIONS
![](https://github.com/UditBhaskar91/Multi-Sensor-Data-Fusion-for-Automated-Driving/blob/master/Images/SensorLayout_6Radars_8Cameras.PNG)
## SENSOR FOV CHARACTERIZATION USING GRID FOR 6 RADARS & 8 CAMERAS (Configurations : Radar Only, Camera Only, Radar + Camera)
#### The first row of images corresponds to different sensor fov overlap zones for different sensor suite configurations
#### The second row of images corresponds to confidence of fov for different sensor suite configurations
![](https://github.com/UditBhaskar91/Multi-Sensor-Data-Fusion-for-Automated-Driving/blob/master/Images/GRID_vis.png)
## 0. OVERVIEW :-
#### We have an array of sensors installed around the ego vehicle for differenent ADAS/AD applications. In theory each of the sensors in the sensor array can have different sensor mode and each of the sensor modes can have variations. For example in this project we have two types of sensors: RADAR & CAMERA. RADAR mode has variations: SRR (Short Range Radar) & LRR (Long Range Radar). CAMERA has variations: NFOV (Narrow Field of View) & WFOV (Wide Field of View). Hence we need an architecture such that the fusion algorithm can support multiple sensors with variations in sensor catagories and types. This project aims at creating a mapping (which is being referred as SENSOR LAYOUT) between the measurements and the sensor parameters (intrinsic and extrinsic parameters) by first systematically creating an array of structures of Sensor IDs and Sensor Parameters, and finally linking each of the measurements with the corresponding sensor ID. The implementation is in SIMULINK 2018a version.
![](https://github.com/UditBhaskar91/Multi-Sensor-Data-Fusion-for-Automated-Driving/blob/master/Images/SensorMeasurementsSimulatedData.gif)

## CONTENTS :-
| TOPIC | DESCRIPTION |
| -------- | ----------- |
| **Overview** | Problem description and solution approach |
| **Architecture main** | Subsystem Overview for Sensor Data Generation & Fusion model |
| **Set Sensor Parameters** | Subsystem Detail Design for creating the sensor layout as per requirements/specifications |
| **Perform Spatial Allignment** | Subsystem Detail Design for the Coordinate transformation from sensor frame to ego vehicle frame |
| **Generate and set sensor measurements** | Subsystem Detail Design for Sensor Data Generation (input to fusion subsystem) |
| **Plots of the measurements** | Before coordinate transformation and after coordinate transformation |
| **Complete architecture of the Fusion Framework** | Frame Model for the complete fusion frame work (Under Progress) |

## 1. ARCHITECTURE MAIN :-
The Fusion Model System has two subsystems :-
1) **Sensor Measurements Subsystem**  : Generates sensor measurement data in the form of array of structures at every 50 ms
2) **Object Tracker Sensor Fusion Subsystem** : Performs the following Sensor Fusion functions
* Sensor Layout Set.
* Sensor FoV Grid Mapping.
* Spatial Allignment.
* Temporal Allignment.
* Data Association and State Estimation.
* Track management.
#### This project shall discuss on the detail design of SENSOR LAYOUT and SPATIAL ALLIGNMENT. The remaining blocks are depicted as part of Frame Model.

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/00_Architecture_main_view_1.JPG)
**Fig 1 : Fusion Model hierarchical structure overview**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_1.JPG)
**Fig 2 : Fusion Model Implementation in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_3.JPG)
**Fig 3 : Set Sensor Calibration Parameter Subsystem in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_2.JPG)
**Fig 4 : Spatial Allignment Subsystem in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_4.JPG)
**Fig 5 : Radar, Camera and Ego sensor measurements Subsystem in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_9.JPG)
**Fig 6 : Sensor measurements bus Subsystem in simulink**
<br/><br/><br/><br/>

## 1. SENSOR LAYOUT :-
![](https://github.com/UditBhaskar91/Multi-Sensor-Data-Fusion-for-Automated-Driving/blob/master/Images/RadarParameters.JPG)
![](https://github.com/UditBhaskar91/Multi-Sensor-Data-Fusion-for-Automated-Driving/blob/master/Images/CameraParameters.JPG)
**Fig 7 : Intrinsic and Extrinsic Parameters Subsystems in simulink for Radar and Camera**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_11.JPG)
![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_13.JPG)
**Fig 8 : Intrinsic and Extrinsic Parameters Subsystems in simulink for Radar and Camera**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_16.JPG)
**Fig 9 : Radar Intrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_18.JPG)
**Fig 10 : Radar Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_20.JPG)
**Fig 11 : Camera Intrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_23.JPG)
**Fig 12 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

## 2. SPATIAL ALLIGNMENT :-
<br/><br/>
![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_26.JPG)
**Fig 13 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_27.JPG)
**Fig 14 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_28.JPG)
**Fig 15 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_45.JPG)
**Fig 16 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_46.JPG)
**Fig 17 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_44.JPG)
**Fig 18 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_42.JPG)
**Fig 19 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_48.JPG)
**Fig 20 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_43.JPG)
**Fig 22 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_41.JPG)
**Fig 21 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_47.JPG)
**Fig 23 : Camera Extrinsic Parameters Subsystems in simulink**
<br/><br/><br/><br/>


## 3. SENSOR MEASUREMENTS GENERATION :-
![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_5.JPG)
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_6.JPG)
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_8.JPG)
<br/><br/><br/><br/>

![](https://github.com/UditBhaskar91/Sensor_Layout_6_Radars_8_Cameras_Spatial_Allignment/blob/main/Images/0_Architecture_main_view_7.JPG)
<br/><br/><br/><br/>


## 4. FRAME ARCHITECTURE OF FUSION FRAMEWORK :-
(Work In Progress !!!...)
