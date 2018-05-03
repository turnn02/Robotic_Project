	% Two motor have attached to the NXT Ports A and C
    function RobotRotateLeft
    motorA = NXTMotor();
	motorA.Port = 'A';
	motorA.Power = 10;
	motorA.TachoLimit = 230;

	motorC = NXTMotor();
	motorC.Port = 'C';
	motorC.Power = -10;
	motorC.TachoLimit = 230;

	motorA.SendToNXT();
	motorC.SendToNXT();
	
	motorA.WaitFor();
	motorC.WaitFor();
    
    end
    