#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

compile (
     fails=>1,
     expect=>
'%Error: Internal Error: t/t_param_default_bad.v:6: ../V3Param.cpp:269: Parameter without initial value
%Error: Internal Error: See the manual and http://www.veripool.org/verilator for more assistance.
.*%Error: Command Failed.*',
     );

ok(1);
1;
