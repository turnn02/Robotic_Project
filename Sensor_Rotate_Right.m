	%Ultrasonic sensor has attached to the NXT Port B
    function SensorRotateRight
    motorB = NXTMotor();
	motorB.Port = 'B';
	motorB.Power = 5;
	motorB.TachoLimit = 100;
	motorB.SendToNXT();
	motorB.WaitFor();

    end