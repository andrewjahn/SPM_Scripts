function ROI_data = Extract_ROI_Data(ROI, Contrast)

% Extract_ROI_Data: Extracts data from an ROI
% The function takes two arguments: ROI, and Contrast
% Example use: ROI_data = Extract_ROI_Data('dACC_mask.nii', 'con_0001.nii')
%
% This script will need to either be run in the directory that contains
% both the ROI and the Contrast, or the arguments need to be paths pointing
% to where the files are located
%
% Created by Andrew Jahn, 02.13.2020
% Based on code written by Derek Nee, Professor at FSU

    Y = spm_read_vols(spm_vol(ROI),1);
    indx = find(Y>0);
    [x,y,z] = ind2sub(size(Y),indx);

    XYZ = [x y z]';
    
    mean(spm_get_data(Contrast, XYZ),2)
    
end
