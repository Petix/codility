def solution(A):
    # write your code in Python 2.6 
    sum=0
    pivot=[]
    prev=0

    l=len(A)-1
    
    for k,v in enumerate(A):
        sum+=v
        if(k!=l):
            pivot.insert(k,sum)
        else:
            pivot.insert(k,v)
    min=None
 
    for k,v in enumerate(pivot):
        firstHalf = v
        secondHalf = sum - firstHalf
        diff= abs(firstHalf - secondHalf)
        if(min==None or min>diff):
            min=diff
    return min
