# Substrate Cofeeding - Moorella thermoacetica & Yarrowia lipolytica

Code used in:
  Controlling metabolism by substrate cofeeding
    Junyoung O. Park, Nian Liu, Kara M. Holinski, David F. Emerson, Kangjian Qiao, Benjamin M. Woolston, Jingyang Xu, Zbigniew Lazar, M. Ahsanul Islam, Charles Vidoudez, Peter R. Girguis, and Gregory Stephanopoulos
	  Department of Chemical Engineering, MIT

In fba folder,
- iAI563.xml is the genome-scale metabolic reconstruction of Moorella thermoacetica
- Supplementary_iAI563.xlsx is the model in Excel file with reactions and metabolites sheets

To run FBA,
1) Install COBRA toolbox: https://opencobra.github.io/cobratoolbox/latest/
2) Run from Matlab: >> initCobraToolbox
3) Open constraint_based_analysis.m and execute


In mfa folder,
- folders contain scripts and data required for MFA of the respective organisms
- within each folder, mfa_data.* contain labeling and flux measurements, mth_model*.* contain atom mapping and emu models, and run_mfa contain the script for running MFA

To run MFA,
1) Open Matlab 2013b or newer
2) Set Path -> Add Folder -> Choose ./src -> Save
3) Open run_mfa.m and execute
4) To run it parallel, enter 'matlabpool local 4' on the command line. '4' can be a different number if a different number of cores is desired
5) Running on clusters requires an additional setup. Please contact system administrator