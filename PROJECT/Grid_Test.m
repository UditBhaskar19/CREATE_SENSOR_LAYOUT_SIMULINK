% Script to Validate Grid

x_max = 220; x_min = -160;
y_max = 110; y_min = -110;
delx = 0.5; dely = 0.5;
xcoord =  x_min:delx:x_max;
ycoord =  y_min:dely:y_max;

if(ValidateGRID)
HeatMapRAD_FOV_DAT = HeatMapRAD_FOV.Data;
HeatMapRAD_CONFI_DAT = HeatMapRAD_CONFI.Data;
HeatMapCAM_FOV_DAT = HeatMapCAM_FOV.Data;
HeatMapCAM_CONFI_DAT = HeatMapCAM_CONFI.Data;
HeatMap_RAD_CAM_FOV_DAT = HeatMap_RAD_CAM_FOV.Data;
HeatMap_RAD_CAM_CONFI_DAT = HeatMap_RAD_CAM_CONFI.Data;

figure(1);
subplot(2,3,1);
imagesc(ycoord, xcoord, HeatMapRAD_FOV_DAT); colorbar;
xlabel('Y coordinate'); ylabel('X coordinate')
axis('xy');axis equal;

subplot(2,3,2);
imagesc(ycoord, xcoord, HeatMapCAM_FOV_DAT); colorbar;
xlabel('Y coordinate'); ylabel('X coordinate')
axis('xy');axis equal;

subplot(2,3,3);
imagesc(ycoord, xcoord, HeatMap_RAD_CAM_FOV_DAT); colorbar;
xlabel('Y coordinate'); ylabel('X coordinate')
axis('xy');axis equal;
    
subplot(2,3,4);
imagesc(ycoord, xcoord, HeatMapRAD_CONFI_DAT);colorbar;
xlabel('Y coordinate'); ylabel('X coordinate');
axis('xy'); axis equal;

subplot(2,3,5);
imagesc(ycoord, xcoord, HeatMapCAM_CONFI_DAT);colorbar;
xlabel('Y coordinate'); ylabel('X coordinate');
axis('xy'); axis equal;
 
subplot(2,3,6);
imagesc(ycoord, xcoord, HeatMap_RAD_CAM_CONFI_DAT);colorbar;
xlabel('Y coordinate'); ylabel('X coordinate');
axis('xy'); axis equal;

else
    disp("Turn On ValidateGRID flag in the main .m filer to Visualize GRID");
end