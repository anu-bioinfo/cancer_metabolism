function result_rr = rr(x,param)

Gluout = param.Gluout;
Pi = param.Pi;
bx6PG = param.bx6PG;
Ery4P = param.Ery4P;
Lacout = param.Lacout;
O2 = param.O2;


Vmf_1 = param.Vmf_1;
Keq_1 = param.Keq_1;
Kgluout_1 = param.Kgluout_1;
Kgluin_1 = param.Kgluin_1;
r1 = ((Vmf_1*x(14))*(Gluout-(x(31))/(Keq_1)))/((Kgluout_1)*(1+(x(31))/(Kgluin_1))+Gluout);

Vm_2 = param.Vm_2;
Ka_2 = param.Ka_2;
Kb_2 = param.Kb_2;
Keq_2 = param.Keq_2;
Kp_2 = param.Kp_2;
Kq_2 = param.Kq_2;
r2 = (((Vm_2*x(15))/((Ka_2)*(Kb_2)))*((x(31))*(x(49))-((x(32))*(x(48)))/(Keq_2)))/(1+(x(31))/(Ka_2)+(x(49))/(Kb_2)+((x(31))*(x(49)))/((Ka_2)*(Kb_2))+(x(32))/(Kp_2)+(x(48))/(Kq_2)+((x(32))*(x(48)))/((Kp_2)*(Kq_2))+((x(31))*(x(48)))/((Ka_2)*(Kq_2))+((x(32))*(x(49)))/((Kp_2)*(Kb_2)));

Vmf_3 = param.Vmf_3;
Kg6p_3 = param.Kg6p_3;
Vmr_3 = param.Vmr_3;
Kf6p_3 = param.Kf6p_3;
Kery4p_3 = param.Kery4p_3;
Kfbp_3 = param.Kfbp_3;
Kpg_3 = param.Kpg_3;
r3 = ((Vmf_3*x(17))*((x(32))/(Kg6p_3))-(Vmr_3*x(17))*((x(33))/(Kf6p_3)))/(1+(x(32))/(Kg6p_3)+(x(33))/(Kf6p_3)+(Ery4P)/(Kery4p_3)+(x(34))/(Kfbp_3)+(bx6PG)/(Kpg_3));

Vm_4 = param.Vm_4;
Katp_4 = param.Katp_4;
beta_4 = param.beta_4;
alfa_4 = param.alfa_4;
Kf26bp_4 = param.Kf26bp_4;
Kf6p_4 = param.Kf6p_4;
L_4 = param.L_4;
Kcit_4 = param.Kcit_4;
Kiatp_4 = param.Kiatp_4;
Kadp_4 = param.Kadp_4;
Kfbp_4 = param.Kfbp_4;
Keq_4 = param.Keq_4;
r4 = ((Vm_4*x(19))*((((x(33))/(Katp_4))/(1+(x(33))/(Katp_4)))*((1+((beta_4)*(x(44)))/((alfa_4)*(Kf26bp_4)))/(1+(x(44))/((alfa_4)*(Kf26bp_4))))))*(((((x(49))*(1+(x(44))/((alfa_4)*(Kf26bp_4))))/((Kf6p_4)*(1+(x(44))/(Kf26bp_4))))*((1+((x(49))*(1+(x(44))/((alfa_4)*(Kf26bp_4))))/((Kf6p_4)*(1+(x(44))/(Kf26bp_4))))^(3)))/((((L_4)*((1+(x(46))/(Kcit_4))^(4)))*((1+(x(33))/(Kiatp_4))^(4)))/((1+(x(44))/(Kf26bp_4))^(4))+(1+((x(49))*(1+(x(44))/((alfa_4)*(Kf26bp_4))))/((Kf6p_4)*(1+(x(44))/(Kf26bp_4))))^(4))-(((x(34))*(x(48)))/(((Kadp_4)*(Kfbp_4))*(Keq_4)))/((x(34))/(Kadp_4)+(x(48))/(Kfbp_4)+((x(34))*(x(48)))/((Kadp_4)*(Kfbp_4))+1));

Vmf_5 = param.Vmf_5;
Kfbp_5 = param.Kfbp_5;
Vmr_5 = param.Vmr_5;
Kdhap_5 = param.Kdhap_5;
Kg3p_5 = param.Kg3p_5;
r5 = ((Vmf_5*x(20))*((x(34))/(Kfbp_5))-(Vmr_5*x(20))*(((x(36))*(x(35)))/((Kdhap_5)*(Kg3p_5))))/(1+(x(34))/(Kfbp_5)+(x(36))/(Kdhap_5)+(x(35))/(Kg3p_5)+((x(36))*(x(35)))/((Kdhap_5)*(Kg3p_5)));

Kms_6 = param.Kms_6;
Kmp_6 = param.Kmp_6;
Vf_6 = param.Vf_6;
Vr_6 = param.Vr_6;
r6 = Vf_6*x(21)*x(36)-Vr_6*x(21)*x(35)/(Kms_6*Kmp_6+Kmp_6*x(36)+Kms_6*x(35));

Vmf_7 = param.Vmf_7;
Knad_7 = param.Knad_7;
Kg3p_7 = param.Kg3p_7;
Kp_7 = param.Kp_7;
Vmr_7 = param.Vmr_7;
Kdpg_7 = param.Kdpg_7;
Knadh_7 = param.Knadh_7;
r7 = ((Vmf_7*x(22))*((((x(50))*(x(35)))*(Pi))/(((Knad_7)*(Kg3p_7))*(Kp_7)))-(Vmr_7*x(22))*(((x(37))*(x(51)))/((Kdpg_7)*(Knadh_7))))/(1+(x(50))/(Knad_7)+((x(50))*(x(35)))/((Knad_7)*(Kg3p_7))+(((x(50))*(x(35)))*(Pi))/(((Knad_7)*(Kg3p_7))*(Kp_7))+((x(37))*(x(51)))/((Kdpg_7)*(Knadh_7))+(x(51))/(Knadh_7));

Vmf_8 = param.Vmf_8;
alfa_8 = param.alfa_8;
Ka_8 = param.Ka_8;
Kb_8 = param.Kb_8;
Vmr_8 = param.Vmr_8;
beta_8 = param.beta_8;
Kp_8 = param.Kp_8;
Kq_8 = param.Kq_8;
r8 = ((Vmf_8*x(23))*(((x(37))*(x(48)))/(((alfa_8)*(Ka_8))*(Kb_8)))-(Vmr_8*x(23))*(((x(38))*(x(49)))/(((beta_8)*(Kp_8))*(Kq_8))))/(1+(x(37))/(Ka_8)+(x(48))/(Kb_8)+((x(37))*(x(48)))/(((alfa_8)*(Ka_8))*(Kb_8))+((x(38))*(x(49)))/(((beta_8)*(Kp_8))*(Kq_8))+(x(38))/(Kp_8)+(x(49))/(Kq_8));

Kms_9 = param.Kms_9;
Kmp_9 = param.Kmp_9;
Vf_9 = param.Vf_9;
Vr_9 = param.Vr_9;
r9 = Vf_9*x(25)*x(38)-Vr_9*x(25)*x(39)/(Kms_9*Kmp_9+Kmp_9*x(38)+Kms_9*x(39));

Kms_10 = param.Kms_10;
Kmp_10 = param.Kmp_10;
Vf_10 = param.Vf_10;
Vr_10 = param.Vr_10;
r10 = Vf_10*x(26)*x(39)-Vr_10*x(26)*x(40)/(Kms_10*Kmp_10+Kmp_10*x(39)+Kms_10*x(40));

Vmax_11 = param.Vmax_11;
Kpep_11 = param.Kpep_11;
Kadp_11 = param.Kadp_11;
Keq_11 = param.Keq_11;
Kpyr_11 = param.Kpyr_11;
Katp_11 = param.Katp_11;
r11 = ((Vmax_11*x(27))*(((x(40))*(x(48)))/((Kpep_11)*(Kadp_11))-((x(41))*(x(49)))/(((Kpep_11)*(Kadp_11))*(Keq_11))))/((1+(x(40))/(Kpep_11)+(x(41))/(Kpyr_11))*(1+(x(48))/(Kadp_11)+(x(49))/(Katp_11)));

Vmf_12 = param.Vmf_12;
alfa_12 = param.alfa_12;
Ka_12 = param.Ka_12;
Kb_12 = param.Kb_12;
Vmr_12 = param.Vmr_12;
beta_12 = param.beta_12;
Kp_12 = param.Kp_12;
Kq_12 = param.Kq_12;
r12 = ((Vmf_12*x(30))*(((x(51))*(x(41)))/(((alfa_12)*(Ka_12))*(Kb_12)))-(Vmr_12*x(30))*(((x(42))*(x(50)))/(((beta_12)*(Kp_12))*(Kq_12))))/(1+(x(51))/(Ka_12)+(x(41))/(Kb_12)+((x(51))*(x(41)))/(((alfa_12)*(Ka_12))*(Kb_12))+((x(42))*(x(50)))/(((beta_12)*(Kp_12))*(Kq_12))+(x(42))/(Kp_12)+(x(50))/(Kq_12));

Vm_13 = param.Vm_13;
Km_13 = param.Km_13;
r13 = Vm_13 * x(16) * (x(32) / ( x(32)+Km_13) );

k_14 = param.k_14;
r14 = k_14*x(49);

k1_15 = param.k1_15;
k2_15 = param.k2_15;
r15 = k1_15*x(49)*x(47)-k2_15*x(48)*x(48);

Vf_16 = param.Vf_16;
Vr_16 = param.Vr_16;
Kms_16 = param.Kms_16;
Kmp_16 = param.Kmp_16;
r16 = Vf_16*x(18)*x(33)-Vr_16*x(18)*x(44)/(Kms_16*Kmp_16+Kmp_16*x(33)+Kms_16*x(44));

Vm_17 = param.Vm_17;
Km_17 = param.Km_17;
r17 = Vm_17*x(24) * (x(38) / ( x(38)+Km_17) );

Vm_18 = param.Vm_18;
Km_18 = param.Km_18;
r18 = Vm_18 * x(28) * (x(41) / ( x(41)+Km_18) );

Vm_19 = param.Vm_19;
Km_19 = param.Km_19;
r19 = Vm_19 * x(29) * (x(46) / ( x(46)+Km_19) );

Vm_20 = param.Vm_20;
Km_20 = param.Km_20;
r20 = Vm_20*x(12) * (x(53) / ( x(53)+Km_20) );

Vmf_21 = param.Vmf_21;
Keq_21 = param.Keq_21;
Klacin_21 = param.Klacin_21;
Klacout_21 = param.Klacout_21;
r21 = ((Vmf_21)*(x(42)-(Lacout)/(Keq_21)))/((Klacin_21)*(1+(Lacout)/(Klacout_21))+x(42));

k1_22 = param.k1_22;
k2_22 = param.k2_22;
r22 = k1_22*x(43)*x(43)*x(43)-k2_22*x(33)*x(33)*x(35);

k_23 = param.k_23;
r23 = k_23*x(43);

k_24 = param.k_24;
r24 = k_24*x(45);

k_25 = param.k_25;
r25 = k_25*x(51);

k_26 = param.k_26;
r26 = k_26*x(46);

k_27 = param.k_27;
r27 = k_27*x(52);

k_28 = param.k_28;
r28 = k_28*x(52)*O2;

Vm_29 = param.Vm_29;
Km_29 = param.Km_29;
r29 = Vm_29*x(6) * ( O2/ ( O2+Km_29) );

k_30 = param.k_30;
r30 = k_30*x(46);

result_rr = [ r1, r2, r3, r4, r5, r6, r7, r8, r9,r10,...
          r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,...
          r21,r22,r23,r24,r25,r26,r27,r28,r29,r30];


end