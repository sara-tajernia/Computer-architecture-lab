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
static const char *ng0 = "S:/uni/4/Az memar/session7/az7/ROM.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4204489651_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 10711);
    *((int *)t1) = 0;
    t2 = (t0 + 10715);
    *((int *)t2) = 255;
    t3 = 0;
    t4 = 255;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    t1 = (t0 + 3968);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(52, ng0);
    t5 = (t0 + 10719);
    *((int *)t5) = 0;
    t6 = (t0 + 10723);
    *((int *)t6) = 15;
    t7 = 0;
    t8 = 15;

LAB6:    if (t7 <= t8)
        goto LAB7;

LAB9:
LAB4:    t1 = (t0 + 10711);
    t3 = *((int *)t1);
    t2 = (t0 + 10715);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB11:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 10711);
    *((int *)t5) = t3;
    goto LAB2;

LAB7:    xsi_set_current_line(53, ng0);
    t9 = (t0 + 10711);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 10719);
    t16 = *((int *)t15);
    t17 = (t16 - 15);
    t18 = (t17 * -1);
    t19 = (1 * t18);
    t20 = (t14 + t19);
    t21 = (t0 + 4080);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_delta(t21, t20, 1, 0LL);

LAB8:    t1 = (t0 + 10719);
    t7 = *((int *)t1);
    t2 = (t0 + 10723);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB9;

LAB10:    t10 = (t7 + 1);
    t7 = t10;
    t5 = (t0 + 10719);
    *((int *)t5) = t7;
    goto LAB6;

}

static void work_a_4204489651_3212880686_p_1(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB3:    t1 = (t0 + 3984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 10727);
    *((int *)t1) = 0;
    t5 = (t0 + 10731);
    *((int *)t5) = 255;
    t6 = 0;
    t7 = 255;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(62, ng0);
    t9 = (t0 + 10727);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 16);
    t11 = (t0 + 10727);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (16U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4144);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 16U);
    xsi_driver_first_trans_delta(t17, t16, 16U, 0LL);

LAB7:    t1 = (t0 + 10727);
    t6 = *((int *)t1);
    t2 = (t0 + 10731);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 10727);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t24 = *((unsigned char *)t9);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB15;

LAB16:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1832U);
    t10 = *((char **)t2);
    t2 = (t0 + 1512U);
    t11 = *((char **)t2);
    t2 = (t0 + 6500U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t2);
    t7 = (t6 - 0);
    t14 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t6);
    t15 = (16U * t14);
    t16 = (0 + t15);
    t17 = (t10 + t16);
    t18 = (t0 + 4208);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t26 = *((char **)t21);
    memcpy(t26, t17, 16U);
    xsi_driver_first_trans_fast(t18);
    goto LAB17;

}

static void work_a_4204489651_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4000);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4204489651_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4204489651_3212880686_p_0,(void *)work_a_4204489651_3212880686_p_1,(void *)work_a_4204489651_3212880686_p_2};
	xsi_register_didat("work_a_4204489651_3212880686", "isim/rom_tb_isim_beh.exe.sim/work/a_4204489651_3212880686.didat");
	xsi_register_executes(pe);
}
