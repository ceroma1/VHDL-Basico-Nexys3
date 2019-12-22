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
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesCombinacionales/Decodegeneric/decogeneric.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_0230348120_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4808U);
    t3 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 1608U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(18, ng0);
    t3 = xsi_vhdl_pow(2, 3);
    t6 = (t3 - 1);
    t1 = (t0 + 4860);
    *((int *)t1) = 0;
    t2 = (t0 + 4864);
    *((int *)t2) = t6;
    t7 = 0;
    t8 = t6;

LAB2:    if (t7 <= t8)
        goto LAB3;

LAB5:    t1 = (t0 + 2904);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(19, ng0);
    t4 = (t0 + 4860);
    t5 = (t0 + 1608U);
    t9 = *((char **)t5);
    t10 = *((int *)t9);
    t11 = *((int *)t4);
    t12 = (t11 == t10);
    if (t12 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 4860);
    t3 = *((int *)t1);
    t6 = (t3 - 7);
    t15 = (t6 * -1);
    t16 = (1 * t15);
    t17 = (0U + t16);
    t2 = (t0 + 2984);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t18 = *((char **)t9);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, t17, 1, 0LL);

LAB7:
LAB4:    t1 = (t0 + 4860);
    t7 = *((int *)t1);
    t2 = (t0 + 4864);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB5;

LAB9:    t3 = (t7 + 1);
    t7 = t3;
    t4 = (t0 + 4860);
    *((int *)t4) = t7;
    goto LAB2;

LAB6:    xsi_set_current_line(20, ng0);
    t5 = (t0 + 4860);
    t13 = *((int *)t5);
    t14 = (t13 - 7);
    t15 = (t14 * -1);
    t16 = (1 * t15);
    t17 = (0U + t16);
    t18 = (t0 + 2984);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_delta(t18, t17, 1, 0LL);
    goto LAB7;

}


extern void work_a_0230348120_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0230348120_3212880686_p_0};
	xsi_register_didat("work_a_0230348120_3212880686", "isim/tes_isim_beh.exe.sim/work/a_0230348120_3212880686.didat");
	xsi_register_executes(pe);
}
