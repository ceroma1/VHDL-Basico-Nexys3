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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesCombinacionales/Display7segmento/ModuloDisplay.vhd";



static void work_a_2749801919_3212880686_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(13, ng0);

LAB3:    t1 = (t0 + 5164);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2749801919_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB20:    t5 = (t0 + 5172);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB21:    t8 = (t0 + 5176);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB22:    t11 = (t0 + 5180);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB23:    t14 = (t0 + 5184);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB24:    t17 = (t0 + 5188);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB25:    t20 = (t0 + 5192);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB26:    t23 = (t0 + 5196);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB27:    t26 = (t0 + 5200);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB28:    t29 = (t0 + 5204);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB29:    t32 = (t0 + 5208);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB30:    t35 = (t0 + 5212);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB31:    t38 = (t0 + 5216);
    t40 = xsi_mem_cmp(t38, t2, 4U);
    if (t40 == 1)
        goto LAB15;

LAB32:    t41 = (t0 + 5220);
    t43 = xsi_mem_cmp(t41, t2, 4U);
    if (t43 == 1)
        goto LAB16;

LAB33:    t44 = (t0 + 5224);
    t46 = xsi_mem_cmp(t44, t2, 4U);
    if (t46 == 1)
        goto LAB17;

LAB34:    t47 = (t0 + 5228);
    t49 = xsi_mem_cmp(t47, t2, 4U);
    if (t49 == 1)
        goto LAB18;

LAB35:
LAB19:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 5344);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3072);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(17, ng0);
    t50 = (t0 + 5232);
    t52 = (t0 + 3216);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 7U);
    xsi_driver_first_trans_fast_port(t52);
    goto LAB2;

LAB4:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 5239);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 5246);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 5253);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 5260);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 5267);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB9:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 5274);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 5281);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB11:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 5288);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB12:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 5295);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB13:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 5302);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB14:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 5309);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB15:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 5316);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB16:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 5323);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB17:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 5330);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB18:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 5337);
    t3 = (t0 + 3216);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB36:;
}


extern void work_a_2749801919_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2749801919_3212880686_p_0,(void *)work_a_2749801919_3212880686_p_1};
	xsi_register_didat("work_a_2749801919_3212880686", "isim/tes0_isim_beh.exe.sim/work/a_2749801919_3212880686.didat");
	xsi_register_executes(pe);
}
