set CURRDIR=C:\Biplav\Planning\javaplanners\examples\classical\calc
set PARAMCD=..\..\..\classes
cd %PARAMCD%
set CLASSPATH = %CLASSPATH%;%PARAMCD%
java param.parsers.classicalParser.ClassicalParser %CURRDIR%\domain.pddl %CURRDIR%\%1.pddl
cd %CURRDIR%