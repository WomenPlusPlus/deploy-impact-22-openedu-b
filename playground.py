

def plus_1(zahl):
    return zahl + 1


def test(func, input, output):
    res = func(input)
    return output == res