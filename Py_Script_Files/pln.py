from sys import argv
from subprocess import call
import os.path


def main(lt):
    if lt[0] == '-s':
        path = 1
    else:
        path = 0

    source = os.path.abspath(lt[path])
    lt[path] = source
    call(["ln"] + lt)


if __name__ == '__main__':
    main(argv[1:])
