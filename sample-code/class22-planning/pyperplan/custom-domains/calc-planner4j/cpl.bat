set CURRDIR=C:\Biplav\Planning\javaplanners\examples\classical\calc
set PARAMCD=..\..\..\classes
cd %PARAMCD%
set CLASSPATH = %CLASSPATH%;%PARAMCD%
java param.planners.classical.ParamC %CURRDIR%\domain.pddl %CURRDIR%\%1.pddl %2 %3
cd %CURRDIR%