#!/bin/bash

PWRF=/cluster/home/csp001/sw/PolarWRFV3
PWRF_MOD="${PWRF}-mod"

ls -ld $PWRF
ls -ld $PWRF_MOD

# For updating symlinks: Comment out the mv commands and change to ln -sfn

cd $PWRF
mv share/module_soil_pre.F share/module_soil_pre.F-unpolar
mv run/LANDUSE.TBL run/LANDUSE.TBL-unpolar
mv run/VEGPARM.TBL run/VEGPARM.TBL-unpolar
mv dyn_em/module_first_rk_step_part1.F dyn_em/module_first_rk_step_part1.F-unpolar
mv dyn_em/module_big_step_utilities_em.F dyn_em/module_big_step_utilities_em.F-unpolar
mv dyn_em/module_initialize_real.F dyn_em/module_initialize_real.F-unpolar
mv phys/module_sf_noahlsm.F phys/module_sf_noahlsm.F-unpolar
mv phys/module_sf_noahdrv.F phys/module_sf_noahdrv.F-unpolar
mv phys/module_surface_driver.F phys/module_surface_driver.F-unpolar
mv phys/module_sf_noahlsm_glacial_only.F phys/module_sf_noahlsm_glacial_only.F-unpolar
mv phys/module_sf_noah_seaice.F phys/module_sf_noah_seaice.F-unpolar
mv phys/module_sf_noah_seaice_drv.F phys/module_sf_noah_seaice_drv.F-unpolar
mv phys/module_mp_morr_two_moment.F phys/module_mp_morr_two_moment.F-unpolar
ln -s $PWRF_MOD/PWRF3.9.1/share/module_soil_pre.F.PWRF3.9.1 share/module_soil_pre.F
ln -s $PWRF_MOD/PWRF3.9.1/run/LANDUSE.TBL.PWRF3.9.1 run/LANDUSE.TBL
ln -s $PWRF_MOD/PWRF3.9.1/run/VEGPARM.TBL.PWRF3.9.1 run/VEGPARM.TBL
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_sf_noahlsm.F.PWRF3.9.1 phys/module_sf_noahlsm.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_sf_noahdrv.F.PWRF3.9.1 phys/module_sf_noahdrv.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_surface_driver.F.PWRF3.9.1 phys/module_surface_driver.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_sf_noahlsm_glacial_only.F.PWRF3.9.1 phys/module_sf_noahlsm_glacial_only.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_sf_noah_seaice.F.PWRF3.9.1 phys/module_sf_noah_seaice.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_sf_noah_seaice_drv.F.PWRF3.9.1 phys/module_sf_noah_seaice_drv.F
ln -s $PWRF_MOD/PWRF3.9.1/phys/module_mp_morr_two_moment.F.PWRF3.9.1 phys/module_mp_morr_two_moment.F
ln -s $PWRF_MOD/PWRF3.9.1/dyn_em/module_first_rk_step_part1.F.PWRF3.9.1 dyn_em/module_first_rk_step_part1.F
ln -s $PWRF_MOD/PWRF3.9.1/dyn_em/module_big_step_utilities_em.F.PWRF3.9.1 dyn_em/module_big_step_utilities_em.F
ln -s $PWRF_MOD/PWRF3.9.1/dyn_em/module_initialize_real.F.PWRF3.9.1 dyn_em/module_initialize_real.F

# C'est le fin
