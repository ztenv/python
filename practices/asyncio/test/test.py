import asyncio

async def hello_word(time):
    print("hello :{}!".format(time))
    await asyncio.sleep(time)
    print("hello again:{}".format(time))


if __name__=="__main__":
    loop=asyncio.get_event_loop()

    tasks=[hello_word(1) for i in range(5)]
    tasks.append(loop.create_task(hello_word(2)))
    #loop.run_until_complete(loop.create_task(hello_word(2)))
    loop.run_until_complete(asyncio.wait(tasks))
    loop.close()
