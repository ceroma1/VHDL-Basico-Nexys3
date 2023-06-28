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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Cristian Padilla/Desktop/circuitos digitales/Circuitos digitales 2/Ejemplo2VGAr/Move.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );


static void work_a_1867271526_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 7608U);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t7 = *((int *)t6);
    t8 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t4, t3, t7);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 4296);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);

LAB3:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t1 = *((unsigned char *)t4);
    t2 = (t1 == (unsigned char)3);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    t3 = (t0 + 4200);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t22 = (t0 + 4296);
    t27 = (t22 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast(t22);
    goto LAB3;

LAB5:    t10 = (t0 + 1512U);
    t16 = *((char **)t10);
    t10 = (t0 + 7624U);
    t17 = (t0 + 2312U);
    t18 = *((char **)t17);
    t19 = *((int *)t18);
    t20 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t16, t10, t19);
    if (t20 == 1)
        goto LAB11;

LAB12:    t15 = (unsigned char)0;

LAB13:    t1 = t15;
    goto LAB7;

LAB8:    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t5 = (t0 + 7608U);
    t10 = (t0 + 2152U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t13 = (t12 + 100);
    t14 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t9, t5, t13);
    t2 = t14;
    goto LAB10;

LAB11:    t17 = (t0 + 1512U);
    t21 = *((char **)t17);
    t17 = (t0 + 7624U);
    t22 = (t0 + 2312U);
    t23 = *((char **)t22);
    t24 = *((int *)t23);
    t25 = (t24 + 100);
    t26 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t21, t17, t25);
    t15 = t26;
    goto LAB13;

LAB14:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t8 = *((unsigned char *)t5);
    t14 = (t8 == (unsigned char)3);
    if (t14 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(37, ng0);
    t3 = xsi_get_transient_memory(3U);
    memset(t3, 0, 3U);
    t4 = t3;
    memset(t4, (unsigned char)2, 3U);
    t5 = (t0 + 4360);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(38, ng0);
    t3 = xsi_get_transient_memory(3U);
    memset(t3, 0, 3U);
    t4 = t3;
    memset(t4, (unsigned char)2, 3U);
    t5 = (t0 + 4424);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(39, ng0);
    t3 = xsi_get_transient_memory(2U);
    memset(t3, 0, 2U);
    t4 = t3;
    memset(t4, (unsigned char)2, 2U);
    t5 = (t0 + 4488);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB18:    goto LAB15;

LAB17:    xsi_set_current_line(33, ng0);
    t3 = xsi_get_transient_memory(3U);
    memset(t3, 0, 3U);
    t6 = t3;
    memset(t6, (unsigned char)3, 3U);
    t9 = (t0 + 4360);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t16 = (t11 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 3U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(34, ng0);
    t3 = xsi_get_transient_memory(3U);
    memset(t3, 0, 3U);
    t4 = t3;
    memset(t4, (unsigned char)2, 3U);
    t5 = (t0 + 4424);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 3U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(35, ng0);
    t3 = xsi_get_transient_memory(2U);
    memset(t3, 0, 2U);
    t4 = t3;
    memset(t4, (unsigned char)3, 2U);
    t5 = (t0 + 4488);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB18;

}

static void work_a_1867271526_3212880686_p_1(char *t0)
{
    char t6[16];
    char t15[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 7624U);
    t4 = (t0 + 7765);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 9;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = (t0 + 4552);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = (t0 + 4616);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t9;
    xsi_driver_first_trans_fast(t2);

LAB3:    t2 = (t0 + 4216);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t17 = (t0 + 1032U);
    t20 = *((char **)t17);
    t21 = (0 - 3);
    t10 = (t21 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t17 = (t20 + t23);
    t24 = *((unsigned char *)t17);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t2 = (t3 + t23);
    t1 = *((unsigned char *)t2);
    t11 = (t1 == (unsigned char)3);
    if (t11 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t2 = (t3 + t23);
    t1 = *((unsigned char *)t2);
    t11 = (t1 == (unsigned char)3);
    if (t11 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t22 = (1U * t10);
    t23 = (0 + t22);
    t2 = (t3 + t23);
    t1 = *((unsigned char *)t2);
    t11 = (t1 == (unsigned char)3);
    if (t11 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB3;

LAB5:    t8 = (t0 + 1352U);
    t12 = *((char **)t8);
    t8 = (t0 + 7608U);
    t13 = (t0 + 7775);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 10;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (10 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t12, t8, t13, t15);
    t1 = t19;
    goto LAB7;

LAB8:    xsi_set_current_line(48, ng0);
    t26 = (t0 + 2152U);
    t27 = *((char **)t26);
    t28 = *((int *)t27);
    t29 = (t28 + 5);
    t26 = (t0 + 4552);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((int *)t33) = t29;
    xsi_driver_first_trans_fast(t26);
    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t18 = *((int *)t5);
    t21 = (t18 - 5);
    t4 = (t0 + 4552);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t21;
    xsi_driver_first_trans_fast(t4);
    goto LAB12;

LAB14:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t18 = *((int *)t5);
    t21 = (t18 - 5);
    t4 = (t0 + 4616);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t21;
    xsi_driver_first_trans_fast(t4);
    goto LAB15;

LAB17:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t18 = *((int *)t5);
    t21 = (t18 + 5);
    t4 = (t0 + 4616);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t21;
    xsi_driver_first_trans_fast(t4);
    goto LAB18;

}


extern void work_a_1867271526_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1867271526_3212880686_p_0,(void *)work_a_1867271526_3212880686_p_1};
	xsi_register_didat("work_a_1867271526_3212880686", "isim/test_isim_beh.exe.sim/work/a_1867271526_3212880686.didat");
	xsi_register_executes(pe);
}
