from dolfin import *
import os

#mylist=['03a_spindle2aFI.msh',   '03b_spindle7aACC.msh',  '08a_spindle13aACC.msh',  '12o_spindle9aFI.msh',   '21o_spindle15aFI.msh',  '28o_spindle20aFI.msh',
#        '03a_spindle6aFI.msh',   '04b_spindle3aFI.msh',   '09o_spindle7aFI.msh',    '13o_spindle10aFI.msh',  '23o_spindle16aFI.msh',  '28o_spindle21aFI.msh',
#        '03b_spindle4aACC.msh',  '05b_spindle5aFI.msh',   '09o_spindle8aFI.msh',    '15o_spindle12aFI.msh',  '25o_spindle17aFI.msh',  '29o_spindle22aFI.msh',
#        '03b_spindle5aACC.msh',  '06b_spindle8aACC.msh',  '10a_spindle18aACC.msh',  '16o_spindle13aFI.msh',  '26o_spindle18aFI.msh',  '30o_spindle23aFI.msh',
#        '03b_spindle6aACC.msh',  '07b_spindle9aACC.msh',  '12a_spindle19aACC.msh',  '19o_spindle14aFI.msh',  '27o_spindle19aFI.msh'
#];

#mylist=[                                                                                                                                                                             
#    '02a_pyramidal2aFI.msh',   '03b_pyramidal3aFI.msh'  , '04b_pyramidal6aACC.msh' ,  '05b_pyramidal8aFI.msh'  ,  '07b_pyramidal14aACC.msh' , '18o_pyramidal14aFI.msh',              
#    '02b_pyramidal1aACC.msh',  '03b_pyramidal4aFI.msh'  , '04b_pyramidal6aFI.msh'  ,  '05b_pyramidal9aACC.msh'  , '08o_pyramidal11aFI.msh'  , '20o_pyramidal15aFI.msh',              
#    '02b_pyramidal1aFI.msh',   '03b_pyramidal9aFI.msh'  , '04b_pyramidal7aACC.msh' ,  '06a_pyramidal11aACC.msh' , '10a_pyramidal15aACC.msh' , '22o_pyramidal16aFI.msh',              
#    '03a_pyramidal9aFI.msh' ,  '04a_pyramidal4aACC.msh' , '05a_pyramidal10aACC.msh' , '06b_pyramidal10aFI.msh'  , '11a_pyramidal16aACC.msh' , '24o_pyramidal17aFI.msh',              
#    '03b_pyramidal2aACC.msh',  '04a_pyramidal5aACC.msh' , '05a_pyramidal8aACC.msh'  , '06b_pyramidal12aACC.msh' , '11o_pyramidal12aFI.msh'  , '25o_pyramidal18aFI.msh',              
#    '03b_pyramidal3aACC.msh' , '04b_pyramidal5aFI.msh' ,  '05b_pyramidal7aFI.msh'  ,  '07a_pyramidal13aACC.msh' , '17o_pyramidal13aFI.msh'  , '31o_pyramidal19aFI.msh'               
#];                                                                                                                                                                                   
mylist=['04b_pyramidal5aFI','05b_pyramidal7aFI','07a_pyramidal13aACC','17o_pyramidal13aFI','31o_pyramidal19aFI'];

mydir="./"

for f in mylist:
    try:
        filename, file_extension = os.path.splitext(f)
        filename = filename + "_dendrites"
        os.system("unzip "+mydir+filename+".msh.zip")
        print("dolfin-convert "+mydir+filename+".msh"+" "+ filename+".xml")
        os.system("dolfin-convert "+mydir+filename+".msh"+" "+ filename+".xml")

        mesh = Mesh(filename+".xml")
        os.system("rm "+filename+".xml")
        bmesh = BoundaryMesh(mesh, "exterior", True)
        Vb = FunctionSpace(mesh, "CG", 1)
        ub = Function(Vb)
        File(filename+".pvd") << ub
    except:
        print("No file: ",f)
