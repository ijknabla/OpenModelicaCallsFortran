within Chaos;

class Build
  import Modelica.Utilities.System;
  import Modelica.Utilities.Files.loadResource;

  constant String cmake_command = "cmake -P ";
  constant String build_cmake = "modelica://Chaos/Resources/build.cmake";

  function main
  protected
    Integer retval;
  algorithm
    retval := System.command(cmake_command + loadResource(build_cmake));
    print(cmake_command + " returns " + String(retval));
  end main;

initial algorithm
  main();

end Build;
