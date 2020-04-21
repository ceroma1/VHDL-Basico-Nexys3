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
static const char *ng0 = "/home/ise/Codigos_VHDL_Nexys3/BloquesSecuenciales/BinarioDecimalVer2/Modulo_BinBcd.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_970019341842501186_3965413181(char *, char *, char *, int );


static void work_a_2666543486_3212880686_p_0(char *t0)
{
    char t13[16];
    char t17[16];
    char t21[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 4796);
    *((int *)t1) = 0;
    t2 = (t0 + 4800);
    *((int *)t2) = 29;
    t3 = 0;
    t4 = 29;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1488U);
    t5 = *((char **)t1);
    t9 = (29 - 16);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    memcpy(t1, t2, 14U);
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 4804);
    *((int *)t1) = 0;
    t2 = (t0 + 4808);
    *((int *)t2) = 10;
    t3 = 0;
    t4 = 10;

LAB7:    if (t3 <= t4)
        goto LAB8;

LAB10:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (29 - 29);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 2864);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t14 = (t12 + 56U);
    t18 = *((char **)t14);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 2784);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t5 = (t0 + 1488U);
    t6 = *((char **)t5);
    t5 = (t0 + 4796);
    t7 = *((int *)t5);
    t8 = (t7 - 29);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(29, 0, -1, *((int *)t5));
    t10 = (1U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    *((unsigned char *)t12) = (unsigned char)2;

LAB4:    t1 = (t0 + 4796);
    t3 = *((int *)t1);
    t2 = (t0 + 4800);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4796);
    *((int *)t5) = t3;
    goto LAB2;

LAB8:    xsi_set_current_line(24, ng0);
    t5 = (t0 + 1488U);
    t6 = *((char **)t5);
    t9 = (29 - 17);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    t12 = (t13 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 17;
    t14 = (t12 + 4U);
    *((int *)t14) = 14;
    t14 = (t12 + 8U);
    *((int *)t14) = -1;
    t7 = (14 - 17);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t15;
    t16 = ieee_p_3620187407_sub_970019341842501186_3965413181(IEEE_P_3620187407, t5, t13, 4);
    if (t16 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (29 - 21);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t13 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 21;
    t6 = (t5 + 4U);
    *((int *)t6) = 18;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (18 - 21);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t15;
    t16 = ieee_p_3620187407_sub_970019341842501186_3965413181(IEEE_P_3620187407, t1, t13, 4);
    if (t16 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (29 - 25);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t13 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 25;
    t6 = (t5 + 4U);
    *((int *)t6) = 22;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (22 - 25);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t15;
    t16 = ieee_p_3620187407_sub_970019341842501186_3965413181(IEEE_P_3620187407, t1, t13, 4);
    if (t16 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (29 - 28);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = xsi_get_transient_memory(29U);
    memcpy(t5, t1, 29U);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (29 - 29);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    memcpy(t6, t5, 29U);

LAB9:    t1 = (t0 + 4804);
    t3 = *((int *)t1);
    t2 = (t0 + 4808);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB10;

LAB20:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4804);
    *((int *)t5) = t3;
    goto LAB7;

LAB11:    xsi_set_current_line(25, ng0);
    t14 = (t0 + 1488U);
    t18 = *((char **)t14);
    t15 = (29 - 17);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t14 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 17;
    t23 = (t22 + 4U);
    *((int *)t23) = 14;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t8 = (14 - 17);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t24;
    t23 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t17, t14, t21, 3);
    t25 = (t0 + 1488U);
    t26 = *((char **)t25);
    t24 = (29 - 17);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t25 = (t26 + t28);
    t29 = (t17 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    memcpy(t25, t23, t31);
    goto LAB12;

LAB14:    xsi_set_current_line(28, ng0);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (29 - 21);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    t14 = (t21 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 21;
    t18 = (t14 + 4U);
    *((int *)t18) = 18;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t8 = (18 - 21);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t24;
    t18 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t17, t6, t21, 3);
    t22 = (t0 + 1488U);
    t23 = *((char **)t22);
    t24 = (29 - 21);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t22 = (t23 + t28);
    t25 = (t17 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t22, t18, t31);
    goto LAB15;

LAB17:    xsi_set_current_line(31, ng0);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (29 - 25);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    t14 = (t21 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 25;
    t18 = (t14 + 4U);
    *((int *)t18) = 22;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t8 = (22 - 25);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t24;
    t18 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t17, t6, t21, 3);
    t22 = (t0 + 1488U);
    t23 = *((char **)t22);
    t24 = (29 - 25);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t22 = (t23 + t28);
    t25 = (t17 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t22, t18, t31);
    goto LAB18;

}


extern void work_a_2666543486_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2666543486_3212880686_p_0};
	xsi_register_didat("work_a_2666543486_3212880686", "isim/Tes_isim_beh.exe.sim/work/a_2666543486_3212880686.didat");
	xsi_register_executes(pe);
}
