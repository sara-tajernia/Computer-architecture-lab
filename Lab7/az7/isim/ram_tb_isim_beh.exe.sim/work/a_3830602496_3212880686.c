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
static const char *ng0 = "S:/uni/4/Az memar/session7/az7/ram.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3830602496_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 10780);
    *((int *)t1) = 0;
    t5 = (t0 + 10784);
    *((int *)t5) = 255;
    t6 = 0;
    t7 = 255;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(53, ng0);
    t9 = (t0 + 10780);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t9), 16);
    t11 = (t0 + 10780);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (16U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4136);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 16U);
    xsi_driver_first_trans_delta(t17, t16, 16U, 0LL);

LAB7:    t1 = (t0 + 10780);
    t6 = *((int *)t1);
    t2 = (t0 + 10784);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 10780);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t24 = *((unsigned char *)t9);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB20:
LAB17:    goto LAB11;

LAB13:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB15;

LAB16:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2152U);
    t10 = *((char **)t2);
    t2 = (t0 + 1672U);
    t11 = *((char **)t2);
    t2 = (t0 + 6536U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t2);
    t7 = (t6 - 0);
    t14 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t6);
    t15 = (16U * t14);
    t16 = (0 + t15);
    t17 = (t10 + t16);
    t18 = (t0 + 4200);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t26 = *((char **)t21);
    memcpy(t26, t17, 16U);
    xsi_driver_first_trans_fast(t18);
    goto LAB17;

LAB19:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 1672U);
    t9 = *((char **)t1);
    t1 = (t0 + 6536U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t1);
    t7 = (t6 - 0);
    t14 = (t7 * 1);
    t15 = (16U * t14);
    t16 = (0U + t15);
    t10 = (t0 + 4136);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 16U);
    xsi_driver_first_trans_delta(t10, t16, 16U, 0LL);
    goto LAB17;

}

static void work_a_3830602496_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4264);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0,(void *)work_a_3830602496_3212880686_p_1};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/ram_tb_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
}
