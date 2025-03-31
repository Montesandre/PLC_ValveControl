  # Documentação
-> Simulação com um código em Structured Text (ST) para controlar uma válvula com base na temperatura de um sensor, seguindo a lógica de histerese (70°C para ligar e 65°C para desligar): (Codigo em processo em outro aqrquivo)
Explicação, abaixo
1- Variáveis:

TemperatureSensor: Valor atual da temperatura (entrada do sensor).

Valve: Saída booleana que controla a válvula (TRUE = ligada, FALSE = desligada).

SetpointHigh e SetpointLow: Limites de temperatura para evitar oscilação (histerese).

2- Lógica de Controle:

Se a temperatura ≥ 70°C, a válvula é ligada (Valve := TRUE).

Se a temperatura ≤ 65°C, a válvula é desligada (Valve := FALSE).

Entre 65°C e 70°C, a válvula mantém o último estado (evita liga/desliga rápidos).

 Exemplo de Funcionamento:
Temperatura (°C)	Estado da Válvula
64.9	Desligada
65.0	Desligada
69.9	Desligada
70.0	Ligada
70.1	Ligada
64.9	Desligada
