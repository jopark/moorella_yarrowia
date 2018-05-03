function mol=mth_model(free_net,free_xch,inp)

mol.EMU=1;

persistent in100C
if isempty(in100C)
	in100C.CO2_IN_1=emufy(inp.CO2_IN__100C,[1]);
	in100C.pg3_IN_3=emufy(inp.pg3_IN__100C,[3]);
	in100C.pg3_IN_2=emufy(inp.pg3_IN__100C,[2]);
	in100C.pg3_IN_1=emufy(inp.pg3_IN__100C,[1]);
	in100C.pg3_IN_2_3=emufy(inp.pg3_IN__100C,[2 3]);
	in100C.pg3_IN_1_2=emufy(inp.pg3_IN__100C,[1 2]);
	in100C.pg3_IN_1_2_3=emufy(inp.pg3_IN__100C,[1 2 3]);
end
mol_=mth_model_C(free_net,free_xch,in100C);
mol.pg3__100C=mol_.pg3;
mol.pep__100C=mol_.pep;
mol.pyr__100C=mol_.pyr;
mol.accoa__100C=mol_.accoa;
mol.fthf__100C=mol_.fthf;
mol.mlthf__100C=mol_.mlthf;
mol.mthf__100C=mol_.mthf;
mol.mlp__100C=mol_.mlp;
mol.mcfesp__100C=mol_.mcfesp;
mol.oa__100C=mol_.oa;
mol.cit__100C=mol_.cit;
mol.akg__100C=mol_.akg;
mol.succoa__100C=mol_.succoa;
mol.CO2__100C=mol_.CO2;
mol.ser__100C=mol_.ser;
mol.gly__100C=mol_.gly;
