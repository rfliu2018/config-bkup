# 为c, c++提供统一的编译脚本

from subprocess import call
from sys import argv

dct = {'c': 'gcc', 'cpp': 'g++'}


def main(lt):
    suffix = lt[0].split('.')[-1]
    cpile = dct[suffix]

    if lt[-1].split('.')[-1] != suffix:
        destination = lt[-1]
        lt = lt[:-1]
    else:
        destination = lt[-1].split('.')[0] + '.out'

    call([cpile] + lt + ['-Wall', '-o'] + [destination])


if __name__ == '__main__':
    main(argv[1:])
