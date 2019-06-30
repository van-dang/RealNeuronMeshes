mlist="03a_spindle2aFI
03a_spindle6aFI
03b_spindle4aACC
03b_spindle5aACC
03b_spindle6aACC
03b_spindle7aACC
04b_spindle3aFI
05b_spindle5aFI
06b_spindle8aACC
07b_spindle9aACC
08a_spindle13aACC
09o_spindle7aFI
09o_spindle8aFI
10a_spindle18aACC
12a_spindle19aACC
12o_spindle9aFI
13o_spindle10aFI
15o_spindle12aFI
16o_spindle13aFI
19o_spindle14aFI
21o_spindle15aFI
23o_spindle16aFI
25o_spindle17aFI
26o_spindle18aFI
27o_spindle19aFI
28o_spindle20aFI
28o_spindle21aFI
29o_spindle22aFI
30o_spindle23aFI"

# mlist="03b_spindle5aACC"

for f in ${mlist} 
do
    meshname=${f}
    unzip ${meshname}.stl.zip
    rm ${meshname}.stl.zip
    ## create surface mesh                                                                                                                                                                               
    cp tmp_surface.geo tmp1_surface.geo
    gsed -i 's/tmp/'${meshname}'/g' tmp1_surface.geo
    /Applications/Gmsh.app/Contents/MacOS/gmsh -2 tmp1_surface.geo -o ${meshname}.stl
    zip ${meshname}.stl.zip ${meshname}.stl

    ## create volume mesh                                                                                                                                                                             
    cp tmp_volume.geo tmp1_volume.geo                                                                                                           
    gsed -i 's/tmp/'${meshname}'/g' tmp1_volume.geo                                                                                                                       
    /Applications/Gmsh.app/Contents/MacOS/gmsh -3 tmp1_volume.geo -o ${meshname}.msh
    zip ${meshname}.msh.zip ${meshname}.msh
done

#meshname=03b_spindle5aACC
#unzip ${meshname}.stl.zip
## create surface mesh
#cp tmp_surface.geo tmp1_surface.geo
#gsed -i 's/tmp/'${meshname}'/g' tmp1_surface.geo
#/Applications/Gmsh.app/Contents/MacOS/gmsh -2 tmp1_surface.geo -o ${meshname}.stl

## create volume mesh
#cp tmp_volume.geo tmp1_volume.geo
#gsed -i 's/tmp/'${meshname}'/g' tmp1_volume.geo
#/Applications/Gmsh.app/Contents/MacOS/gmsh -3 tmp1_volume.geo -o ${meshname}.msh


