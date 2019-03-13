files="
02a_pyramidal2aFI.msh
02b_pyramidal1aACC.msh
02b_pyramidal1aFI.msh
03a_pyramidal9aFI.msh
03b_pyramidal2aACC.msh
03b_pyramidal3aACC.msh
03b_pyramidal3aFI.msh
03b_pyramidal4aFI.msh
03b_pyramidal9aFI.msh
04a_pyramidal4aACC.msh
04a_pyramidal5aACC.msh
04b_pyramidal5aFI.msh
04b_pyramidal6aACC.msh
04b_pyramidal6aFI.msh
04b_pyramidal7aACC.msh
05a_pyramidal10aACC.msh
05a_pyramidal8aACC.msh
05b_pyramidal7aFI.msh
05b_pyramidal8aFI.msh
05b_pyramidal9aACC.msh
06a_pyramidal11aACC.msh
06b_pyramidal10aFI.msh
06b_pyramidal12aACC.msh
07a_pyramidal13aACC.msh
07b_pyramidal14aACC.msh
08o_pyramidal11aFI.msh
10a_pyramidal15aACC.msh
11a_pyramidal16aACC.msh
11o_pyramidal12aFI.msh
17o_pyramidal13aFI.msh
18o_pyramidal14aFI.msh
20o_pyramidal15aFI.msh
22o_pyramidal16aFI.msh
24o_pyramidal17aFI.msh
25o_pyramidal18aFI.msh
31o_pyramidal19aFI.msh
"
for f in $files
do
    echo $f
    # scp vdnguyen@hpc106.csc.kth.se:/NOBACKUP/vdnguyen/Pyramidal_Neurons/xml_files/ACC/$f .
    zip $f.zip $f
    # rm $f
done


#scp vdnguyen@hpc106.csc.kth.se:/NOBACKUP/vdnguyen/Pyramidal_Neurons/xml_files/ACC/*pyramidal*ACC.xml