#!/bin/bash

PWRF=/cluster/home/csp001/sw/PolarWRFV3
PWRF_MOD="${PWRF}-mod"

ls -ld $PWRF
ls -ld $PWRF_MOD

# For updating symlinks: Comment out the mv commands and change to ln -sfn

cd $PWRF

for file in share/module_soil_pre.F phys/module_sf_noahlsm.F phys/module_sf_noahdrv.F phys/module_surface_driver.F phys/module_sf_noahlsm_glacial_only.F phys/module_sf_noah_seaice.F phys/module_sf_noah_seaice_drv.F phys/module_mp_morr_two_moment.F dyn_em/module_first_rk_step_part1.F dyn_em/module_big_step_utilities_em.F dyn_em/module_initialize_real.F; do
	rm -f ${file%.*}.f90
	rm -f ${file%.*}.mod
	rm -f ${file%.*}.o
done

# C'est le fin
