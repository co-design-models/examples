all: plots solve solve_float

outd=out-Makefile

outp=--out $(outd)/
dp1=plusinv1
dp2=plusinv2
dp3=plusinv3
dp4=plusinv4
dp5=plusinvnat5
dp6=plusinvnat1


clean:
	rm -rf  $(outd)

solve_float:
	#mcdp-solve  --lower 10 --movie --plot $(outp)/l10 $(dp3)  "4"
	#mcdp-solve  --lower 20 --movie --plot $(outp)/l20 $(dp3)  "4"
	mcdp-solve  --upper 10 --movie --plot $(outp)/u10 $(dp3)  "4"
	mcdp-solve  --upper 20 --movie --plot $(outp)/u20 $(dp3)  "4"


solve:
	#mcdp-solve  --plot $(outp) $(dp1)  "10 s"
	#mcdp-solve  --plot $(outp) $(dp2)  "10 s"
	#mcdp-solve  --plot $(outp) $(dp3) 	"10 s"
	#mcdp-solve  --plot $(outp) $(dp4)  "10 s"
	mcdp-solve  --movie --plot $(outp) $(dp5)  "nat:5"
	mcdp-solve  --movie --plot $(outp) $(dp5)  "nat:4"
	mcdp-solve  --movie --plot $(outp) $(dp5)  "nat:4"


plots:
	mcdp-plot $(outp) $(dp1)
	mcdp-plot $(outp) $(dp2)
	mcdp-plot $(outp) $(dp3)
	mcdp-plot $(outp) $(dp4)
	mcdp-plot $(outp) $(dp5)
	mcdp-plot $(outp) $(dp6)
