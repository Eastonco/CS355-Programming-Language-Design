import re
from HW4_part1 import *

def tokenize(s):
    return re.findall("/?[a-zA-Z][a-zA-Z0-9_]*|[\[][a-zA-Z-?0-9_\s!][a-zA-Z-?0-9_\s!]*[\]]|[-]?[0-9]+|[}{]+|%.*|[^ \t\n]", s)
    


# COMPLETE THIS FUNCTION
# The it argument is an iterator.
# The tokens between '{' and '}' is included as a sub code-array (dictionary). If the
# parenteses in the input iterator is not properly nested, returns False.
def groupMatch(it):
    res = []
    for c in it:
        if c == '}':
            return {'codearray':res}
        elif c=='{':
            res.append(groupMatch(it))
            # Note how we use a recursive call to group the tokens inside the
            # inner matching parenthesis.
            # Once the recursive call returns the code-array for the inner 
            # parenthesis, it will be appended to the list we are constructing 
            # as a whole.
        else:
            res.append(c)
    return False



# COMPLETE THIS FUNCTION
# Function to parse a list of tokens and arrange the tokens between { and } braces 
# as code-arrays.
# Properly nested parentheses are arranged into a list of properly nested dictionaries.
def parse(L):
    res = []
    it = iter(L)
    for c in it:
        if c=='}':  #non matching closing parenthesis; return false since there is 
                    # a syntax error in the Postscript code.
            return False
        elif c=='{':
            res.append(groupMatch(it))
        else:
            res.append(c)
    return {'codearray':res}

# COMPLETE THIS FUNCTION 
# This will probably be the largest function of the whole project, 
# but it will have a very regular and obvious structure if you've followed the plan of the assignment.
# Write additional auxiliary functions if you need them. 
def interpretSPS(code): # code is a code array
    commandlist = code.get('codearray')
    for command in commandlist:
        if(isinstance(command, int) or isinstance(command, list) or isinstance(command, dict)):
            opPush(command)
        elif (isinstance(command, str)):
            if(command == 'true'):
                opPush(True)
            elif(command == 'false'):
                opPush(False)
            else:
                try:
                    commanddict[command]()
                except:
                    opPush(command)

commanddict = {
    'add' : add,
    'sub' : sub,
    'mul' : mul,
    'lt' : lt,
    'gt' : gt,
    'and' : psAnd,
    'or' : psOr,
    'eq' : eq,
    'not' : psNot,
    'length' : length,

    'get' : get,
    'getinterval' : getinterval,
    'put' : put,
    'putinterval' : putinterval,

    'dup' : dup,
    'copy' : copy,
    'count' : count,
    'pop' : pop,
    'clear' : clear,
    'exch' : exch,
    'mark' : mark,
    'cleartomark' : cleartomark,
    'counttomark' : counttomark,
    'stack' : stack,

    'dict' : psDict,
    'begin' : begin,
    'end' : end,
    'def' : psDef
    }



def interpreter(s): # s is a string
    interpretSPS(parse(tokenize(s)))


#clear opstack and dictstack
def clearStacks():
    opstack[:] = []
    dictstack[:] = []

def psIf():
    pass

def psIfelse():
    pass

def psRepeat():
    pass

def forall():
    pass




input1 = """
            /square {dup mul} def
            0 [-5 -4 3 -2 1]
            {square add} forall
            55 eq false and
        """

# print(tokenize(input1))
# print(parse(tokenize(input1)))
print(parse(['b', 'c', '{', 'a', '{', 'a', 'b', '}', '{', '{', 'e', '}', 'a', '}', '}']))

interpreter(input1)


