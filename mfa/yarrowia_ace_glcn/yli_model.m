function mol=yli_model(free_net,free_xch,inp)

mol.EMU=1;

persistent in12C
if isempty(in12C)
	in12C.CO2_IN_1=emufy(inp.CO2_IN__12C,[1]);
	in12C.RIBOSE_IN_1=emufy(inp.RIBOSE_IN__12C,[1]);
	in12C.GLUCONATE_IN_1=emufy(inp.GLUCONATE_IN__12C,[1]);
	in12C.GLC_IN_3=emufy(inp.GLC_IN__12C,[3]);
	in12C.GLYCOGEN_IN_3=emufy(inp.GLYCOGEN_IN__12C,[3]);
	in12C.GLC_IN_2=emufy(inp.GLC_IN__12C,[2]);
	in12C.GLYCOGEN_IN_2=emufy(inp.GLYCOGEN_IN__12C,[2]);
	in12C.GLUCONATE_IN_2=emufy(inp.GLUCONATE_IN__12C,[2]);
	in12C.GLC_IN_1=emufy(inp.GLC_IN__12C,[1]);
	in12C.GLYCOGEN_IN_1=emufy(inp.GLYCOGEN_IN__12C,[1]);
	in12C.GLUCONATE_IN_3=emufy(inp.GLUCONATE_IN__12C,[3]);
	in12C.RIBOSE_IN_2=emufy(inp.RIBOSE_IN__12C,[2]);
	in12C.GLC_IN_4=emufy(inp.GLC_IN__12C,[4]);
	in12C.GLYCOGEN_IN_4=emufy(inp.GLYCOGEN_IN__12C,[4]);
	in12C.GLUCONATE_IN_4=emufy(inp.GLUCONATE_IN__12C,[4]);
	in12C.RIBOSE_IN_3=emufy(inp.RIBOSE_IN__12C,[3]);
	in12C.GLC_IN_5=emufy(inp.GLC_IN__12C,[5]);
	in12C.GLYCOGEN_IN_5=emufy(inp.GLYCOGEN_IN__12C,[5]);
	in12C.PEP_IN_1=emufy(inp.PEP_IN__12C,[1]);
	in12C.GLUCONATE_IN_5=emufy(inp.GLUCONATE_IN__12C,[5]);
	in12C.RIBOSE_IN_4=emufy(inp.RIBOSE_IN__12C,[4]);
	in12C.PYR_IN_1=emufy(inp.PYR_IN__12C,[1]);
	in12C.GLC_IN_6=emufy(inp.GLC_IN__12C,[6]);
	in12C.GLYCOGEN_IN_6=emufy(inp.GLYCOGEN_IN__12C,[6]);
	in12C.PEP_IN_2=emufy(inp.PEP_IN__12C,[2]);
	in12C.GLUCONATE_IN_6=emufy(inp.GLUCONATE_IN__12C,[6]);
	in12C.RIBOSE_IN_5=emufy(inp.RIBOSE_IN__12C,[5]);
	in12C.PYR_IN_2=emufy(inp.PYR_IN__12C,[2]);
	in12C.PEP_IN_3=emufy(inp.PEP_IN__12C,[3]);
	in12C.PYR_IN_3=emufy(inp.PYR_IN__12C,[3]);
	in12C.GLC_IN_1_2=emufy(inp.GLC_IN__12C,[1 2]);
	in12C.GLYCOGEN_IN_1_2=emufy(inp.GLYCOGEN_IN__12C,[1 2]);
	in12C.GLUCONATE_IN_2_3=emufy(inp.GLUCONATE_IN__12C,[2 3]);
	in12C.RIBOSE_IN_1_2=emufy(inp.RIBOSE_IN__12C,[1 2]);
	in12C.GLUCONATE_IN_1_2=emufy(inp.GLUCONATE_IN__12C,[1 2]);
	in12C.GLC_IN_2_3=emufy(inp.GLC_IN__12C,[2 3]);
	in12C.GLYCOGEN_IN_2_3=emufy(inp.GLYCOGEN_IN__12C,[2 3]);
	in12C.GLC_IN_4_5=emufy(inp.GLC_IN__12C,[4 5]);
	in12C.GLYCOGEN_IN_4_5=emufy(inp.GLYCOGEN_IN__12C,[4 5]);
	in12C.GLUCONATE_IN_4_5=emufy(inp.GLUCONATE_IN__12C,[4 5]);
	in12C.RIBOSE_IN_3_4=emufy(inp.RIBOSE_IN__12C,[3 4]);
	in12C.GLC_IN_5_6=emufy(inp.GLC_IN__12C,[5 6]);
	in12C.GLYCOGEN_IN_5_6=emufy(inp.GLYCOGEN_IN__12C,[5 6]);
	in12C.GLUCONATE_IN_5_6=emufy(inp.GLUCONATE_IN__12C,[5 6]);
	in12C.RIBOSE_IN_4_5=emufy(inp.RIBOSE_IN__12C,[4 5]);
	in12C.PEP_IN_1_2=emufy(inp.PEP_IN__12C,[1 2]);
	in12C.PYR_IN_1_2=emufy(inp.PYR_IN__12C,[1 2]);
	in12C.PEP_IN_2_3=emufy(inp.PEP_IN__12C,[2 3]);
	in12C.PYR_IN_2_3=emufy(inp.PYR_IN__12C,[2 3]);
	in12C.PEP_IN_1_2_3=emufy(inp.PEP_IN__12C,[1 2 3]);
	in12C.PYR_IN_1_2_3=emufy(inp.PYR_IN__12C,[1 2 3]);
	in12C.GLC_IN_1_2_3=emufy(inp.GLC_IN__12C,[1 2 3]);
	in12C.GLYCOGEN_IN_1_2_3=emufy(inp.GLYCOGEN_IN__12C,[1 2 3]);
	in12C.GLC_IN_4_5_6=emufy(inp.GLC_IN__12C,[4 5 6]);
	in12C.GLYCOGEN_IN_4_5_6=emufy(inp.GLYCOGEN_IN__12C,[4 5 6]);
	in12C.GLUCONATE_IN_1_2_3=emufy(inp.GLUCONATE_IN__12C,[1 2 3]);
	in12C.GLUCONATE_IN_4_5_6=emufy(inp.GLUCONATE_IN__12C,[4 5 6]);
	in12C.RIBOSE_IN_3_4_5=emufy(inp.RIBOSE_IN__12C,[3 4 5]);
	in12C.RIBOSE_IN_2_3_4_5=emufy(inp.RIBOSE_IN__12C,[2 3 4 5]);
	in12C.GLC_IN_3_4_5_6=emufy(inp.GLC_IN__12C,[3 4 5 6]);
	in12C.GLYCOGEN_IN_3_4_5_6=emufy(inp.GLYCOGEN_IN__12C,[3 4 5 6]);
	in12C.GLUCONATE_IN_3_4_5_6=emufy(inp.GLUCONATE_IN__12C,[3 4 5 6]);
	in12C.RIBOSE_IN_1_2_3_4_5=emufy(inp.RIBOSE_IN__12C,[1 2 3 4 5]);
	in12C.GLUCONATE_IN_2_3_4_5_6=emufy(inp.GLUCONATE_IN__12C,[2 3 4 5 6]);
	in12C.GLC_IN_2_3_4_5_6=emufy(inp.GLC_IN__12C,[2 3 4 5 6]);
	in12C.GLYCOGEN_IN_2_3_4_5_6=emufy(inp.GLYCOGEN_IN__12C,[2 3 4 5 6]);
	in12C.GLC_IN_1_2_3_4_5_6=emufy(inp.GLC_IN__12C,[1 2 3 4 5 6]);
	in12C.GLYCOGEN_IN_1_2_3_4_5_6=emufy(inp.GLYCOGEN_IN__12C,[1 2 3 4 5 6]);
	in12C.GLUCONATE_IN_1_2_3_4_5_6=emufy(inp.GLUCONATE_IN__12C,[1 2 3 4 5 6]);
end
mol_=yli_model_C(free_net,free_xch,in12C);
mol.g6p__12C=mol_.g6p;
mol.f6p__12C=mol_.f6p;
mol.fbp__12C=mol_.fbp;
mol.gap__12C=mol_.gap;
mol.dhap__12C=mol_.dhap;
mol.bpg13__12C=mol_.bpg13;
mol.pg3__12C=mol_.pg3;
mol.bpg23__12C=mol_.bpg23;
mol.pg2__12C=mol_.pg2;
mol.pep__12C=mol_.pep;
mol.pyr__12C=mol_.pyr;
mol.pg6__12C=mol_.pg6;
mol.ru5p__12C=mol_.ru5p;
mol.r5p__12C=mol_.r5p;
mol.xu5p__12C=mol_.xu5p;
mol.s7p__12C=mol_.s7p;
mol.sbp__12C=mol_.sbp;
mol.e4p__12C=mol_.e4p;
mol.CO2__12C=mol_.CO2;
