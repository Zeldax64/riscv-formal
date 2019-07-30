
rm -rf checks
python3 ../../checks/genchecks.py
cd checks

mv insn_lb_ch0.sby ./..
mv insn_sb_ch0.sby ./..
rm *.sby
cd ..
mv insn_lb_ch0.sby ./checks
mv insn_sb_ch0.sby ./checks
make insn_lb_ch0 -C checks & make insn_sb_ch0 -C checks & wait

python3 disasm.py ./checks/insn_lb_ch0/engine_0/trace.vcd
python3 disasm.py ./checks/insn_sb_ch0/engine_0/trace.vcd