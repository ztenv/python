import asyncio

async def cal(varlist=[]):
    sum=0
    for item in varlist:
        sum+=item
    await asyncio.sleep(1)
    print("sum({0})={1}".format(varlist,sum))
    return sum

if __name__=="__main__":
    loop=asyncio.get_event_loop()

    tasks=[]
    for i in range(11):
        varlist=[]
        for j in range(i+1):
            varlist.append(j)
        r=asyncio.ensure_future(cal(varlist))
        tasks.append(r)
        loop.run_until_complete(r)
    loop.close()

    for task in tasks:
        print(task.result())
