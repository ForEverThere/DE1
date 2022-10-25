import easygui as gui
from Executor import Executor
from Insert import Insert

rooms = gui.fileopenbox('Choose file rooms.json')
students = gui.fileopenbox('Choose file students.json')
Insert.Ins(rooms, students)
print("Choose number of task: 1-4")
taskNumber = int(input())
print("Choose type of output file: 1 for XML, 2 for Json")
taskOutputType = int(input())
Executor.exQueries(taskNumber, taskOutputType)
print('Connection closed, ty for work')
