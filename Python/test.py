def solution(A, B, C):
    # write your code in Python 3.6
    rt = ""
    while (0 < A or 0 < B or 0 < C):
        if (A < B or A < C) :
            if (0 < B):
                rt = rt +'B'
                B -= 1
            if (0 < B):
                rt += 'B'
                B -= 1
            if (0 < C):
                rt = rt +'C'
                C -= 1
            if (0 < C):
                rt += 'C'
                C -= 1
            if (0 < A):
                rt += 'A'
                A -= 1
 
        elif (B < A or B < C):
            if (0 < A):
                rt += 'A'
                A -= 1
            if (0 < A):
                rt += 'A'
                A -= 1
            if (0 < C):
                rt += 'C'
                C -= 1
            if (0 < C):
                rt += 'C'
                C -= 1
            if (0 < B):
                rt += 'B'
                B -= 1

        elif (C < A or C < B):
            if (0 < A):
                rt += 'A'
                A -= 1
            if (0 < A):
                rt += 'A'
                A -= 1
            if (0 < B):
                rt += 'B'
                B -= 1
            if (0 < B):
                rt += 'B'
                B -= 1
            if (0 < C):
                rt += 'C'
                C -= 1
 
        # Equal number of 'a', 'b' and 'c'
        else :
            if (0 < A):
                rt += 'A'
                A -= 1
            if (0 < B):
                rt += 'B'
                B -= 1
            if (0 < C):
                rt += 'C'
                C -= 1
    print(rt)
 
# Driver code
if __name__ == "__main__":
     
    A = 0
    B = 1
    C = 8
    solution(A, B, C)