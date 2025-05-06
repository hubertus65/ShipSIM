within ShipSIM;
  package Interfaces "Interfaces components"
    extends Modelica.Icons.InterfacesPackage;

    connector ShipDataInput "Ship data connector Input"
      input Modelica.Units.SI.Length Draft;
      input Modelica.Units.SI.Mass Displacement;
      input Modelica.Units.SI.Length CoG[3] "Center of Gravity";
      input Modelica.Units.SI.Angle Angles[3] "Angles [Heel, Trim, Course]";
      input Modelica.Units.SI.Velocity LinearSpeed[3] "Linear Speed [surge, sway, heave]";
      input Modelica.Units.SI.AngularVelocity AngularSpeed[3] "Angular Speed [Roll, Pitch, Yaw]";
      // Absolute speed over ground and position in world axis, measured from CoF
      input Modelica.Units.SI.Velocity WorldSpeedOverGround[3] "Speed Over Ground - World Axis [X speed, Y Speed, Z Speed]";
      input Modelica.Units.SI.Length WorldPosition[3] "Ship Position - World Axis [X, Y, Z]";
      annotation(
        Documentation(info = "<html><head></head><body><p>
  Data connector (surge, sway, heave, roll, pith, yaw, etc...)</p>
  </body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 1.1&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(20/02/2024): Added speed and position in world coordinates (Speed Over Ground)</span></div><div><span style=\"font-size: 12px;\">Rev. 1.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(05/04/2023): Duplicated in Output and Input&nbsp;</span><span style=\"font-size: 12px;\">(GitHub #3)</span></div><div><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(14/02/2023): Initial release</span></div></body></html>"),
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Polygon(origin = {-25, 35}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}}), Polygon(origin = {25, -35}, rotation = 180, lineColor = {200, 200, 200}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}})}, coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})),
        Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})));
    end ShipDataInput;

    connector ShipDataOutput "Ship data connector Output"
      output Modelica.Units.SI.Length Draft;
      output Modelica.Units.SI.Mass Displacement;
      output Modelica.Units.SI.Length CoG[3] "Center of Gravity";
      output Modelica.Units.SI.Angle Angles[3] "Angles [Heel, Trim, Course]";
      output Modelica.Units.SI.Velocity LinearSpeed[3] "Linear Speed [surge, sway, heave]";
      output Modelica.Units.SI.AngularVelocity AngularSpeed[3] "Angular Speed [Roll, Pitch, Yaw]";
      // Absolute speed over ground and position in world axis, measured from CoF
      output Modelica.Units.SI.Velocity WorldSpeedOverGround[3] "Speed Over Ground - World Axis [X speed, Y Speed, Z Speed]";
      output Modelica.Units.SI.Length WorldPosition[3] "Ship Position - World Axis [X, Y, Z]";
      annotation(
        Documentation(info = "<html><head></head><body><p>
  Data connector (surge, sway, heave, roll, pith, yaw, etc...)</p>
  </body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 1.1&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(20/02/2024): Added speed and position in world coordinates (Speed Over Ground)</span></div><div><span style=\"font-size: 12px;\">Rev. 1.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(05/04/2023): Duplicated in Output and Input (GitHub #3)</span></div><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(14/02/2023): Initial release</span></body></html>"),
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Polygon(origin = {-25, 35}, lineColor = {200, 200, 200}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}}), Polygon(origin = {25, -35}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}})}, coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})),
        Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})));
    end ShipDataOutput;

  
  end Interfaces;
