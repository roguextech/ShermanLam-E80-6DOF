%Normalizing function for TorqueGyro. to avoid Batman Errors NaN
%To normalize against how much the gyro is shifting- opposing motion.
function output = dYaw(WPitch, WYaw)
    if((WPitch == 0) && (WYaw == 0))
       output = 0; 
    else
       output = WYaw/sqrt(WPitch^2 + WYaw^2); 
    end
end