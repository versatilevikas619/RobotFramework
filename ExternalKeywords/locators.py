import json
import jsonpath

def ReadLoactors(locatorName):
    f=open(file="../Json/locators.json",mode='r')
    res=json.loads(f.read())
    value=jsonpath.jsonpath(res,locatorName)
    # print(value[0])
    return value[0]

