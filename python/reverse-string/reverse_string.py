def reverse(input=''):
    result = ''
    for i in range(len(input) - 1, -1, -1):
        result += input[i]
    return result

