function RobotGoStraight(iteration)

for n = 1:iteration
    motorAC = NXTMotor();
	motorAC.Port = 'AC';
	motorAC.SpeedRegulation = 0;
	motorAC.Power = 60;
	motorAC.TachoLimit =120;
	
	motorAC.SendToNXT();
	motorAC.WaitFor();
end
end