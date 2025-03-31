PROGRAM ValveControl
VAR
    TemperatureSensor: REAL;       // Temperatura lida pelo sensor (°C)
    Valve: BOOL;                   // Estado da válvula (TRUE = ligada, FALSE = desligada)
    SetpointHigh: REAL := 70.0;    // Temperatura para ligar a válvula
    SetpointLow: REAL := 65.0;     // Temperatura para desligar a válvula
END_VAR

// Lógica de controle por histerese
IF TemperatureSensor >= SetpointHigh THEN
    Valve := TRUE;     // Liga a válvula se temperatura >= 70°C
ELSIF TemperatureSensor <= SetpointLow THEN
    Valve := FALSE;    // Desliga a válvula se temperatura <= 65°C
END_IF;
END_PROGRAM
