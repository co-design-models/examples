all: plots solve

outd=out-Makefile

dp1=battery

clean:
	rm -rf $(outd)/

solve:
	mcdp-solve  --out $(outd)/01 $(dp1) "<1 hour, 0 kg, 0 W>"
	mcdp-solve  --out $(outd)/02 $(dp1) "<1 hour, 0.1 kg, 14 W>" # feasible!
	mcdp-solve  --out $(outd)/03 $(dp1) "<1 hour, 0.1 kg, 15 W>" # unfeasible
	mcdp-solve  --out $(outd)/01 $(dp1) "<1 hour, 0.12 kg, 14 W>"

# solve_old_syntax:
# 	mcdp-solve  $(outp) $(dp1) "1 hour" "0 kg" "0 W"

plots:
	mcdp-plot --out $(outd)/visualization $(dp1)
	mcdp-plot --out $(outd)/visualization battery_compact
	mcdp-plot --out $(outd)/visualization battery_minimal
