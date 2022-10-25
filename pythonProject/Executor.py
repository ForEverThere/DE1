from Connector import Connector
from Logger import Logger
import json


class Executor:
    @staticmethod
    def exQueries(taskNum, outputType):
        connection = Connector.Con()
        if outputType == 1:
            procExec = 'task' + str(taskNum) + 'xml'
            with connection.cursor() as cur:
                xmlFileName = procExec + '.xml'
                result = str(cur.execute('exec ? ', procExec).fetchall())
                myFile = open(xmlFileName, 'w')
                myFile.write(result)
                Logger().log(xmlFileName)
        elif outputType == 2:
            procExec = 'task' + str(taskNum) + 'json'
            with connection.cursor() as cur:
                jsonFileName = procExec + '.json'
                result = str(cur.execute('exec ? ', procExec).fetchall())
                with open(jsonFileName, 'w') as endFile:
                    json.dump(result, endFile)
                    Logger().log(jsonFileName)
        cur.close()