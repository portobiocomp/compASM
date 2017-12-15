#######################################################################################################
		CompASM version 1.0 Input File

This file is generated by the ASM Graphical User Interface (GUI).
To avoid input file errors, the usage of the GUI is advised.

To comment in this file :
All comments inside instruction fields (e.g. ##Protein ... END) must have this
character ! before the comment line.

Outside the instruction fields, the comments don't need to be preceded by the characters,
but be careful to NOT duplicate either the finalizer 'END' or the instruction initializer (e.g. ##Protein).

All files path (excluding the trajectory file path) are pointed to the folder inside the folder
containing the input file (i.e. 1VFB_teste.asm).

Instructions Fields:

Protein:
	Set protein path to be loaded starting from the current folder.
	e.g. ##PROTEIN
	     1VFB_teste/LIB/1VFB_ASM.pdb == ~/<Folder containing input file>/1VFB_teste/LIB/1VFB_ASM.pdb
	     END

Interface radii:
	Value used to select and represent the interface between ligand and receptor in VMD. GUI
	information only.

Mutations:
	Mutations to be performed. It is Possible to perform multiple
	mutations in each structure (same dielectric constant).
	Syntax:
		Single mutations: NumberOfResidue_NumberOfChain
   		Multiple mutations: NumberOfResidue_NumberOfChain,NumberOfResidue_NumberOfChain,...

LIGAND and RECEPTOR:
	Chain number of ligand or receptor

Minimization_Dynamic Parameters:
	Sander keywords to perform Molecular Minimization (imin= 1) or Dynamics Simulation (imin= 0).
	More informations about the keywords in: http://ambermd.org/.
	Syntax:
		Keyword='space'value

Starting Minimization Parameters:
	Only require if Molecular Dynamics Simulation is intended to perfumed
	Syntax:
		Keyword='space'value

Warming Dynamic Parameters:
	Only require if Molecular Dynamics Simulation is intended to perfumed
	Syntax:
		Keyword='space'value

MMPBSA Parameters:
	If it is intended to perform Minimization or Molecular Dynamics Simulation it is only required
	the frequency of structures from the trajectory.
	Syntax:
		NFREQ'space'value
		NSTART'space'value*
		NSTOP'space'value*
		NFREQ'space'value*
		TRAJECTORY'space'CompleteFilePath*1
	*If it is intended to load a trajectory, it is required the frequency, the starting structure
	and the final structure, and the path of the trajectory IN THIS ORDER.
	1 If the machine type is "cluster", only the name of the trajectory file is require, and this 
	  file must be included in the sent folder (see manual) 

FORCE FIELDS:
	Force fields to be applied in amber tleap tool. If the force field is an Amber* default one,
	it is only required the name of it (e.g. leaprc.ff03). If is intended to use another one, it
	is required the path of the force field.

####################################################################################################


##PROTEIN
1VFB_teste/LIB/1VFB.pdb
END
##OUT

END
##LIGAND
1
2
END
##RECEPTOR
3
END
##Interface radii
5.0
END
##MUTATIONS
32_1
49_1
50_1
52_1
53_1
91_1
92_1
93_1
96_1
139_2
159_2
161_2
206_2
207_2
208_2
209_2
236_3
241_3
242_3
244_3
246_3
247_3
248_3
250_3
326_3
339_3
341_3
342_3
343_3
344_3
347_3
348_3
352_3
END
##Minimization_Dynamic Parameters
imin= 0
ntpr= 300
ntwr= 300
ntwx= 300
ntt= 3
nstlim= 10000000
temp0= 300.0
tempi= 300.0
tol= 0.000001
dt= 0.002
ntx= 5
irest= 1
igb= 5
nrespa= 2
ntb= 0
scee= 1.2
cut= 16.0
ibelly= 0
gamma_ln= 1.0
ntc= 2
ntf= 2
END
##Starting Minimization Parameters
imin= 1
ntx= 1
ntpr= 300
maxcyc= 3000
ntmin= 2
ntb= 0
igb= 5
scee= 1.2
cut= 16.0
ntc= 2
ntf= 2
END
##Warming Dynamic Parameters
imin= 0
ntx= 1
ntpr= 300
ntwr= 300
ntwx= 300
igb= 5
nrespa= 2
ntb= 0
scee= 1.2
cut= 16.0
ibelly= 0
ntt= 3
gamma_ln= 1.0
ntc= 2
ntf= 2
dt=0.002
nstlim= 1000000
temp0= 300.0
tempi= 0.0
tol= 0.000001
END
##MMPBSA Parameters
NFREQ  67
END
##FORCE FIELDS
leaprc.ff03
END
