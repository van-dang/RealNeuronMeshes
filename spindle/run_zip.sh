files="
03a_spindle2aFI.msh
03a_spindle6aFI.msh
03b_spindle4aACC.msh
03b_spindle5aACC.msh
03b_spindle6aACC.msh
03b_spindle7aACC.msh
04b_spindle3aFI.msh
05b_spindle5aFI.msh
06b_spindle8aACC.msh
07b_spindle9aACC.msh
08a_spindle13aACC.msh
09o_spindle7aFI.msh
09o_spindle8aFI.msh
10a_spindle18aACC.msh
12a_spindle19aACC.msh
12o_spindle9aFI.msh
13o_spindle10aFI.msh
15o_spindle12aFI.msh
16o_spindle13aFI.msh
19o_spindle14aFI.msh
21o_spindle15aFI.msh
23o_spindle16aFI.msh
25o_spindle17aFI.msh
26o_spindle18aFI.msh
27o_spindle19aFI.msh
28o_spindle20aFI.msh
28o_spindle21aFI.msh
29o_spindle22aFI.msh
30o_spindle23aFI.msh
"
for f in $files
do
    echo $f
    # scp vdnguyen@hpc106.csc.kth.se:/NOBACKUP/vdnguyen/Pyramidal_Neurons/xml_files/ACC/$f .
    zip $f.zip $f
    # rm $f
done


#scp vdnguyen@hpc106.csc.kth.se:/NOBACKUP/vdnguyen/Pyramidal_Neurons/xml_files/ACC/*pyramidal*ACC.xml