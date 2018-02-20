#! /bin/python

import subprocess
import argparse

# search filename
# take in input file name
# take

parser = argparse.ArgumentParser(description='ls for specified filename')
parser.add_argument('filename', help='file to look for')
parser.add_argument('--version', '-v', action='version', version='%(prog)s 1.0')
args = parser.parse_args()

try:
     output = subprocess.check_output(
     ['ls', args.filename],
     stderr=subprocess.STDOUT
     )
except OSError as err:
    print('Caught OSError')
    output = err
except subprocess.CalledProcessError as err:
    print('Caught CalledProcessError')
    output = err
print(output)

finally:
    print('This is done')
