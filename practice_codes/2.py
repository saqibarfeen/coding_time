#!/usr/bin/python


file=open("input4.txt","r")
maptLength = 9
s=None
t=0
isexplored = [False for x in range(0,maptLength)]
leader = [False for x in range(0,maptLength)]
f = [0 for x in range(0,maptLength)]





mapDict = {x:[] for x in range(1,maptLength+1) }
mapDictT = {x:[] for x in range(1,maptLength+1) }

for line in file.readlines():
    try:
        tmp= [int(x) for x in line.split()]
        mapDict[tmp[0]].append(tmp[1])
        mapDictT[tmp[1]].append(tmp[0])
    except:
        pass
        #print(line.split()[0]+ " is not an integer")


#dfs_loop(mapDictT)

def bfs(node):
    #isexplored[node-1]=True
    #print(node)
    queue=list()
    queue.append(node)
    while(queue):
        u=queue.pop()
        isexplored[u-1]=True
        print(u)
        for v in mapDict[u]:
            if(not isexplored[v-1]):
                isexplored[v-1]=True
                queue.append(v)

def dfs_loop(Graph):
    global s
    global t
    for i in range(maptLength,0,-1):
        if(not isexplored[i-1]):
            s=i
            print("calling dfs from loop of ",i)
            dfs(Graph,i)

def dfs(Graph,node):
    global s
    global t
    global f
    isexplored[node-1]=True
    leader[node-1]=s
    #print(node)
    for v in Graph[node]:
        if(not isexplored[v-1]):
            print("calling dfs of ",v)
            dfs(Graph,v)    
    t=t+1
    f[node-1]=t



dfs_loop(mapDict)
#print(mapDictT)
print(f)
#dfs(mapDict,3)