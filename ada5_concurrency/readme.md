## CECS524 Ada Lab5 (extra)
# Ada Concurrency
![screenshot](...)

### Assignment details
*This assignment is written by Dr. M. Hoffman from CECS524 Spring 2019, CSU Long Beach.*
#### Simple Concurrency  
A very simple task called SimpleTask is defined. In the task body a loop prints a message from one of three tasks called A, B and C. The loop code is missing as is the code to launch the tasks. Your job is to provide the missing bits.  

The loop count is passed to the task in the variable HowMany. The message (task name) is passed in Message. Output the message "Hello from task A" or B or C HowMany times. Because there are three tasks launched at almost the same time there should be some overlapping of the tasks. To insure that there is use DELAY 0.1. This statement forces the cpu to wait for one tenth of a second giving the other tasks a chance to get the cpu while the running task is delayed. Experiment with the delay a bit to see how it impacts timing.  

The output may not match what's given below as the timing to each run is quite random.

To start a task, simply call its entry point.

Compiles like any other Ada code.
```
with Ada.Text_IO;
use Ada.Text_IO;

procedure ConTasks is

  task type SimpleTask (Message: Character; HowMany:Positive) is
      entry Start_Running;
  end SimpleTask;

  task body SimpleTask is
  begin
    --missing loop
    --missing delay
  end SimpleTask;

  task_a : SimpleTask('A', 5);
  task_b : SimpleTask('B', 7);
  task_c : SimpleTask('C', 4);

  begin
	  --missing code to start the tasks
  end ConTasks;
```
output
```
Hello from task B
Hello from task C
Hello from task A
Hello from task B
Hello from task A
Hello from task C
Hello from task B
Hello from task C
Hello from task A
Hello from task B
Hello from task C
Hello from task A
Hello from task B
Hello from task A
Hello from task B
Hello from task B
```
