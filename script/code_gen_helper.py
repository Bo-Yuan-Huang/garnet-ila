#!/usr/bin/env python3

# ==============================================================================
# MIT License
#
# Copyright (c) 2019 Princeton University
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# ==============================================================================


import argparse
import os
from string import Template


def ProcessConfigReg(spec_file, template, fw):
    """ Substitute the template w.r.t. the config reg spec """
    with open(spec_file, 'r') as fr:
        for line in fr:
            terms = line.split()
            if len(terms) != 3:
                print('Unknown spec format {}'.format(line))
                return None

            d = {}
            d['reg_name'] = terms[0]
            d['reg_name_cap'] = terms[0].capitalize()
            d['reg_name_upper'] = terms[0].upper()
            d['reg_addr'] = terms[1]
            d['reg_width'] = terms[2]

            ctn = template.safe_substitute(d)
            print(ctn, file=fw)


def ProcessIOPort(spec_file, template, fw):
    """ Substitute the template w.r.t. the magma port spec """
    with open(spec_file, 'r') as fr:
        for line in fr:
            # port name
            assignment_terms = line.split('=')
            assert(len(assignment_terms) == 2)
            port_name = assignment_terms[0].strip()

            # port type
            construct_terms = line.split('magma.')
            assert(len(construct_terms) >= 2)
            if construct_terms[1][:2] == 'In':
                port_type = 'Input'
            elif construct_terms[1][:3] == 'Out':
                port_type = 'State'
            else:
                print('Fail getting I/O type {}'.format(line))
                return None

            # port bit-width
            width_terms = line.split('(')
            assert(len(width_terms) >= 2)
            width_terms = width_terms[1].split(')')
            assert(len(width_terms) >= 2)
            width = width_terms[0]
            if 'Bit' in width:
                bit_width = 'MEMORY_CORE_BIT_WIDTH'
            elif 'Data' in width:
                bit_width = 'MEMORY_CORE_DATA_WIDTH'
            else:
                print('Fail getting bit-width {}'.format(line))
                return None

            d = {}
            d['port_name'] = port_name
            d['port_type'] = port_type
            d['bit_width'] = bit_width
            d['port_name_upper'] = port_name.upper()

            ctn = template.safe_substitute(d)
            print(ctn, file=fw)


def Decode(args):
    """ Decode input arguments """
    # decode process
    if args.config:
        method = ProcessConfigReg
    elif args.ioport:
        method = ProcessIOPort
    else:
        return None

    # read in template
    with open(args.temp, 'r') as fr:
        template_raw = fr.read()
        template = Template(template_raw)

    # decode output
    if args.output:
        with open(args.output, 'w') as fw:
            method(args.spec, template, fw)
    else:
        method(args.spec, template, print())


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Helpers for code gen.')

    # required arguments
    parser.add_argument('spec', type=str, help='specification file')
    parser.add_argument('temp', type=str, help='template file')

    # optional arguments
    parser.add_argument('--config', action='store_true', help='config regs')
    parser.add_argument('--ioport', action='store_true', help='I/O ports')
    parser.add_argument('--output', type=str, help='output file')

    args = parser.parse_args()

    Decode(args)
