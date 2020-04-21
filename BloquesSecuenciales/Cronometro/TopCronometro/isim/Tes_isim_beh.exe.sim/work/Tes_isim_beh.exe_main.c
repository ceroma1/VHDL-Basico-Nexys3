/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3461506195_3212880686_init();
    work_a_0546155754_3212880686_init();
    work_a_0014456954_3212880686_init();
    work_a_1410680165_3212880686_init();
    work_a_0763320630_3212880686_init();
    work_a_2350598943_3212880686_init();
    work_a_0031214614_3212880686_init();
    work_a_0878623970_3212880686_init();
    work_a_2666543486_3212880686_init();
    work_a_0415838181_3212880686_init();
    work_a_3607072050_3212880686_init();
    work_a_4114005428_3212880686_init();
    work_a_2161394356_3212880686_init();
    work_a_0313470322_3212880686_init();
    work_a_2622204061_3212880686_init();
    work_a_2151203249_2372691052_init();


    xsi_register_tops("work_a_2151203249_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
