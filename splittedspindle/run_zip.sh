files="03a_spindle2aFI_dendrites.msh
03a_spindle2aFI_soma.msh
03a_spindle6aFI_dendrites.msh
03a_spindle6aFI_soma.msh
12o_spindle9aFI_dendrites.msh
12o_spindle9aFI_soma.msh
13o_spindle10aFI_dendrites.msh
13o_spindle10aFI_soma.msh
19o_spindle14aFI_dendrites.msh
19o_spindle14aFI_soma.msh
21o_spindle15aFI_dendrites.msh
21o_spindle15aFI_soma.msh
23o_spindle16aFI_dendrites.msh
23o_spindle16aFI_soma.msh
25o_spindle17aFI_dendrites.msh
25o_spindle17aFI_soma.msh
26o_spindle18aFI_dendrites.msh
26o_spindle18aFI_soma.msh
27o_spindle19aFI_dendrites.msh
27o_spindle19aFI_soma.msh
28o_spindle20aFI_dendrites.msh
28o_spindle20aFI_soma.msh
28o_spindle21aFI_dendrites.msh
28o_spindle21aFI_soma.msh
29o_spindle22aFI_dendrites.msh
29o_spindle22aFI_soma.msh
30o_spindle23aFI_dendrites.msh
30o_spindle23aFI_soma.msh"
for f in $files
do
    echo $f
    # scp vdnguyen@hpc106.csc.kth.se:/NOBACKUP/vdnguyen/Pyramidal_Neurons/xml_files/ACC/$f .
    zip $f.zip $f
    # rm $f
done