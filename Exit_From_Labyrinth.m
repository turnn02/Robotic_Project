OpenUltrasonic(SENSOR_1);
ultrasonicVal = zeros(1,50);
while 1
    ultrasonicVal = [ultrasonicVal(2:end), GetUltrasonic(SENSOR_1)];
    plot(ultrasonicVal);
	ylim([0 255]);
	pause(.1);
    if GetUltrasonic(SENSOR_1) > 30
         RobotGoStraight(1)
    else
        
        CloseSensor(SENSOR_1);
        SensorRotateRight()
        OpenUltrasonic(SENSOR_1);
            if GetUltrasonic(SENSOR_1) > 30
                %First check for the right path
                %If the right path is available;
                CloseSensor(SENSOR_1);
                SensorRotateLeft()
                RobotRotateRight()
                OpenUltrasonic(SENSOR_1);
                
                
            else
                
                CloseSensor(SENSOR_1);
                SensorRotateLeft()
                RobotRotateLeft()
                OpenUltrasonic(SENSOR_1);
                if GetUltrasonic(SENSOR_1) <= 30
                    RobotRotateLeft()
                end
            end
    end
end



        



CloseSensor(SENSOR_1);
