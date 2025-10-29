See: https://github.com/aibasel/pyperplan/


Virtual env steps:
   python3 -m venv pyperplan-venv
   source ./pyperplan-venv/bin/activate
   python3 -m pip install pyperplan

To run the planner:
   1. Go to subfolder: pyperplan
   2. Run a problem:  pyperplan benchmarks/tpp/domain.pddl benchmarks/tpp/task01.pddl
   3. Look at solution in ./benchmarks/tpp

For calculator example:
   1. Go to subfolder: pyperplan
   2. Run a problem:  pyperplan custom-domains/calc/domain.pddl custom-domains/calc/exp5.pddl

./custom-domains is for reference and shows how calc was run using the Java planner, Planner4J 
