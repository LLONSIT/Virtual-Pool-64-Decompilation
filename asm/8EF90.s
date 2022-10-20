.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008E390
/* 8EF90 8008E390 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8EF94 8008E394 AFB60038 */  sw         $s6, 0x38($sp)
/* 8EF98 8008E398 8FB60058 */  lw         $s6, 0x58($sp)
/* 8EF9C 8008E39C AFB7003C */  sw         $s7, 0x3C($sp)
/* 8EFA0 8008E3A0 8FB7005C */  lw         $s7, 0x5C($sp)
/* 8EFA4 8008E3A4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8EFA8 8008E3A8 00808021 */  addu       $s0, $a0, $zero
/* 8EFAC 8008E3AC AFB3002C */  sw         $s3, 0x2C($sp)
/* 8EFB0 8008E3B0 00A09821 */  addu       $s3, $a1, $zero
/* 8EFB4 8008E3B4 AFBE0040 */  sw         $fp, 0x40($sp)
/* 8EFB8 8008E3B8 00C0F021 */  addu       $fp, $a2, $zero
/* 8EFBC 8008E3BC AFB50034 */  sw         $s5, 0x34($sp)
/* 8EFC0 8008E3C0 00E0A821 */  addu       $s5, $a3, $zero
/* 8EFC4 8008E3C4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 8EFC8 8008E3C8 AFB40030 */  sw         $s4, 0x30($sp)
/* 8EFCC 8008E3CC AFB20028 */  sw         $s2, 0x28($sp)
/* 8EFD0 8008E3D0 0C0247F0 */  jal        func_80091FC0
/* 8EFD4 8008E3D4 AFB10024 */   sw        $s1, 0x24($sp)
/* 8EFD8 8008E3D8 3C01802C */  lui        $at, %hi(D_802C444C)
/* 8EFDC 8008E3DC 0C0247F0 */  jal        func_80091FC0
/* 8EFE0 8008E3E0 AC22444C */   sw        $v0, %lo(D_802C444C)($at)
/* 8EFE4 8008E3E4 3C038009 */  lui        $v1, %hi(func_8008ECE0)
/* 8EFE8 8008E3E8 2463ECE0 */  addiu      $v1, $v1, %lo(func_8008ECE0)
/* 8EFEC 8008E3EC 3C01802C */  lui        $at, %hi(D_802C4400)
/* 8EFF0 8008E3F0 A0204400 */  sb         $zero, %lo(D_802C4400)($at)
/* 8EFF4 8008E3F4 AE630010 */  sw         $v1, 0x10($s3)
/* 8EFF8 8008E3F8 8EA40000 */  lw         $a0, 0x0($s5)
/* 8EFFC 8008E3FC 3C01802C */  lui        $at, %hi(D_802C4450)
/* 8F000 8008E400 AC224450 */  sw         $v0, %lo(D_802C4450)($at)
/* 8F004 8008E404 3C01802C */  lui        $at, %hi(D_802C4438)
/* 8F008 8008E408 AC304438 */  sw         $s0, %lo(D_802C4438)($at)
/* 8F00C 8008E40C 3C01802C */  lui        $at, %hi(D_802C4448)
/* 8F010 8008E410 0C0244AC */  jal        func_800912B0
/* 8F014 8008E414 AC374448 */   sw        $s7, %lo(D_802C4448)($at)
/* 8F018 8008E418 00002021 */  addu       $a0, $zero, $zero
/* 8F01C 8008E41C AE620018 */  sw         $v0, 0x18($s3)
/* 8F020 8008E420 00161080 */  sll        $v0, $s6, 2
/* 8F024 8008E424 00561021 */  addu       $v0, $v0, $s6
/* 8F028 8008E428 00021080 */  sll        $v0, $v0, 2
/* 8F02C 8008E42C AFA20010 */  sw         $v0, 0x10($sp)
/* 8F030 8008E430 8E660014 */  lw         $a2, 0x14($s3)
/* 8F034 8008E434 00002821 */  addu       $a1, $zero, $zero
/* 8F038 8008E438 0C024154 */  jal        func_80090550
/* 8F03C 8008E43C 24070001 */   addiu     $a3, $zero, 0x1
/* 8F040 8008E440 00002021 */  addu       $a0, $zero, $zero
/* 8F044 8008E444 00161840 */  sll        $v1, $s6, 1
/* 8F048 8008E448 00761821 */  addu       $v1, $v1, $s6
/* 8F04C 8008E44C 00031900 */  sll        $v1, $v1, 4
/* 8F050 8008E450 AFA30010 */  sw         $v1, 0x10($sp)
/* 8F054 8008E454 8E660014 */  lw         $a2, 0x14($s3)
/* 8F058 8008E458 00002821 */  addu       $a1, $zero, $zero
/* 8F05C 8008E45C 3C01802C */  lui        $at, %hi(D_802C443C)
/* 8F060 8008E460 AC22443C */  sw         $v0, %lo(D_802C443C)($at)
/* 8F064 8008E464 0C024154 */  jal        func_80090550
/* 8F068 8008E468 24070001 */   addiu     $a3, $zero, 0x1
/* 8F06C 8008E46C 00002021 */  addu       $a0, $zero, $zero
/* 8F070 8008E470 001618C0 */  sll        $v1, $s6, 3
/* 8F074 8008E474 AFA30010 */  sw         $v1, 0x10($sp)
/* 8F078 8008E478 8E660014 */  lw         $a2, 0x14($s3)
/* 8F07C 8008E47C 00002821 */  addu       $a1, $zero, $zero
/* 8F080 8008E480 3C01802C */  lui        $at, %hi(D_802C4440)
/* 8F084 8008E484 AC224440 */  sw         $v0, %lo(D_802C4440)($at)
/* 8F088 8008E488 0C024154 */  jal        func_80090550
/* 8F08C 8008E48C 24070001 */   addiu     $a3, $zero, 0x1
/* 8F090 8008E490 8EA30004 */  lw         $v1, 0x4($s5)
/* 8F094 8008E494 3C01802C */  lui        $at, %hi(D_802C4444)
/* 8F098 8008E498 AC224444 */  sw         $v0, %lo(D_802C4444)($at)
/* 8F09C 8008E49C 44831000 */  mtc1       $v1, $f2
/* 8F0A0 8008E4A0 00000000 */  nop
/* 8F0A4 8008E4A4 468010A1 */  cvt.d.w    $f2, $f2
/* 8F0A8 8008E4A8 04630005 */  bgezl      $v1, .L8008E4C0
/* 8F0AC 8008E4AC 46201020 */   cvt.s.d   $f0, $f2
/* 8F0B0 8008E4B0 3C01800D */  lui        $at, %hi(D_800D6AB0)
/* 8F0B4 8008E4B4 D4206AB0 */  ldc1       $f0, %lo(D_800D6AB0)($at)
/* 8F0B8 8008E4B8 46201080 */  add.d      $f2, $f2, $f0
/* 8F0BC 8008E4BC 46201020 */  cvt.s.d    $f0, $f2
.L8008E4C0:
/* 8F0C0 8008E4C0 C6620018 */  lwc1       $f2, 0x18($s3)
/* 8F0C4 8008E4C4 468010A0 */  cvt.s.w    $f2, $f2
/* 8F0C8 8008E4C8 46020002 */  mul.s      $f0, $f0, $f2
/* 8F0CC 8008E4CC C7A20060 */  lwc1       $f2, 0x60($sp)
/* 8F0D0 8008E4D0 468010A0 */  cvt.s.w    $f2, $f2
/* 8F0D4 8008E4D4 46020103 */  div.s      $f4, $f0, $f2
/* 8F0D8 8008E4D8 4600200D */  trunc.w.s  $f0, $f4
/* 8F0DC 8008E4DC 44030000 */  mfc1       $v1, $f0
/* 8F0E0 8008E4E0 3C01802C */  lui        $at, %hi(D_802C4410)
/* 8F0E4 8008E4E4 AC234410 */  sw         $v1, %lo(D_802C4410)($at)
/* 8F0E8 8008E4E8 44831000 */  mtc1       $v1, $f2
/* 8F0EC 8008E4EC 00000000 */  nop
/* 8F0F0 8008E4F0 468010A1 */  cvt.d.w    $f2, $f2
/* 8F0F4 8008E4F4 04630005 */  bgezl      $v1, .L8008E50C
/* 8F0F8 8008E4F8 46201020 */   cvt.s.d   $f0, $f2
/* 8F0FC 8008E4FC 3C01800D */  lui        $at, %hi(D_800D6AB8)
/* 8F100 8008E500 D4206AB8 */  ldc1       $f0, %lo(D_800D6AB8)($at)
/* 8F104 8008E504 46201080 */  add.d      $f2, $f2, $f0
/* 8F108 8008E508 46201020 */  cvt.s.d    $f0, $f2
.L8008E50C:
/* 8F10C 8008E50C 4604003C */  c.lt.s     $f0, $f4
/* 8F110 8008E510 00000000 */  nop
/* 8F114 8008E514 00000000 */  nop
/* 8F118 8008E518 45000003 */  bc1f       .L8008E528
/* 8F11C 8008E51C 24620001 */   addiu     $v0, $v1, 0x1
/* 8F120 8008E520 3C01802C */  lui        $at, %hi(D_802C4410)
/* 8F124 8008E524 AC224410 */  sw         $v0, %lo(D_802C4410)($at)
.L8008E528:
/* 8F128 8008E528 3C03802C */  lui        $v1, %hi(D_802C4410)
/* 8F12C 8008E52C 8C634410 */  lw         $v1, %lo(D_802C4410)($v1)
/* 8F130 8008E530 3062000F */  andi       $v0, $v1, 0xF
/* 8F134 8008E534 10400005 */  beqz       $v0, .L8008E54C
/* 8F138 8008E538 2402FFF0 */   addiu     $v0, $zero, -0x10
/* 8F13C 8008E53C 00621024 */  and        $v0, $v1, $v0
/* 8F140 8008E540 24420010 */  addiu      $v0, $v0, 0x10
/* 8F144 8008E544 3C01802C */  lui        $at, %hi(D_802C4410)
/* 8F148 8008E548 AC224410 */  sw         $v0, %lo(D_802C4410)($at)
.L8008E54C:
/* 8F14C 8008E54C 3C02802C */  lui        $v0, %hi(D_802C4410)
/* 8F150 8008E550 8C424410 */  lw         $v0, %lo(D_802C4410)($v0)
/* 8F154 8008E554 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8F158 8008E558 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8F15C 8008E55C 2443FFF0 */  addiu      $v1, $v0, -0x10
/* 8F160 8008E560 24420060 */  addiu      $v0, $v0, 0x60
/* 8F164 8008E564 3C01802C */  lui        $at, %hi(D_802C440C)
/* 8F168 8008E568 AC23440C */  sw         $v1, %lo(D_802C440C)($at)
/* 8F16C 8008E56C 3C01802C */  lui        $at, %hi(D_802C4414)
/* 8F170 8008E570 AC224414 */  sw         $v0, %lo(D_802C4414)($at)
/* 8F174 8008E574 0C024118 */  jal        func_80090460
/* 8F178 8008E578 02602821 */   addu      $a1, $s3, $zero
/* 8F17C 8008E57C 3C02802C */  lui        $v0, %hi(D_802C443C)
/* 8F180 8008E580 8C42443C */  lw         $v0, %lo(D_802C443C)($v0)
/* 8F184 8008E584 AC400004 */  sw         $zero, 0x4($v0)
/* 8F188 8008E588 AC400000 */  sw         $zero, 0x0($v0)
/* 8F18C 8008E58C 26C2FFFF */  addiu      $v0, $s6, -0x1
/* 8F190 8008E590 10400018 */  beqz       $v0, .L8008E5F4
/* 8F194 8008E594 00008821 */   addu      $s1, $zero, $zero
/* 8F198 8008E598 0040A021 */  addu       $s4, $v0, $zero
/* 8F19C 8008E59C 24120014 */  addiu      $s2, $zero, 0x14
/* 8F1A0 8008E5A0 00008021 */  addu       $s0, $zero, $zero
.L8008E5A4:
/* 8F1A4 8008E5A4 3C05802C */  lui        $a1, %hi(D_802C443C)
/* 8F1A8 8008E5A8 8CA5443C */  lw         $a1, %lo(D_802C443C)($a1)
/* 8F1AC 8008E5AC 00B22021 */  addu       $a0, $a1, $s2
/* 8F1B0 8008E5B0 0C02412F */  jal        func_800904BC
/* 8F1B4 8008E5B4 00B02821 */   addu      $a1, $a1, $s0
/* 8F1B8 8008E5B8 00002021 */  addu       $a0, $zero, $zero
/* 8F1BC 8008E5BC AFB70010 */  sw         $s7, 0x10($sp)
/* 8F1C0 8008E5C0 8E660014 */  lw         $a2, 0x14($s3)
/* 8F1C4 8008E5C4 00002821 */  addu       $a1, $zero, $zero
/* 8F1C8 8008E5C8 0C024154 */  jal        func_80090550
/* 8F1CC 8008E5CC 24070001 */   addiu     $a3, $zero, 0x1
/* 8F1D0 8008E5D0 3C03802C */  lui        $v1, %hi(D_802C443C)
/* 8F1D4 8008E5D4 8C63443C */  lw         $v1, %lo(D_802C443C)($v1)
/* 8F1D8 8008E5D8 26310001 */  addiu      $s1, $s1, 0x1
/* 8F1DC 8008E5DC 26520014 */  addiu      $s2, $s2, 0x14
/* 8F1E0 8008E5E0 02031821 */  addu       $v1, $s0, $v1
/* 8F1E4 8008E5E4 AC620010 */  sw         $v0, 0x10($v1)
/* 8F1E8 8008E5E8 0234102B */  sltu       $v0, $s1, $s4
/* 8F1EC 8008E5EC 1440FFED */  bnez       $v0, .L8008E5A4
/* 8F1F0 8008E5F0 26100014 */   addiu     $s0, $s0, 0x14
.L8008E5F4:
/* 8F1F4 8008E5F4 00002021 */  addu       $a0, $zero, $zero
/* 8F1F8 8008E5F8 00002821 */  addu       $a1, $zero, $zero
/* 8F1FC 8008E5FC AFB70010 */  sw         $s7, 0x10($sp)
/* 8F200 8008E600 8E660014 */  lw         $a2, 0x14($s3)
/* 8F204 8008E604 3C10802D */  lui        $s0, %hi(D_802CAA78)
/* 8F208 8008E608 2610AA78 */  addiu      $s0, $s0, %lo(D_802CAA78)
/* 8F20C 8008E60C 0C024154 */  jal        func_80090550
/* 8F210 8008E610 24070001 */   addiu     $a3, $zero, 0x1
/* 8F214 8008E614 3C04802C */  lui        $a0, %hi(D_802C443C)
/* 8F218 8008E618 8C84443C */  lw         $a0, %lo(D_802C443C)($a0)
/* 8F21C 8008E61C 00111880 */  sll        $v1, $s1, 2
/* 8F220 8008E620 00711821 */  addu       $v1, $v1, $s1
/* 8F224 8008E624 00008821 */  addu       $s1, $zero, $zero
/* 8F228 8008E628 00031880 */  sll        $v1, $v1, 2
/* 8F22C 8008E62C 00641821 */  addu       $v1, $v1, $a0
/* 8F230 8008E630 AC620010 */  sw         $v0, 0x10($v1)
.L8008E634:
/* 8F234 8008E634 8EA20008 */  lw         $v0, 0x8($s5)
/* 8F238 8008E638 00002021 */  addu       $a0, $zero, $zero
/* 8F23C 8008E63C 00002821 */  addu       $a1, $zero, $zero
/* 8F240 8008E640 000210C0 */  sll        $v0, $v0, 3
/* 8F244 8008E644 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F248 8008E648 8E660014 */  lw         $a2, 0x14($s3)
/* 8F24C 8008E64C 24070001 */  addiu      $a3, $zero, 0x1
/* 8F250 8008E650 0C024154 */  jal        func_80090550
/* 8F254 8008E654 26310001 */   addiu     $s1, $s1, 0x1
/* 8F258 8008E658 AE020000 */  sw         $v0, 0x0($s0)
/* 8F25C 8008E65C 2E220002 */  sltiu      $v0, $s1, 0x2
/* 8F260 8008E660 1440FFF4 */  bnez       $v0, .L8008E634
/* 8F264 8008E664 26100004 */   addiu     $s0, $s0, 0x4
/* 8F268 8008E668 00008821 */  addu       $s1, $zero, $zero
/* 8F26C 8008E66C 24140090 */  addiu      $s4, $zero, 0x90
/* 8F270 8008E670 8EA20008 */  lw         $v0, 0x8($s5)
/* 8F274 8008E674 24120002 */  addiu      $s2, $zero, 0x2
/* 8F278 8008E678 3C10802D */  lui        $s0, %hi(D_802CAA80)
/* 8F27C 8008E67C 2610AA80 */  addiu      $s0, $s0, %lo(D_802CAA80)
/* 8F280 8008E680 3C01802C */  lui        $at, %hi(D_802C4418)
/* 8F284 8008E684 AC224418 */  sw         $v0, %lo(D_802C4418)($at)
.L8008E688:
/* 8F288 8008E688 00002021 */  addu       $a0, $zero, $zero
/* 8F28C 8008E68C AFB40010 */  sw         $s4, 0x10($sp)
/* 8F290 8008E690 8E660014 */  lw         $a2, 0x14($s3)
/* 8F294 8008E694 00002821 */  addu       $a1, $zero, $zero
/* 8F298 8008E698 0C024154 */  jal        func_80090550
/* 8F29C 8008E69C 24070001 */   addiu     $a3, $zero, 0x1
/* 8F2A0 8008E6A0 AE020000 */  sw         $v0, 0x0($s0)
/* 8F2A4 8008E6A4 A4520070 */  sh         $s2, 0x70($v0)
/* 8F2A8 8008E6A8 3C02802C */  lui        $v0, %hi(D_802C4414)
/* 8F2AC 8008E6AC 8C424414 */  lw         $v0, %lo(D_802C4414)($v0)
/* 8F2B0 8008E6B0 8E030000 */  lw         $v1, 0x0($s0)
/* 8F2B4 8008E6B4 00002021 */  addu       $a0, $zero, $zero
/* 8F2B8 8008E6B8 00021080 */  sll        $v0, $v0, 2
/* 8F2BC 8008E6BC AC630074 */  sw         $v1, 0x74($v1)
/* 8F2C0 8008E6C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F2C4 8008E6C4 8E660014 */  lw         $a2, 0x14($s3)
/* 8F2C8 8008E6C8 00002821 */  addu       $a1, $zero, $zero
/* 8F2CC 8008E6CC 0C024154 */  jal        func_80090550
/* 8F2D0 8008E6D0 24070001 */   addiu     $a3, $zero, 0x1
/* 8F2D4 8008E6D4 8E030000 */  lw         $v1, 0x0($s0)
/* 8F2D8 8008E6D8 26310001 */  addiu      $s1, $s1, 0x1
/* 8F2DC 8008E6DC AC620000 */  sw         $v0, 0x0($v1)
/* 8F2E0 8008E6E0 2E220003 */  sltiu      $v0, $s1, 0x3
/* 8F2E4 8008E6E4 1440FFE8 */  bnez       $v0, .L8008E688
/* 8F2E8 8008E6E8 26100004 */   addiu     $s0, $s0, 0x4
/* 8F2EC 8008E6EC 3C10802D */  lui        $s0, %hi(D_802CAC78)
/* 8F2F0 8008E6F0 2610AC78 */  addiu      $s0, $s0, %lo(D_802CAC78)
/* 8F2F4 8008E6F4 02002021 */  addu       $a0, $s0, $zero
/* 8F2F8 8008E6F8 26050018 */  addiu      $a1, $s0, 0x18
/* 8F2FC 8008E6FC 0C0009FC */  jal        func_800027F0
/* 8F300 8008E700 24060008 */   addiu     $a2, $zero, 0x8
/* 8F304 8008E704 2604FFC8 */  addiu      $a0, $s0, -0x38
/* 8F308 8008E708 2605FFE0 */  addiu      $a1, $s0, -0x20
/* 8F30C 8008E70C 0C0009FC */  jal        func_800027F0
/* 8F310 8008E710 24060008 */   addiu     $a2, $zero, 0x8
/* 8F314 8008E714 3C05802C */  lui        $a1, %hi(D_802C4444)
/* 8F318 8008E718 8CA54444 */  lw         $a1, %lo(D_802C4444)($a1)
/* 8F31C 8008E71C 3C04802C */  lui        $a0, %hi(D_802C4420)
/* 8F320 8008E720 24844420 */  addiu      $a0, $a0, %lo(D_802C4420)
/* 8F324 8008E724 0C0009FC */  jal        func_800027F0
/* 8F328 8008E728 00163040 */   sll       $a2, $s6, 1
/* 8F32C 8008E72C 3C02800D */  lui        $v0, %hi(D_800C9D4C)
/* 8F330 8008E730 8C429D4C */  lw         $v0, %lo(D_800C9D4C)($v0)
/* 8F334 8008E734 1440000A */  bnez       $v0, .L8008E760
/* 8F338 8008E738 2604FE18 */   addiu     $a0, $s0, -0x1E8
/* 8F33C 8008E73C 24050003 */  addiu      $a1, $zero, 0x3
/* 8F340 8008E740 3C068009 */  lui        $a2, %hi(func_8008E9A8)
/* 8F344 8008E744 24C6E9A8 */  addiu      $a2, $a2, %lo(func_8008E9A8)
/* 8F348 8008E748 00003821 */  addu       $a3, $zero, $zero
/* 8F34C 8008E74C 3C02802C */  lui        $v0, %hi(D_802C4400)
/* 8F350 8008E750 24424400 */  addiu      $v0, $v0, %lo(D_802C4400)
/* 8F354 8008E754 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F358 8008E758 0C000168 */  jal        osCreateThread
/* 8F35C 8008E75C AFBE0014 */   sw        $fp, 0x14($sp)
.L8008E760:
/* 8F360 8008E760 0C000254 */  jal        osStartThread
/* 8F364 8008E764 2604FE18 */   addiu     $a0, $s0, -0x1E8
/* 8F368 8008E768 24020001 */  addiu      $v0, $zero, 0x1
/* 8F36C 8008E76C 3C01800D */  lui        $at, %hi(D_800C9D4C)
/* 8F370 8008E770 AC229D4C */  sw         $v0, %lo(D_800C9D4C)($at)
/* 8F374 8008E774 8FBF0044 */  lw         $ra, 0x44($sp)
/* 8F378 8008E778 8FBE0040 */  lw         $fp, 0x40($sp)
/* 8F37C 8008E77C 8FB7003C */  lw         $s7, 0x3C($sp)
/* 8F380 8008E780 8FB60038 */  lw         $s6, 0x38($sp)
/* 8F384 8008E784 8FB50034 */  lw         $s5, 0x34($sp)
/* 8F388 8008E788 8FB40030 */  lw         $s4, 0x30($sp)
/* 8F38C 8008E78C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 8F390 8008E790 8FB20028 */  lw         $s2, 0x28($sp)
/* 8F394 8008E794 8FB10024 */  lw         $s1, 0x24($sp)
/* 8F398 8008E798 8FB00020 */  lw         $s0, 0x20($sp)
/* 8F39C 8008E79C 03E00008 */  jr         $ra
/* 8F3A0 8008E7A0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8008E7A4
/* 8F3A4 8008E7A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8F3A8 8008E7A8 AFB20018 */  sw         $s2, 0x18($sp)
/* 8F3AC 8008E7AC 00809021 */  addu       $s2, $a0, $zero
/* 8F3B0 8008E7B0 3C03FF00 */  lui        $v1, (0xFF000000 >> 16)
/* 8F3B4 8008E7B4 02431024 */  and        $v0, $s2, $v1
/* 8F3B8 8008E7B8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 8F3BC 8008E7BC AFB3001C */  sw         $s3, 0x1C($sp)
/* 8F3C0 8008E7C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8F3C4 8008E7C4 14430009 */  bne        $v0, $v1, .L8008E7EC
/* 8F3C8 8008E7C8 AFB00010 */   sw        $s0, 0x10($sp)
/* 8F3CC 8008E7CC 3C13802C */  lui        $s3, %hi(D_802C4450)
/* 8F3D0 8008E7D0 8E734450 */  lw         $s3, %lo(D_802C4450)($s3)
/* 8F3D4 8008E7D4 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 8F3D8 8008E7D8 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 8F3DC 8008E7DC 02429024 */  and        $s2, $s2, $v0
/* 8F3E0 8008E7E0 3C020014 */  lui        $v0, (0x140000 >> 16)
/* 8F3E4 8008E7E4 08023A06 */  j          .L8008E818
/* 8F3E8 8008E7E8 02429021 */   addu      $s2, $s2, $v0
.L8008E7EC:
/* 8F3EC 8008E7EC 3C028031 */  lui        $v0, %hi(D_803128C4)
/* 8F3F0 8008E7F0 8C4228C4 */  lw         $v0, %lo(D_803128C4)($v0)
/* 8F3F4 8008E7F4 30420001 */  andi       $v0, $v0, 0x1
/* 8F3F8 8008E7F8 10400005 */  beqz       $v0, .L8008E810
/* 8F3FC 8008E7FC 00000000 */   nop
/* 8F400 8008E800 0C0006C8 */  jal        osVirtualToPhysical
/* 8F404 8008E804 02402021 */   addu      $a0, $s2, $zero
/* 8F408 8008E808 08023A63 */  j          .L8008E98C
/* 8F40C 8008E80C 00000000 */   nop
.L8008E810:
/* 8F410 8008E810 3C13802C */  lui        $s3, %hi(D_802C444C)
/* 8F414 8008E814 8E73444C */  lw         $s3, %lo(D_802C444C)($s3)
.L8008E818:
/* 8F418 8008E818 3C11802C */  lui        $s1, %hi(D_802C4404)
/* 8F41C 8008E81C 8E314404 */  lw         $s1, %lo(D_802C4404)($s1)
/* 8F420 8008E820 00008021 */  addu       $s0, $zero, $zero
/* 8F424 8008E824 1220000D */  beqz       $s1, .L8008E85C
/* 8F428 8008E828 02452821 */   addu      $a1, $s2, $a1
/* 8F42C 8008E82C 3C04802C */  lui        $a0, %hi(D_802C4448)
/* 8F430 8008E830 8C844448 */  lw         $a0, %lo(D_802C4448)($a0)
.L8008E834:
/* 8F434 8008E834 8E220008 */  lw         $v0, 0x8($s1)
/* 8F438 8008E838 00441821 */  addu       $v1, $v0, $a0
/* 8F43C 8008E83C 0242102B */  sltu       $v0, $s2, $v0
/* 8F440 8008E840 14400006 */  bnez       $v0, .L8008E85C
/* 8F444 8008E844 0065102A */   slt       $v0, $v1, $a1
/* 8F448 8008E848 10400021 */  beqz       $v0, .L8008E8D0
/* 8F44C 8008E84C 02208021 */   addu      $s0, $s1, $zero
/* 8F450 8008E850 8E310000 */  lw         $s1, 0x0($s1)
/* 8F454 8008E854 1620FFF7 */  bnez       $s1, .L8008E834
/* 8F458 8008E858 00000000 */   nop
.L8008E85C:
/* 8F45C 8008E85C 3C03802C */  lui        $v1, %hi(D_802C4408)
/* 8F460 8008E860 24634408 */  addiu      $v1, $v1, %lo(D_802C4408)
/* 8F464 8008E864 8C710000 */  lw         $s1, 0x0($v1)
/* 8F468 8008E868 16200006 */  bnez       $s1, .L8008E884
/* 8F46C 8008E86C 02202021 */   addu      $a0, $s1, $zero
/* 8F470 8008E870 3C04802C */  lui        $a0, %hi(D_802C4404)
/* 8F474 8008E874 0C0006C8 */  jal        osVirtualToPhysical
/* 8F478 8008E878 8C844404 */   lw        $a0, %lo(D_802C4404)($a0)
/* 8F47C 8008E87C 08023A63 */  j          .L8008E98C
/* 8F480 8008E880 00000000 */   nop
.L8008E884:
/* 8F484 8008E884 8E220000 */  lw         $v0, 0x0($s1)
/* 8F488 8008E888 0C024137 */  jal        func_800904DC
/* 8F48C 8008E88C AC620000 */   sw        $v0, 0x0($v1)
/* 8F490 8008E890 12000005 */  beqz       $s0, .L8008E8A8
/* 8F494 8008E894 02202021 */   addu      $a0, $s1, $zero
/* 8F498 8008E898 0C02412F */  jal        func_800904BC
/* 8F49C 8008E89C 02002821 */   addu      $a1, $s0, $zero
/* 8F4A0 8008E8A0 08023A42 */  j          .L8008E908
/* 8F4A4 8008E8A4 00000000 */   nop
.L8008E8A8:
/* 8F4A8 8008E8A8 3C05802C */  lui        $a1, %hi(D_802C4404)
/* 8F4AC 8008E8AC 8CA54404 */  lw         $a1, %lo(D_802C4404)($a1)
/* 8F4B0 8008E8B0 10A00011 */  beqz       $a1, .L8008E8F8
/* 8F4B4 8008E8B4 00A08021 */   addu      $s0, $a1, $zero
/* 8F4B8 8008E8B8 3C01802C */  lui        $at, %hi(D_802C4404)
/* 8F4BC 8008E8BC AC314404 */  sw         $s1, %lo(D_802C4404)($at)
/* 8F4C0 8008E8C0 AE300000 */  sw         $s0, 0x0($s1)
/* 8F4C4 8008E8C4 AE200004 */  sw         $zero, 0x4($s1)
/* 8F4C8 8008E8C8 08023A42 */  j          .L8008E908
/* 8F4CC 8008E8CC AE110004 */   sw        $s1, 0x4($s0)
.L8008E8D0:
/* 8F4D0 8008E8D0 8E240010 */  lw         $a0, 0x10($s1)
/* 8F4D4 8008E8D4 8E220008 */  lw         $v0, 0x8($s1)
/* 8F4D8 8008E8D8 3C03800D */  lui        $v1, %hi(D_800C9D40)
/* 8F4DC 8008E8DC 8C639D40 */  lw         $v1, %lo(D_800C9D40)($v1)
/* 8F4E0 8008E8E0 00922021 */  addu       $a0, $a0, $s2
/* 8F4E4 8008E8E4 00822023 */  subu       $a0, $a0, $v0
/* 8F4E8 8008E8E8 0C0006C8 */  jal        osVirtualToPhysical
/* 8F4EC 8008E8EC AE23000C */   sw        $v1, 0xC($s1)
/* 8F4F0 8008E8F0 08023A63 */  j          .L8008E98C
/* 8F4F4 8008E8F4 00000000 */   nop
.L8008E8F8:
/* 8F4F8 8008E8F8 3C01802C */  lui        $at, %hi(D_802C4404)
/* 8F4FC 8008E8FC AC314404 */  sw         $s1, %lo(D_802C4404)($at)
/* 8F500 8008E900 AE200000 */  sw         $zero, 0x0($s1)
/* 8F504 8008E904 AE200004 */  sw         $zero, 0x4($s1)
.L8008E908:
/* 8F508 8008E908 3C02800D */  lui        $v0, %hi(D_800C9D40)
/* 8F50C 8008E90C 8C429D40 */  lw         $v0, %lo(D_800C9D40)($v0)
/* 8F510 8008E910 3C03800D */  lui        $v1, %hi(D_800C9D44)
/* 8F514 8008E914 8C639D44 */  lw         $v1, %lo(D_800C9D44)($v1)
/* 8F518 8008E918 3C05802C */  lui        $a1, %hi(D_802C4440)
/* 8F51C 8008E91C 8CA54440 */  lw         $a1, %lo(D_802C4440)($a1)
/* 8F520 8008E920 32500001 */  andi       $s0, $s2, 0x1
/* 8F524 8008E924 02509023 */  subu       $s2, $s2, $s0
/* 8F528 8008E928 AE320008 */  sw         $s2, 0x8($s1)
/* 8F52C 8008E92C AE22000C */  sw         $v0, 0xC($s1)
/* 8F530 8008E930 8E310010 */  lw         $s1, 0x10($s1)
/* 8F534 8008E934 02602021 */  addu       $a0, $s3, $zero
/* 8F538 8008E938 24620001 */  addiu      $v0, $v1, 0x1
/* 8F53C 8008E93C 3C01800D */  lui        $at, %hi(D_800C9D44)
/* 8F540 8008E940 AC229D44 */  sw         $v0, %lo(D_800C9D44)($at)
/* 8F544 8008E944 00031040 */  sll        $v0, $v1, 1
/* 8F548 8008E948 00431021 */  addu       $v0, $v0, $v1
/* 8F54C 8008E94C 000210C0 */  sll        $v0, $v0, 3
/* 8F550 8008E950 00A22821 */  addu       $a1, $a1, $v0
/* 8F554 8008E954 A0A00002 */  sb         $zero, 0x2($a1)
/* 8F558 8008E958 3C03802C */  lui        $v1, %hi(D_802C4448)
/* 8F55C 8008E95C 8C634448 */  lw         $v1, %lo(D_802C4448)($v1)
/* 8F560 8008E960 00003021 */  addu       $a2, $zero, $zero
/* 8F564 8008E964 3C02802C */  lui        $v0, %hi(D_802C4420)
/* 8F568 8008E968 24424420 */  addiu      $v0, $v0, %lo(D_802C4420)
/* 8F56C 8008E96C ACA20004 */  sw         $v0, 0x4($a1)
/* 8F570 8008E970 ACB2000C */  sw         $s2, 0xC($a1)
/* 8F574 8008E974 ACB10008 */  sw         $s1, 0x8($a1)
/* 8F578 8008E978 0C0247C8 */  jal        func_80091F20
/* 8F57C 8008E97C ACA30010 */   sw        $v1, 0x10($a1)
/* 8F580 8008E980 0C0006C8 */  jal        osVirtualToPhysical
/* 8F584 8008E984 02202021 */   addu      $a0, $s1, $zero
/* 8F588 8008E988 00501021 */  addu       $v0, $v0, $s0
.L8008E98C:
/* 8F58C 8008E98C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8F590 8008E990 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8F594 8008E994 8FB20018 */  lw         $s2, 0x18($sp)
/* 8F598 8008E998 8FB10014 */  lw         $s1, 0x14($sp)
/* 8F59C 8008E99C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8F5A0 8008E9A0 03E00008 */  jr         $ra
/* 8F5A4 8008E9A4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8008E9A8
/* 8F5A8 8008E9A8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 8F5AC 8008E9AC AFB10024 */  sw         $s1, 0x24($sp)
/* 8F5B0 8008E9B0 00008821 */  addu       $s1, $zero, $zero
/* 8F5B4 8008E9B4 3C04802C */  lui        $a0, %hi(D_802C4438)
/* 8F5B8 8008E9B8 8C844438 */  lw         $a0, %lo(D_802C4438)($a0)
/* 8F5BC 8008E9BC 27A50010 */  addiu      $a1, $sp, 0x10
/* 8F5C0 8008E9C0 3C06802D */  lui        $a2, %hi(D_802CAC40)
/* 8F5C4 8008E9C4 24C6AC40 */  addiu      $a2, $a2, %lo(D_802CAC40)
/* 8F5C8 8008E9C8 AFB00020 */  sw         $s0, 0x20($sp)
/* 8F5CC 8008E9CC 27B00018 */  addiu      $s0, $sp, 0x18
/* 8F5D0 8008E9D0 AFB50034 */  sw         $s5, 0x34($sp)
/* 8F5D4 8008E9D4 24150004 */  addiu      $s5, $zero, 0x4
/* 8F5D8 8008E9D8 AFB40030 */  sw         $s4, 0x30($sp)
/* 8F5DC 8008E9DC 24140001 */  addiu      $s4, $zero, 0x1
/* 8F5E0 8008E9E0 AFB20028 */  sw         $s2, 0x28($sp)
/* 8F5E4 8008E9E4 00C09021 */  addu       $s2, $a2, $zero
/* 8F5E8 8008E9E8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 8F5EC 8008E9EC AFBF0038 */  sw         $ra, 0x38($sp)
/* 8F5F0 8008E9F0 0C002ED8 */  jal        func_8000BB60
/* 8F5F4 8008E9F4 2653FE40 */   addiu     $s3, $s2, -0x1C0
/* 8F5F8 8008E9F8 02402021 */  addu       $a0, $s2, $zero
.L8008E9FC:
/* 8F5FC 8008E9FC 02002821 */  addu       $a1, $s0, $zero
/* 8F600 8008EA00 0C000B3C */  jal        osRecvMesg
/* 8F604 8008EA04 24060001 */   addiu     $a2, $zero, 0x1
/* 8F608 8008EA08 8FA20018 */  lw         $v0, 0x18($sp)
/* 8F60C 8008EA0C 84430000 */  lh         $v1, 0x0($v0)
/* 8F610 8008EA10 10750027 */  beq        $v1, $s5, .L8008EAB0
/* 8F614 8008EA14 28620005 */   slti      $v0, $v1, 0x5
/* 8F618 8008EA18 50400005 */  beql       $v0, $zero, .L8008EA30
/* 8F61C 8008EA1C 2402000A */   addiu     $v0, $zero, 0xA
/* 8F620 8008EA20 10740007 */  beq        $v1, $s4, .L8008EA40
/* 8F624 8008EA24 00000000 */   nop
/* 8F628 8008EA28 08023AAC */  j          .L8008EAB0
/* 8F62C 8008EA2C 00000000 */   nop
.L8008EA30:
/* 8F630 8008EA30 5062001F */  beql       $v1, $v0, .L8008EAB0
/* 8F634 8008EA34 24110001 */   addiu     $s1, $zero, 0x1
/* 8F638 8008EA38 08023AAC */  j          .L8008EAB0
/* 8F63C 8008EA3C 00000000 */   nop
.L8008EA40:
/* 8F640 8008EA40 3C03800D */  lui        $v1, %hi(D_800C9D40)
/* 8F644 8008EA44 8C639D40 */  lw         $v1, %lo(D_800C9D40)($v1)
/* 8F648 8008EA48 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* 8F64C 8008EA4C 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* 8F650 8008EA50 00620019 */  multu      $v1, $v0
/* 8F654 8008EA54 3C05800D */  lui        $a1, %hi(D_800C9D50)
/* 8F658 8008EA58 8CA59D50 */  lw         $a1, %lo(D_800C9D50)($a1)
/* 8F65C 8008EA5C 00003810 */  mfhi       $a3
/* 8F660 8008EA60 00072042 */  srl        $a0, $a3, 1
/* 8F664 8008EA64 00041040 */  sll        $v0, $a0, 1
/* 8F668 8008EA68 00441021 */  addu       $v0, $v0, $a0
/* 8F66C 8008EA6C 00621823 */  subu       $v1, $v1, $v0
/* 8F670 8008EA70 00031880 */  sll        $v1, $v1, 2
/* 8F674 8008EA74 00731821 */  addu       $v1, $v1, $s3
/* 8F678 8008EA78 0C023ABA */  jal        func_8008EAE8
/* 8F67C 8008EA7C 8C640000 */   lw        $a0, 0x0($v1)
/* 8F680 8008EA80 1040000B */  beqz       $v0, .L8008EAB0
/* 8F684 8008EA84 26440038 */   addiu     $a0, $s2, 0x38
/* 8F688 8008EA88 02002821 */  addu       $a1, $s0, $zero
/* 8F68C 8008EA8C 0C000B3C */  jal        osRecvMesg
/* 8F690 8008EA90 24060001 */   addiu     $a2, $zero, 0x1
/* 8F694 8008EA94 8FA20018 */  lw         $v0, 0x18($sp)
/* 8F698 8008EA98 0C023B28 */  jal        func_8008ECA0
/* 8F69C 8008EA9C 8C440004 */   lw        $a0, 0x4($v0)
/* 8F6A0 8008EAA0 8FA20018 */  lw         $v0, 0x18($sp)
/* 8F6A4 8008EAA4 8C420004 */  lw         $v0, 0x4($v0)
/* 8F6A8 8008EAA8 3C01800D */  lui        $at, %hi(D_800C9D50)
/* 8F6AC 8008EAAC AC229D50 */  sw         $v0, %lo(D_800C9D50)($at)
.L8008EAB0:
/* 8F6B0 8008EAB0 1220FFD2 */  beqz       $s1, .L8008E9FC
/* 8F6B4 8008EAB4 02402021 */   addu      $a0, $s2, $zero
/* 8F6B8 8008EAB8 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8F6BC 8008EABC 0C024123 */  jal        func_8009048C
/* 8F6C0 8008EAC0 2484ACB0 */   addiu     $a0, $a0, %lo(D_802CACB0)
/* 8F6C4 8008EAC4 8FBF0038 */  lw         $ra, 0x38($sp)
/* 8F6C8 8008EAC8 8FB50034 */  lw         $s5, 0x34($sp)
/* 8F6CC 8008EACC 8FB40030 */  lw         $s4, 0x30($sp)
/* 8F6D0 8008EAD0 8FB3002C */  lw         $s3, 0x2C($sp)
/* 8F6D4 8008EAD4 8FB20028 */  lw         $s2, 0x28($sp)
/* 8F6D8 8008EAD8 8FB10024 */  lw         $s1, 0x24($sp)
/* 8F6DC 8008EADC 8FB00020 */  lw         $s0, 0x20($sp)
/* 8F6E0 8008EAE0 03E00008 */  jr         $ra
/* 8F6E4 8008EAE4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8008EAE8
/* 8F6E8 8008EAE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8F6EC 8008EAEC AFB00020 */  sw         $s0, 0x20($sp)
/* 8F6F0 8008EAF0 00808021 */  addu       $s0, $a0, $zero
/* 8F6F4 8008EAF4 AFB10024 */  sw         $s1, 0x24($sp)
/* 8F6F8 8008EAF8 00A08821 */  addu       $s1, $a1, $zero
/* 8F6FC 8008EAFC AFBF002C */  sw         $ra, 0x2C($sp)
/* 8F700 8008EB00 0C023B48 */  jal        func_8008ED20
/* 8F704 8008EB04 AFB20028 */   sw        $s2, 0x28($sp)
/* 8F708 8008EB08 8E040000 */  lw         $a0, 0x0($s0)
/* 8F70C 8008EB0C 0C0006C8 */  jal        osVirtualToPhysical
/* 8F710 8008EB10 00000000 */   nop
/* 8F714 8008EB14 12200005 */  beqz       $s1, .L8008EB2C
/* 8F718 8008EB18 00409021 */   addu      $s2, $v0, $zero
/* 8F71C 8008EB1C 86250004 */  lh         $a1, 0x4($s1)
/* 8F720 8008EB20 8E240000 */  lw         $a0, 0x0($s1)
/* 8F724 8008EB24 0C0244F8 */  jal        func_800913E0
/* 8F728 8008EB28 00052880 */   sll       $a1, $a1, 2
.L8008EB2C:
/* 8F72C 8008EB2C 0C0244A8 */  jal        func_800912A0
/* 8F730 8008EB30 00000000 */   nop
/* 8F734 8008EB34 3C03802C */  lui        $v1, %hi(D_802C4410)
/* 8F738 8008EB38 8C634410 */  lw         $v1, %lo(D_802C4410)($v1)
/* 8F73C 8008EB3C 00021082 */  srl        $v0, $v0, 2
/* 8F740 8008EB40 00621823 */  subu       $v1, $v1, $v0
/* 8F744 8008EB44 3C02802C */  lui        $v0, %hi(D_802C440C)
/* 8F748 8008EB48 8C42440C */  lw         $v0, %lo(D_802C440C)($v0)
/* 8F74C 8008EB4C 24630060 */  addiu      $v1, $v1, 0x60
/* 8F750 8008EB50 3063FFF0 */  andi       $v1, $v1, 0xFFF0
/* 8F754 8008EB54 A6030004 */  sh         $v1, 0x4($s0)
/* 8F758 8008EB58 00031C00 */  sll        $v1, $v1, 16
/* 8F75C 8008EB5C 00031C03 */  sra        $v1, $v1, 16
/* 8F760 8008EB60 0062182B */  sltu       $v1, $v1, $v0
/* 8F764 8008EB64 54600001 */  bnel       $v1, $zero, .L8008EB6C
/* 8F768 8008EB68 A6020004 */   sh        $v0, 0x4($s0)
.L8008EB6C:
/* 8F76C 8008EB6C 3C02800D */  lui        $v0, %hi(D_800C9D48)
/* 8F770 8008EB70 8C429D48 */  lw         $v0, %lo(D_800C9D48)($v0)
/* 8F774 8008EB74 86070004 */  lh         $a3, 0x4($s0)
/* 8F778 8008EB78 00021080 */  sll        $v0, $v0, 2
/* 8F77C 8008EB7C 3C04802D */  lui        $a0, %hi(D_802CAA78)
/* 8F780 8008EB80 00822021 */  addu       $a0, $a0, $v0
/* 8F784 8008EB84 8C84AA78 */  lw         $a0, %lo(D_802CAA78)($a0)
/* 8F788 8008EB88 27A50010 */  addiu      $a1, $sp, 0x10
/* 8F78C 8008EB8C 0C02421B */  jal        func_8009086C
/* 8F790 8008EB90 02403021 */   addu      $a2, $s2, $zero
/* 8F794 8008EB94 8FA30010 */  lw         $v1, 0x10($sp)
/* 8F798 8008EB98 3C11802D */  lui        $s1, %hi(D_802CAA78)
/* 8F79C 8008EB9C 2631AA78 */  addiu      $s1, $s1, %lo(D_802CAA78)
/* 8F7A0 8008EBA0 10600038 */  beqz       $v1, .L8008EC84
/* 8F7A4 8008EBA4 00403021 */   addu      $a2, $v0, $zero
/* 8F7A8 8008EBA8 3C04802C */  lui        $a0, %hi(D_802C4438)
/* 8F7AC 8008EBAC 8C844438 */  lw         $a0, %lo(D_802C4438)($a0)
/* 8F7B0 8008EBB0 3C03800D */  lui        $v1, %hi(D_800C9D48)
/* 8F7B4 8008EBB4 8C639D48 */  lw         $v1, %lo(D_800C9D48)($v1)
/* 8F7B8 8008EBB8 26220200 */  addiu      $v0, $s1, 0x200
/* 8F7BC 8008EBBC AE020058 */  sw         $v0, 0x58($s0)
/* 8F7C0 8008EBC0 26020070 */  addiu      $v0, $s0, 0x70
/* 8F7C4 8008EBC4 24050002 */  addiu      $a1, $zero, 0x2
/* 8F7C8 8008EBC8 AE000008 */  sw         $zero, 0x8($s0)
/* 8F7CC 8008EBCC AE02005C */  sw         $v0, 0x5C($s0)
/* 8F7D0 8008EBD0 AE050010 */  sw         $a1, 0x10($s0)
/* 8F7D4 8008EBD4 00031880 */  sll        $v1, $v1, 2
/* 8F7D8 8008EBD8 00711821 */  addu       $v1, $v1, $s1
/* 8F7DC 8008EBDC 8C620000 */  lw         $v0, 0x0($v1)
/* 8F7E0 8008EBE0 AE020048 */  sw         $v0, 0x48($s0)
/* 8F7E4 8008EBE4 8C630000 */  lw         $v1, 0x0($v1)
/* 8F7E8 8008EBE8 AE050018 */  sw         $a1, 0x18($s0)
/* 8F7EC 8008EBEC 3C05800A */  lui        $a1, %hi(func_8009BFB0)
/* 8F7F0 8008EBF0 24A5BFB0 */  addiu      $a1, $a1, %lo(func_8009BFB0)
/* 8F7F4 8008EBF4 3C02800A */  lui        $v0, %hi(D_8009C080)
/* 8F7F8 8008EBF8 2442C080 */  addiu      $v0, $v0, %lo(D_8009C080)
/* 8F7FC 8008EBFC 00451023 */  subu       $v0, $v0, $a1
/* 8F800 8008EC00 AE020024 */  sw         $v0, 0x24($s0)
/* 8F804 8008EC04 3C02800A */  lui        $v0, %hi(D_8009F870)
/* 8F808 8008EC08 2442F870 */  addiu      $v0, $v0, %lo(D_8009F870)
/* 8F80C 8008EC0C AE020028 */  sw         $v0, 0x28($s0)
/* 8F810 8008EC10 3C02800D */  lui        $v0, %hi(D_800CCC10)
/* 8F814 8008EC14 2442CC10 */  addiu      $v0, $v0, %lo(D_800CCC10)
/* 8F818 8008EC18 AE020030 */  sw         $v0, 0x30($s0)
/* 8F81C 8008EC1C 24020800 */  addiu      $v0, $zero, 0x800
/* 8F820 8008EC20 AE050020 */  sw         $a1, 0x20($s0)
/* 8F824 8008EC24 AE00001C */  sw         $zero, 0x1C($s0)
/* 8F828 8008EC28 AE020034 */  sw         $v0, 0x34($s0)
/* 8F82C 8008EC2C AE000038 */  sw         $zero, 0x38($s0)
/* 8F830 8008EC30 AE00003C */  sw         $zero, 0x3C($s0)
/* 8F834 8008EC34 AE000040 */  sw         $zero, 0x40($s0)
/* 8F838 8008EC38 AE000044 */  sw         $zero, 0x44($s0)
/* 8F83C 8008EC3C AE000050 */  sw         $zero, 0x50($s0)
/* 8F840 8008EC40 AE000054 */  sw         $zero, 0x54($s0)
/* 8F844 8008EC44 00C31823 */  subu       $v1, $a2, $v1
/* 8F848 8008EC48 000318C3 */  sra        $v1, $v1, 3
/* 8F84C 8008EC4C 000318C0 */  sll        $v1, $v1, 3
/* 8F850 8008EC50 0C002F12 */  jal        func_8000BC48
/* 8F854 8008EC54 AE03004C */   sw        $v1, 0x4C($s0)
/* 8F858 8008EC58 00402021 */  addu       $a0, $v0, $zero
/* 8F85C 8008EC5C 26050008 */  addiu      $a1, $s0, 0x8
/* 8F860 8008EC60 0C000B9C */  jal        osSendMesg
/* 8F864 8008EC64 24060001 */   addiu     $a2, $zero, 0x1
/* 8F868 8008EC68 3C03800D */  lui        $v1, %hi(D_800C9D48)
/* 8F86C 8008EC6C 8C639D48 */  lw         $v1, %lo(D_800C9D48)($v1)
/* 8F870 8008EC70 38630001 */  xori       $v1, $v1, 0x1
/* 8F874 8008EC74 3C01800D */  lui        $at, %hi(D_800C9D48)
/* 8F878 8008EC78 AC239D48 */  sw         $v1, %lo(D_800C9D48)($at)
/* 8F87C 8008EC7C 08023B22 */  j          .L8008EC88
/* 8F880 8008EC80 24020001 */   addiu     $v0, $zero, 0x1
.L8008EC84:
/* 8F884 8008EC84 00001021 */  addu       $v0, $zero, $zero
.L8008EC88:
/* 8F888 8008EC88 8FBF002C */  lw         $ra, 0x2C($sp)
/* 8F88C 8008EC8C 8FB20028 */  lw         $s2, 0x28($sp)
/* 8F890 8008EC90 8FB10024 */  lw         $s1, 0x24($sp)
/* 8F894 8008EC94 8FB00020 */  lw         $s0, 0x20($sp)
/* 8F898 8008EC98 03E00008 */  jr         $ra
/* 8F89C 8008EC9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008ECA0
/* 8F8A0 8008ECA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F8A4 8008ECA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8F8A8 8008ECA8 0C0244A8 */  jal        func_800912A0
/* 8F8AC 8008ECAC 00000000 */   nop
/* 8F8B0 8008ECB0 00021082 */  srl        $v0, $v0, 2
/* 8F8B4 8008ECB4 14400007 */  bnez       $v0, .L8008ECD4
/* 8F8B8 8008ECB8 00000000 */   nop
/* 8F8BC 8008ECBC 3C02800D */  lui        $v0, %hi(D_800C9D54)
/* 8F8C0 8008ECC0 8C429D54 */  lw         $v0, %lo(D_800C9D54)($v0)
/* 8F8C4 8008ECC4 14400003 */  bnez       $v0, .L8008ECD4
/* 8F8C8 8008ECC8 00000000 */   nop
/* 8F8CC 8008ECCC 3C01800D */  lui        $at, %hi(D_800C9D54)
/* 8F8D0 8008ECD0 AC209D54 */  sw         $zero, %lo(D_800C9D54)($at)
.L8008ECD4:
/* 8F8D4 8008ECD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8F8D8 8008ECD8 03E00008 */  jr         $ra
/* 8F8DC 8008ECDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008ECE0
/* 8F8E0 8008ECE0 3C05802C */  lui        $a1, %hi(D_802C4400)
/* 8F8E4 8008ECE4 24A54400 */  addiu      $a1, $a1, %lo(D_802C4400)
/* 8F8E8 8008ECE8 90A20000 */  lbu        $v0, 0x0($a1)
/* 8F8EC 8008ECEC 14400008 */  bnez       $v0, .L8008ED10
/* 8F8F0 8008ECF0 24020001 */   addiu     $v0, $zero, 0x1
/* 8F8F4 8008ECF4 3C03802C */  lui        $v1, %hi(D_802C443C)
/* 8F8F8 8008ECF8 8C63443C */  lw         $v1, %lo(D_802C443C)($v1)
/* 8F8FC 8008ECFC 3C01802C */  lui        $at, %hi(D_802C4404)
/* 8F900 8008ED00 AC204404 */  sw         $zero, %lo(D_802C4404)($at)
/* 8F904 8008ED04 A0A20000 */  sb         $v0, 0x0($a1)
/* 8F908 8008ED08 3C01802C */  lui        $at, %hi(D_802C4408)
/* 8F90C 8008ED0C AC234408 */  sw         $v1, %lo(D_802C4408)($at)
.L8008ED10:
/* 8F910 8008ED10 3C028009 */  lui        $v0, %hi(func_8008E7A4)
/* 8F914 8008ED14 2442E7A4 */  addiu      $v0, $v0, %lo(func_8008E7A4)
/* 8F918 8008ED18 03E00008 */  jr         $ra
/* 8F91C 8008ED1C AC850000 */   sw        $a1, 0x0($a0)

glabel func_8008ED20
/* 8F920 8008ED20 3C02800D */  lui        $v0, %hi(D_800C9D44)
/* 8F924 8008ED24 8C429D44 */  lw         $v0, %lo(D_800C9D44)($v0)
/* 8F928 8008ED28 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8F92C 8008ED2C AFB00020 */  sw         $s0, 0x20($sp)
/* 8F930 8008ED30 00008021 */  addu       $s0, $zero, $zero
/* 8F934 8008ED34 AFBF002C */  sw         $ra, 0x2C($sp)
/* 8F938 8008ED38 AFB20028 */  sw         $s2, 0x28($sp)
/* 8F93C 8008ED3C 1040000C */  beqz       $v0, .L8008ED70
/* 8F940 8008ED40 AFB10024 */   sw        $s1, 0x24($sp)
.L8008ED44:
/* 8F944 8008ED44 3C04802C */  lui        $a0, %hi(D_802C4420)
/* 8F948 8008ED48 24844420 */  addiu      $a0, $a0, %lo(D_802C4420)
/* 8F94C 8008ED4C 27A50010 */  addiu      $a1, $sp, 0x10
/* 8F950 8008ED50 0C000B3C */  jal        osRecvMesg
/* 8F954 8008ED54 00003021 */   addu      $a2, $zero, $zero
/* 8F958 8008ED58 3C02800D */  lui        $v0, %hi(D_800C9D44)
/* 8F95C 8008ED5C 8C429D44 */  lw         $v0, %lo(D_800C9D44)($v0)
/* 8F960 8008ED60 26100001 */  addiu      $s0, $s0, 0x1
/* 8F964 8008ED64 0202102B */  sltu       $v0, $s0, $v0
/* 8F968 8008ED68 1440FFF6 */  bnez       $v0, .L8008ED44
/* 8F96C 8008ED6C 00000000 */   nop
.L8008ED70:
/* 8F970 8008ED70 3C02802C */  lui        $v0, %hi(D_802C4404)
/* 8F974 8008ED74 24424404 */  addiu      $v0, $v0, %lo(D_802C4404)
/* 8F978 8008ED78 8C500000 */  lw         $s0, 0x0($v0)
/* 8F97C 8008ED7C 1200001B */  beqz       $s0, .L8008EDEC
/* 8F980 8008ED80 00000000 */   nop
/* 8F984 8008ED84 00409021 */  addu       $s2, $v0, $zero
.L8008ED88:
/* 8F988 8008ED88 8E02000C */  lw         $v0, 0xC($s0)
/* 8F98C 8008ED8C 3C03800D */  lui        $v1, %hi(D_800C9D40)
/* 8F990 8008ED90 8C639D40 */  lw         $v1, %lo(D_800C9D40)($v1)
/* 8F994 8008ED94 8E110000 */  lw         $s1, 0x0($s0)
/* 8F998 8008ED98 24420001 */  addiu      $v0, $v0, 0x1
/* 8F99C 8008ED9C 0043102B */  sltu       $v0, $v0, $v1
/* 8F9A0 8008EDA0 50400010 */  beql       $v0, $zero, .L8008EDE4
/* 8F9A4 8008EDA4 02208021 */   addu      $s0, $s1, $zero
/* 8F9A8 8008EDA8 8E420000 */  lw         $v0, 0x0($s2)
/* 8F9AC 8008EDAC 50500001 */  beql       $v0, $s0, .L8008EDB4
/* 8F9B0 8008EDB0 AE510000 */   sw        $s1, 0x0($s2)
.L8008EDB4:
/* 8F9B4 8008EDB4 0C024137 */  jal        func_800904DC
/* 8F9B8 8008EDB8 02002021 */   addu      $a0, $s0, $zero
/* 8F9BC 8008EDBC 8E450004 */  lw         $a1, 0x4($s2)
/* 8F9C0 8008EDC0 50A00005 */  beql       $a1, $zero, .L8008EDD8
/* 8F9C4 8008EDC4 AE500004 */   sw        $s0, 0x4($s2)
/* 8F9C8 8008EDC8 0C02412F */  jal        func_800904BC
/* 8F9CC 8008EDCC 02002021 */   addu      $a0, $s0, $zero
/* 8F9D0 8008EDD0 08023B79 */  j          .L8008EDE4
/* 8F9D4 8008EDD4 02208021 */   addu      $s0, $s1, $zero
.L8008EDD8:
/* 8F9D8 8008EDD8 AE000000 */  sw         $zero, 0x0($s0)
/* 8F9DC 8008EDDC AE000004 */  sw         $zero, 0x4($s0)
/* 8F9E0 8008EDE0 02208021 */  addu       $s0, $s1, $zero
.L8008EDE4:
/* 8F9E4 8008EDE4 1600FFE8 */  bnez       $s0, .L8008ED88
/* 8F9E8 8008EDE8 00000000 */   nop
.L8008EDEC:
/* 8F9EC 8008EDEC 3C02800D */  lui        $v0, %hi(D_800C9D40)
/* 8F9F0 8008EDF0 8C429D40 */  lw         $v0, %lo(D_800C9D40)($v0)
/* 8F9F4 8008EDF4 3C01800D */  lui        $at, %hi(D_800C9D44)
/* 8F9F8 8008EDF8 AC209D44 */  sw         $zero, %lo(D_800C9D44)($at)
/* 8F9FC 8008EDFC 24420001 */  addiu      $v0, $v0, 0x1
/* 8FA00 8008EE00 3C01800D */  lui        $at, %hi(D_800C9D40)
/* 8FA04 8008EE04 AC229D40 */  sw         $v0, %lo(D_800C9D40)($at)
/* 8FA08 8008EE08 8FBF002C */  lw         $ra, 0x2C($sp)
/* 8FA0C 8008EE0C 8FB20028 */  lw         $s2, 0x28($sp)
/* 8FA10 8008EE10 8FB10024 */  lw         $s1, 0x24($sp)
/* 8FA14 8008EE14 8FB00020 */  lw         $s0, 0x20($sp)
/* 8FA18 8008EE18 03E00008 */  jr         $ra
/* 8FA1C 8008EE1C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008EE20
/* 8FA20 8008EE20 03E00008 */  jr         $ra
/* 8FA24 8008EE24 46006004 */   sqrt.s    $f0, $f12
/* 8FA28 8008EE28 00000000 */  nop
/* 8FA2C 8008EE2C 00000000 */  nop

glabel func_8008EE30
/* 8FA30 8008EE30 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 8FA34 8008EE34 8FA20000 */  lw         $v0, 0x0($sp)
/* 8FA38 8008EE38 00021583 */  sra        $v0, $v0, 22
/* 8FA3C 8008EE3C 304201FF */  andi       $v0, $v0, 0x1FF
/* 8FA40 8008EE40 28420136 */  slti       $v0, $v0, 0x136
/* 8FA44 8008EE44 10400043 */  beqz       $v0, .L8008EF54
/* 8FA48 8008EE48 00000000 */   nop
/* 8FA4C 8008EE4C 44800000 */  mtc1       $zero, $f0
/* 8FA50 8008EE50 00000000 */  nop
/* 8FA54 8008EE54 460C003C */  c.lt.s     $f0, $f12
/* 8FA58 8008EE58 00000000 */  nop
/* 8FA5C 8008EE5C 00000000 */  nop
/* 8FA60 8008EE60 45010002 */  bc1t       .L8008EE6C
/* 8FA64 8008EE64 46006106 */   mov.s     $f4, $f12
/* 8FA68 8008EE68 46006107 */  neg.s      $f4, $f12
.L8008EE6C:
/* 8FA6C 8008EE6C 3C01800D */  lui        $at, %hi(D_800D6AE8)
/* 8FA70 8008EE70 D4206AE8 */  ldc1       $f0, %lo(D_800D6AE8)($at)
/* 8FA74 8008EE74 460021A1 */  cvt.d.s    $f6, $f4
/* 8FA78 8008EE78 46203002 */  mul.d      $f0, $f6, $f0
/* 8FA7C 8008EE7C 3C01800D */  lui        $at, %hi(D_800D6B08)
/* 8FA80 8008EE80 D4226B08 */  ldc1       $f2, %lo(D_800D6B08)($at)
/* 8FA84 8008EE84 46220100 */  add.d      $f4, $f0, $f2
/* 8FA88 8008EE88 44800000 */  mtc1       $zero, $f0
/* 8FA8C 8008EE8C 44800800 */  mtc1       $zero, $f1
/* 8FA90 8008EE90 00000000 */  nop
/* 8FA94 8008EE94 4624003E */  c.le.d     $f0, $f4
/* 8FA98 8008EE98 00000000 */  nop
/* 8FA9C 8008EE9C 00000000 */  nop
/* 8FAA0 8008EEA0 45020002 */  bc1fl      .L8008EEAC
/* 8FAA4 8008EEA4 46222001 */   sub.d     $f0, $f4, $f2
/* 8FAA8 8008EEA8 46222000 */  add.d      $f0, $f4, $f2
.L8008EEAC:
/* 8FAAC 8008EEAC 4620008D */  trunc.w.d  $f2, $f0
/* 8FAB0 8008EEB0 44031000 */  mfc1       $v1, $f2
/* 8FAB4 8008EEB4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 8FAB8 8008EEB8 D4206B10 */  ldc1       $f0, %lo(D_800D6B10)($at)
/* 8FABC 8008EEBC 44832000 */  mtc1       $v1, $f4
/* 8FAC0 8008EEC0 00000000 */  nop
/* 8FAC4 8008EEC4 46802121 */  cvt.d.w    $f4, $f4
/* 8FAC8 8008EEC8 46202101 */  sub.d      $f4, $f4, $f0
/* 8FACC 8008EECC 3C01800D */  lui        $at, %hi(D_800D6AF0)
/* 8FAD0 8008EED0 D4226AF0 */  ldc1       $f2, %lo(D_800D6AF0)($at)
/* 8FAD4 8008EED4 46222082 */  mul.d      $f2, $f4, $f2
/* 8FAD8 8008EED8 3C01800D */  lui        $at, %hi(D_800D6AF8)
/* 8FADC 8008EEDC D4206AF8 */  ldc1       $f0, %lo(D_800D6AF8)($at)
/* 8FAE0 8008EEE0 46202002 */  mul.d      $f0, $f4, $f0
/* 8FAE4 8008EEE4 46223181 */  sub.d      $f6, $f6, $f2
/* 8FAE8 8008EEE8 46203181 */  sub.d      $f6, $f6, $f0
/* 8FAEC 8008EEEC 46263102 */  mul.d      $f4, $f6, $f6
/* 8FAF0 8008EEF0 3C01800D */  lui        $at, %hi(D_800D6AE0)
/* 8FAF4 8008EEF4 D4206AE0 */  ldc1       $f0, %lo(D_800D6AE0)($at)
/* 8FAF8 8008EEF8 46240002 */  mul.d      $f0, $f0, $f4
/* 8FAFC 8008EEFC 3C01800D */  lui        $at, %hi(D_800D6AD8)
/* 8FB00 8008EF00 D4226AD8 */  ldc1       $f2, %lo(D_800D6AD8)($at)
/* 8FB04 8008EF04 46220000 */  add.d      $f0, $f0, $f2
/* 8FB08 8008EF08 46240002 */  mul.d      $f0, $f0, $f4
/* 8FB0C 8008EF0C 3C01800D */  lui        $at, %hi(D_800D6AD0)
/* 8FB10 8008EF10 D4226AD0 */  ldc1       $f2, %lo(D_800D6AD0)($at)
/* 8FB14 8008EF14 46220000 */  add.d      $f0, $f0, $f2
/* 8FB18 8008EF18 46240002 */  mul.d      $f0, $f0, $f4
/* 8FB1C 8008EF1C 00000000 */  nop
/* 8FB20 8008EF20 46243102 */  mul.d      $f4, $f6, $f4
/* 8FB24 8008EF24 3C01800D */  lui        $at, %hi(D_800D6AC8)
/* 8FB28 8008EF28 D4226AC8 */  ldc1       $f2, %lo(D_800D6AC8)($at)
/* 8FB2C 8008EF2C 46220000 */  add.d      $f0, $f0, $f2
/* 8FB30 8008EF30 46202102 */  mul.d      $f4, $f4, $f0
/* 8FB34 8008EF34 30620001 */  andi       $v0, $v1, 0x1
/* 8FB38 8008EF38 14400003 */  bnez       $v0, .L8008EF48
/* 8FB3C 8008EF3C 46243000 */   add.d     $f0, $f6, $f4
/* 8FB40 8008EF40 08023BDE */  j          .L8008EF78
/* 8FB44 8008EF44 46200020 */   cvt.s.d   $f0, $f0
.L8008EF48:
/* 8FB48 8008EF48 46200020 */  cvt.s.d    $f0, $f0
/* 8FB4C 8008EF4C 08023BDE */  j          .L8008EF78
/* 8FB50 8008EF50 46000007 */   neg.s     $f0, $f0
.L8008EF54:
/* 8FB54 8008EF54 460C6032 */  c.eq.s     $f12, $f12
/* 8FB58 8008EF58 00000000 */  nop
/* 8FB5C 8008EF5C 45000004 */  bc1f       .L8008EF70
/* 8FB60 8008EF60 00000000 */   nop
/* 8FB64 8008EF64 3C01800D */  lui        $at, %hi(D_800D6B00)
/* 8FB68 8008EF68 08023BDE */  j          .L8008EF78
/* 8FB6C 8008EF6C C4206B00 */   lwc1      $f0, %lo(D_800D6B00)($at)
.L8008EF70:
/* 8FB70 8008EF70 3C01800D */  lui        $at, %hi(D_800D6C40)
/* 8FB74 8008EF74 C4206C40 */  lwc1       $f0, %lo(D_800D6C40)($at)
.L8008EF78:
/* 8FB78 8008EF78 03E00008 */  jr         $ra
/* 8FB7C 8008EF7C 00000000 */   nop

glabel func_8008EF80
/* 8FB80 8008EF80 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 8FB84 8008EF84 AFB30024 */  sw         $s3, 0x24($sp)
/* 8FB88 8008EF88 8FB3008C */  lw         $s3, 0x8C($sp)
/* 8FB8C 8008EF8C AFB20020 */  sw         $s2, 0x20($sp)
/* 8FB90 8008EF90 8FB20090 */  lw         $s2, 0x90($sp)
/* 8FB94 8008EF94 F7BA0058 */  sdc1       $f26, 0x58($sp)
/* 8FB98 8008EF98 C7BA0094 */  lwc1       $f26, 0x94($sp)
/* 8FB9C 8008EF9C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 8FBA0 8008EFA0 C7B40080 */  lwc1       $f20, 0x80($sp)
/* 8FBA4 8008EFA4 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 8FBA8 8008EFA8 C7B60084 */  lwc1       $f22, 0x84($sp)
/* 8FBAC 8008EFAC F7B80050 */  sdc1       $f24, 0x50($sp)
/* 8FBB0 8008EFB0 C7B80088 */  lwc1       $f24, 0x88($sp)
/* 8FBB4 8008EFB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 8FBB8 8008EFB8 00808021 */  addu       $s0, $a0, $zero
/* 8FBBC 8008EFBC AFB40028 */  sw         $s4, 0x28($sp)
/* 8FBC0 8008EFC0 00A0A021 */  addu       $s4, $a1, $zero
/* 8FBC4 8008EFC4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 8FBC8 8008EFC8 00C0A821 */  addu       $s5, $a2, $zero
/* 8FBCC 8008EFCC AFBE0038 */  sw         $fp, 0x38($sp)
/* 8FBD0 8008EFD0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 8FBD4 8008EFD4 AFB70034 */  sw         $s7, 0x34($sp)
/* 8FBD8 8008EFD8 AFB60030 */  sw         $s6, 0x30($sp)
/* 8FBDC 8008EFDC AFB1001C */  sw         $s1, 0x1C($sp)
/* 8FBE0 8008EFE0 F7BE0068 */  sdc1       $f30, 0x68($sp)
/* 8FBE4 8008EFE4 F7BC0060 */  sdc1       $f28, 0x60($sp)
/* 8FBE8 8008EFE8 0C023DF4 */  jal        func_8008F7D0
/* 8FBEC 8008EFEC 00E0F021 */   addu      $fp, $a3, $zero
/* 8FBF0 8008EFF0 44947000 */  mtc1       $s4, $f14
/* 8FBF4 8008EFF4 00000000 */  nop
/* 8FBF8 8008EFF8 460EA701 */  sub.s      $f28, $f20, $f14
/* 8FBFC 8008EFFC 44959000 */  mtc1       $s5, $f18
/* 8FC00 8008F000 461CE002 */  mul.s      $f0, $f28, $f28
/* 8FC04 8008F004 4612B781 */  sub.s      $f30, $f22, $f18
/* 8FC08 8008F008 449E7000 */  mtc1       $fp, $f14
/* 8FC0C 8008F00C 00000000 */  nop
/* 8FC10 8008F010 460EC381 */  sub.s      $f14, $f24, $f14
/* 8FC14 8008F014 461EF102 */  mul.s      $f4, $f30, $f30
/* 8FC18 8008F018 44117000 */  mfc1       $s1, $f14
/* 8FC1C 8008F01C 00000000 */  nop
/* 8FC20 8008F020 44919000 */  mtc1       $s1, $f18
/* 8FC24 8008F024 00000000 */  nop
/* 8FC28 8008F028 46127082 */  mul.s      $f2, $f14, $f18
/* 8FC2C 8008F02C 46040000 */  add.s      $f0, $f0, $f4
/* 8FC30 8008F030 46020300 */  add.s      $f12, $f0, $f2
/* 8FC34 8008F034 46006084 */  sqrt.s     $f2, $f12
/* 8FC38 8008F038 46021032 */  c.eq.s     $f2, $f2
/* 8FC3C 8008F03C 00000000 */  nop
/* 8FC40 8008F040 45010004 */  bc1t       .L8008F054
/* 8FC44 8008F044 00000000 */   nop
/* 8FC48 8008F048 0C023B88 */  jal        func_8008EE20
/* 8FC4C 8008F04C 00000000 */   nop
/* 8FC50 8008F050 46000086 */  mov.s      $f2, $f0
.L8008F054:
/* 8FC54 8008F054 3C01800D */  lui        $at, %hi(D_800D6B20)
/* 8FC58 8008F058 D4206B20 */  ldc1       $f0, %lo(D_800D6B20)($at)
/* 8FC5C 8008F05C 460010A1 */  cvt.d.s    $f2, $f2
/* 8FC60 8008F060 46220003 */  div.d      $f0, $f0, $f2
/* 8FC64 8008F064 46200420 */  cvt.s.d    $f16, $f0
/* 8FC68 8008F068 4610E702 */  mul.s      $f28, $f28, $f16
/* 8FC6C 8008F06C 44917000 */  mtc1       $s1, $f14
/* 8FC70 8008F070 00000000 */  nop
/* 8FC74 8008F074 46107382 */  mul.s      $f14, $f14, $f16
/* 8FC78 8008F078 00000000 */  nop
/* 8FC7C 8008F07C 4610F782 */  mul.s      $f30, $f30, $f16
/* 8FC80 8008F080 44929000 */  mtc1       $s2, $f18
/* 8FC84 8008F084 00000000 */  nop
/* 8FC88 8008F088 460E9102 */  mul.s      $f4, $f18, $f14
/* 8FC8C 8008F08C 00000000 */  nop
/* 8FC90 8008F090 461ED002 */  mul.s      $f0, $f26, $f30
/* 8FC94 8008F094 00000000 */  nop
/* 8FC98 8008F098 461CD202 */  mul.s      $f8, $f26, $f28
/* 8FC9C 8008F09C 44939000 */  mtc1       $s3, $f18
/* 8FCA0 8008F0A0 00000000 */  nop
/* 8FCA4 8008F0A4 460E9082 */  mul.s      $f2, $f18, $f14
/* 8FCA8 8008F0A8 00000000 */  nop
/* 8FCAC 8008F0AC 461E9282 */  mul.s      $f10, $f18, $f30
/* 8FCB0 8008F0B0 44117000 */  mfc1       $s1, $f14
/* 8FCB4 8008F0B4 44927000 */  mtc1       $s2, $f14
/* 8FCB8 8008F0B8 00000000 */  nop
/* 8FCBC 8008F0BC 461C7182 */  mul.s      $f6, $f14, $f28
/* 8FCC0 8008F0C0 46002601 */  sub.s      $f24, $f4, $f0
/* 8FCC4 8008F0C4 4618C002 */  mul.s      $f0, $f24, $f24
/* 8FCC8 8008F0C8 46024581 */  sub.s      $f22, $f8, $f2
/* 8FCCC 8008F0CC 4616B102 */  mul.s      $f4, $f22, $f22
/* 8FCD0 8008F0D0 46065501 */  sub.s      $f20, $f10, $f6
/* 8FCD4 8008F0D4 4614A082 */  mul.s      $f2, $f20, $f20
/* 8FCD8 8008F0D8 46040000 */  add.s      $f0, $f0, $f4
/* 8FCDC 8008F0DC 46020300 */  add.s      $f12, $f0, $f2
/* 8FCE0 8008F0E0 46006004 */  sqrt.s     $f0, $f12
/* 8FCE4 8008F0E4 46000032 */  c.eq.s     $f0, $f0
/* 8FCE8 8008F0E8 00000000 */  nop
/* 8FCEC 8008F0EC 45010003 */  bc1t       .L8008F0FC
/* 8FCF0 8008F0F0 00000000 */   nop
/* 8FCF4 8008F0F4 0C023B88 */  jal        func_8008EE20
/* 8FCF8 8008F0F8 00000000 */   nop
.L8008F0FC:
/* 8FCFC 8008F0FC 3C01800D */  lui        $at, %hi(D_800D6B28)
/* 8FD00 8008F100 8C366B28 */  lw         $s6, %lo(D_800D6B28)($at)
/* 8FD04 8008F104 8C376B2C */  lw         $s7, %lo(D_800D6B2C)($at)
/* 8FD08 8008F108 44979000 */  mtc1       $s7, $f18
/* 8FD0C 8008F10C 44969800 */  mtc1       $s6, $f19
/* 8FD10 8008F110 46000021 */  cvt.d.s    $f0, $f0
/* 8FD14 8008F114 46209003 */  div.d      $f0, $f18, $f0
/* 8FD18 8008F118 46200420 */  cvt.s.d    $f16, $f0
/* 8FD1C 8008F11C 4610C602 */  mul.s      $f24, $f24, $f16
/* 8FD20 8008F120 00000000 */  nop
/* 8FD24 8008F124 4610A502 */  mul.s      $f20, $f20, $f16
/* 8FD28 8008F128 00000000 */  nop
/* 8FD2C 8008F12C 4610B582 */  mul.s      $f22, $f22, $f16
/* 8FD30 8008F130 00000000 */  nop
/* 8FD34 8008F134 4614F102 */  mul.s      $f4, $f30, $f20
/* 8FD38 8008F138 44917000 */  mtc1       $s1, $f14
/* 8FD3C 8008F13C 00000000 */  nop
/* 8FD40 8008F140 46167002 */  mul.s      $f0, $f14, $f22
/* 8FD44 8008F144 00000000 */  nop
/* 8FD48 8008F148 46187202 */  mul.s      $f8, $f14, $f24
/* 8FD4C 8008F14C 00000000 */  nop
/* 8FD50 8008F150 4614E082 */  mul.s      $f2, $f28, $f20
/* 8FD54 8008F154 00000000 */  nop
/* 8FD58 8008F158 4616E282 */  mul.s      $f10, $f28, $f22
/* 8FD5C 8008F15C 00000000 */  nop
/* 8FD60 8008F160 4618F182 */  mul.s      $f6, $f30, $f24
/* 8FD64 8008F164 46002101 */  sub.s      $f4, $f4, $f0
/* 8FD68 8008F168 46042002 */  mul.s      $f0, $f4, $f4
/* 8FD6C 8008F16C 46024201 */  sub.s      $f8, $f8, $f2
/* 8FD70 8008F170 44132000 */  mfc1       $s3, $f4
/* 8FD74 8008F174 46084102 */  mul.s      $f4, $f8, $f8
/* 8FD78 8008F178 46065681 */  sub.s      $f26, $f10, $f6
/* 8FD7C 8008F17C 461AD082 */  mul.s      $f2, $f26, $f26
/* 8FD80 8008F180 46040000 */  add.s      $f0, $f0, $f4
/* 8FD84 8008F184 46020300 */  add.s      $f12, $f0, $f2
/* 8FD88 8008F188 46006004 */  sqrt.s     $f0, $f12
/* 8FD8C 8008F18C 46000032 */  c.eq.s     $f0, $f0
/* 8FD90 8008F190 44124000 */  mfc1       $s2, $f8
/* 8FD94 8008F194 00000000 */  nop
/* 8FD98 8008F198 45030006 */  bc1tl      .L8008F1B4
/* 8FD9C 8008F19C 46000021 */   cvt.d.s   $f0, $f0
/* 8FDA0 8008F1A0 0C023B88 */  jal        func_8008EE20
/* 8FDA4 8008F1A4 00000000 */   nop
/* 8FDA8 8008F1A8 44979000 */  mtc1       $s7, $f18
/* 8FDAC 8008F1AC 44969800 */  mtc1       $s6, $f19
/* 8FDB0 8008F1B0 46000021 */  cvt.d.s    $f0, $f0
.L8008F1B4:
/* 8FDB4 8008F1B4 46209003 */  div.d      $f0, $f18, $f0
/* 8FDB8 8008F1B8 44937000 */  mtc1       $s3, $f14
/* 8FDBC 8008F1BC 46200420 */  cvt.s.d    $f16, $f0
/* 8FDC0 8008F1C0 46107382 */  mul.s      $f14, $f14, $f16
/* 8FDC4 8008F1C4 44929000 */  mtc1       $s2, $f18
/* 8FDC8 8008F1C8 00000000 */  nop
/* 8FDCC 8008F1CC 46109482 */  mul.s      $f18, $f18, $f16
/* 8FDD0 8008F1D0 00000000 */  nop
/* 8FDD4 8008F1D4 4610D682 */  mul.s      $f26, $f26, $f16
/* 8FDD8 8008F1D8 44137000 */  mfc1       $s3, $f14
/* 8FDDC 8008F1DC 44947000 */  mtc1       $s4, $f14
/* 8FDE0 8008F1E0 00000000 */  nop
/* 8FDE4 8008F1E4 46187082 */  mul.s      $f2, $f14, $f24
/* 8FDE8 8008F1E8 44129000 */  mfc1       $s2, $f18
/* 8FDEC 8008F1EC 44959000 */  mtc1       $s5, $f18
/* 8FDF0 8008F1F0 00000000 */  nop
/* 8FDF4 8008F1F4 46169182 */  mul.s      $f6, $f18, $f22
/* 8FDF8 8008F1F8 449E7000 */  mtc1       $fp, $f14
/* 8FDFC 8008F1FC 00000000 */  nop
/* 8FE00 8008F200 46147202 */  mul.s      $f8, $f14, $f20
/* 8FE04 8008F204 44949000 */  mtc1       $s4, $f18
/* 8FE08 8008F208 44937000 */  mtc1       $s3, $f14
/* 8FE0C 8008F20C 00000000 */  nop
/* 8FE10 8008F210 460E9102 */  mul.s      $f4, $f18, $f14
/* 8FE14 8008F214 44959000 */  mtc1       $s5, $f18
/* 8FE18 8008F218 44927000 */  mtc1       $s2, $f14
/* 8FE1C 8008F21C 00000000 */  nop
/* 8FE20 8008F220 460E9282 */  mul.s      $f10, $f18, $f14
/* 8FE24 8008F224 44949000 */  mtc1       $s4, $f18
/* 8FE28 8008F228 00000000 */  nop
/* 8FE2C 8008F22C 461C9002 */  mul.s      $f0, $f18, $f28
/* 8FE30 8008F230 44957000 */  mtc1       $s5, $f14
/* 8FE34 8008F234 00000000 */  nop
/* 8FE38 8008F238 461E7302 */  mul.s      $f12, $f14, $f30
/* 8FE3C 8008F23C 46061080 */  add.s      $f2, $f2, $f6
/* 8FE40 8008F240 44917000 */  mtc1       $s1, $f14
/* 8FE44 8008F244 449E9000 */  mtc1       $fp, $f18
/* 8FE48 8008F248 46081080 */  add.s      $f2, $f2, $f8
/* 8FE4C 8008F24C E6180000 */  swc1       $f24, 0x0($s0)
/* 8FE50 8008F250 460E9382 */  mul.s      $f14, $f18, $f14
/* 8FE54 8008F254 E6160010 */  swc1       $f22, 0x10($s0)
/* 8FE58 8008F258 460A2100 */  add.s      $f4, $f4, $f10
/* 8FE5C 8008F25C E6140020 */  swc1       $f20, 0x20($s0)
/* 8FE60 8008F260 E61C0008 */  swc1       $f28, 0x8($s0)
/* 8FE64 8008F264 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 8FE68 8008F268 44813000 */  mtc1       $at, $f6
/* 8FE6C 8008F26C 460C0000 */  add.s      $f0, $f0, $f12
/* 8FE70 8008F270 461A9202 */  mul.s      $f8, $f18, $f26
/* 8FE74 8008F274 E61E0018 */  swc1       $f30, 0x18($s0)
/* 8FE78 8008F278 AE110028 */  sw         $s1, 0x28($s0)
/* 8FE7C 8008F27C 460E0000 */  add.s      $f0, $f0, $f14
/* 8FE80 8008F280 AE00000C */  sw         $zero, 0xC($s0)
/* 8FE84 8008F284 AE00001C */  sw         $zero, 0x1C($s0)
/* 8FE88 8008F288 AE00002C */  sw         $zero, 0x2C($s0)
/* 8FE8C 8008F28C 46082100 */  add.s      $f4, $f4, $f8
/* 8FE90 8008F290 E61A0024 */  swc1       $f26, 0x24($s0)
/* 8FE94 8008F294 AE130004 */  sw         $s3, 0x4($s0)
/* 8FE98 8008F298 AE120014 */  sw         $s2, 0x14($s0)
/* 8FE9C 8008F29C 46001087 */  neg.s      $f2, $f2
/* 8FEA0 8008F2A0 E606003C */  swc1       $f6, 0x3C($s0)
/* 8FEA4 8008F2A4 46000007 */  neg.s      $f0, $f0
/* 8FEA8 8008F2A8 E6020030 */  swc1       $f2, 0x30($s0)
/* 8FEAC 8008F2AC 46002107 */  neg.s      $f4, $f4
/* 8FEB0 8008F2B0 E6000038 */  swc1       $f0, 0x38($s0)
/* 8FEB4 8008F2B4 E6040034 */  swc1       $f4, 0x34($s0)
/* 8FEB8 8008F2B8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 8FEBC 8008F2BC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 8FEC0 8008F2C0 8FB70034 */  lw         $s7, 0x34($sp)
/* 8FEC4 8008F2C4 8FB60030 */  lw         $s6, 0x30($sp)
/* 8FEC8 8008F2C8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 8FECC 8008F2CC 8FB40028 */  lw         $s4, 0x28($sp)
/* 8FED0 8008F2D0 8FB30024 */  lw         $s3, 0x24($sp)
/* 8FED4 8008F2D4 8FB20020 */  lw         $s2, 0x20($sp)
/* 8FED8 8008F2D8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8FEDC 8008F2DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 8FEE0 8008F2E0 D7BE0068 */  ldc1       $f30, 0x68($sp)
/* 8FEE4 8008F2E4 D7BC0060 */  ldc1       $f28, 0x60($sp)
/* 8FEE8 8008F2E8 D7BA0058 */  ldc1       $f26, 0x58($sp)
/* 8FEEC 8008F2EC D7B80050 */  ldc1       $f24, 0x50($sp)
/* 8FEF0 8008F2F0 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 8FEF4 8008F2F4 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 8FEF8 8008F2F8 03E00008 */  jr         $ra
/* 8FEFC 8008F2FC 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8008F300
/* 8FF00 8008F300 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 8FF04 8008F304 AFB20068 */  sw         $s2, 0x68($sp)
/* 8FF08 8008F308 8FB200D4 */  lw         $s2, 0xD4($sp)
/* 8FF0C 8008F30C AFB10064 */  sw         $s1, 0x64($sp)
/* 8FF10 8008F310 8FB100D8 */  lw         $s1, 0xD8($sp)
/* 8FF14 8008F314 AFB00060 */  sw         $s0, 0x60($sp)
/* 8FF18 8008F318 8FB000DC */  lw         $s0, 0xDC($sp)
/* 8FF1C 8008F31C F7B40088 */  sdc1       $f20, 0x88($sp)
/* 8FF20 8008F320 C7B400C8 */  lwc1       $f20, 0xC8($sp)
/* 8FF24 8008F324 F7B60090 */  sdc1       $f22, 0x90($sp)
/* 8FF28 8008F328 C7B600CC */  lwc1       $f22, 0xCC($sp)
/* 8FF2C 8008F32C F7B80098 */  sdc1       $f24, 0x98($sp)
/* 8FF30 8008F330 C7B800D0 */  lwc1       $f24, 0xD0($sp)
/* 8FF34 8008F334 AFB3006C */  sw         $s3, 0x6C($sp)
/* 8FF38 8008F338 00A09821 */  addu       $s3, $a1, $zero
/* 8FF3C 8008F33C AFB40070 */  sw         $s4, 0x70($sp)
/* 8FF40 8008F340 00C0A021 */  addu       $s4, $a2, $zero
/* 8FF44 8008F344 AFB50074 */  sw         $s5, 0x74($sp)
/* 8FF48 8008F348 00E0A821 */  addu       $s5, $a3, $zero
/* 8FF4C 8008F34C AFBE0080 */  sw         $fp, 0x80($sp)
/* 8FF50 8008F350 27BE0010 */  addiu      $fp, $sp, 0x10
/* 8FF54 8008F354 AFA40054 */  sw         $a0, 0x54($sp)
/* 8FF58 8008F358 AFBF0084 */  sw         $ra, 0x84($sp)
/* 8FF5C 8008F35C AFB7007C */  sw         $s7, 0x7C($sp)
/* 8FF60 8008F360 AFB60078 */  sw         $s6, 0x78($sp)
/* 8FF64 8008F364 F7BE00B0 */  sdc1       $f30, 0xB0($sp)
/* 8FF68 8008F368 F7BC00A8 */  sdc1       $f28, 0xA8($sp)
/* 8FF6C 8008F36C F7BA00A0 */  sdc1       $f26, 0xA0($sp)
/* 8FF70 8008F370 0C023DF4 */  jal        func_8008F7D0
/* 8FF74 8008F374 03C02021 */   addu      $a0, $fp, $zero
/* 8FF78 8008F378 44937000 */  mtc1       $s3, $f14
/* 8FF7C 8008F37C 00000000 */  nop
/* 8FF80 8008F380 460EA681 */  sub.s      $f26, $f20, $f14
/* 8FF84 8008F384 461AD002 */  mul.s      $f0, $f26, $f26
/* 8FF88 8008F388 44949000 */  mtc1       $s4, $f18
/* 8FF8C 8008F38C 00000000 */  nop
/* 8FF90 8008F390 4612B701 */  sub.s      $f28, $f22, $f18
/* 8FF94 8008F394 461CE102 */  mul.s      $f4, $f28, $f28
/* 8FF98 8008F398 44957000 */  mtc1       $s5, $f14
/* 8FF9C 8008F39C 00000000 */  nop
/* 8FFA0 8008F3A0 460EC781 */  sub.s      $f30, $f24, $f14
/* 8FFA4 8008F3A4 461EF082 */  mul.s      $f2, $f30, $f30
/* 8FFA8 8008F3A8 46040000 */  add.s      $f0, $f0, $f4
/* 8FFAC 8008F3AC 46020300 */  add.s      $f12, $f0, $f2
/* 8FFB0 8008F3B0 46006084 */  sqrt.s     $f2, $f12
/* 8FFB4 8008F3B4 46021032 */  c.eq.s     $f2, $f2
/* 8FFB8 8008F3B8 00000000 */  nop
/* 8FFBC 8008F3BC 45010004 */  bc1t       .L8008F3D0
/* 8FFC0 8008F3C0 00000000 */   nop
/* 8FFC4 8008F3C4 0C023B88 */  jal        func_8008EE20
/* 8FFC8 8008F3C8 00000000 */   nop
/* 8FFCC 8008F3CC 46000086 */  mov.s      $f2, $f0
.L8008F3D0:
/* 8FFD0 8008F3D0 3C01800D */  lui        $at, %hi(D_800D6B30)
/* 8FFD4 8008F3D4 D4206B30 */  ldc1       $f0, %lo(D_800D6B30)($at)
/* 8FFD8 8008F3D8 460010A1 */  cvt.d.s    $f2, $f2
/* 8FFDC 8008F3DC 46220003 */  div.d      $f0, $f0, $f2
/* 8FFE0 8008F3E0 46200420 */  cvt.s.d    $f16, $f0
/* 8FFE4 8008F3E4 4610D682 */  mul.s      $f26, $f26, $f16
/* 8FFE8 8008F3E8 00000000 */  nop
/* 8FFEC 8008F3EC 4610F782 */  mul.s      $f30, $f30, $f16
/* 8FFF0 8008F3F0 00000000 */  nop
/* 8FFF4 8008F3F4 4610E702 */  mul.s      $f28, $f28, $f16
/* 8FFF8 8008F3F8 44919000 */  mtc1       $s1, $f18
/* 8FFFC 8008F3FC 00000000 */  nop
/* 90000 8008F400 461E9102 */  mul.s      $f4, $f18, $f30
/* 90004 8008F404 44907000 */  mtc1       $s0, $f14
/* 90008 8008F408 00000000 */  nop
/* 9000C 8008F40C 461C7002 */  mul.s      $f0, $f14, $f28
/* 90010 8008F410 00000000 */  nop
/* 90014 8008F414 461A7202 */  mul.s      $f8, $f14, $f26
/* 90018 8008F418 44929000 */  mtc1       $s2, $f18
/* 9001C 8008F41C 00000000 */  nop
/* 90020 8008F420 461E9082 */  mul.s      $f2, $f18, $f30
/* 90024 8008F424 00000000 */  nop
/* 90028 8008F428 461C9282 */  mul.s      $f10, $f18, $f28
/* 9002C 8008F42C 44917000 */  mtc1       $s1, $f14
/* 90030 8008F430 00000000 */  nop
/* 90034 8008F434 461A7182 */  mul.s      $f6, $f14, $f26
/* 90038 8008F438 46002601 */  sub.s      $f24, $f4, $f0
/* 9003C 8008F43C 4618C002 */  mul.s      $f0, $f24, $f24
/* 90040 8008F440 46024581 */  sub.s      $f22, $f8, $f2
/* 90044 8008F444 4616B102 */  mul.s      $f4, $f22, $f22
/* 90048 8008F448 46065501 */  sub.s      $f20, $f10, $f6
/* 9004C 8008F44C 4614A082 */  mul.s      $f2, $f20, $f20
/* 90050 8008F450 46040000 */  add.s      $f0, $f0, $f4
/* 90054 8008F454 46020300 */  add.s      $f12, $f0, $f2
/* 90058 8008F458 46006004 */  sqrt.s     $f0, $f12
/* 9005C 8008F45C 46000032 */  c.eq.s     $f0, $f0
/* 90060 8008F460 00000000 */  nop
/* 90064 8008F464 45010003 */  bc1t       .L8008F474
/* 90068 8008F468 00000000 */   nop
/* 9006C 8008F46C 0C023B88 */  jal        func_8008EE20
/* 90070 8008F470 00000000 */   nop
.L8008F474:
/* 90074 8008F474 3C01800D */  lui        $at, %hi(D_800D6B38)
/* 90078 8008F478 8C366B38 */  lw         $s6, %lo(D_800D6B38)($at)
/* 9007C 8008F47C 8C376B3C */  lw         $s7, %lo(D_800D6B3C)($at)
/* 90080 8008F480 44979000 */  mtc1       $s7, $f18
/* 90084 8008F484 44969800 */  mtc1       $s6, $f19
/* 90088 8008F488 46000021 */  cvt.d.s    $f0, $f0
/* 9008C 8008F48C 46209003 */  div.d      $f0, $f18, $f0
/* 90090 8008F490 46200420 */  cvt.s.d    $f16, $f0
/* 90094 8008F494 4610C602 */  mul.s      $f24, $f24, $f16
/* 90098 8008F498 00000000 */  nop
/* 9009C 8008F49C 4610A502 */  mul.s      $f20, $f20, $f16
/* 900A0 8008F4A0 00000000 */  nop
/* 900A4 8008F4A4 4610B582 */  mul.s      $f22, $f22, $f16
/* 900A8 8008F4A8 00000000 */  nop
/* 900AC 8008F4AC 4614E102 */  mul.s      $f4, $f28, $f20
/* 900B0 8008F4B0 00000000 */  nop
/* 900B4 8008F4B4 4616F002 */  mul.s      $f0, $f30, $f22
/* 900B8 8008F4B8 00000000 */  nop
/* 900BC 8008F4BC 4618F202 */  mul.s      $f8, $f30, $f24
/* 900C0 8008F4C0 00000000 */  nop
/* 900C4 8008F4C4 4614D082 */  mul.s      $f2, $f26, $f20
/* 900C8 8008F4C8 00000000 */  nop
/* 900CC 8008F4CC 4616D282 */  mul.s      $f10, $f26, $f22
/* 900D0 8008F4D0 00000000 */  nop
/* 900D4 8008F4D4 4618E182 */  mul.s      $f6, $f28, $f24
/* 900D8 8008F4D8 46002101 */  sub.s      $f4, $f4, $f0
/* 900DC 8008F4DC 46042002 */  mul.s      $f0, $f4, $f4
/* 900E0 8008F4E0 46024201 */  sub.s      $f8, $f8, $f2
/* 900E4 8008F4E4 44122000 */  mfc1       $s2, $f4
/* 900E8 8008F4E8 46084102 */  mul.s      $f4, $f8, $f8
/* 900EC 8008F4EC 46065281 */  sub.s      $f10, $f10, $f6
/* 900F0 8008F4F0 460A5082 */  mul.s      $f2, $f10, $f10
/* 900F4 8008F4F4 46040000 */  add.s      $f0, $f0, $f4
/* 900F8 8008F4F8 46020300 */  add.s      $f12, $f0, $f2
/* 900FC 8008F4FC 46006004 */  sqrt.s     $f0, $f12
/* 90100 8008F500 46000032 */  c.eq.s     $f0, $f0
/* 90104 8008F504 44114000 */  mfc1       $s1, $f8
/* 90108 8008F508 44105000 */  mfc1       $s0, $f10
/* 9010C 8008F50C 45010003 */  bc1t       .L8008F51C
/* 90110 8008F510 00000000 */   nop
/* 90114 8008F514 0C023B88 */  jal        func_8008EE20
/* 90118 8008F518 00000000 */   nop
.L8008F51C:
/* 9011C 8008F51C 44977000 */  mtc1       $s7, $f14
/* 90120 8008F520 44967800 */  mtc1       $s6, $f15
/* 90124 8008F524 46000021 */  cvt.d.s    $f0, $f0
/* 90128 8008F528 46207003 */  div.d      $f0, $f14, $f0
/* 9012C 8008F52C 44929000 */  mtc1       $s2, $f18
/* 90130 8008F530 46200420 */  cvt.s.d    $f16, $f0
/* 90134 8008F534 46109482 */  mul.s      $f18, $f18, $f16
/* 90138 8008F538 44917000 */  mtc1       $s1, $f14
/* 9013C 8008F53C 00000000 */  nop
/* 90140 8008F540 46107382 */  mul.s      $f14, $f14, $f16
/* 90144 8008F544 44129000 */  mfc1       $s2, $f18
/* 90148 8008F548 44939000 */  mtc1       $s3, $f18
/* 9014C 8008F54C 00000000 */  nop
/* 90150 8008F550 46189082 */  mul.s      $f2, $f18, $f24
/* 90154 8008F554 44117000 */  mfc1       $s1, $f14
/* 90158 8008F558 44947000 */  mtc1       $s4, $f14
/* 9015C 8008F55C 00000000 */  nop
/* 90160 8008F560 46167182 */  mul.s      $f6, $f14, $f22
/* 90164 8008F564 44959000 */  mtc1       $s5, $f18
/* 90168 8008F568 00000000 */  nop
/* 9016C 8008F56C 46149202 */  mul.s      $f8, $f18, $f20
/* 90170 8008F570 44937000 */  mtc1       $s3, $f14
/* 90174 8008F574 44929000 */  mtc1       $s2, $f18
/* 90178 8008F578 00000000 */  nop
/* 9017C 8008F57C 46127102 */  mul.s      $f4, $f14, $f18
/* 90180 8008F580 44947000 */  mtc1       $s4, $f14
/* 90184 8008F584 44919000 */  mtc1       $s1, $f18
/* 90188 8008F588 00000000 */  nop
/* 9018C 8008F58C 46127282 */  mul.s      $f10, $f14, $f18
/* 90190 8008F590 44937000 */  mtc1       $s3, $f14
/* 90194 8008F594 00000000 */  nop
/* 90198 8008F598 461A7002 */  mul.s      $f0, $f14, $f26
/* 9019C 8008F59C 44949000 */  mtc1       $s4, $f18
/* 901A0 8008F5A0 00000000 */  nop
/* 901A4 8008F5A4 461C9302 */  mul.s      $f12, $f18, $f28
/* 901A8 8008F5A8 44957000 */  mtc1       $s5, $f14
/* 901AC 8008F5AC 8FA50054 */  lw         $a1, 0x54($sp)
/* 901B0 8008F5B0 461E7382 */  mul.s      $f14, $f14, $f30
/* 901B4 8008F5B4 46061080 */  add.s      $f2, $f2, $f6
/* 901B8 8008F5B8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 901BC 8008F5BC 44813000 */  mtc1       $at, $f6
/* 901C0 8008F5C0 03C02021 */  addu       $a0, $fp, $zero
/* 901C4 8008F5C4 E7B80010 */  swc1       $f24, 0x10($sp)
/* 901C8 8008F5C8 44909000 */  mtc1       $s0, $f18
/* 901CC 8008F5CC 460C0000 */  add.s      $f0, $f0, $f12
/* 901D0 8008F5D0 E7B60020 */  swc1       $f22, 0x20($sp)
/* 901D4 8008F5D4 46109482 */  mul.s      $f18, $f18, $f16
/* 901D8 8008F5D8 E7B40030 */  swc1       $f20, 0x30($sp)
/* 901DC 8008F5DC 460E0000 */  add.s      $f0, $f0, $f14
/* 901E0 8008F5E0 E7BA0018 */  swc1       $f26, 0x18($sp)
/* 901E4 8008F5E4 E7BC0028 */  swc1       $f28, 0x28($sp)
/* 901E8 8008F5E8 44957000 */  mtc1       $s5, $f14
/* 901EC 8008F5EC 46081080 */  add.s      $f2, $f2, $f8
/* 901F0 8008F5F0 46127202 */  mul.s      $f8, $f14, $f18
/* 901F4 8008F5F4 E7BE0038 */  swc1       $f30, 0x38($sp)
/* 901F8 8008F5F8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 901FC 8008F5FC 460A2100 */  add.s      $f4, $f4, $f10
/* 90200 8008F600 AFA0002C */  sw         $zero, 0x2C($sp)
/* 90204 8008F604 AFA0003C */  sw         $zero, 0x3C($sp)
/* 90208 8008F608 AFB20014 */  sw         $s2, 0x14($sp)
/* 9020C 8008F60C 46082100 */  add.s      $f4, $f4, $f8
/* 90210 8008F610 AFB10024 */  sw         $s1, 0x24($sp)
/* 90214 8008F614 E7A6004C */  swc1       $f6, 0x4C($sp)
/* 90218 8008F618 44109000 */  mfc1       $s0, $f18
/* 9021C 8008F61C 46001087 */  neg.s      $f2, $f2
/* 90220 8008F620 AFB00034 */  sw         $s0, 0x34($sp)
/* 90224 8008F624 46000007 */  neg.s      $f0, $f0
/* 90228 8008F628 E7A20040 */  swc1       $f2, 0x40($sp)
/* 9022C 8008F62C 46002107 */  neg.s      $f4, $f4
/* 90230 8008F630 E7A00048 */  swc1       $f0, 0x48($sp)
/* 90234 8008F634 0C023DA4 */  jal        func_8008F690
/* 90238 8008F638 E7A40044 */   swc1      $f4, 0x44($sp)
/* 9023C 8008F63C 8FBF0084 */  lw         $ra, 0x84($sp)
/* 90240 8008F640 8FBE0080 */  lw         $fp, 0x80($sp)
/* 90244 8008F644 8FB7007C */  lw         $s7, 0x7C($sp)
/* 90248 8008F648 8FB60078 */  lw         $s6, 0x78($sp)
/* 9024C 8008F64C 8FB50074 */  lw         $s5, 0x74($sp)
/* 90250 8008F650 8FB40070 */  lw         $s4, 0x70($sp)
/* 90254 8008F654 8FB3006C */  lw         $s3, 0x6C($sp)
/* 90258 8008F658 8FB20068 */  lw         $s2, 0x68($sp)
/* 9025C 8008F65C 8FB10064 */  lw         $s1, 0x64($sp)
/* 90260 8008F660 8FB00060 */  lw         $s0, 0x60($sp)
/* 90264 8008F664 D7BE00B0 */  ldc1       $f30, 0xB0($sp)
/* 90268 8008F668 D7BC00A8 */  ldc1       $f28, 0xA8($sp)
/* 9026C 8008F66C D7BA00A0 */  ldc1       $f26, 0xA0($sp)
/* 90270 8008F670 D7B80098 */  ldc1       $f24, 0x98($sp)
/* 90274 8008F674 D7B60090 */  ldc1       $f22, 0x90($sp)
/* 90278 8008F678 D7B40088 */  ldc1       $f20, 0x88($sp)
/* 9027C 8008F67C 03E00008 */  jr         $ra
/* 90280 8008F680 27BD00B8 */   addiu     $sp, $sp, 0xB8
/* 90284 8008F684 00000000 */  nop
/* 90288 8008F688 00000000 */  nop
/* 9028C 8008F68C 00000000 */  nop

glabel func_8008F690
/* 90290 8008F690 00A04021 */  addu       $t0, $a1, $zero
/* 90294 8008F694 25090020 */  addiu      $t1, $t0, 0x20
/* 90298 8008F698 00005821 */  addu       $t3, $zero, $zero
/* 9029C 8008F69C 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 902A0 8008F6A0 44813000 */  mtc1       $at, $f6
/* 902A4 8008F6A4 3C0CFFFF */  lui        $t4, (0xFFFF0000 >> 16)
/* 902A8 8008F6A8 00805021 */  addu       $t2, $a0, $zero
.L8008F6AC:
/* 902AC 8008F6AC 00003821 */  addu       $a3, $zero, $zero
/* 902B0 8008F6B0 01403021 */  addu       $a2, $t2, $zero
.L8008F6B4:
/* 902B4 8008F6B4 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 902B8 8008F6B8 46061082 */  mul.s      $f2, $f2, $f6
/* 902BC 8008F6BC C4C00004 */  lwc1       $f0, 0x4($a2)
/* 902C0 8008F6C0 46060002 */  mul.s      $f0, $f0, $f6
/* 902C4 8008F6C4 24C60008 */  addiu      $a2, $a2, 0x8
/* 902C8 8008F6C8 24E70001 */  addiu      $a3, $a3, 0x1
/* 902CC 8008F6CC 4600110D */  trunc.w.s  $f4, $f2
/* 902D0 8008F6D0 44042000 */  mfc1       $a0, $f4
/* 902D4 8008F6D4 4600008D */  trunc.w.s  $f2, $f0
/* 902D8 8008F6D8 44051000 */  mfc1       $a1, $f2
/* 902DC 8008F6DC 008C1024 */  and        $v0, $a0, $t4
/* 902E0 8008F6E0 00051C02 */  srl        $v1, $a1, 16
/* 902E4 8008F6E4 00431025 */  or         $v0, $v0, $v1
/* 902E8 8008F6E8 AD020000 */  sw         $v0, 0x0($t0)
/* 902EC 8008F6EC 25080004 */  addiu      $t0, $t0, 0x4
/* 902F0 8008F6F0 00042400 */  sll        $a0, $a0, 16
/* 902F4 8008F6F4 008C2024 */  and        $a0, $a0, $t4
/* 902F8 8008F6F8 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 902FC 8008F6FC 00852025 */  or         $a0, $a0, $a1
/* 90300 8008F700 AD240000 */  sw         $a0, 0x0($t1)
/* 90304 8008F704 28E20002 */  slti       $v0, $a3, 0x2
/* 90308 8008F708 1440FFEA */  bnez       $v0, .L8008F6B4
/* 9030C 8008F70C 25290004 */   addiu     $t1, $t1, 0x4
/* 90310 8008F710 256B0001 */  addiu      $t3, $t3, 0x1
/* 90314 8008F714 29620004 */  slti       $v0, $t3, 0x4
/* 90318 8008F718 1440FFE4 */  bnez       $v0, .L8008F6AC
/* 9031C 8008F71C 254A0010 */   addiu     $t2, $t2, 0x10
/* 90320 8008F720 03E00008 */  jr         $ra
/* 90324 8008F724 00000000 */   nop

glabel func_8008F728
/* 90328 8008F728 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9032C 8008F72C 24A80020 */  addiu      $t0, $a1, 0x20
/* 90330 8008F730 00004821 */  addu       $t1, $zero, $zero
/* 90334 8008F734 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
/* 90338 8008F738 3C013780 */  lui        $at, (0x37800000 >> 16)
/* 9033C 8008F73C 44812000 */  mtc1       $at, $f4
.L8008F740:
/* 90340 8008F740 00003821 */  addu       $a3, $zero, $zero
/* 90344 8008F744 00803021 */  addu       $a2, $a0, $zero
.L8008F748:
/* 90348 8008F748 8CA20000 */  lw         $v0, 0x0($a1)
/* 9034C 8008F74C 95030000 */  lhu        $v1, 0x0($t0)
/* 90350 8008F750 004A1024 */  and        $v0, $v0, $t2
/* 90354 8008F754 00431025 */  or         $v0, $v0, $v1
/* 90358 8008F758 AFA20000 */  sw         $v0, 0x0($sp)
/* 9035C 8008F75C 8CA30000 */  lw         $v1, 0x0($a1)
/* 90360 8008F760 44821000 */  mtc1       $v0, $f2
/* 90364 8008F764 00000000 */  nop
/* 90368 8008F768 468010A0 */  cvt.s.w    $f2, $f2
/* 9036C 8008F76C 46041082 */  mul.s      $f2, $f2, $f4
/* 90370 8008F770 95020002 */  lhu        $v0, 0x2($t0)
/* 90374 8008F774 00031C00 */  sll        $v1, $v1, 16
/* 90378 8008F778 006A1824 */  and        $v1, $v1, $t2
/* 9037C 8008F77C 00621825 */  or         $v1, $v1, $v0
/* 90380 8008F780 44830000 */  mtc1       $v1, $f0
/* 90384 8008F784 00000000 */  nop
/* 90388 8008F788 46800020 */  cvt.s.w    $f0, $f0
/* 9038C 8008F78C 46040002 */  mul.s      $f0, $f0, $f4
/* 90390 8008F790 24E70001 */  addiu      $a3, $a3, 0x1
/* 90394 8008F794 25080004 */  addiu      $t0, $t0, 0x4
/* 90398 8008F798 24A50004 */  addiu      $a1, $a1, 0x4
/* 9039C 8008F79C 28E20002 */  slti       $v0, $a3, 0x2
/* 903A0 8008F7A0 AFA30004 */  sw         $v1, 0x4($sp)
/* 903A4 8008F7A4 E4C20000 */  swc1       $f2, 0x0($a2)
/* 903A8 8008F7A8 E4C00004 */  swc1       $f0, 0x4($a2)
/* 903AC 8008F7AC 1440FFE6 */  bnez       $v0, .L8008F748
/* 903B0 8008F7B0 24C60008 */   addiu     $a2, $a2, 0x8
/* 903B4 8008F7B4 25290001 */  addiu      $t1, $t1, 0x1
/* 903B8 8008F7B8 29220004 */  slti       $v0, $t1, 0x4
/* 903BC 8008F7BC 1440FFE0 */  bnez       $v0, .L8008F740
/* 903C0 8008F7C0 24840010 */   addiu     $a0, $a0, 0x10
/* 903C4 8008F7C4 27BD0008 */  addiu      $sp, $sp, 0x8
/* 903C8 8008F7C8 03E00008 */  jr         $ra
/* 903CC 8008F7CC 00000000 */   nop

glabel func_8008F7D0
/* 903D0 8008F7D0 00003021 */  addu       $a2, $zero, $zero
/* 903D4 8008F7D4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 903D8 8008F7D8 44810000 */  mtc1       $at, $f0
/* 903DC 8008F7DC 00803821 */  addu       $a3, $a0, $zero
.L8008F7E0:
/* 903E0 8008F7E0 00001821 */  addu       $v1, $zero, $zero
/* 903E4 8008F7E4 00802821 */  addu       $a1, $a0, $zero
.L8008F7E8:
/* 903E8 8008F7E8 54C30002 */  bnel       $a2, $v1, .L8008F7F4
/* 903EC 8008F7EC ACA00000 */   sw        $zero, 0x0($a1)
/* 903F0 8008F7F0 E4E00000 */  swc1       $f0, 0x0($a3)
.L8008F7F4:
/* 903F4 8008F7F4 24630001 */  addiu      $v1, $v1, 0x1
/* 903F8 8008F7F8 28620004 */  slti       $v0, $v1, 0x4
/* 903FC 8008F7FC 1440FFFA */  bnez       $v0, .L8008F7E8
/* 90400 8008F800 24A50004 */   addiu     $a1, $a1, 0x4
/* 90404 8008F804 24E70014 */  addiu      $a3, $a3, 0x14
/* 90408 8008F808 24C60001 */  addiu      $a2, $a2, 0x1
/* 9040C 8008F80C 28C20004 */  slti       $v0, $a2, 0x4
/* 90410 8008F810 1440FFF3 */  bnez       $v0, .L8008F7E0
/* 90414 8008F814 24840010 */   addiu     $a0, $a0, 0x10
/* 90418 8008F818 03E00008 */  jr         $ra
/* 9041C 8008F81C 00000000 */   nop

glabel func_8008F820
/* 90420 8008F820 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 90424 8008F824 00003021 */  addu       $a2, $zero, $zero
/* 90428 8008F828 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 9042C 8008F82C 44810000 */  mtc1       $at, $f0
/* 90430 8008F830 03A04821 */  addu       $t1, $sp, $zero
/* 90434 8008F834 03A04021 */  addu       $t0, $sp, $zero
.L8008F838:
/* 90438 8008F838 00001821 */  addu       $v1, $zero, $zero
/* 9043C 8008F83C 01203821 */  addu       $a3, $t1, $zero
/* 90440 8008F840 01002821 */  addu       $a1, $t0, $zero
.L8008F844:
/* 90444 8008F844 54C30002 */  bnel       $a2, $v1, .L8008F850
/* 90448 8008F848 ACA00000 */   sw        $zero, 0x0($a1)
/* 9044C 8008F84C E4E00000 */  swc1       $f0, 0x0($a3)
.L8008F850:
/* 90450 8008F850 24630001 */  addiu      $v1, $v1, 0x1
/* 90454 8008F854 28620004 */  slti       $v0, $v1, 0x4
/* 90458 8008F858 1440FFFA */  bnez       $v0, .L8008F844
/* 9045C 8008F85C 24A50004 */   addiu     $a1, $a1, 0x4
/* 90460 8008F860 25290014 */  addiu      $t1, $t1, 0x14
/* 90464 8008F864 24C60001 */  addiu      $a2, $a2, 0x1
/* 90468 8008F868 28C20004 */  slti       $v0, $a2, 0x4
/* 9046C 8008F86C 1440FFF2 */  bnez       $v0, .L8008F838
/* 90470 8008F870 25080010 */   addiu     $t0, $t0, 0x10
/* 90474 8008F874 00804021 */  addu       $t0, $a0, $zero
/* 90478 8008F878 25090020 */  addiu      $t1, $t0, 0x20
/* 9047C 8008F87C 00005821 */  addu       $t3, $zero, $zero
/* 90480 8008F880 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 90484 8008F884 44813000 */  mtc1       $at, $f6
/* 90488 8008F888 3C0CFFFF */  lui        $t4, (0xFFFF0000 >> 16)
/* 9048C 8008F88C 03A05021 */  addu       $t2, $sp, $zero
.L8008F890:
/* 90490 8008F890 00003821 */  addu       $a3, $zero, $zero
/* 90494 8008F894 01403021 */  addu       $a2, $t2, $zero
.L8008F898:
/* 90498 8008F898 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9049C 8008F89C 46061082 */  mul.s      $f2, $f2, $f6
/* 904A0 8008F8A0 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 904A4 8008F8A4 46060002 */  mul.s      $f0, $f0, $f6
/* 904A8 8008F8A8 24C60008 */  addiu      $a2, $a2, 0x8
/* 904AC 8008F8AC 24E70001 */  addiu      $a3, $a3, 0x1
/* 904B0 8008F8B0 4600110D */  trunc.w.s  $f4, $f2
/* 904B4 8008F8B4 44042000 */  mfc1       $a0, $f4
/* 904B8 8008F8B8 4600008D */  trunc.w.s  $f2, $f0
/* 904BC 8008F8BC 44051000 */  mfc1       $a1, $f2
/* 904C0 8008F8C0 008C1024 */  and        $v0, $a0, $t4
/* 904C4 8008F8C4 00051C02 */  srl        $v1, $a1, 16
/* 904C8 8008F8C8 00431025 */  or         $v0, $v0, $v1
/* 904CC 8008F8CC AD020000 */  sw         $v0, 0x0($t0)
/* 904D0 8008F8D0 25080004 */  addiu      $t0, $t0, 0x4
/* 904D4 8008F8D4 00042400 */  sll        $a0, $a0, 16
/* 904D8 8008F8D8 008C2024 */  and        $a0, $a0, $t4
/* 904DC 8008F8DC 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 904E0 8008F8E0 00852025 */  or         $a0, $a0, $a1
/* 904E4 8008F8E4 AD240000 */  sw         $a0, 0x0($t1)
/* 904E8 8008F8E8 28E20002 */  slti       $v0, $a3, 0x2
/* 904EC 8008F8EC 1440FFEA */  bnez       $v0, .L8008F898
/* 904F0 8008F8F0 25290004 */   addiu     $t1, $t1, 0x4
/* 904F4 8008F8F4 256B0001 */  addiu      $t3, $t3, 0x1
/* 904F8 8008F8F8 29620004 */  slti       $v0, $t3, 0x4
/* 904FC 8008F8FC 1440FFE4 */  bnez       $v0, .L8008F890
/* 90500 8008F900 254A0010 */   addiu     $t2, $t2, 0x10
/* 90504 8008F904 27BD0040 */  addiu      $sp, $sp, 0x40
/* 90508 8008F908 03E00008 */  jr         $ra
/* 9050C 8008F90C 00000000 */   nop

glabel func_8008F910
/* 90510 8008F910 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 90514 8008F914 00007021 */  addu       $t6, $zero, $zero
/* 90518 8008F918 03A07821 */  addu       $t7, $sp, $zero
.L8008F91C:
/* 9051C 8008F91C 00004821 */  addu       $t1, $zero, $zero
/* 90520 8008F920 0080C021 */  addu       $t8, $a0, $zero
/* 90524 8008F924 01E05821 */  addu       $t3, $t7, $zero
/* 90528 8008F928 00006021 */  addu       $t4, $zero, $zero
.L8008F92C:
/* 9052C 8008F92C AD600000 */  sw         $zero, 0x0($t3)
/* 90530 8008F930 00004021 */  addu       $t0, $zero, $zero
/* 90534 8008F934 01806821 */  addu       $t5, $t4, $zero
/* 90538 8008F938 01605021 */  addu       $t2, $t3, $zero
/* 9053C 8008F93C 03003821 */  addu       $a3, $t8, $zero
/* 90540 8008F940 00A01821 */  addu       $v1, $a1, $zero
.L8008F944:
/* 90544 8008F944 01A31021 */  addu       $v0, $t5, $v1
/* 90548 8008F948 C4E20000 */  lwc1       $f2, 0x0($a3)
/* 9054C 8008F94C C4400000 */  lwc1       $f0, 0x0($v0)
/* 90550 8008F950 46001082 */  mul.s      $f2, $f2, $f0
/* 90554 8008F954 C5400000 */  lwc1       $f0, 0x0($t2)
/* 90558 8008F958 24E70004 */  addiu      $a3, $a3, 0x4
/* 9055C 8008F95C 46020000 */  add.s      $f0, $f0, $f2
/* 90560 8008F960 24630010 */  addiu      $v1, $v1, 0x10
/* 90564 8008F964 25080001 */  addiu      $t0, $t0, 0x1
/* 90568 8008F968 29020004 */  slti       $v0, $t0, 0x4
/* 9056C 8008F96C 1440FFF5 */  bnez       $v0, .L8008F944
/* 90570 8008F970 E5400000 */   swc1      $f0, 0x0($t2)
/* 90574 8008F974 256B0004 */  addiu      $t3, $t3, 0x4
/* 90578 8008F978 25290001 */  addiu      $t1, $t1, 0x1
/* 9057C 8008F97C 29220004 */  slti       $v0, $t1, 0x4
/* 90580 8008F980 1440FFEA */  bnez       $v0, .L8008F92C
/* 90584 8008F984 258C0004 */   addiu     $t4, $t4, 0x4
/* 90588 8008F988 24840010 */  addiu      $a0, $a0, 0x10
/* 9058C 8008F98C 25CE0001 */  addiu      $t6, $t6, 0x1
/* 90590 8008F990 29C20004 */  slti       $v0, $t6, 0x4
/* 90594 8008F994 1440FFE1 */  bnez       $v0, .L8008F91C
/* 90598 8008F998 25EF0010 */   addiu     $t7, $t7, 0x10
/* 9059C 8008F99C 00007021 */  addu       $t6, $zero, $zero
/* 905A0 8008F9A0 03A02821 */  addu       $a1, $sp, $zero
.L8008F9A4:
/* 905A4 8008F9A4 00004821 */  addu       $t1, $zero, $zero
/* 905A8 8008F9A8 00C02021 */  addu       $a0, $a2, $zero
/* 905AC 8008F9AC 00A01821 */  addu       $v1, $a1, $zero
.L8008F9B0:
/* 905B0 8008F9B0 C4600000 */  lwc1       $f0, 0x0($v1)
/* 905B4 8008F9B4 24630004 */  addiu      $v1, $v1, 0x4
/* 905B8 8008F9B8 25290001 */  addiu      $t1, $t1, 0x1
/* 905BC 8008F9BC 29220004 */  slti       $v0, $t1, 0x4
/* 905C0 8008F9C0 E4800000 */  swc1       $f0, 0x0($a0)
/* 905C4 8008F9C4 1440FFFA */  bnez       $v0, .L8008F9B0
/* 905C8 8008F9C8 24840004 */   addiu     $a0, $a0, 0x4
/* 905CC 8008F9CC 24A50010 */  addiu      $a1, $a1, 0x10
/* 905D0 8008F9D0 25CE0001 */  addiu      $t6, $t6, 0x1
/* 905D4 8008F9D4 29C20004 */  slti       $v0, $t6, 0x4
/* 905D8 8008F9D8 1440FFF2 */  bnez       $v0, .L8008F9A4
/* 905DC 8008F9DC 24C60010 */   addiu     $a2, $a2, 0x10
/* 905E0 8008F9E0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 905E4 8008F9E4 03E00008 */  jr         $ra
/* 905E8 8008F9E8 00000000 */   nop

glabel func_8008F9EC
/* 905EC 8008F9EC C4820000 */  lwc1       $f2, 0x0($a0)
/* 905F0 8008F9F0 44853000 */  mtc1       $a1, $f6
/* 905F4 8008F9F4 00000000 */  nop
/* 905F8 8008F9F8 46061082 */  mul.s      $f2, $f2, $f6
/* 905FC 8008F9FC C4840010 */  lwc1       $f4, 0x10($a0)
/* 90600 8008FA00 44864000 */  mtc1       $a2, $f8
/* 90604 8008FA04 00000000 */  nop
/* 90608 8008FA08 46082102 */  mul.s      $f4, $f4, $f8
/* 9060C 8008FA0C C4800020 */  lwc1       $f0, 0x20($a0)
/* 90610 8008FA10 44875000 */  mtc1       $a3, $f10
/* 90614 8008FA14 00000000 */  nop
/* 90618 8008FA18 460A0002 */  mul.s      $f0, $f0, $f10
/* 9061C 8008FA1C 46041080 */  add.s      $f2, $f2, $f4
/* 90620 8008FA20 46001080 */  add.s      $f2, $f2, $f0
/* 90624 8008FA24 C4800030 */  lwc1       $f0, 0x30($a0)
/* 90628 8008FA28 8FA20010 */  lw         $v0, 0x10($sp)
/* 9062C 8008FA2C 8FA30014 */  lw         $v1, 0x14($sp)
/* 90630 8008FA30 46001080 */  add.s      $f2, $f2, $f0
/* 90634 8008FA34 8FA50018 */  lw         $a1, 0x18($sp)
/* 90638 8008FA38 E4420000 */  swc1       $f2, 0x0($v0)
/* 9063C 8008FA3C C4800004 */  lwc1       $f0, 0x4($a0)
/* 90640 8008FA40 46060002 */  mul.s      $f0, $f0, $f6
/* 90644 8008FA44 C4840014 */  lwc1       $f4, 0x14($a0)
/* 90648 8008FA48 46082102 */  mul.s      $f4, $f4, $f8
/* 9064C 8008FA4C C4820024 */  lwc1       $f2, 0x24($a0)
/* 90650 8008FA50 460A1082 */  mul.s      $f2, $f2, $f10
/* 90654 8008FA54 46040000 */  add.s      $f0, $f0, $f4
/* 90658 8008FA58 46020000 */  add.s      $f0, $f0, $f2
/* 9065C 8008FA5C C4820034 */  lwc1       $f2, 0x34($a0)
/* 90660 8008FA60 46020000 */  add.s      $f0, $f0, $f2
/* 90664 8008FA64 E4600000 */  swc1       $f0, 0x0($v1)
/* 90668 8008FA68 C4800008 */  lwc1       $f0, 0x8($a0)
/* 9066C 8008FA6C 46060002 */  mul.s      $f0, $f0, $f6
/* 90670 8008FA70 C4840018 */  lwc1       $f4, 0x18($a0)
/* 90674 8008FA74 46082102 */  mul.s      $f4, $f4, $f8
/* 90678 8008FA78 C4820028 */  lwc1       $f2, 0x28($a0)
/* 9067C 8008FA7C 460A1082 */  mul.s      $f2, $f2, $f10
/* 90680 8008FA80 46040000 */  add.s      $f0, $f0, $f4
/* 90684 8008FA84 46020000 */  add.s      $f0, $f0, $f2
/* 90688 8008FA88 C4820038 */  lwc1       $f2, 0x38($a0)
/* 9068C 8008FA8C 46020000 */  add.s      $f0, $f0, $f2
/* 90690 8008FA90 03E00008 */  jr         $ra
/* 90694 8008FA94 E4A00000 */   swc1      $f0, 0x0($a1)
/* 90698 8008FA98 00000000 */  nop
/* 9069C 8008FA9C 00000000 */  nop

glabel func_8008FAA0
/* 906A0 8008FAA0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 906A4 8008FAA4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 906A8 8008FAA8 C7BA0060 */  lwc1       $f26, 0x60($sp)
/* 906AC 8008FAAC F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 906B0 8008FAB0 C7BC0064 */  lwc1       $f28, 0x64($sp)
/* 906B4 8008FAB4 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 906B8 8008FAB8 C7BE0068 */  lwc1       $f30, 0x68($sp)
/* 906BC 8008FABC F7B80030 */  sdc1       $f24, 0x30($sp)
/* 906C0 8008FAC0 4486C000 */  mtc1       $a2, $f24
/* 906C4 8008FAC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 906C8 8008FAC8 00808021 */  addu       $s0, $a0, $zero
/* 906CC 8008FACC AFB10014 */  sw         $s1, 0x14($sp)
/* 906D0 8008FAD0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 906D4 8008FAD4 4487B000 */  mtc1       $a3, $f22
/* 906D8 8008FAD8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 906DC 8008FADC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 906E0 8008FAE0 0C023DF4 */  jal        func_8008F7D0
/* 906E4 8008FAE4 00A08821 */   addu      $s1, $a1, $zero
/* 906E8 8008FAE8 3C01800D */  lui        $at, %hi(D_800D6B40)
/* 906EC 8008FAEC D4226B40 */  ldc1       $f2, %lo(D_800D6B40)($at)
/* 906F0 8008FAF0 4600C021 */  cvt.d.s    $f0, $f24
/* 906F4 8008FAF4 46220002 */  mul.d      $f0, $f0, $f2
/* 906F8 8008FAF8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 906FC 8008FAFC 4481A000 */  mtc1       $at, $f20
/* 90700 8008FB00 46200620 */  cvt.s.d    $f24, $f0
/* 90704 8008FB04 4614C503 */  div.s      $f20, $f24, $f20
/* 90708 8008FB08 0C023B8C */  jal        func_8008EE30
/* 9070C 8008FB0C 4600A306 */   mov.s     $f12, $f20
/* 90710 8008FB10 4600A306 */  mov.s      $f12, $f20
/* 90714 8008FB14 0C023F88 */  jal        func_8008FE20
/* 90718 8008FB18 46000506 */   mov.s     $f20, $f0
/* 9071C 8008FB1C 4600A503 */  div.s      $f20, $f20, $f0
/* 90720 8008FB20 461CD100 */  add.s      $f4, $f26, $f28
/* 90724 8008FB24 461CD081 */  sub.s      $f2, $f26, $f28
/* 90728 8008FB28 46022103 */  div.s      $f4, $f4, $f2
/* 9072C 8008FB2C 461AD000 */  add.s      $f0, $f26, $f26
/* 90730 8008FB30 461C0002 */  mul.s      $f0, $f0, $f28
/* 90734 8008FB34 46020003 */  div.s      $f0, $f0, $f2
/* 90738 8008FB38 4616A583 */  div.s      $f22, $f20, $f22
/* 9073C 8008FB3C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 90740 8008FB40 44811000 */  mtc1       $at, $f2
/* 90744 8008FB44 00002821 */  addu       $a1, $zero, $zero
/* 90748 8008FB48 AE00003C */  sw         $zero, 0x3C($s0)
/* 9074C 8008FB4C E602002C */  swc1       $f2, 0x2C($s0)
/* 90750 8008FB50 E6140014 */  swc1       $f20, 0x14($s0)
/* 90754 8008FB54 E6040028 */  swc1       $f4, 0x28($s0)
/* 90758 8008FB58 E6000038 */  swc1       $f0, 0x38($s0)
/* 9075C 8008FB5C E6160000 */  swc1       $f22, 0x0($s0)
.L8008FB60:
/* 90760 8008FB60 00002021 */  addu       $a0, $zero, $zero
/* 90764 8008FB64 02001821 */  addu       $v1, $s0, $zero
.L8008FB68:
/* 90768 8008FB68 C4600000 */  lwc1       $f0, 0x0($v1)
/* 9076C 8008FB6C 461E0002 */  mul.s      $f0, $f0, $f30
/* 90770 8008FB70 24840001 */  addiu      $a0, $a0, 0x1
/* 90774 8008FB74 28820004 */  slti       $v0, $a0, 0x4
/* 90778 8008FB78 E4600000 */  swc1       $f0, 0x0($v1)
/* 9077C 8008FB7C 1440FFFA */  bnez       $v0, .L8008FB68
/* 90780 8008FB80 24630004 */   addiu     $v1, $v1, 0x4
/* 90784 8008FB84 24A50001 */  addiu      $a1, $a1, 0x1
/* 90788 8008FB88 28A20004 */  slti       $v0, $a1, 0x4
/* 9078C 8008FB8C 1440FFF4 */  bnez       $v0, .L8008FB60
/* 90790 8008FB90 26100010 */   addiu     $s0, $s0, 0x10
/* 90794 8008FB94 12200023 */  beqz       $s1, .L8008FC24
/* 90798 8008FB98 00000000 */   nop
/* 9079C 8008FB9C 461CD080 */  add.s      $f2, $f26, $f28
/* 907A0 8008FBA0 3C01800D */  lui        $at, %hi(D_800D6B48)
/* 907A4 8008FBA4 D4206B48 */  ldc1       $f0, %lo(D_800D6B48)($at)
/* 907A8 8008FBA8 460010A1 */  cvt.d.s    $f2, $f2
/* 907AC 8008FBAC 4620103E */  c.le.d     $f2, $f0
/* 907B0 8008FBB0 00000000 */  nop
/* 907B4 8008FBB4 00000000 */  nop
/* 907B8 8008FBB8 45010019 */  bc1t       .L8008FC20
/* 907BC 8008FBBC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 907C0 8008FBC0 3C01800D */  lui        $at, %hi(D_800D6B50)
/* 907C4 8008FBC4 D4206B50 */  ldc1       $f0, %lo(D_800D6B50)($at)
/* 907C8 8008FBC8 46220083 */  div.d      $f2, $f0, $f2
/* 907CC 8008FBCC 3C01800D */  lui        $at, %hi(D_800D6B58)
/* 907D0 8008FBD0 D4206B58 */  ldc1       $f0, %lo(D_800D6B58)($at)
/* 907D4 8008FBD4 4622003E */  c.le.d     $f0, $f2
/* 907D8 8008FBD8 00000000 */  nop
/* 907DC 8008FBDC 00000000 */  nop
/* 907E0 8008FBE0 45030006 */  bc1tl      .L8008FBFC
/* 907E4 8008FBE4 46201001 */   sub.d     $f0, $f2, $f0
/* 907E8 8008FBE8 4620100D */  trunc.w.d  $f0, $f2
/* 907EC 8008FBEC 44030000 */  mfc1       $v1, $f0
/* 907F0 8008FBF0 00000000 */  nop
/* 907F4 8008FBF4 08023F04 */  j          .L8008FC10
/* 907F8 8008FBF8 00601021 */   addu      $v0, $v1, $zero
.L8008FBFC:
/* 907FC 8008FBFC 4620008D */  trunc.w.d  $f2, $f0
/* 90800 8008FC00 44031000 */  mfc1       $v1, $f2
/* 90804 8008FC04 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 90808 8008FC08 00621825 */  or         $v1, $v1, $v0
/* 9080C 8008FC0C 00601021 */  addu       $v0, $v1, $zero
.L8008FC10:
/* 90810 8008FC10 A6220000 */  sh         $v0, 0x0($s1)
/* 90814 8008FC14 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 90818 8008FC18 14400002 */  bnez       $v0, .L8008FC24
/* 9081C 8008FC1C 24020001 */   addiu     $v0, $zero, 0x1
.L8008FC20:
/* 90820 8008FC20 A6220000 */  sh         $v0, 0x0($s1)
.L8008FC24:
/* 90824 8008FC24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 90828 8008FC28 8FB10014 */  lw         $s1, 0x14($sp)
/* 9082C 8008FC2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 90830 8008FC30 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 90834 8008FC34 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 90838 8008FC38 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 9083C 8008FC3C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 90840 8008FC40 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 90844 8008FC44 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 90848 8008FC48 03E00008 */  jr         $ra
/* 9084C 8008FC4C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8008FC50
/* 90850 8008FC50 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 90854 8008FC54 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 90858 8008FC58 C7B80098 */  lwc1       $f24, 0x98($sp)
/* 9085C 8008FC5C F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 90860 8008FC60 C7BA009C */  lwc1       $f26, 0x9C($sp)
/* 90864 8008FC64 F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 90868 8008FC68 C7BC00A0 */  lwc1       $f28, 0xA0($sp)
/* 9086C 8008FC6C F7B40060 */  sdc1       $f20, 0x60($sp)
/* 90870 8008FC70 4486A000 */  mtc1       $a2, $f20
/* 90874 8008FC74 AFB20058 */  sw         $s2, 0x58($sp)
/* 90878 8008FC78 00809021 */  addu       $s2, $a0, $zero
/* 9087C 8008FC7C AFB10054 */  sw         $s1, 0x54($sp)
/* 90880 8008FC80 00A08821 */  addu       $s1, $a1, $zero
/* 90884 8008FC84 AFB00050 */  sw         $s0, 0x50($sp)
/* 90888 8008FC88 27B00010 */  addiu      $s0, $sp, 0x10
/* 9088C 8008FC8C F7B60068 */  sdc1       $f22, 0x68($sp)
/* 90890 8008FC90 4487B000 */  mtc1       $a3, $f22
/* 90894 8008FC94 AFBF005C */  sw         $ra, 0x5C($sp)
/* 90898 8008FC98 0C023DF4 */  jal        func_8008F7D0
/* 9089C 8008FC9C 02002021 */   addu      $a0, $s0, $zero
/* 908A0 8008FCA0 3C01800D */  lui        $at, %hi(D_800D6B60)
/* 908A4 8008FCA4 D4206B60 */  ldc1       $f0, %lo(D_800D6B60)($at)
/* 908A8 8008FCA8 4600A521 */  cvt.d.s    $f20, $f20
/* 908AC 8008FCAC 4620A502 */  mul.d      $f20, $f20, $f0
/* 908B0 8008FCB0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 908B4 8008FCB4 44810000 */  mtc1       $at, $f0
/* 908B8 8008FCB8 4620A520 */  cvt.s.d    $f20, $f20
/* 908BC 8008FCBC 4600A503 */  div.s      $f20, $f20, $f0
/* 908C0 8008FCC0 0C023B8C */  jal        func_8008EE30
/* 908C4 8008FCC4 4600A306 */   mov.s     $f12, $f20
/* 908C8 8008FCC8 4600A306 */  mov.s      $f12, $f20
/* 908CC 8008FCCC 0C023F88 */  jal        func_8008FE20
/* 908D0 8008FCD0 46000506 */   mov.s     $f20, $f0
/* 908D4 8008FCD4 4600A503 */  div.s      $f20, $f20, $f0
/* 908D8 8008FCD8 461AC100 */  add.s      $f4, $f24, $f26
/* 908DC 8008FCDC 461AC081 */  sub.s      $f2, $f24, $f26
/* 908E0 8008FCE0 46022103 */  div.s      $f4, $f4, $f2
/* 908E4 8008FCE4 4618C000 */  add.s      $f0, $f24, $f24
/* 908E8 8008FCE8 461A0002 */  mul.s      $f0, $f0, $f26
/* 908EC 8008FCEC 46020003 */  div.s      $f0, $f0, $f2
/* 908F0 8008FCF0 4616A583 */  div.s      $f22, $f20, $f22
/* 908F4 8008FCF4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 908F8 8008FCF8 44811000 */  mtc1       $at, $f2
/* 908FC 8008FCFC 00002821 */  addu       $a1, $zero, $zero
/* 90900 8008FD00 AFA0004C */  sw         $zero, 0x4C($sp)
/* 90904 8008FD04 E7A2003C */  swc1       $f2, 0x3C($sp)
/* 90908 8008FD08 E7B40024 */  swc1       $f20, 0x24($sp)
/* 9090C 8008FD0C E7A40038 */  swc1       $f4, 0x38($sp)
/* 90910 8008FD10 E7A00048 */  swc1       $f0, 0x48($sp)
/* 90914 8008FD14 E7B60010 */  swc1       $f22, 0x10($sp)
.L8008FD18:
/* 90918 8008FD18 00002021 */  addu       $a0, $zero, $zero
/* 9091C 8008FD1C 02001821 */  addu       $v1, $s0, $zero
.L8008FD20:
/* 90920 8008FD20 C4600000 */  lwc1       $f0, 0x0($v1)
/* 90924 8008FD24 461C0002 */  mul.s      $f0, $f0, $f28
/* 90928 8008FD28 24840001 */  addiu      $a0, $a0, 0x1
/* 9092C 8008FD2C 28820004 */  slti       $v0, $a0, 0x4
/* 90930 8008FD30 E4600000 */  swc1       $f0, 0x0($v1)
/* 90934 8008FD34 1440FFFA */  bnez       $v0, .L8008FD20
/* 90938 8008FD38 24630004 */   addiu     $v1, $v1, 0x4
/* 9093C 8008FD3C 24A50001 */  addiu      $a1, $a1, 0x1
/* 90940 8008FD40 28A20004 */  slti       $v0, $a1, 0x4
/* 90944 8008FD44 1440FFF4 */  bnez       $v0, .L8008FD18
/* 90948 8008FD48 26100010 */   addiu     $s0, $s0, 0x10
/* 9094C 8008FD4C 52200025 */  beql       $s1, $zero, .L8008FDE4
/* 90950 8008FD50 27A40010 */   addiu     $a0, $sp, 0x10
/* 90954 8008FD54 461AC080 */  add.s      $f2, $f24, $f26
/* 90958 8008FD58 3C01800D */  lui        $at, %hi(D_800D6B68)
/* 9095C 8008FD5C D4206B68 */  ldc1       $f0, %lo(D_800D6B68)($at)
/* 90960 8008FD60 460010A1 */  cvt.d.s    $f2, $f2
/* 90964 8008FD64 4620103E */  c.le.d     $f2, $f0
/* 90968 8008FD68 00000000 */  nop
/* 9096C 8008FD6C 00000000 */  nop
/* 90970 8008FD70 4501001A */  bc1t       .L8008FDDC
/* 90974 8008FD74 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 90978 8008FD78 3C01800D */  lui        $at, %hi(D_800D6B70)
/* 9097C 8008FD7C D4206B70 */  ldc1       $f0, %lo(D_800D6B70)($at)
/* 90980 8008FD80 46220083 */  div.d      $f2, $f0, $f2
/* 90984 8008FD84 3C01800D */  lui        $at, %hi(D_800D6B78)
/* 90988 8008FD88 D4206B78 */  ldc1       $f0, %lo(D_800D6B78)($at)
/* 9098C 8008FD8C 4622003E */  c.le.d     $f0, $f2
/* 90990 8008FD90 00000000 */  nop
/* 90994 8008FD94 00000000 */  nop
/* 90998 8008FD98 45030006 */  bc1tl      .L8008FDB4
/* 9099C 8008FD9C 46201001 */   sub.d     $f0, $f2, $f0
/* 909A0 8008FDA0 4620100D */  trunc.w.d  $f0, $f2
/* 909A4 8008FDA4 44030000 */  mfc1       $v1, $f0
/* 909A8 8008FDA8 00000000 */  nop
/* 909AC 8008FDAC 08023F72 */  j          .L8008FDC8
/* 909B0 8008FDB0 00601021 */   addu      $v0, $v1, $zero
.L8008FDB4:
/* 909B4 8008FDB4 4620008D */  trunc.w.d  $f2, $f0
/* 909B8 8008FDB8 44031000 */  mfc1       $v1, $f2
/* 909BC 8008FDBC 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 909C0 8008FDC0 00621825 */  or         $v1, $v1, $v0
/* 909C4 8008FDC4 00601021 */  addu       $v0, $v1, $zero
.L8008FDC8:
/* 909C8 8008FDC8 A6220000 */  sh         $v0, 0x0($s1)
/* 909CC 8008FDCC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 909D0 8008FDD0 14400004 */  bnez       $v0, .L8008FDE4
/* 909D4 8008FDD4 27A40010 */   addiu     $a0, $sp, 0x10
/* 909D8 8008FDD8 24020001 */  addiu      $v0, $zero, 0x1
.L8008FDDC:
/* 909DC 8008FDDC A6220000 */  sh         $v0, 0x0($s1)
/* 909E0 8008FDE0 27A40010 */  addiu      $a0, $sp, 0x10
.L8008FDE4:
/* 909E4 8008FDE4 0C023DA4 */  jal        func_8008F690
/* 909E8 8008FDE8 02402821 */   addu      $a1, $s2, $zero
/* 909EC 8008FDEC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 909F0 8008FDF0 8FB20058 */  lw         $s2, 0x58($sp)
/* 909F4 8008FDF4 8FB10054 */  lw         $s1, 0x54($sp)
/* 909F8 8008FDF8 8FB00050 */  lw         $s0, 0x50($sp)
/* 909FC 8008FDFC D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 90A00 8008FE00 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 90A04 8008FE04 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 90A08 8008FE08 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 90A0C 8008FE0C D7B40060 */  ldc1       $f20, 0x60($sp)
/* 90A10 8008FE10 03E00008 */  jr         $ra
/* 90A14 8008FE14 27BD0088 */   addiu     $sp, $sp, 0x88
/* 90A18 8008FE18 00000000 */  nop
/* 90A1C 8008FE1C 00000000 */  nop

glabel func_8008FE20
/* 90A20 8008FE20 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 90A24 8008FE24 8FA20000 */  lw         $v0, 0x0($sp)
/* 90A28 8008FE28 00021D83 */  sra        $v1, $v0, 22
/* 90A2C 8008FE2C 306301FF */  andi       $v1, $v1, 0x1FF
/* 90A30 8008FE30 286200FF */  slti       $v0, $v1, 0xFF
/* 90A34 8008FE34 1040001B */  beqz       $v0, .L8008FEA4
/* 90A38 8008FE38 286200E6 */   slti      $v0, $v1, 0xE6
/* 90A3C 8008FE3C 14400017 */  bnez       $v0, .L8008FE9C
/* 90A40 8008FE40 460061A1 */   cvt.d.s   $f6, $f12
/* 90A44 8008FE44 00000000 */  nop
/* 90A48 8008FE48 46263102 */  mul.d      $f4, $f6, $f6
/* 90A4C 8008FE4C 3C01800D */  lui        $at, %hi(D_800D6BA0)
/* 90A50 8008FE50 D4206BA0 */  ldc1       $f0, %lo(D_800D6BA0)($at)
/* 90A54 8008FE54 46240002 */  mul.d      $f0, $f0, $f4
/* 90A58 8008FE58 3C01800D */  lui        $at, %hi(D_800D6B98)
/* 90A5C 8008FE5C D4226B98 */  ldc1       $f2, %lo(D_800D6B98)($at)
/* 90A60 8008FE60 46220000 */  add.d      $f0, $f0, $f2
/* 90A64 8008FE64 46240002 */  mul.d      $f0, $f0, $f4
/* 90A68 8008FE68 3C01800D */  lui        $at, %hi(D_800D6B90)
/* 90A6C 8008FE6C D4226B90 */  ldc1       $f2, %lo(D_800D6B90)($at)
/* 90A70 8008FE70 46220000 */  add.d      $f0, $f0, $f2
/* 90A74 8008FE74 46240002 */  mul.d      $f0, $f0, $f4
/* 90A78 8008FE78 00000000 */  nop
/* 90A7C 8008FE7C 46243082 */  mul.d      $f2, $f6, $f4
/* 90A80 8008FE80 3C01800D */  lui        $at, %hi(D_800D6B88)
/* 90A84 8008FE84 D4246B88 */  ldc1       $f4, %lo(D_800D6B88)($at)
/* 90A88 8008FE88 46240000 */  add.d      $f0, $f0, $f4
/* 90A8C 8008FE8C 46201082 */  mul.d      $f2, $f2, $f0
/* 90A90 8008FE90 46223000 */  add.d      $f0, $f6, $f2
/* 90A94 8008FE94 08023FEE */  j          .L8008FFB8
/* 90A98 8008FE98 46200020 */   cvt.s.d   $f0, $f0
.L8008FE9C:
/* 90A9C 8008FE9C 08023FEE */  j          .L8008FFB8
/* 90AA0 8008FEA0 46006006 */   mov.s     $f0, $f12
.L8008FEA4:
/* 90AA4 8008FEA4 28620136 */  slti       $v0, $v1, 0x136
/* 90AA8 8008FEA8 1040003A */  beqz       $v0, .L8008FF94
/* 90AAC 8008FEAC 00000000 */   nop
/* 90AB0 8008FEB0 3C01800D */  lui        $at, %hi(D_800D6BA8)
/* 90AB4 8008FEB4 D4206BA8 */  ldc1       $f0, %lo(D_800D6BA8)($at)
/* 90AB8 8008FEB8 460061A1 */  cvt.d.s    $f6, $f12
/* 90ABC 8008FEBC 46203102 */  mul.d      $f4, $f6, $f0
/* 90AC0 8008FEC0 44800000 */  mtc1       $zero, $f0
/* 90AC4 8008FEC4 44800800 */  mtc1       $zero, $f1
/* 90AC8 8008FEC8 00000000 */  nop
/* 90ACC 8008FECC 4624003E */  c.le.d     $f0, $f4
/* 90AD0 8008FED0 00000000 */  nop
/* 90AD4 8008FED4 45000005 */  bc1f       .L8008FEEC
/* 90AD8 8008FED8 00000000 */   nop
/* 90ADC 8008FEDC 3C01800D */  lui        $at, %hi(D_800D6BC8)
/* 90AE0 8008FEE0 D4206BC8 */  ldc1       $f0, %lo(D_800D6BC8)($at)
/* 90AE4 8008FEE4 08023FBE */  j          .L8008FEF8
/* 90AE8 8008FEE8 46202000 */   add.d     $f0, $f4, $f0
.L8008FEEC:
/* 90AEC 8008FEEC 3C01800D */  lui        $at, %hi(D_800D6BD0)
/* 90AF0 8008FEF0 D4206BD0 */  ldc1       $f0, %lo(D_800D6BD0)($at)
/* 90AF4 8008FEF4 46202001 */  sub.d      $f0, $f4, $f0
.L8008FEF8:
/* 90AF8 8008FEF8 4620008D */  trunc.w.d  $f2, $f0
/* 90AFC 8008FEFC 44031000 */  mfc1       $v1, $f2
/* 90B00 8008FF00 3C01800D */  lui        $at, %hi(D_800D6BB0)
/* 90B04 8008FF04 D4226BB0 */  ldc1       $f2, %lo(D_800D6BB0)($at)
/* 90B08 8008FF08 44832000 */  mtc1       $v1, $f4
/* 90B0C 8008FF0C 00000000 */  nop
/* 90B10 8008FF10 46802121 */  cvt.d.w    $f4, $f4
/* 90B14 8008FF14 46222082 */  mul.d      $f2, $f4, $f2
/* 90B18 8008FF18 3C01800D */  lui        $at, %hi(D_800D6BB8)
/* 90B1C 8008FF1C D4206BB8 */  ldc1       $f0, %lo(D_800D6BB8)($at)
/* 90B20 8008FF20 46202002 */  mul.d      $f0, $f4, $f0
/* 90B24 8008FF24 46223181 */  sub.d      $f6, $f6, $f2
/* 90B28 8008FF28 46203181 */  sub.d      $f6, $f6, $f0
/* 90B2C 8008FF2C 46263102 */  mul.d      $f4, $f6, $f6
/* 90B30 8008FF30 3C01800D */  lui        $at, %hi(D_800D6BA0)
/* 90B34 8008FF34 D4206BA0 */  ldc1       $f0, %lo(D_800D6BA0)($at)
/* 90B38 8008FF38 46240002 */  mul.d      $f0, $f0, $f4
/* 90B3C 8008FF3C 3C01800D */  lui        $at, %hi(D_800D6B98)
/* 90B40 8008FF40 D4226B98 */  ldc1       $f2, %lo(D_800D6B98)($at)
/* 90B44 8008FF44 46220000 */  add.d      $f0, $f0, $f2
/* 90B48 8008FF48 46240002 */  mul.d      $f0, $f0, $f4
/* 90B4C 8008FF4C 3C01800D */  lui        $at, %hi(D_800D6B90)
/* 90B50 8008FF50 D4226B90 */  ldc1       $f2, %lo(D_800D6B90)($at)
/* 90B54 8008FF54 46220000 */  add.d      $f0, $f0, $f2
/* 90B58 8008FF58 46240002 */  mul.d      $f0, $f0, $f4
/* 90B5C 8008FF5C 00000000 */  nop
/* 90B60 8008FF60 46243082 */  mul.d      $f2, $f6, $f4
/* 90B64 8008FF64 3C01800D */  lui        $at, %hi(D_800D6B88)
/* 90B68 8008FF68 D4246B88 */  ldc1       $f4, %lo(D_800D6B88)($at)
/* 90B6C 8008FF6C 46240000 */  add.d      $f0, $f0, $f4
/* 90B70 8008FF70 46201082 */  mul.d      $f2, $f2, $f0
/* 90B74 8008FF74 30620001 */  andi       $v0, $v1, 0x1
/* 90B78 8008FF78 14400003 */  bnez       $v0, .L8008FF88
/* 90B7C 8008FF7C 46223000 */   add.d     $f0, $f6, $f2
/* 90B80 8008FF80 08023FEE */  j          .L8008FFB8
/* 90B84 8008FF84 46200020 */   cvt.s.d   $f0, $f0
.L8008FF88:
/* 90B88 8008FF88 46200020 */  cvt.s.d    $f0, $f0
/* 90B8C 8008FF8C 08023FEE */  j          .L8008FFB8
/* 90B90 8008FF90 46000007 */   neg.s     $f0, $f0
.L8008FF94:
/* 90B94 8008FF94 460C6032 */  c.eq.s     $f12, $f12
/* 90B98 8008FF98 00000000 */  nop
/* 90B9C 8008FF9C 45000004 */  bc1f       .L8008FFB0
/* 90BA0 8008FFA0 00000000 */   nop
/* 90BA4 8008FFA4 3C01800D */  lui        $at, %hi(D_800D6BC0)
/* 90BA8 8008FFA8 08023FEE */  j          .L8008FFB8
/* 90BAC 8008FFAC C4206BC0 */   lwc1      $f0, %lo(D_800D6BC0)($at)
.L8008FFB0:
/* 90BB0 8008FFB0 3C01800D */  lui        $at, %hi(D_800D6C40)
/* 90BB4 8008FFB4 C4206C40 */  lwc1       $f0, %lo(D_800D6C40)($at)
.L8008FFB8:
/* 90BB8 8008FFB8 03E00008 */  jr         $ra
/* 90BBC 8008FFBC 00000000 */   nop

glabel func_8008FFC0
/* 90BC0 8008FFC0 3C03800D */  lui        $v1, %hi(D_800C9D60)
/* 90BC4 8008FFC4 8C639D60 */  lw         $v1, %lo(D_800C9D60)($v1)
/* 90BC8 8008FFC8 00031880 */  sll        $v1, $v1, 2
/* 90BCC 8008FFCC 24620002 */  addiu      $v0, $v1, 0x2
/* 90BD0 8008FFD0 24630003 */  addiu      $v1, $v1, 0x3
/* 90BD4 8008FFD4 00430018 */  mult       $v0, $v1
/* 90BD8 8008FFD8 00001012 */  mflo       $v0
/* 90BDC 8008FFDC 00021082 */  srl        $v0, $v0, 2
/* 90BE0 8008FFE0 3C01800D */  lui        $at, %hi(D_800C9D60)
/* 90BE4 8008FFE4 03E00008 */  jr         $ra
/* 90BE8 8008FFE8 AC229D60 */   sw        $v0, %lo(D_800C9D60)($at)
/* 90BEC 8008FFEC 00000000 */  nop

# Handwritten function
glabel func_8008FFF0
/* 90BF0 8008FFF0 18A00020 */  blez       $a1, .L80090074
/* 90BF4 8008FFF4 00000000 */   nop
/* 90BF8 8008FFF8 240B2000 */  addiu      $t3, $zero, 0x2000
/* 90BFC 8008FFFC 00AB082B */  sltu       $at, $a1, $t3
/* 90C00 80090000 1020001E */  beqz       $at, .L8009007C
/* 90C04 80090004 00000000 */   nop
/* 90C08 80090008 00804021 */  addu       $t0, $a0, $zero
/* 90C0C 8009000C 00854821 */  addu       $t1, $a0, $a1
/* 90C10 80090010 0109082B */  sltu       $at, $t0, $t1
/* 90C14 80090014 10200017 */  beqz       $at, .L80090074
/* 90C18 80090018 00000000 */   nop
/* 90C1C 8009001C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 90C20 80090020 310A000F */  andi       $t2, $t0, 0xF
/* 90C24 80090024 11400007 */  beqz       $t2, .L80090044
/* 90C28 80090028 00000000 */   nop
/* 90C2C 8009002C 010A4023 */  subu       $t0, $t0, $t2
/* 90C30 80090030 BD150000 */  cache      0x15, 0x0($t0)
/* 90C34 80090034 0109082B */  sltu       $at, $t0, $t1
/* 90C38 80090038 1020000E */  beqz       $at, .L80090074
/* 90C3C 8009003C 00000000 */   nop
/* 90C40 80090040 25080010 */  addiu      $t0, $t0, 0x10
.L80090044:
/* 90C44 80090044 312A000F */  andi       $t2, $t1, 0xF
/* 90C48 80090048 11400006 */  beqz       $t2, .L80090064
/* 90C4C 8009004C 00000000 */   nop
/* 90C50 80090050 012A4823 */  subu       $t1, $t1, $t2
/* 90C54 80090054 BD350010 */  cache      0x15, 0x10($t1)
/* 90C58 80090058 0128082B */  sltu       $at, $t1, $t0
/* 90C5C 8009005C 14200005 */  bnez       $at, .L80090074
/* 90C60 80090060 00000000 */   nop
.L80090064:
/* 90C64 80090064 BD110000 */  cache      0x11, 0x0($t0)
/* 90C68 80090068 0109082B */  sltu       $at, $t0, $t1
/* 90C6C 8009006C 1420FFFD */  bnez       $at, .L80090064
/* 90C70 80090070 25080010 */   addiu     $t0, $t0, 0x10
.L80090074:
/* 90C74 80090074 03E00008 */  jr         $ra
/* 90C78 80090078 00000000 */   nop
.L8009007C:
/* 90C7C 8009007C 3C088000 */  lui        $t0, 0x8000
/* 90C80 80090080 010B4821 */  addu       $t1, $t0, $t3
/* 90C84 80090084 2529FFF0 */  addiu      $t1, $t1, -0x10
.L80090088:
/* 90C88 80090088 BD010000 */  cache      0x01, 0x0($t0)
/* 90C8C 8009008C 0109082B */  sltu       $at, $t0, $t1
/* 90C90 80090090 1420FFFD */  bnez       $at, .L80090088
/* 90C94 80090094 25080010 */   addiu     $t0, $t0, 0x10
/* 90C98 80090098 03E00008 */  jr         $ra
/* 90C9C 8009009C 00000000 */   nop

# Handwritten function
glabel func_800900A0
/* 90CA0 800900A0 3C088000 */  lui        $t0, 0x8000
/* 90CA4 800900A4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 90CA8 800900A8 010A4821 */  addu       $t1, $t0, $t2
/* 90CAC 800900AC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800900B0:
/* 90CB0 800900B0 BD010000 */  cache      0x01, 0x0($t0)
/* 90CB4 800900B4 0109082B */  sltu       $at, $t0, $t1
/* 90CB8 800900B8 1420FFFD */  bnez       $at, .L800900B0
/* 90CBC 800900BC 25080010 */   addiu     $t0, $t0, 0x10
/* 90CC0 800900C0 03E00008 */  jr         $ra
/* 90CC4 800900C4 00000000 */   nop
/* 90CC8 800900C8 00000000 */  nop
/* 90CCC 800900CC 00000000 */  nop

glabel func_800900D0
/* 90CD0 800900D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 90CD4 800900D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 90CD8 800900D8 AFB40020 */  sw         $s4, 0x20($sp)
/* 90CDC 800900DC AFB3001C */  sw         $s3, 0x1C($sp)
/* 90CE0 800900E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 90CE4 800900E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 90CE8 800900E8 0C0005EC */  jal        func_800017B0
/* 90CEC 800900EC AFB00010 */   sw        $s0, 0x10($sp)
/* 90CF0 800900F0 0C0252D4 */  jal        func_80094B50
/* 90CF4 800900F4 0040A021 */   addu      $s4, $v0, $zero
/* 90CF8 800900F8 3C03802C */  lui        $v1, %hi(D_802C6680)
/* 90CFC 800900FC 8C636680 */  lw         $v1, %lo(D_802C6680)($v1)
/* 90D00 80090100 3C12802D */  lui        $s2, %hi(D_802D2FC8)
/* 90D04 80090104 8E522FC8 */  lw         $s2, %lo(D_802D2FC8)($s2)
/* 90D08 80090108 3C13802D */  lui        $s3, %hi(D_802D2FCC)
/* 90D0C 8009010C 8E732FCC */  lw         $s3, %lo(D_802D2FCC)($s3)
/* 90D10 80090110 02802021 */  addu       $a0, $s4, $zero
/* 90D14 80090114 0C0005F4 */  jal        __osRestoreInt
/* 90D18 80090118 00438023 */   subu      $s0, $v0, $v1
/* 90D1C 8009011C 02008821 */  addu       $s1, $s0, $zero
/* 90D20 80090120 00008021 */  addu       $s0, $zero, $zero
/* 90D24 80090124 02711821 */  addu       $v1, $s3, $s1
/* 90D28 80090128 0071202B */  sltu       $a0, $v1, $s1
/* 90D2C 8009012C 02501021 */  addu       $v0, $s2, $s0
/* 90D30 80090130 00441021 */  addu       $v0, $v0, $a0
/* 90D34 80090134 8FBF0024 */  lw         $ra, 0x24($sp)
/* 90D38 80090138 8FB40020 */  lw         $s4, 0x20($sp)
/* 90D3C 8009013C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 90D40 80090140 8FB20018 */  lw         $s2, 0x18($sp)
/* 90D44 80090144 8FB10014 */  lw         $s1, 0x14($sp)
/* 90D48 80090148 8FB00010 */  lw         $s0, 0x10($sp)
/* 90D4C 8009014C 03E00008 */  jr         $ra
/* 90D50 80090150 27BD0028 */   addiu     $sp, $sp, 0x28
/* 90D54 80090154 00000000 */  nop
/* 90D58 80090158 00000000 */  nop
/* 90D5C 8009015C 00000000 */  nop

glabel func_80090160
/* 90D60 80090160 3C02800D */  lui        $v0, %hi(D_800C9D70)
/* 90D64 80090164 8C429D70 */  lw         $v0, %lo(D_800C9D70)($v0)
/* 90D68 80090168 00002021 */  addu       $a0, $zero, $zero
/* 90D6C 8009016C 00002821 */  addu       $a1, $zero, $zero
/* 90D70 80090170 3C01802D */  lui        $at, %hi(D_802D2FC8)
/* 90D74 80090174 AC242FC8 */  sw         $a0, %lo(D_802D2FC8)($at)
/* 90D78 80090178 3C01802D */  lui        $at, %hi(D_802D2FCC)
/* 90D7C 8009017C AC252FCC */  sw         $a1, %lo(D_802D2FCC)($at)
/* 90D80 80090180 3C01802C */  lui        $at, %hi(D_802C6680)
/* 90D84 80090184 AC206680 */  sw         $zero, %lo(D_802C6680)($at)
/* 90D88 80090188 3C01802D */  lui        $at, %hi(D_802D0BB0)
/* 90D8C 8009018C AC200BB0 */  sw         $zero, %lo(D_802D0BB0)($at)
/* 90D90 80090190 AC440010 */  sw         $a0, 0x10($v0)
/* 90D94 80090194 AC450014 */  sw         $a1, 0x14($v0)
/* 90D98 80090198 AC440008 */  sw         $a0, 0x8($v0)
/* 90D9C 8009019C AC45000C */  sw         $a1, 0xC($v0)
/* 90DA0 800901A0 AC420004 */  sw         $v0, 0x4($v0)
/* 90DA4 800901A4 AC420000 */  sw         $v0, 0x0($v0)
/* 90DA8 800901A8 AC400018 */  sw         $zero, 0x18($v0)
/* 90DAC 800901AC 03E00008 */  jr         $ra
/* 90DB0 800901B0 AC40001C */   sw        $zero, 0x1C($v0)

glabel func_800901B4
/* 90DB4 800901B4 3C03800D */  lui        $v1, %hi(D_800C9D70)
/* 90DB8 800901B8 8C639D70 */  lw         $v1, %lo(D_800C9D70)($v1)
/* 90DBC 800901BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 90DC0 800901C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 90DC4 800901C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 90DC8 800901C8 8C620000 */  lw         $v0, 0x0($v1)
/* 90DCC 800901CC 10430044 */  beq        $v0, $v1, .L800902E0
/* 90DD0 800901D0 00000000 */   nop
.L800901D4:
/* 90DD4 800901D4 3C02800D */  lui        $v0, %hi(D_800C9D70)
/* 90DD8 800901D8 8C429D70 */  lw         $v0, %lo(D_800C9D70)($v0)
/* 90DDC 800901DC 8C500000 */  lw         $s0, 0x0($v0)
/* 90DE0 800901E0 16020006 */  bne        $s0, $v0, .L800901FC
/* 90DE4 800901E4 00000000 */   nop
/* 90DE8 800901E8 0C0252D8 */  jal        func_80094B60
/* 90DEC 800901EC 00002021 */   addu      $a0, $zero, $zero
/* 90DF0 800901F0 3C018031 */  lui        $at, %hi(D_803128C0)
/* 90DF4 800901F4 080240B8 */  j          .L800902E0
/* 90DF8 800901F8 AC2028C0 */   sw        $zero, %lo(D_803128C0)($at)
.L800901FC:
/* 90DFC 800901FC 0C0252D4 */  jal        func_80094B50
/* 90E00 80090200 00000000 */   nop
/* 90E04 80090204 3C038031 */  lui        $v1, %hi(D_803128C0)
/* 90E08 80090208 8C6328C0 */  lw         $v1, %lo(D_803128C0)($v1)
/* 90E0C 8009020C 3C018031 */  lui        $at, %hi(D_803128C0)
/* 90E10 80090210 AC2228C0 */  sw         $v0, %lo(D_803128C0)($at)
/* 90E14 80090214 00431023 */  subu       $v0, $v0, $v1
/* 90E18 80090218 8E030010 */  lw         $v1, 0x10($s0)
/* 90E1C 8009021C 00403821 */  addu       $a3, $v0, $zero
/* 90E20 80090220 00003021 */  addu       $a2, $zero, $zero
/* 90E24 80090224 00C3102B */  sltu       $v0, $a2, $v1
/* 90E28 80090228 14400007 */  bnez       $v0, .L80090248
/* 90E2C 8009022C 00000000 */   nop
/* 90E30 80090230 14660010 */  bne        $v1, $a2, .L80090274
/* 90E34 80090234 00000000 */   nop
/* 90E38 80090238 8E020014 */  lw         $v0, 0x14($s0)
/* 90E3C 8009023C 00E2102B */  sltu       $v0, $a3, $v0
/* 90E40 80090240 1040000C */  beqz       $v0, .L80090274
/* 90E44 80090244 00000000 */   nop
.L80090248:
/* 90E48 80090248 8E040010 */  lw         $a0, 0x10($s0)
/* 90E4C 8009024C 8E050014 */  lw         $a1, 0x14($s0)
/* 90E50 80090250 00A7102B */  sltu       $v0, $a1, $a3
/* 90E54 80090254 00A72823 */  subu       $a1, $a1, $a3
/* 90E58 80090258 00862023 */  subu       $a0, $a0, $a2
/* 90E5C 8009025C 00822023 */  subu       $a0, $a0, $v0
/* 90E60 80090260 AE040010 */  sw         $a0, 0x10($s0)
/* 90E64 80090264 0C0240BC */  jal        func_800902F0
/* 90E68 80090268 AE050014 */   sw        $a1, 0x14($s0)
/* 90E6C 8009026C 080240B8 */  j          .L800902E0
/* 90E70 80090270 00000000 */   nop
.L80090274:
/* 90E74 80090274 8E030004 */  lw         $v1, 0x4($s0)
/* 90E78 80090278 8E020000 */  lw         $v0, 0x0($s0)
/* 90E7C 8009027C AC620000 */  sw         $v0, 0x0($v1)
/* 90E80 80090280 8E030000 */  lw         $v1, 0x0($s0)
/* 90E84 80090284 8E020004 */  lw         $v0, 0x4($s0)
/* 90E88 80090288 AC620004 */  sw         $v0, 0x4($v1)
/* 90E8C 8009028C 8E040018 */  lw         $a0, 0x18($s0)
/* 90E90 80090290 AE000000 */  sw         $zero, 0x0($s0)
/* 90E94 80090294 10800004 */  beqz       $a0, .L800902A8
/* 90E98 80090298 AE000004 */   sw        $zero, 0x4($s0)
/* 90E9C 8009029C 8E05001C */  lw         $a1, 0x1C($s0)
/* 90EA0 800902A0 0C000B9C */  jal        osSendMesg
/* 90EA4 800902A4 00003021 */   addu      $a2, $zero, $zero
.L800902A8:
/* 90EA8 800902A8 8E020008 */  lw         $v0, 0x8($s0)
/* 90EAC 800902AC 14400004 */  bnez       $v0, .L800902C0
/* 90EB0 800902B0 00000000 */   nop
/* 90EB4 800902B4 8E02000C */  lw         $v0, 0xC($s0)
/* 90EB8 800902B8 1040FFC6 */  beqz       $v0, .L800901D4
/* 90EBC 800902BC 00000000 */   nop
.L800902C0:
/* 90EC0 800902C0 8E020008 */  lw         $v0, 0x8($s0)
/* 90EC4 800902C4 8E03000C */  lw         $v1, 0xC($s0)
/* 90EC8 800902C8 02002021 */  addu       $a0, $s0, $zero
/* 90ECC 800902CC AC820010 */  sw         $v0, 0x10($a0)
/* 90ED0 800902D0 0C0240D4 */  jal        func_80090350
/* 90ED4 800902D4 AC830014 */   sw        $v1, 0x14($a0)
/* 90ED8 800902D8 08024075 */  j          .L800901D4
/* 90EDC 800902DC 00000000 */   nop
.L800902E0:
/* 90EE0 800902E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 90EE4 800902E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 90EE8 800902E8 03E00008 */  jr         $ra
/* 90EEC 800902EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800902F0
/* 90EF0 800902F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 90EF4 800902F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 90EF8 800902F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 90EFC 800902FC 00808021 */  addu       $s0, $a0, $zero
/* 90F00 80090300 00A08821 */  addu       $s1, $a1, $zero
/* 90F04 80090304 AFBF0024 */  sw         $ra, 0x24($sp)
/* 90F08 80090308 0C0005EC */  jal        func_800017B0
/* 90F0C 8009030C AFB20020 */   sw        $s2, 0x20($sp)
/* 90F10 80090310 0C0252D4 */  jal        func_80094B50
/* 90F14 80090314 00409021 */   addu      $s2, $v0, $zero
/* 90F18 80090318 00402821 */  addu       $a1, $v0, $zero
/* 90F1C 8009031C 00002021 */  addu       $a0, $zero, $zero
/* 90F20 80090320 3C018031 */  lui        $at, %hi(D_803128C0)
/* 90F24 80090324 AC2228C0 */  sw         $v0, %lo(D_803128C0)($at)
/* 90F28 80090328 0C0252D8 */  jal        func_80094B60
/* 90F2C 8009032C 02252021 */   addu      $a0, $s1, $a1
/* 90F30 80090330 0C0005F4 */  jal        __osRestoreInt
/* 90F34 80090334 02402021 */   addu      $a0, $s2, $zero
/* 90F38 80090338 8FBF0024 */  lw         $ra, 0x24($sp)
/* 90F3C 8009033C 8FB20020 */  lw         $s2, 0x20($sp)
/* 90F40 80090340 8FB1001C */  lw         $s1, 0x1C($sp)
/* 90F44 80090344 8FB00018 */  lw         $s0, 0x18($sp)
/* 90F48 80090348 03E00008 */  jr         $ra
/* 90F4C 8009034C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80090350
/* 90F50 80090350 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 90F54 80090354 AFB20018 */  sw         $s2, 0x18($sp)
/* 90F58 80090358 00809021 */  addu       $s2, $a0, $zero
/* 90F5C 8009035C AFBF001C */  sw         $ra, 0x1C($sp)
/* 90F60 80090360 AFB10014 */  sw         $s1, 0x14($sp)
/* 90F64 80090364 0C0005EC */  jal        func_800017B0
/* 90F68 80090368 AFB00010 */   sw        $s0, 0x10($sp)
/* 90F6C 8009036C 3C03800D */  lui        $v1, %hi(D_800C9D70)
/* 90F70 80090370 8C639D70 */  lw         $v1, %lo(D_800C9D70)($v1)
/* 90F74 80090374 8C660000 */  lw         $a2, 0x0($v1)
/* 90F78 80090378 8E500010 */  lw         $s0, 0x10($s2)
/* 90F7C 8009037C 8E510014 */  lw         $s1, 0x14($s2)
/* 90F80 80090380 10C30017 */  beq        $a2, $v1, .L800903E0
/* 90F84 80090384 00403821 */   addu      $a3, $v0, $zero
/* 90F88 80090388 080240EE */  j          .L800903B8
/* 90F8C 8009038C 00000000 */   nop
.L80090390:
/* 90F90 80090390 8CC20010 */  lw         $v0, 0x10($a2)
/* 90F94 80090394 8CC30014 */  lw         $v1, 0x14($a2)
/* 90F98 80090398 8CC60000 */  lw         $a2, 0x0($a2)
/* 90F9C 8009039C 3C04800D */  lui        $a0, %hi(D_800C9D70)
/* 90FA0 800903A0 8C849D70 */  lw         $a0, %lo(D_800C9D70)($a0)
/* 90FA4 800903A4 0223282B */  sltu       $a1, $s1, $v1
/* 90FA8 800903A8 02238823 */  subu       $s1, $s1, $v1
/* 90FAC 800903AC 02028023 */  subu       $s0, $s0, $v0
/* 90FB0 800903B0 10C4000B */  beq        $a2, $a0, .L800903E0
/* 90FB4 800903B4 02058023 */   subu      $s0, $s0, $a1
.L800903B8:
/* 90FB8 800903B8 8CC30010 */  lw         $v1, 0x10($a2)
/* 90FBC 800903BC 0070102B */  sltu       $v0, $v1, $s0
/* 90FC0 800903C0 1440FFF3 */  bnez       $v0, .L80090390
/* 90FC4 800903C4 00000000 */   nop
/* 90FC8 800903C8 16030005 */  bne        $s0, $v1, .L800903E0
/* 90FCC 800903CC 00000000 */   nop
/* 90FD0 800903D0 8CC20014 */  lw         $v0, 0x14($a2)
/* 90FD4 800903D4 0051102B */  sltu       $v0, $v0, $s1
/* 90FD8 800903D8 1440FFED */  bnez       $v0, .L80090390
/* 90FDC 800903DC 00000000 */   nop
.L800903E0:
/* 90FE0 800903E0 3C02800D */  lui        $v0, %hi(D_800C9D70)
/* 90FE4 800903E4 8C429D70 */  lw         $v0, %lo(D_800C9D70)($v0)
/* 90FE8 800903E8 AE500010 */  sw         $s0, 0x10($s2)
/* 90FEC 800903EC AE510014 */  sw         $s1, 0x14($s2)
/* 90FF0 800903F0 50C2000A */  beql       $a2, $v0, .L8009041C
/* 90FF4 800903F4 AE460000 */   sw        $a2, 0x0($s2)
/* 90FF8 800903F8 8CC20010 */  lw         $v0, 0x10($a2)
/* 90FFC 800903FC 8CC30014 */  lw         $v1, 0x14($a2)
/* 91000 80090400 0071202B */  sltu       $a0, $v1, $s1
/* 91004 80090404 00711823 */  subu       $v1, $v1, $s1
/* 91008 80090408 00501023 */  subu       $v0, $v0, $s0
/* 9100C 8009040C 00441023 */  subu       $v0, $v0, $a0
/* 91010 80090410 ACC20010 */  sw         $v0, 0x10($a2)
/* 91014 80090414 ACC30014 */  sw         $v1, 0x14($a2)
/* 91018 80090418 AE460000 */  sw         $a2, 0x0($s2)
.L8009041C:
/* 9101C 8009041C 8CC20004 */  lw         $v0, 0x4($a2)
/* 91020 80090420 AE420004 */  sw         $v0, 0x4($s2)
/* 91024 80090424 8CC20004 */  lw         $v0, 0x4($a2)
/* 91028 80090428 00E02021 */  addu       $a0, $a3, $zero
/* 9102C 8009042C AC520000 */  sw         $s2, 0x0($v0)
/* 91030 80090430 0C0005F4 */  jal        __osRestoreInt
/* 91034 80090434 ACD20004 */   sw        $s2, 0x4($a2)
/* 91038 80090438 02001021 */  addu       $v0, $s0, $zero
/* 9103C 8009043C 02201821 */  addu       $v1, $s1, $zero
/* 91040 80090440 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91044 80090444 8FB20018 */  lw         $s2, 0x18($sp)
/* 91048 80090448 8FB10014 */  lw         $s1, 0x14($sp)
/* 9104C 8009044C 8FB00010 */  lw         $s0, 0x10($sp)
/* 91050 80090450 03E00008 */  jr         $ra
/* 91054 80090454 27BD0020 */   addiu     $sp, $sp, 0x20
/* 91058 80090458 00000000 */  nop
/* 9105C 8009045C 00000000 */  nop

glabel func_80090460
/* 91060 80090460 3C02800D */  lui        $v0, %hi(D_800C9D80)
/* 91064 80090464 8C429D80 */  lw         $v0, %lo(D_800C9D80)($v0)
/* 91068 80090468 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9106C 8009046C 14400004 */  bnez       $v0, .L80090480
/* 91070 80090470 AFBF0010 */   sw        $ra, 0x10($sp)
/* 91074 80090474 3C01800D */  lui        $at, %hi(D_800C9D80)
/* 91078 80090478 0C024168 */  jal        func_800905A0
/* 9107C 8009047C AC249D80 */   sw        $a0, %lo(D_800C9D80)($at)
.L80090480:
/* 91080 80090480 8FBF0010 */  lw         $ra, 0x10($sp)
/* 91084 80090484 03E00008 */  jr         $ra
/* 91088 80090488 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8009048C
/* 9108C 8009048C 3C02800D */  lui        $v0, %hi(D_800C9D80)
/* 91090 80090490 8C429D80 */  lw         $v0, %lo(D_800C9D80)($v0)
/* 91094 80090494 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 91098 80090498 10400005 */  beqz       $v0, .L800904B0
/* 9109C 8009049C AFBF0010 */   sw        $ra, 0x10($sp)
/* 910A0 800904A0 0C02430C */  jal        func_80090C30
/* 910A4 800904A4 00000000 */   nop
/* 910A8 800904A8 3C01800D */  lui        $at, %hi(D_800C9D80)
/* 910AC 800904AC AC209D80 */  sw         $zero, %lo(D_800C9D80)($at)
.L800904B0:
/* 910B0 800904B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 910B4 800904B4 03E00008 */  jr         $ra
/* 910B8 800904B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800904BC
/* 910BC 800904BC 8CA20000 */  lw         $v0, 0x0($a1)
/* 910C0 800904C0 AC850004 */  sw         $a1, 0x4($a0)
/* 910C4 800904C4 AC820000 */  sw         $v0, 0x0($a0)
/* 910C8 800904C8 8CA20000 */  lw         $v0, 0x0($a1)
/* 910CC 800904CC 54400001 */  bnel       $v0, $zero, .L800904D4
/* 910D0 800904D0 AC440004 */   sw        $a0, 0x4($v0)
.L800904D4:
/* 910D4 800904D4 03E00008 */  jr         $ra
/* 910D8 800904D8 ACA40000 */   sw        $a0, 0x0($a1)

glabel func_800904DC
/* 910DC 800904DC 8C830000 */  lw         $v1, 0x0($a0)
/* 910E0 800904E0 10600003 */  beqz       $v1, .L800904F0
/* 910E4 800904E4 00000000 */   nop
/* 910E8 800904E8 8C820004 */  lw         $v0, 0x4($a0)
/* 910EC 800904EC AC620004 */  sw         $v0, 0x4($v1)
.L800904F0:
/* 910F0 800904F0 8C830004 */  lw         $v1, 0x4($a0)
/* 910F4 800904F4 10600003 */  beqz       $v1, .L80090504
/* 910F8 800904F8 00000000 */   nop
/* 910FC 800904FC 8C820000 */  lw         $v0, 0x0($a0)
/* 91100 80090500 AC620000 */  sw         $v0, 0x0($v1)
.L80090504:
/* 91104 80090504 03E00008 */  jr         $ra
/* 91108 80090508 00000000 */   nop
/* 9110C 8009050C 00000000 */  nop

glabel func_80090510
/* 91110 80090510 30A3000F */  andi       $v1, $a1, 0xF
/* 91114 80090514 24020010 */  addiu      $v0, $zero, 0x10
/* 91118 80090518 00431823 */  subu       $v1, $v0, $v1
/* 9111C 8009051C 10620003 */  beq        $v1, $v0, .L8009052C
/* 91120 80090520 00A31021 */   addu      $v0, $a1, $v1
/* 91124 80090524 0802414C */  j          .L80090530
/* 91128 80090528 AC820000 */   sw        $v0, 0x0($a0)
.L8009052C:
/* 9112C 8009052C AC850000 */  sw         $a1, 0x0($a0)
.L80090530:
/* 91130 80090530 8C820000 */  lw         $v0, 0x0($a0)
/* 91134 80090534 AC860008 */  sw         $a2, 0x8($a0)
/* 91138 80090538 AC80000C */  sw         $zero, 0xC($a0)
/* 9113C 8009053C 03E00008 */  jr         $ra
/* 91140 80090540 AC820004 */   sw        $v0, 0x4($a0)
/* 91144 80090544 00000000 */  nop
/* 91148 80090548 00000000 */  nop
/* 9114C 8009054C 00000000 */  nop

glabel func_80090550
/* 91150 80090550 8FA20010 */  lw         $v0, 0x10($sp)
/* 91154 80090554 00E20018 */  mult       $a3, $v0
/* 91158 80090558 00003812 */  mflo       $a3
/* 9115C 8009055C 8CC30008 */  lw         $v1, 0x8($a2)
/* 91160 80090560 8CC20000 */  lw         $v0, 0x0($a2)
/* 91164 80090564 2404FFF0 */  addiu      $a0, $zero, -0x10
/* 91168 80090568 8CC50004 */  lw         $a1, 0x4($a2)
/* 9116C 8009056C 00431021 */  addu       $v0, $v0, $v1
/* 91170 80090570 24E7000F */  addiu      $a3, $a3, 0xF
/* 91174 80090574 00E43824 */  and        $a3, $a3, $a0
/* 91178 80090578 00A72021 */  addu       $a0, $a1, $a3
/* 9117C 8009057C 0044102B */  sltu       $v0, $v0, $a0
/* 91180 80090580 14400003 */  bnez       $v0, .L80090590
/* 91184 80090584 00004021 */   addu      $t0, $zero, $zero
/* 91188 80090588 00A04021 */  addu       $t0, $a1, $zero
/* 9118C 8009058C ACC40004 */  sw         $a0, 0x4($a2)
.L80090590:
/* 91190 80090590 03E00008 */  jr         $ra
/* 91194 80090594 01001021 */   addu      $v0, $t0, $zero
/* 91198 80090598 00000000 */  nop
/* 9119C 8009059C 00000000 */  nop

glabel func_800905A0
/* 911A0 800905A0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 911A4 800905A4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 911A8 800905A8 00A0A821 */  addu       $s5, $a1, $zero
/* 911AC 800905AC AFBF0048 */  sw         $ra, 0x48($sp)
/* 911B0 800905B0 AFB70044 */  sw         $s7, 0x44($sp)
/* 911B4 800905B4 AFB60040 */  sw         $s6, 0x40($sp)
/* 911B8 800905B8 AFB40038 */  sw         $s4, 0x38($sp)
/* 911BC 800905BC AFB30034 */  sw         $s3, 0x34($sp)
/* 911C0 800905C0 AFB20030 */  sw         $s2, 0x30($sp)
/* 911C4 800905C4 AFB1002C */  sw         $s1, 0x2C($sp)
/* 911C8 800905C8 AFB00028 */  sw         $s0, 0x28($sp)
/* 911CC 800905CC 8EB60014 */  lw         $s6, 0x14($s5)
/* 911D0 800905D0 0080A021 */  addu       $s4, $a0, $zero
/* 911D4 800905D4 AE800000 */  sw         $zero, 0x0($s4)
/* 911D8 800905D8 8EA20004 */  lw         $v0, 0x4($s5)
/* 911DC 800905DC 00002021 */  addu       $a0, $zero, $zero
/* 911E0 800905E0 AE800020 */  sw         $zero, 0x20($s4)
/* 911E4 800905E4 AE80001C */  sw         $zero, 0x1C($s4)
/* 911E8 800905E8 AE82003C */  sw         $v0, 0x3C($s4)
/* 911EC 800905EC 8EA30018 */  lw         $v1, 0x18($s5)
/* 911F0 800905F0 00002821 */  addu       $a1, $zero, $zero
/* 911F4 800905F4 240200A0 */  addiu      $v0, $zero, 0xA0
/* 911F8 800905F8 AE820048 */  sw         $v0, 0x48($s4)
/* 911FC 800905FC AE830044 */  sw         $v1, 0x44($s4)
/* 91200 80090600 8EA20010 */  lw         $v0, 0x10($s5)
/* 91204 80090604 24070001 */  addiu      $a3, $zero, 0x1
/* 91208 80090608 02C03021 */  addu       $a2, $s6, $zero
/* 9120C 8009060C AE820024 */  sw         $v0, 0x24($s4)
/* 91210 80090610 2402001C */  addiu      $v0, $zero, 0x1C
/* 91214 80090614 0C024154 */  jal        func_80090550
/* 91218 80090618 AFA20010 */   sw        $v0, 0x10($sp)
/* 9121C 8009061C 0040B821 */  addu       $s7, $v0, $zero
/* 91220 80090620 0C02554E */  jal        func_80095538
/* 91224 80090624 02E02021 */   addu      $a0, $s7, $zero
/* 91228 80090628 00002021 */  addu       $a0, $zero, $zero
/* 9122C 8009062C 00002821 */  addu       $a1, $zero, $zero
/* 91230 80090630 02C03021 */  addu       $a2, $s6, $zero
/* 91234 80090634 24070001 */  addiu      $a3, $zero, 0x1
/* 91238 80090638 2402004C */  addiu      $v0, $zero, 0x4C
/* 9123C 8009063C AE970038 */  sw         $s7, 0x38($s4)
/* 91240 80090640 0C024154 */  jal        func_80090550
/* 91244 80090644 AFA20010 */   sw        $v0, 0x10($sp)
/* 91248 80090648 00002021 */  addu       $a0, $zero, $zero
/* 9124C 8009064C AE820034 */  sw         $v0, 0x34($s4)
/* 91250 80090650 24020001 */  addiu      $v0, $zero, 0x1
/* 91254 80090654 24100004 */  addiu      $s0, $zero, 0x4
/* 91258 80090658 AE820040 */  sw         $v0, 0x40($s4)
/* 9125C 8009065C AFB00010 */  sw         $s0, 0x10($sp)
/* 91260 80090660 8EA70004 */  lw         $a3, 0x4($s5)
/* 91264 80090664 00002821 */  addu       $a1, $zero, $zero
/* 91268 80090668 0C024154 */  jal        func_80090550
/* 9126C 8009066C 02C03021 */   addu      $a2, $s6, $zero
/* 91270 80090670 8E840034 */  lw         $a0, 0x34($s4)
/* 91274 80090674 8EA60004 */  lw         $a2, 0x4($s5)
/* 91278 80090678 0C025520 */  jal        func_80095480
/* 9127C 8009067C 00402821 */   addu      $a1, $v0, $zero
/* 91280 80090680 00002021 */  addu       $a0, $zero, $zero
/* 91284 80090684 00002821 */  addu       $a1, $zero, $zero
/* 91288 80090688 02C03021 */  addu       $a2, $s6, $zero
/* 9128C 8009068C 24070001 */  addiu      $a3, $zero, 0x1
/* 91290 80090690 24020020 */  addiu      $v0, $zero, 0x20
/* 91294 80090694 0C024154 */  jal        func_80090550
/* 91298 80090698 AFA20010 */   sw        $v0, 0x10($sp)
/* 9129C 8009069C 00002021 */  addu       $a0, $zero, $zero
/* 912A0 800906A0 AE820030 */  sw         $v0, 0x30($s4)
/* 912A4 800906A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 912A8 800906A8 8EA70004 */  lw         $a3, 0x4($s5)
/* 912AC 800906AC 00002821 */  addu       $a1, $zero, $zero
/* 912B0 800906B0 0C024154 */  jal        func_80090550
/* 912B4 800906B4 02C03021 */   addu      $a2, $s6, $zero
/* 912B8 800906B8 8E840030 */  lw         $a0, 0x30($s4)
/* 912BC 800906BC 8EA60004 */  lw         $a2, 0x4($s5)
/* 912C0 800906C0 0C025537 */  jal        func_800954DC
/* 912C4 800906C4 00402821 */   addu      $a1, $v0, $zero
/* 912C8 800906C8 92A2001C */  lbu        $v0, 0x1C($s5)
/* 912CC 800906CC 10400007 */  beqz       $v0, .L800906EC
/* 912D0 800906D0 02802021 */   addu      $a0, $s4, $zero
/* 912D4 800906D4 00002821 */  addu       $a1, $zero, $zero
/* 912D8 800906D8 02A03021 */  addu       $a2, $s5, $zero
/* 912DC 800906DC 0C024480 */  jal        func_80091200
/* 912E0 800906E0 02C03821 */   addu      $a3, $s6, $zero
/* 912E4 800906E4 080241C0 */  j          .L80090700
/* 912E8 800906E8 00002021 */   addu      $a0, $zero, $zero
.L800906EC:
/* 912EC 800906EC 8E840030 */  lw         $a0, 0x30($s4)
/* 912F0 800906F0 8E860034 */  lw         $a2, 0x34($s4)
/* 912F4 800906F4 0C025C0C */  jal        func_80097030
/* 912F8 800906F8 24050002 */   addiu     $a1, $zero, 0x2
/* 912FC 800906FC 00002021 */  addu       $a0, $zero, $zero
.L80090700:
/* 91300 80090700 240200DC */  addiu      $v0, $zero, 0xDC
/* 91304 80090704 AE800004 */  sw         $zero, 0x4($s4)
/* 91308 80090708 AE800008 */  sw         $zero, 0x8($s4)
/* 9130C 8009070C AE800014 */  sw         $zero, 0x14($s4)
/* 91310 80090710 AE800018 */  sw         $zero, 0x18($s4)
/* 91314 80090714 AE80000C */  sw         $zero, 0xC($s4)
/* 91318 80090718 AE800010 */  sw         $zero, 0x10($s4)
/* 9131C 8009071C AFA20010 */  sw         $v0, 0x10($sp)
/* 91320 80090720 8EA70004 */  lw         $a3, 0x4($s5)
/* 91324 80090724 00002821 */  addu       $a1, $zero, $zero
/* 91328 80090728 0C024154 */  jal        func_80090550
/* 9132C 8009072C 02C03021 */   addu      $a2, $s6, $zero
/* 91330 80090730 8EA30004 */  lw         $v1, 0x4($s5)
/* 91334 80090734 18600029 */  blez       $v1, .L800907DC
/* 91338 80090738 00009821 */   addu      $s3, $zero, $zero
/* 9133C 8009073C 00409021 */  addu       $s2, $v0, $zero
.L80090740:
/* 91340 80090740 02402021 */  addu       $a0, $s2, $zero
/* 91344 80090744 0C02412F */  jal        func_800904BC
/* 91348 80090748 26850004 */   addiu     $a1, $s4, 0x4
/* 9134C 8009074C AE400008 */  sw         $zero, 0x8($s2)
/* 91350 80090750 8E850024 */  lw         $a1, 0x24($s4)
/* 91354 80090754 26500010 */  addiu      $s0, $s2, 0x10
/* 91358 80090758 02002021 */  addu       $a0, $s0, $zero
/* 9135C 8009075C 0C0254D1 */  jal        func_80095344
/* 91360 80090760 02C03021 */   addu      $a2, $s6, $zero
/* 91364 80090764 02002021 */  addu       $a0, $s0, $zero
/* 91368 80090768 24050001 */  addiu      $a1, $zero, 0x1
/* 9136C 8009076C 0C025758 */  jal        func_80095D60
/* 91370 80090770 00003021 */   addu      $a2, $zero, $zero
/* 91374 80090774 26510058 */  addiu      $s1, $s2, 0x58
/* 91378 80090778 02202021 */  addu       $a0, $s1, $zero
/* 9137C 8009077C 0C0254FD */  jal        func_800953F4
/* 91380 80090780 02C02821 */   addu      $a1, $s6, $zero
/* 91384 80090784 02202021 */  addu       $a0, $s1, $zero
/* 91388 80090788 24050001 */  addiu      $a1, $zero, 0x1
/* 9138C 8009078C 0C025C93 */  jal        func_8009724C
/* 91390 80090790 02003021 */   addu      $a2, $s0, $zero
/* 91394 80090794 2650008C */  addiu      $s0, $s2, 0x8C
/* 91398 80090798 02002021 */  addu       $a0, $s0, $zero
/* 9139C 8009079C 0C0254A3 */  jal        func_8009528C
/* 913A0 800907A0 02C02821 */   addu      $a1, $s6, $zero
/* 913A4 800907A4 02002021 */  addu       $a0, $s0, $zero
/* 913A8 800907A8 24050001 */  addiu      $a1, $zero, 0x1
/* 913AC 800907AC 0C0259BB */  jal        func_800966EC
/* 913B0 800907B0 02203021 */   addu      $a2, $s1, $zero
/* 913B4 800907B4 8E840034 */  lw         $a0, 0x34($s4)
/* 913B8 800907B8 24050002 */  addiu      $a1, $zero, 0x2
/* 913BC 800907BC 0C02585B */  jal        func_8009616C
/* 913C0 800907C0 02003021 */   addu      $a2, $s0, $zero
/* 913C4 800907C4 AE50000C */  sw         $s0, 0xC($s2)
/* 913C8 800907C8 8EA20004 */  lw         $v0, 0x4($s5)
/* 913CC 800907CC 26730001 */  addiu      $s3, $s3, 0x1
/* 913D0 800907D0 0262102A */  slt        $v0, $s3, $v0
/* 913D4 800907D4 1440FFDA */  bnez       $v0, .L80090740
/* 913D8 800907D8 265200DC */   addiu     $s2, $s2, 0xDC
.L800907DC:
/* 913DC 800907DC 8E860030 */  lw         $a2, 0x30($s4)
/* 913E0 800907E0 02E02021 */  addu       $a0, $s7, $zero
/* 913E4 800907E4 0C025FFC */  jal        func_80097FF0
/* 913E8 800907E8 24050001 */   addiu     $a1, $zero, 0x1
/* 913EC 800907EC 00002021 */  addu       $a0, $zero, $zero
/* 913F0 800907F0 2402001C */  addiu      $v0, $zero, 0x1C
/* 913F4 800907F4 AFA20010 */  sw         $v0, 0x10($sp)
/* 913F8 800907F8 8EA70008 */  lw         $a3, 0x8($s5)
/* 913FC 800907FC 00002821 */  addu       $a1, $zero, $zero
/* 91400 80090800 0C024154 */  jal        func_80090550
/* 91404 80090804 02C03021 */   addu      $a2, $s6, $zero
/* 91408 80090808 AE80002C */  sw         $zero, 0x2C($s4)
/* 9140C 8009080C 8EA30008 */  lw         $v1, 0x8($s5)
/* 91410 80090810 1860000A */  blez       $v1, .L8009083C
/* 91414 80090814 00009821 */   addu      $s3, $zero, $zero
/* 91418 80090818 00401821 */  addu       $v1, $v0, $zero
.L8009081C:
/* 9141C 8009081C 8E82002C */  lw         $v0, 0x2C($s4)
/* 91420 80090820 AC620000 */  sw         $v0, 0x0($v1)
/* 91424 80090824 AE83002C */  sw         $v1, 0x2C($s4)
/* 91428 80090828 8EA20008 */  lw         $v0, 0x8($s5)
/* 9142C 8009082C 26730001 */  addiu      $s3, $s3, 0x1
/* 91430 80090830 0262102A */  slt        $v0, $s3, $v0
/* 91434 80090834 1440FFF9 */  bnez       $v0, .L8009081C
/* 91438 80090838 2463001C */   addiu     $v1, $v1, 0x1C
.L8009083C:
/* 9143C 8009083C AE960028 */  sw         $s6, 0x28($s4)
/* 91440 80090840 8FBF0048 */  lw         $ra, 0x48($sp)
/* 91444 80090844 8FB70044 */  lw         $s7, 0x44($sp)
/* 91448 80090848 8FB60040 */  lw         $s6, 0x40($sp)
/* 9144C 8009084C 8FB5003C */  lw         $s5, 0x3C($sp)
/* 91450 80090850 8FB40038 */  lw         $s4, 0x38($sp)
/* 91454 80090854 8FB30034 */  lw         $s3, 0x34($sp)
/* 91458 80090858 8FB20030 */  lw         $s2, 0x30($sp)
/* 9145C 8009085C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 91460 80090860 8FB00028 */  lw         $s0, 0x28($sp)
/* 91464 80090864 03E00008 */  jr         $ra
/* 91468 80090868 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8009086C
/* 9146C 8009086C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 91470 80090870 AFB20028 */  sw         $s2, 0x28($sp)
/* 91474 80090874 3C12800D */  lui        $s2, %hi(D_800C9D80)
/* 91478 80090878 8E529D80 */  lw         $s2, %lo(D_800C9D80)($s2)
/* 9147C 8009087C AFB7003C */  sw         $s7, 0x3C($sp)
/* 91480 80090880 0080B821 */  addu       $s7, $a0, $zero
/* 91484 80090884 AFBE0040 */  sw         $fp, 0x40($sp)
/* 91488 80090888 00A0F021 */  addu       $fp, $a1, $zero
/* 9148C 8009088C AFB3002C */  sw         $s3, 0x2C($sp)
/* 91490 80090890 00E09821 */  addu       $s3, $a3, $zero
/* 91494 80090894 AFBF0044 */  sw         $ra, 0x44($sp)
/* 91498 80090898 AFB60038 */  sw         $s6, 0x38($sp)
/* 9149C 8009089C AFB50034 */  sw         $s5, 0x34($sp)
/* 914A0 800908A0 AFB40030 */  sw         $s4, 0x30($sp)
/* 914A4 800908A4 AFB10024 */  sw         $s1, 0x24($sp)
/* 914A8 800908A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 914AC 800908AC 8E420000 */  lw         $v0, 0x0($s2)
/* 914B0 800908B0 02E0A021 */  addu       $s4, $s7, $zero
/* 914B4 800908B4 00C0A821 */  addu       $s5, $a2, $zero
/* 914B8 800908B8 14400003 */  bnez       $v0, .L800908C8
/* 914BC 800908BC A7A0001C */   sh        $zero, 0x1C($sp)
/* 914C0 800908C0 0802427A */  j          .L800909E8
/* 914C4 800908C4 AFC00000 */   sw        $zero, 0x0($fp)
.L800908C8:
/* 914C8 800908C8 02402021 */  addu       $a0, $s2, $zero
/* 914CC 800908CC 0C0242E2 */  jal        func_80090B88
/* 914D0 800908D0 27A50018 */   addiu     $a1, $sp, 0x18
/* 914D4 800908D4 8E430020 */  lw         $v1, 0x20($s2)
/* 914D8 800908D8 AE42001C */  sw         $v0, 0x1C($s2)
/* 914DC 800908DC 00431023 */  subu       $v0, $v0, $v1
/* 914E0 800908E0 0053102A */  slt        $v0, $v0, $s3
/* 914E4 800908E4 10400019 */  beqz       $v0, .L8009094C
/* 914E8 800908E8 00000000 */   nop
/* 914EC 800908EC 2410FFF0 */  addiu      $s0, $zero, -0x10
.L800908F0:
/* 914F0 800908F0 8E42001C */  lw         $v0, 0x1C($s2)
/* 914F4 800908F4 8FA40018 */  lw         $a0, 0x18($sp)
/* 914F8 800908F8 00501024 */  and        $v0, $v0, $s0
/* 914FC 800908FC AE42001C */  sw         $v0, 0x1C($s2)
/* 91500 80090900 8C820008 */  lw         $v0, 0x8($a0)
/* 91504 80090904 0040F809 */  jalr       $v0
/* 91508 80090908 00000000 */   nop
/* 9150C 8009090C 02402021 */  addu       $a0, $s2, $zero
/* 91510 80090910 0C0242BD */  jal        func_80090AF4
/* 91514 80090914 00402821 */   addu      $a1, $v0, $zero
/* 91518 80090918 8FA60018 */  lw         $a2, 0x18($sp)
/* 9151C 8009091C 8CC30010 */  lw         $v1, 0x10($a2)
/* 91520 80090920 02402021 */  addu       $a0, $s2, $zero
/* 91524 80090924 27A50018 */  addiu      $a1, $sp, 0x18
/* 91528 80090928 00621821 */  addu       $v1, $v1, $v0
/* 9152C 8009092C 0C0242E2 */  jal        func_80090B88
/* 91530 80090930 ACC30010 */   sw        $v1, 0x10($a2)
/* 91534 80090934 8E430020 */  lw         $v1, 0x20($s2)
/* 91538 80090938 AE42001C */  sw         $v0, 0x1C($s2)
/* 9153C 8009093C 00431023 */  subu       $v0, $v0, $v1
/* 91540 80090940 0053102A */  slt        $v0, $v0, $s3
/* 91544 80090944 1440FFEA */  bnez       $v0, .L800908F0
/* 91548 80090948 00000000 */   nop
.L8009094C:
/* 9154C 8009094C 8E42001C */  lw         $v0, 0x1C($s2)
/* 91550 80090950 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 91554 80090954 00431024 */  and        $v0, $v0, $v1
/* 91558 80090958 1A60001E */  blez       $s3, .L800909D4
/* 9155C 8009095C AE42001C */   sw        $v0, 0x1C($s2)
/* 91560 80090960 3C160700 */  lui        $s6, (0x7000000 >> 16)
.L80090964:
/* 91564 80090964 8E510048 */  lw         $s1, 0x48($s2)
/* 91568 80090968 0271102A */  slt        $v0, $s3, $s1
/* 9156C 8009096C 54400001 */  bnel       $v0, $zero, .L80090974
/* 91570 80090970 02608821 */   addu      $s1, $s3, $zero
.L80090974:
/* 91574 80090974 AE960000 */  sw         $s6, 0x0($s4)
/* 91578 80090978 AE800004 */  sw         $zero, 0x4($s4)
/* 9157C 8009097C 8E500038 */  lw         $s0, 0x38($s2)
/* 91580 80090980 24050006 */  addiu      $a1, $zero, 0x6
/* 91584 80090984 02A03021 */  addu       $a2, $s5, $zero
/* 91588 80090988 8E020008 */  lw         $v0, 0x8($s0)
/* 9158C 8009098C 02719823 */  subu       $s3, $s3, $s1
/* 91590 80090990 0040F809 */  jalr       $v0
/* 91594 80090994 02002021 */   addu      $a0, $s0, $zero
/* 91598 80090998 02002021 */  addu       $a0, $s0, $zero
/* 9159C 8009099C 26820008 */  addiu      $v0, $s4, 0x8
/* 915A0 800909A0 AFA20010 */  sw         $v0, 0x10($sp)
/* 915A4 800909A4 8C820004 */  lw         $v0, 0x4($a0)
/* 915A8 800909A8 8E470020 */  lw         $a3, 0x20($s2)
/* 915AC 800909AC 27A5001C */  addiu      $a1, $sp, 0x1C
/* 915B0 800909B0 0040F809 */  jalr       $v0
/* 915B4 800909B4 02203021 */   addu      $a2, $s1, $zero
/* 915B8 800909B8 0040A021 */  addu       $s4, $v0, $zero
/* 915BC 800909BC 8E430020 */  lw         $v1, 0x20($s2)
/* 915C0 800909C0 00111080 */  sll        $v0, $s1, 2
/* 915C4 800909C4 02A2A821 */  addu       $s5, $s5, $v0
/* 915C8 800909C8 00711821 */  addu       $v1, $v1, $s1
/* 915CC 800909CC 1E60FFE5 */  bgtz       $s3, .L80090964
/* 915D0 800909D0 AE430020 */   sw        $v1, 0x20($s2)
.L800909D4:
/* 915D4 800909D4 02971023 */  subu       $v0, $s4, $s7
/* 915D8 800909D8 000210C3 */  sra        $v0, $v0, 3
/* 915DC 800909DC AFC20000 */  sw         $v0, 0x0($fp)
/* 915E0 800909E0 0C024298 */  jal        func_80090A60
/* 915E4 800909E4 02402021 */   addu      $a0, $s2, $zero
.L800909E8:
/* 915E8 800909E8 02801021 */  addu       $v0, $s4, $zero
/* 915EC 800909EC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 915F0 800909F0 8FBE0040 */  lw         $fp, 0x40($sp)
/* 915F4 800909F4 8FB7003C */  lw         $s7, 0x3C($sp)
/* 915F8 800909F8 8FB60038 */  lw         $s6, 0x38($sp)
/* 915FC 800909FC 8FB50034 */  lw         $s5, 0x34($sp)
/* 91600 80090A00 8FB40030 */  lw         $s4, 0x30($sp)
/* 91604 80090A04 8FB3002C */  lw         $s3, 0x2C($sp)
/* 91608 80090A08 8FB20028 */  lw         $s2, 0x28($sp)
/* 9160C 80090A0C 8FB10024 */  lw         $s1, 0x24($sp)
/* 91610 80090A10 8FB00020 */  lw         $s0, 0x20($sp)
/* 91614 80090A14 03E00008 */  jr         $ra
/* 91618 80090A18 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80090A1C
/* 9161C 80090A1C 3C04800D */  lui        $a0, %hi(D_800C9D80)
/* 91620 80090A20 8C849D80 */  lw         $a0, %lo(D_800C9D80)($a0)
/* 91624 80090A24 8C82002C */  lw         $v0, 0x2C($a0)
/* 91628 80090A28 10400005 */  beqz       $v0, .L80090A40
/* 9162C 80090A2C 00001821 */   addu      $v1, $zero, $zero
/* 91630 80090A30 00401821 */  addu       $v1, $v0, $zero
/* 91634 80090A34 8C620000 */  lw         $v0, 0x0($v1)
/* 91638 80090A38 AC82002C */  sw         $v0, 0x2C($a0)
/* 9163C 80090A3C AC600000 */  sw         $zero, 0x0($v1)
.L80090A40:
/* 91640 80090A40 03E00008 */  jr         $ra
/* 91644 80090A44 00601021 */   addu      $v0, $v1, $zero

glabel func_80090A48
/* 91648 80090A48 3C03800D */  lui        $v1, %hi(D_800C9D80)
/* 9164C 80090A4C 8C639D80 */  lw         $v1, %lo(D_800C9D80)($v1)
/* 91650 80090A50 8C62002C */  lw         $v0, 0x2C($v1)
/* 91654 80090A54 AC820000 */  sw         $v0, 0x0($a0)
/* 91658 80090A58 03E00008 */  jr         $ra
/* 9165C 80090A5C AC64002C */   sw        $a0, 0x2C($v1)

glabel func_80090A60
/* 91660 80090A60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91664 80090A64 AFB10014 */  sw         $s1, 0x14($sp)
/* 91668 80090A68 00808821 */  addu       $s1, $a0, $zero
/* 9166C 80090A6C AFBF0018 */  sw         $ra, 0x18($sp)
/* 91670 80090A70 AFB00010 */  sw         $s0, 0x10($sp)
/* 91674 80090A74 8E300014 */  lw         $s0, 0x14($s1)
/* 91678 80090A78 12000009 */  beqz       $s0, .L80090AA0
/* 9167C 80090A7C 00000000 */   nop
.L80090A80:
/* 91680 80090A80 0C024137 */  jal        func_800904DC
/* 91684 80090A84 02002021 */   addu      $a0, $s0, $zero
/* 91688 80090A88 02002021 */  addu       $a0, $s0, $zero
/* 9168C 80090A8C 0C02412F */  jal        func_800904BC
/* 91690 80090A90 26250004 */   addiu     $a1, $s1, 0x4
/* 91694 80090A94 8E300014 */  lw         $s0, 0x14($s1)
/* 91698 80090A98 1600FFF9 */  bnez       $s0, .L80090A80
/* 9169C 80090A9C 00000000 */   nop
.L80090AA0:
/* 916A0 80090AA0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 916A4 80090AA4 8FB10014 */  lw         $s1, 0x14($sp)
/* 916A8 80090AA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 916AC 80090AAC 03E00008 */  jr         $ra
/* 916B0 80090AB0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80090AB4
/* 916B4 80090AB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 916B8 80090AB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 916BC 80090ABC 00808821 */  addu       $s1, $a0, $zero
/* 916C0 80090AC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 916C4 80090AC4 00A08021 */  addu       $s0, $a1, $zero
/* 916C8 80090AC8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 916CC 80090ACC 0C024137 */  jal        func_800904DC
/* 916D0 80090AD0 02002021 */   addu      $a0, $s0, $zero
/* 916D4 80090AD4 02002021 */  addu       $a0, $s0, $zero
/* 916D8 80090AD8 0C02412F */  jal        func_800904BC
/* 916DC 80090ADC 26250014 */   addiu     $a1, $s1, 0x14
/* 916E0 80090AE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 916E4 80090AE4 8FB10014 */  lw         $s1, 0x14($sp)
/* 916E8 80090AE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 916EC 80090AEC 03E00008 */  jr         $ra
/* 916F0 80090AF0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80090AF4
/* 916F4 80090AF4 44850000 */  mtc1       $a1, $f0
/* 916F8 80090AF8 00000000 */  nop
/* 916FC 80090AFC 46800020 */  cvt.s.w    $f0, $f0
/* 91700 80090B00 C4820044 */  lwc1       $f2, 0x44($a0)
/* 91704 80090B04 468010A0 */  cvt.s.w    $f2, $f2
/* 91708 80090B08 46020002 */  mul.s      $f0, $f0, $f2
/* 9170C 80090B0C 3C01800D */  lui        $at, %hi(D_800D6BE0)
/* 91710 80090B10 D4226BE0 */  ldc1       $f2, %lo(D_800D6BE0)($at)
/* 91714 80090B14 46000021 */  cvt.d.s    $f0, $f0
/* 91718 80090B18 46220003 */  div.d      $f0, $f0, $f2
/* 9171C 80090B1C 3C01800D */  lui        $at, %hi(D_800D6BE8)
/* 91720 80090B20 D4226BE8 */  ldc1       $f2, %lo(D_800D6BE8)($at)
/* 91724 80090B24 46220000 */  add.d      $f0, $f0, $f2
/* 91728 80090B28 46200020 */  cvt.s.d    $f0, $f0
/* 9172C 80090B2C 4600008D */  trunc.w.s  $f2, $f0
/* 91730 80090B30 44021000 */  mfc1       $v0, $f2
/* 91734 80090B34 03E00008 */  jr         $ra
/* 91738 80090B38 00000000 */   nop

glabel func_80090B3C
/* 9173C 80090B3C 44850000 */  mtc1       $a1, $f0
/* 91740 80090B40 00000000 */  nop
/* 91744 80090B44 46800020 */  cvt.s.w    $f0, $f0
/* 91748 80090B48 C4820044 */  lwc1       $f2, 0x44($a0)
/* 9174C 80090B4C 468010A0 */  cvt.s.w    $f2, $f2
/* 91750 80090B50 46020002 */  mul.s      $f0, $f0, $f2
/* 91754 80090B54 3C01800D */  lui        $at, %hi(D_800D6BF0)
/* 91758 80090B58 D4226BF0 */  ldc1       $f2, %lo(D_800D6BF0)($at)
/* 9175C 80090B5C 46000021 */  cvt.d.s    $f0, $f0
/* 91760 80090B60 46220003 */  div.d      $f0, $f0, $f2
/* 91764 80090B64 3C01800D */  lui        $at, %hi(D_800D6BF8)
/* 91768 80090B68 D4226BF8 */  ldc1       $f2, %lo(D_800D6BF8)($at)
/* 9176C 80090B6C 46220000 */  add.d      $f0, $f0, $f2
/* 91770 80090B70 46200020 */  cvt.s.d    $f0, $f0
/* 91774 80090B74 4600008D */  trunc.w.s  $f2, $f0
/* 91778 80090B78 44031000 */  mfc1       $v1, $f2
/* 9177C 80090B7C 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 91780 80090B80 03E00008 */  jr         $ra
/* 91784 80090B84 00621024 */   and       $v0, $v1, $v0

glabel func_80090B88
/* 91788 80090B88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9178C 80090B8C AFB00010 */  sw         $s0, 0x10($sp)
/* 91790 80090B90 00808021 */  addu       $s0, $a0, $zero
/* 91794 80090B94 AFB20018 */  sw         $s2, 0x18($sp)
/* 91798 80090B98 00A09021 */  addu       $s2, $a1, $zero
/* 9179C 80090B9C AFBF001C */  sw         $ra, 0x1C($sp)
/* 917A0 80090BA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 917A4 80090BA4 8E020000 */  lw         $v0, 0x0($s0)
/* 917A8 80090BA8 3C117FFF */  lui        $s1, (0x7FFFFFFF >> 16)
/* 917AC 80090BAC 14400007 */  bnez       $v0, .L80090BCC
/* 917B0 80090BB0 3631FFFF */   ori       $s1, $s1, (0x7FFFFFFF & 0xFFFF)
/* 917B4 80090BB4 3C04800D */  lui        $a0, %hi(D_800D6C00)
/* 917B8 80090BB8 24846C00 */  addiu      $a0, $a0, %lo(D_800D6C00)
/* 917BC 80090BBC 3C05800D */  lui        $a1, %hi(D_800D6C04)
/* 917C0 80090BC0 24A56C04 */  addiu      $a1, $a1, %lo(D_800D6C04)
/* 917C4 80090BC4 0C0006E0 */  jal        func_80001B80
/* 917C8 80090BC8 24060133 */   addiu     $a2, $zero, 0x133
.L80090BCC:
/* 917CC 80090BCC AE400000 */  sw         $zero, 0x0($s2)
/* 917D0 80090BD0 8E040000 */  lw         $a0, 0x0($s0)
/* 917D4 80090BD4 1080000E */  beqz       $a0, .L80090C10
/* 917D8 80090BD8 00000000 */   nop
.L80090BDC:
/* 917DC 80090BDC 8C820010 */  lw         $v0, 0x10($a0)
/* 917E0 80090BE0 8E030020 */  lw         $v1, 0x20($s0)
/* 917E4 80090BE4 00431023 */  subu       $v0, $v0, $v1
/* 917E8 80090BE8 0051102A */  slt        $v0, $v0, $s1
/* 917EC 80090BEC 10400005 */  beqz       $v0, .L80090C04
/* 917F0 80090BF0 00000000 */   nop
/* 917F4 80090BF4 AE440000 */  sw         $a0, 0x0($s2)
/* 917F8 80090BF8 8C830010 */  lw         $v1, 0x10($a0)
/* 917FC 80090BFC 8E020020 */  lw         $v0, 0x20($s0)
/* 91800 80090C00 00628823 */  subu       $s1, $v1, $v0
.L80090C04:
/* 91804 80090C04 8C840000 */  lw         $a0, 0x0($a0)
/* 91808 80090C08 1480FFF4 */  bnez       $a0, .L80090BDC
/* 9180C 80090C0C 00000000 */   nop
.L80090C10:
/* 91810 80090C10 8E420000 */  lw         $v0, 0x0($s2)
/* 91814 80090C14 8C420010 */  lw         $v0, 0x10($v0)
/* 91818 80090C18 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9181C 80090C1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 91820 80090C20 8FB10014 */  lw         $s1, 0x14($sp)
/* 91824 80090C24 8FB00010 */  lw         $s0, 0x10($sp)
/* 91828 80090C28 03E00008 */  jr         $ra
/* 9182C 80090C2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80090C30
/* 91830 80090C30 03E00008 */  jr         $ra
/* 91834 80090C34 AC800000 */   sw        $zero, 0x0($a0)
/* 91838 80090C38 00000000 */  nop
/* 9183C 80090C3C 00000000 */  nop

glabel func_80090C40
/* 91840 80090C40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91844 80090C44 AFB10014 */  sw         $s1, 0x14($sp)
/* 91848 80090C48 00808821 */  addu       $s1, $a0, $zero
/* 9184C 80090C4C AFB00010 */  sw         $s0, 0x10($sp)
/* 91850 80090C50 00A08021 */  addu       $s0, $a1, $zero
/* 91854 80090C54 AFBF0018 */  sw         $ra, 0x18($sp)
/* 91858 80090C58 0C000614 */  jal        func_80001850
/* 9185C 80090C5C 24040001 */   addiu     $a0, $zero, 0x1
/* 91860 80090C60 8E230020 */  lw         $v1, 0x20($s1)
/* 91864 80090C64 AE030010 */  sw         $v1, 0x10($s0)
/* 91868 80090C68 8E230000 */  lw         $v1, 0x0($s1)
/* 9186C 80090C6C 00402021 */  addu       $a0, $v0, $zero
/* 91870 80090C70 AE030000 */  sw         $v1, 0x0($s0)
/* 91874 80090C74 0C000614 */  jal        func_80001850
/* 91878 80090C78 AE300000 */   sw        $s0, 0x0($s1)
/* 9187C 80090C7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 91880 80090C80 8FB10014 */  lw         $s1, 0x14($sp)
/* 91884 80090C84 8FB00010 */  lw         $s0, 0x10($sp)
/* 91888 80090C88 03E00008 */  jr         $ra
/* 9188C 80090C8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80090C90
/* 91890 80090C90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91894 80090C94 AFBF0024 */  sw         $ra, 0x24($sp)
/* 91898 80090C98 AFB20020 */  sw         $s2, 0x20($sp)
/* 9189C 80090C9C AFB1001C */  sw         $s1, 0x1C($sp)
/* 918A0 80090CA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 918A4 80090CA4 94C20000 */  lhu        $v0, 0x0($a2)
/* 918A8 80090CA8 00A08021 */  addu       $s0, $a1, $zero
/* 918AC 80090CAC AFA00010 */  sw         $zero, 0x10($sp)
/* 918B0 80090CB0 A6020016 */  sh         $v0, 0x16($s0)
/* 918B4 80090CB4 90C20004 */  lbu        $v0, 0x4($a2)
/* 918B8 80090CB8 AE00000C */  sw         $zero, 0xC($s0)
/* 918BC 80090CBC A602001A */  sh         $v0, 0x1A($s0)
/* 918C0 80090CC0 94C20002 */  lhu        $v0, 0x2($a2)
/* 918C4 80090CC4 00809021 */  addu       $s2, $a0, $zero
/* 918C8 80090CC8 A6000014 */  sh         $zero, 0x14($s0)
/* 918CC 80090CCC AE000008 */  sw         $zero, 0x8($s0)
/* 918D0 80090CD0 A6020018 */  sh         $v0, 0x18($s0)
/* 918D4 80090CD4 84C60000 */  lh         $a2, 0x0($a2)
/* 918D8 80090CD8 0C02436E */  jal        func_80090DB8
/* 918DC 80090CDC 27A50010 */   addiu     $a1, $sp, 0x10
/* 918E0 80090CE0 8FA40010 */  lw         $a0, 0x10($sp)
/* 918E4 80090CE4 1080002C */  beqz       $a0, .L80090D98
/* 918E8 80090CE8 00000000 */   nop
/* 918EC 80090CEC 8C91000C */  lw         $s1, 0xC($a0)
/* 918F0 80090CF0 10400025 */  beqz       $v0, .L80090D88
/* 918F4 80090CF4 24020200 */   addiu     $v0, $zero, 0x200
/* 918F8 80090CF8 8C830008 */  lw         $v1, 0x8($a0)
/* 918FC 80090CFC AC8200D8 */  sw         $v0, 0xD8($a0)
/* 91900 80090D00 0C024287 */  jal        func_80090A1C
/* 91904 80090D04 AC600008 */   sw        $zero, 0x8($v1)
/* 91908 80090D08 8E43001C */  lw         $v1, 0x1C($s2)
/* 9190C 80090D0C 8FA40010 */  lw         $a0, 0x10($sp)
/* 91910 80090D10 00403021 */  addu       $a2, $v0, $zero
/* 91914 80090D14 2402000B */  addiu      $v0, $zero, 0xB
/* 91918 80090D18 A4C20008 */  sh         $v0, 0x8($a2)
/* 9191C 80090D1C ACC0000C */  sw         $zero, 0xC($a2)
/* 91920 80090D20 ACC30004 */  sw         $v1, 0x4($a2)
/* 91924 80090D24 8C8200D8 */  lw         $v0, 0xD8($a0)
/* 91928 80090D28 2442FFC0 */  addiu      $v0, $v0, -0x40
/* 9192C 80090D2C ACC20010 */  sw         $v0, 0x10($a2)
/* 91930 80090D30 8E220008 */  lw         $v0, 0x8($s1)
/* 91934 80090D34 24050003 */  addiu      $a1, $zero, 0x3
/* 91938 80090D38 0040F809 */  jalr       $v0
/* 9193C 80090D3C 02202021 */   addu      $a0, $s1, $zero
/* 91940 80090D40 0C024287 */  jal        func_80090A1C
/* 91944 80090D44 00000000 */   nop
/* 91948 80090D48 00403021 */  addu       $a2, $v0, $zero
/* 9194C 80090D4C 10C0000F */  beqz       $a2, .L80090D8C
/* 91950 80090D50 02202021 */   addu      $a0, $s1, $zero
/* 91954 80090D54 8FA20010 */  lw         $v0, 0x10($sp)
/* 91958 80090D58 8E43001C */  lw         $v1, 0x1C($s2)
/* 9195C 80090D5C 8C4500D8 */  lw         $a1, 0xD8($v0)
/* 91960 80090D60 2402000F */  addiu      $v0, $zero, 0xF
/* 91964 80090D64 A4C20008 */  sh         $v0, 0x8($a2)
/* 91968 80090D68 ACC00000 */  sw         $zero, 0x0($a2)
/* 9196C 80090D6C 00651821 */  addu       $v1, $v1, $a1
/* 91970 80090D70 ACC30004 */  sw         $v1, 0x4($a2)
/* 91974 80090D74 8C820008 */  lw         $v0, 0x8($a0)
/* 91978 80090D78 0040F809 */  jalr       $v0
/* 9197C 80090D7C 24050003 */   addiu     $a1, $zero, 0x3
/* 91980 80090D80 08024363 */  j          .L80090D8C
/* 91984 80090D84 00000000 */   nop
.L80090D88:
/* 91988 80090D88 AC8000D8 */  sw         $zero, 0xD8($a0)
.L80090D8C:
/* 9198C 80090D8C 8FA20010 */  lw         $v0, 0x10($sp)
/* 91990 80090D90 AC500008 */  sw         $s0, 0x8($v0)
/* 91994 80090D94 AE020008 */  sw         $v0, 0x8($s0)
.L80090D98:
/* 91998 80090D98 8FA20010 */  lw         $v0, 0x10($sp)
/* 9199C 80090D9C 0002102B */  sltu       $v0, $zero, $v0
/* 919A0 80090DA0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 919A4 80090DA4 8FB20020 */  lw         $s2, 0x20($sp)
/* 919A8 80090DA8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 919AC 80090DAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 919B0 80090DB0 03E00008 */  jr         $ra
/* 919B4 80090DB4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80090DB8
/* 919B8 80090DB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 919BC 80090DBC AFB10014 */  sw         $s1, 0x14($sp)
/* 919C0 80090DC0 00808821 */  addu       $s1, $a0, $zero
/* 919C4 80090DC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 919C8 80090DC8 AFB20018 */  sw         $s2, 0x18($sp)
/* 919CC 80090DCC AFB00010 */  sw         $s0, 0x10($sp)
/* 919D0 80090DD0 8E300014 */  lw         $s0, 0x14($s1)
/* 919D4 80090DD4 16000004 */  bnez       $s0, .L80090DE8
/* 919D8 80090DD8 00009021 */   addu      $s2, $zero, $zero
/* 919DC 80090DDC 8E300004 */  lw         $s0, 0x4($s1)
/* 919E0 80090DE0 12000009 */  beqz       $s0, .L80090E08
/* 919E4 80090DE4 00000000 */   nop
.L80090DE8:
/* 919E8 80090DE8 ACB00000 */  sw         $s0, 0x0($a1)
/* 919EC 80090DEC 0C024137 */  jal        func_800904DC
/* 919F0 80090DF0 02002021 */   addu      $a0, $s0, $zero
/* 919F4 80090DF4 02002021 */  addu       $a0, $s0, $zero
/* 919F8 80090DF8 0C02412F */  jal        func_800904BC
/* 919FC 80090DFC 2625000C */   addiu     $a1, $s1, 0xC
/* 91A00 80090E00 08024396 */  j          .L80090E58
/* 91A04 80090E04 02401021 */   addu      $v0, $s2, $zero
.L80090E08:
/* 91A08 80090E08 8E30000C */  lw         $s0, 0xC($s1)
/* 91A0C 80090E0C 12000012 */  beqz       $s0, .L80090E58
/* 91A10 80090E10 02401021 */   addu      $v0, $s2, $zero
.L80090E14:
/* 91A14 80090E14 8E020008 */  lw         $v0, 0x8($s0)
/* 91A18 80090E18 84430016 */  lh         $v1, 0x16($v0)
/* 91A1C 80090E1C 00061400 */  sll        $v0, $a2, 16
/* 91A20 80090E20 00021403 */  sra        $v0, $v0, 16
/* 91A24 80090E24 0043102A */  slt        $v0, $v0, $v1
/* 91A28 80090E28 14400008 */  bnez       $v0, .L80090E4C
/* 91A2C 80090E2C 00000000 */   nop
/* 91A30 80090E30 8E0200D8 */  lw         $v0, 0xD8($s0)
/* 91A34 80090E34 14400005 */  bnez       $v0, .L80090E4C
/* 91A38 80090E38 00000000 */   nop
/* 91A3C 80090E3C ACB00000 */  sw         $s0, 0x0($a1)
/* 91A40 80090E40 8E020008 */  lw         $v0, 0x8($s0)
/* 91A44 80090E44 24120001 */  addiu      $s2, $zero, 0x1
/* 91A48 80090E48 94460016 */  lhu        $a2, 0x16($v0)
.L80090E4C:
/* 91A4C 80090E4C 8E100000 */  lw         $s0, 0x0($s0)
/* 91A50 80090E50 1600FFF0 */  bnez       $s0, .L80090E14
/* 91A54 80090E54 02401021 */   addu      $v0, $s2, $zero
.L80090E58:
/* 91A58 80090E58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91A5C 80090E5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 91A60 80090E60 8FB10014 */  lw         $s1, 0x14($sp)
/* 91A64 80090E64 8FB00010 */  lw         $s0, 0x10($sp)
/* 91A68 80090E68 03E00008 */  jr         $ra
/* 91A6C 80090E6C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80090E70
/* 91A70 80090E70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91A74 80090E74 AFB00010 */  sw         $s0, 0x10($sp)
/* 91A78 80090E78 00A08021 */  addu       $s0, $a1, $zero
/* 91A7C 80090E7C AFBF0018 */  sw         $ra, 0x18($sp)
/* 91A80 80090E80 AFB10014 */  sw         $s1, 0x14($sp)
/* 91A84 80090E84 8E020008 */  lw         $v0, 0x8($s0)
/* 91A88 80090E88 10400013 */  beqz       $v0, .L80090ED8
/* 91A8C 80090E8C 00808821 */   addu      $s1, $a0, $zero
/* 91A90 80090E90 0C024287 */  jal        func_80090A1C
/* 91A94 80090E94 00000000 */   nop
/* 91A98 80090E98 00403021 */  addu       $a2, $v0, $zero
/* 91A9C 80090E9C 10C0000E */  beqz       $a2, .L80090ED8
/* 91AA0 80090EA0 00000000 */   nop
/* 91AA4 80090EA4 8E020008 */  lw         $v0, 0x8($s0)
/* 91AA8 80090EA8 8E23001C */  lw         $v1, 0x1C($s1)
/* 91AAC 80090EAC 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91AB0 80090EB0 2402000F */  addiu      $v0, $zero, 0xF
/* 91AB4 80090EB4 A4C20008 */  sh         $v0, 0x8($a2)
/* 91AB8 80090EB8 ACC00000 */  sw         $zero, 0x0($a2)
/* 91ABC 80090EBC 00641821 */  addu       $v1, $v1, $a0
/* 91AC0 80090EC0 ACC30004 */  sw         $v1, 0x4($a2)
/* 91AC4 80090EC4 8E020008 */  lw         $v0, 0x8($s0)
/* 91AC8 80090EC8 8C44000C */  lw         $a0, 0xC($v0)
/* 91ACC 80090ECC 8C820008 */  lw         $v0, 0x8($a0)
/* 91AD0 80090ED0 0040F809 */  jalr       $v0
/* 91AD4 80090ED4 24050003 */   addiu     $a1, $zero, 0x3
.L80090ED8:
/* 91AD8 80090ED8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 91ADC 80090EDC 8FB10014 */  lw         $s1, 0x14($sp)
/* 91AE0 80090EE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 91AE4 80090EE4 03E00008 */  jr         $ra
/* 91AE8 80090EE8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 91AEC 80090EEC 00000000 */  nop

glabel func_80090EF0
/* 91AF0 80090EF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91AF4 80090EF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91AF8 80090EF8 00A08021 */  addu       $s0, $a1, $zero
/* 91AFC 80090EFC AFBF001C */  sw         $ra, 0x1C($sp)
/* 91B00 80090F00 AFB20018 */  sw         $s2, 0x18($sp)
/* 91B04 80090F04 AFB10014 */  sw         $s1, 0x14($sp)
/* 91B08 80090F08 8E020008 */  lw         $v0, 0x8($s0)
/* 91B0C 80090F0C 00808821 */  addu       $s1, $a0, $zero
/* 91B10 80090F10 10400016 */  beqz       $v0, .L80090F6C
/* 91B14 80090F14 00C09021 */   addu      $s2, $a2, $zero
/* 91B18 80090F18 0C024287 */  jal        func_80090A1C
/* 91B1C 80090F1C 00000000 */   nop
/* 91B20 80090F20 00403021 */  addu       $a2, $v0, $zero
/* 91B24 80090F24 10C00011 */  beqz       $a2, .L80090F6C
/* 91B28 80090F28 00000000 */   nop
/* 91B2C 80090F2C 8E020008 */  lw         $v0, 0x8($s0)
/* 91B30 80090F30 8E23001C */  lw         $v1, 0x1C($s1)
/* 91B34 80090F34 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91B38 80090F38 2402000E */  addiu      $v0, $zero, 0xE
/* 91B3C 80090F3C A4C20008 */  sh         $v0, 0x8($a2)
/* 91B40 80090F40 ACD2000C */  sw         $s2, 0xC($a2)
/* 91B44 80090F44 ACC00000 */  sw         $zero, 0x0($a2)
/* 91B48 80090F48 00641821 */  addu       $v1, $v1, $a0
/* 91B4C 80090F4C ACC30004 */  sw         $v1, 0x4($a2)
/* 91B50 80090F50 9602001A */  lhu        $v0, 0x1A($s0)
/* 91B54 80090F54 A4C2000A */  sh         $v0, 0xA($a2)
/* 91B58 80090F58 8E020008 */  lw         $v0, 0x8($s0)
/* 91B5C 80090F5C 8C44000C */  lw         $a0, 0xC($v0)
/* 91B60 80090F60 8C820008 */  lw         $v0, 0x8($a0)
/* 91B64 80090F64 0040F809 */  jalr       $v0
/* 91B68 80090F68 24050003 */   addiu     $a1, $zero, 0x3
.L80090F6C:
/* 91B6C 80090F6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91B70 80090F70 8FB20018 */  lw         $s2, 0x18($sp)
/* 91B74 80090F74 8FB10014 */  lw         $s1, 0x14($sp)
/* 91B78 80090F78 8FB00010 */  lw         $s0, 0x10($sp)
/* 91B7C 80090F7C 03E00008 */  jr         $ra
/* 91B80 80090F80 27BD0020 */   addiu     $sp, $sp, 0x20
/* 91B84 80090F84 00000000 */  nop
/* 91B88 80090F88 00000000 */  nop
/* 91B8C 80090F8C 00000000 */  nop

glabel func_80090F90
/* 91B90 80090F90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91B94 80090F94 AFB00010 */  sw         $s0, 0x10($sp)
/* 91B98 80090F98 00A08021 */  addu       $s0, $a1, $zero
/* 91B9C 80090F9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 91BA0 80090FA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 91BA4 80090FA4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 91BA8 80090FA8 8E020008 */  lw         $v0, 0x8($s0)
/* 91BAC 80090FAC 4486A000 */  mtc1       $a2, $f20
/* 91BB0 80090FB0 00000000 */  nop
/* 91BB4 80090FB4 10400014 */  beqz       $v0, .L80091008
/* 91BB8 80090FB8 00808821 */   addu      $s1, $a0, $zero
/* 91BBC 80090FBC 0C024287 */  jal        func_80090A1C
/* 91BC0 80090FC0 00000000 */   nop
/* 91BC4 80090FC4 00403021 */  addu       $a2, $v0, $zero
/* 91BC8 80090FC8 10C0000F */  beqz       $a2, .L80091008
/* 91BCC 80090FCC 00000000 */   nop
/* 91BD0 80090FD0 8E020008 */  lw         $v0, 0x8($s0)
/* 91BD4 80090FD4 8E23001C */  lw         $v1, 0x1C($s1)
/* 91BD8 80090FD8 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91BDC 80090FDC 24020007 */  addiu      $v0, $zero, 0x7
/* 91BE0 80090FE0 A4C20008 */  sh         $v0, 0x8($a2)
/* 91BE4 80090FE4 E4D4000C */  swc1       $f20, 0xC($a2)
/* 91BE8 80090FE8 ACC00000 */  sw         $zero, 0x0($a2)
/* 91BEC 80090FEC 00641821 */  addu       $v1, $v1, $a0
/* 91BF0 80090FF0 ACC30004 */  sw         $v1, 0x4($a2)
/* 91BF4 80090FF4 8E020008 */  lw         $v0, 0x8($s0)
/* 91BF8 80090FF8 8C44000C */  lw         $a0, 0xC($v0)
/* 91BFC 80090FFC 8C820008 */  lw         $v0, 0x8($a0)
/* 91C00 80091000 0040F809 */  jalr       $v0
/* 91C04 80091004 24050003 */   addiu     $a1, $zero, 0x3
.L80091008:
/* 91C08 80091008 8FBF0018 */  lw         $ra, 0x18($sp)
/* 91C0C 8009100C 8FB10014 */  lw         $s1, 0x14($sp)
/* 91C10 80091010 8FB00010 */  lw         $s0, 0x10($sp)
/* 91C14 80091014 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 91C18 80091018 03E00008 */  jr         $ra
/* 91C1C 8009101C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80091020
/* 91C20 80091020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91C24 80091024 AFB20018 */  sw         $s2, 0x18($sp)
/* 91C28 80091028 00809021 */  addu       $s2, $a0, $zero
/* 91C2C 8009102C AFB10014 */  sw         $s1, 0x14($sp)
/* 91C30 80091030 00A08821 */  addu       $s1, $a1, $zero
/* 91C34 80091034 AFBF0024 */  sw         $ra, 0x24($sp)
/* 91C38 80091038 AFB40020 */  sw         $s4, 0x20($sp)
/* 91C3C 8009103C AFB3001C */  sw         $s3, 0x1C($sp)
/* 91C40 80091040 AFB00010 */  sw         $s0, 0x10($sp)
/* 91C44 80091044 8E220008 */  lw         $v0, 0x8($s1)
/* 91C48 80091048 00C0A021 */  addu       $s4, $a2, $zero
/* 91C4C 8009104C 1040001A */  beqz       $v0, .L800910B8
/* 91C50 80091050 00E09821 */   addu      $s3, $a3, $zero
/* 91C54 80091054 0C024287 */  jal        func_80090A1C
/* 91C58 80091058 00000000 */   nop
/* 91C5C 8009105C 00408021 */  addu       $s0, $v0, $zero
/* 91C60 80091060 12000015 */  beqz       $s0, .L800910B8
/* 91C64 80091064 02402021 */   addu      $a0, $s2, $zero
/* 91C68 80091068 8E220008 */  lw         $v0, 0x8($s1)
/* 91C6C 8009106C 8C83001C */  lw         $v1, 0x1C($a0)
/* 91C70 80091070 8C4600D8 */  lw         $a2, 0xD8($v0)
/* 91C74 80091074 02602821 */  addu       $a1, $s3, $zero
/* 91C78 80091078 2402000B */  addiu      $v0, $zero, 0xB
/* 91C7C 8009107C A6020008 */  sh         $v0, 0x8($s0)
/* 91C80 80091080 00141400 */  sll        $v0, $s4, 16
/* 91C84 80091084 00021403 */  sra        $v0, $v0, 16
/* 91C88 80091088 AE02000C */  sw         $v0, 0xC($s0)
/* 91C8C 8009108C 00661821 */  addu       $v1, $v1, $a2
/* 91C90 80091090 0C0242CF */  jal        func_80090B3C
/* 91C94 80091094 AE030004 */   sw        $v1, 0x4($s0)
/* 91C98 80091098 AE020010 */  sw         $v0, 0x10($s0)
/* 91C9C 8009109C AE000000 */  sw         $zero, 0x0($s0)
/* 91CA0 800910A0 8E220008 */  lw         $v0, 0x8($s1)
/* 91CA4 800910A4 8C44000C */  lw         $a0, 0xC($v0)
/* 91CA8 800910A8 8C820008 */  lw         $v0, 0x8($a0)
/* 91CAC 800910AC 24050003 */  addiu      $a1, $zero, 0x3
/* 91CB0 800910B0 0040F809 */  jalr       $v0
/* 91CB4 800910B4 02003021 */   addu      $a2, $s0, $zero
.L800910B8:
/* 91CB8 800910B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 91CBC 800910BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 91CC0 800910C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 91CC4 800910C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 91CC8 800910C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 91CCC 800910CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 91CD0 800910D0 03E00008 */  jr         $ra
/* 91CD4 800910D4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 91CD8 800910D8 00000000 */  nop
/* 91CDC 800910DC 00000000 */  nop

glabel func_800910E0
/* 91CE0 800910E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91CE4 800910E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91CE8 800910E8 00A08021 */  addu       $s0, $a1, $zero
/* 91CEC 800910EC AFBF001C */  sw         $ra, 0x1C($sp)
/* 91CF0 800910F0 AFB20018 */  sw         $s2, 0x18($sp)
/* 91CF4 800910F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 91CF8 800910F8 8E020008 */  lw         $v0, 0x8($s0)
/* 91CFC 800910FC 00808821 */  addu       $s1, $a0, $zero
/* 91D00 80091100 10400015 */  beqz       $v0, .L80091158
/* 91D04 80091104 00C09021 */   addu      $s2, $a2, $zero
/* 91D08 80091108 0C024287 */  jal        func_80090A1C
/* 91D0C 8009110C 00000000 */   nop
/* 91D10 80091110 00403021 */  addu       $a2, $v0, $zero
/* 91D14 80091114 10C00010 */  beqz       $a2, .L80091158
/* 91D18 80091118 00000000 */   nop
/* 91D1C 8009111C 8E020008 */  lw         $v0, 0x8($s0)
/* 91D20 80091120 8E23001C */  lw         $v1, 0x1C($s1)
/* 91D24 80091124 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91D28 80091128 24020010 */  addiu      $v0, $zero, 0x10
/* 91D2C 8009112C A4C20008 */  sh         $v0, 0x8($a2)
/* 91D30 80091130 324200FF */  andi       $v0, $s2, 0xFF
/* 91D34 80091134 ACC2000C */  sw         $v0, 0xC($a2)
/* 91D38 80091138 ACC00000 */  sw         $zero, 0x0($a2)
/* 91D3C 8009113C 00641821 */  addu       $v1, $v1, $a0
/* 91D40 80091140 ACC30004 */  sw         $v1, 0x4($a2)
/* 91D44 80091144 8E020008 */  lw         $v0, 0x8($s0)
/* 91D48 80091148 8C44000C */  lw         $a0, 0xC($v0)
/* 91D4C 8009114C 8C820008 */  lw         $v0, 0x8($a0)
/* 91D50 80091150 0040F809 */  jalr       $v0
/* 91D54 80091154 24050003 */   addiu     $a1, $zero, 0x3
.L80091158:
/* 91D58 80091158 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91D5C 8009115C 8FB20018 */  lw         $s2, 0x18($sp)
/* 91D60 80091160 8FB10014 */  lw         $s1, 0x14($sp)
/* 91D64 80091164 8FB00010 */  lw         $s0, 0x10($sp)
/* 91D68 80091168 03E00008 */  jr         $ra
/* 91D6C 8009116C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80091170
/* 91D70 80091170 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91D74 80091174 AFB00010 */  sw         $s0, 0x10($sp)
/* 91D78 80091178 00A08021 */  addu       $s0, $a1, $zero
/* 91D7C 8009117C AFBF001C */  sw         $ra, 0x1C($sp)
/* 91D80 80091180 AFB20018 */  sw         $s2, 0x18($sp)
/* 91D84 80091184 AFB10014 */  sw         $s1, 0x14($sp)
/* 91D88 80091188 8E020008 */  lw         $v0, 0x8($s0)
/* 91D8C 8009118C 00808821 */  addu       $s1, $a0, $zero
/* 91D90 80091190 10400015 */  beqz       $v0, .L800911E8
/* 91D94 80091194 00C09021 */   addu      $s2, $a2, $zero
/* 91D98 80091198 0C024287 */  jal        func_80090A1C
/* 91D9C 8009119C 00000000 */   nop
/* 91DA0 800911A0 00403021 */  addu       $a2, $v0, $zero
/* 91DA4 800911A4 10C00010 */  beqz       $a2, .L800911E8
/* 91DA8 800911A8 00000000 */   nop
/* 91DAC 800911AC 8E020008 */  lw         $v0, 0x8($s0)
/* 91DB0 800911B0 8E23001C */  lw         $v1, 0x1C($s1)
/* 91DB4 800911B4 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91DB8 800911B8 2402000C */  addiu      $v0, $zero, 0xC
/* 91DBC 800911BC A4C20008 */  sh         $v0, 0x8($a2)
/* 91DC0 800911C0 324200FF */  andi       $v0, $s2, 0xFF
/* 91DC4 800911C4 ACC2000C */  sw         $v0, 0xC($a2)
/* 91DC8 800911C8 ACC00000 */  sw         $zero, 0x0($a2)
/* 91DCC 800911CC 00641821 */  addu       $v1, $v1, $a0
/* 91DD0 800911D0 ACC30004 */  sw         $v1, 0x4($a2)
/* 91DD4 800911D4 8E020008 */  lw         $v0, 0x8($s0)
/* 91DD8 800911D8 8C44000C */  lw         $a0, 0xC($v0)
/* 91DDC 800911DC 8C820008 */  lw         $v0, 0x8($a0)
/* 91DE0 800911E0 0040F809 */  jalr       $v0
/* 91DE4 800911E4 24050003 */   addiu     $a1, $zero, 0x3
.L800911E8:
/* 91DE8 800911E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91DEC 800911EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 91DF0 800911F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 91DF4 800911F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 91DF8 800911F8 03E00008 */  jr         $ra
/* 91DFC 800911FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80091200
/* 91E00 80091200 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91E04 80091204 AFB10014 */  sw         $s1, 0x14($sp)
/* 91E08 80091208 00808821 */  addu       $s1, $a0, $zero
/* 91E0C 8009120C 00051400 */  sll        $v0, $a1, 16
/* 91E10 80091210 00C02821 */  addu       $a1, $a2, $zero
/* 91E14 80091214 00E03021 */  addu       $a2, $a3, $zero
/* 91E18 80091218 00021403 */  sra        $v0, $v0, 16
/* 91E1C 8009121C AFB00010 */  sw         $s0, 0x10($sp)
/* 91E20 80091220 00028080 */  sll        $s0, $v0, 2
/* 91E24 80091224 02028021 */  addu       $s0, $s0, $v0
/* 91E28 80091228 00108080 */  sll        $s0, $s0, 2
/* 91E2C 8009122C AFBF0018 */  sw         $ra, 0x18($sp)
/* 91E30 80091230 8E240034 */  lw         $a0, 0x34($s1)
/* 91E34 80091234 02028023 */  subu       $s0, $s0, $v0
/* 91E38 80091238 00108080 */  sll        $s0, $s0, 2
/* 91E3C 8009123C 00902021 */  addu       $a0, $a0, $s0
/* 91E40 80091240 0C02537D */  jal        func_80094DF4
/* 91E44 80091244 24840020 */   addiu     $a0, $a0, 0x20
/* 91E48 80091248 8E260034 */  lw         $a2, 0x34($s1)
/* 91E4C 8009124C 24050001 */  addiu      $a1, $zero, 0x1
/* 91E50 80091250 00D03021 */  addu       $a2, $a2, $s0
/* 91E54 80091254 0C025DB0 */  jal        func_800976C0
/* 91E58 80091258 24C40020 */   addiu     $a0, $a2, 0x20
/* 91E5C 8009125C 8E260034 */  lw         $a2, 0x34($s1)
/* 91E60 80091260 8E240030 */  lw         $a0, 0x30($s1)
/* 91E64 80091264 24050002 */  addiu      $a1, $zero, 0x2
/* 91E68 80091268 00D03021 */  addu       $a2, $a2, $s0
/* 91E6C 8009126C 0C025C0C */  jal        func_80097030
/* 91E70 80091270 24C60020 */   addiu     $a2, $a2, 0x20
/* 91E74 80091274 8E220034 */  lw         $v0, 0x34($s1)
/* 91E78 80091278 00501021 */  addu       $v0, $v0, $s0
/* 91E7C 8009127C 24420020 */  addiu      $v0, $v0, 0x20
/* 91E80 80091280 8FBF0018 */  lw         $ra, 0x18($sp)
/* 91E84 80091284 8FB10014 */  lw         $s1, 0x14($sp)
/* 91E88 80091288 8FB00010 */  lw         $s0, 0x10($sp)
/* 91E8C 8009128C 03E00008 */  jr         $ra
/* 91E90 80091290 27BD0020 */   addiu     $sp, $sp, 0x20
/* 91E94 80091294 00000000 */  nop
/* 91E98 80091298 00000000 */  nop
/* 91E9C 8009129C 00000000 */  nop

glabel func_800912A0
/* 91EA0 800912A0 3C02A450 */  lui        $v0, (0xA4500004 >> 16)
/* 91EA4 800912A4 34420004 */  ori        $v0, $v0, (0xA4500004 & 0xFFFF)
/* 91EA8 800912A8 03E00008 */  jr         $ra
/* 91EAC 800912AC 8C420000 */   lw        $v0, 0x0($v0)

glabel func_800912B0
/* 91EB0 800912B0 44841000 */  mtc1       $a0, $f2
/* 91EB4 800912B4 00000000 */  nop
/* 91EB8 800912B8 468010A1 */  cvt.d.w    $f2, $f2
/* 91EBC 800912BC 3C01800A */  lui        $at, %hi(D_800A0698)
/* 91EC0 800912C0 C4240698 */  lwc1       $f4, %lo(D_800A0698)($at)
/* 91EC4 800912C4 46802120 */  cvt.s.w    $f4, $f4
/* 91EC8 800912C8 04830005 */  bgezl      $a0, .L800912E0
/* 91ECC 800912CC 46201020 */   cvt.s.d   $f0, $f2
/* 91ED0 800912D0 3C01800D */  lui        $at, %hi(D_800D6C20)
/* 91ED4 800912D4 D4206C20 */  ldc1       $f0, %lo(D_800D6C20)($at)
/* 91ED8 800912D8 46201080 */  add.d      $f2, $f2, $f0
/* 91EDC 800912DC 46201020 */  cvt.s.d    $f0, $f2
.L800912E0:
/* 91EE0 800912E0 46002003 */  div.s      $f0, $f4, $f0
/* 91EE4 800912E4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 91EE8 800912E8 44811000 */  mtc1       $at, $f2
/* 91EEC 800912EC 00000000 */  nop
/* 91EF0 800912F0 46020080 */  add.s      $f2, $f0, $f2
/* 91EF4 800912F4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 91EF8 800912F8 44810000 */  mtc1       $at, $f0
/* 91EFC 800912FC 00000000 */  nop
/* 91F00 80091300 4602003E */  c.le.s     $f0, $f2
/* 91F04 80091304 00000000 */  nop
/* 91F08 80091308 00000000 */  nop
/* 91F0C 8009130C 45030006 */  bc1tl      .L80091328
/* 91F10 80091310 46001001 */   sub.s     $f0, $f2, $f0
/* 91F14 80091314 4600100D */  trunc.w.s  $f0, $f2
/* 91F18 80091318 44060000 */  mfc1       $a2, $f0
/* 91F1C 8009131C 00000000 */  nop
/* 91F20 80091320 080244CF */  j          .L8009133C
/* 91F24 80091324 2CC20084 */   sltiu     $v0, $a2, 0x84
.L80091328:
/* 91F28 80091328 4600008D */  trunc.w.s  $f2, $f0
/* 91F2C 8009132C 44061000 */  mfc1       $a2, $f2
/* 91F30 80091330 3C028000 */  lui        $v0, 0x8000
/* 91F34 80091334 00C23025 */  or         $a2, $a2, $v0
/* 91F38 80091338 2CC20084 */  sltiu      $v0, $a2, 0x84
.L8009133C:
/* 91F3C 8009133C 14400024 */  bnez       $v0, .L800913D0
/* 91F40 80091340 2402FFFF */   addiu     $v0, $zero, -0x1
/* 91F44 80091344 3C023E0F */  lui        $v0, (0x3E0F83E1 >> 16)
/* 91F48 80091348 344283E1 */  ori        $v0, $v0, (0x3E0F83E1 & 0xFFFF)
/* 91F4C 8009134C 00C20019 */  multu      $a2, $v0
/* 91F50 80091350 00004010 */  mfhi       $t0
/* 91F54 80091354 00083902 */  srl        $a3, $t0, 4
/* 91F58 80091358 30E200FF */  andi       $v0, $a3, 0xFF
/* 91F5C 8009135C 2C420011 */  sltiu      $v0, $v0, 0x11
/* 91F60 80091360 50400001 */  beql       $v0, $zero, .L80091368
/* 91F64 80091364 24070010 */   addiu     $a3, $zero, 0x10
.L80091368:
/* 91F68 80091368 3C03A450 */  lui        $v1, (0xA4500010 >> 16)
/* 91F6C 8009136C 34630010 */  ori        $v1, $v1, (0xA4500010 & 0xFFFF)
/* 91F70 80091370 3C04A450 */  lui        $a0, (0xA4500014 >> 16)
/* 91F74 80091374 34840014 */  ori        $a0, $a0, (0xA4500014 & 0xFFFF)
/* 91F78 80091378 3C05A450 */  lui        $a1, (0xA4500008 >> 16)
/* 91F7C 8009137C 34A50008 */  ori        $a1, $a1, (0xA4500008 & 0xFFFF)
/* 91F80 80091380 24C2FFFF */  addiu      $v0, $a2, -0x1
/* 91F84 80091384 AC620000 */  sw         $v0, 0x0($v1)
/* 91F88 80091388 3C02800A */  lui        $v0, %hi(D_800A0698)
/* 91F8C 8009138C 8C420698 */  lw         $v0, %lo(D_800A0698)($v0)
/* 91F90 80091390 30E300FF */  andi       $v1, $a3, 0xFF
/* 91F94 80091394 2463FFFF */  addiu      $v1, $v1, -0x1
/* 91F98 80091398 AC830000 */  sw         $v1, 0x0($a0)
/* 91F9C 8009139C 24030001 */  addiu      $v1, $zero, 0x1
/* 91FA0 800913A0 ACA30000 */  sw         $v1, 0x0($a1)
/* 91FA4 800913A4 0046001A */  div        $zero, $v0, $a2
/* 91FA8 800913A8 14C00002 */  bnez       $a2, .L800913B4
/* 91FAC 800913AC 00000000 */   nop
/* 91FB0 800913B0 0007000D */  break      7
.L800913B4:
/* 91FB4 800913B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 91FB8 800913B8 14C10004 */  bne        $a2, $at, .L800913CC
/* 91FBC 800913BC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 91FC0 800913C0 14410002 */  bne        $v0, $at, .L800913CC
/* 91FC4 800913C4 00000000 */   nop
/* 91FC8 800913C8 0006000D */  break      6
.L800913CC:
/* 91FCC 800913CC 00001012 */  mflo       $v0
.L800913D0:
/* 91FD0 800913D0 03E00008 */  jr         $ra
/* 91FD4 800913D4 00000000 */   nop
/* 91FD8 800913D8 00000000 */  nop
/* 91FDC 800913DC 00000000 */  nop

glabel func_800913E0
/* 91FE0 800913E0 3C02800D */  lui        $v0, %hi(D_800C9D90)
/* 91FE4 800913E4 90429D90 */  lbu        $v0, %lo(D_800C9D90)($v0)
/* 91FE8 800913E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91FEC 800913EC AFB10014 */  sw         $s1, 0x14($sp)
/* 91FF0 800913F0 00A08821 */  addu       $s1, $a1, $zero
/* 91FF4 800913F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91FF8 800913F8 00808021 */  addu       $s0, $a0, $zero
/* 91FFC 800913FC 10400002 */  beqz       $v0, .L80091408
/* 92000 80091400 AFBF0018 */   sw        $ra, 0x18($sp)
/* 92004 80091404 2610E000 */  addiu      $s0, $s0, -0x2000
.L80091408:
/* 92008 80091408 00911021 */  addu       $v0, $a0, $s1
/* 9200C 8009140C 30421FFF */  andi       $v0, $v0, 0x1FFF
/* 92010 80091410 14400004 */  bnez       $v0, .L80091424
/* 92014 80091414 24020001 */   addiu     $v0, $zero, 0x1
/* 92018 80091418 3C01800D */  lui        $at, %hi(D_800C9D90)
/* 9201C 8009141C 0802450B */  j          .L8009142C
/* 92020 80091420 A0229D90 */   sb        $v0, %lo(D_800C9D90)($at)
.L80091424:
/* 92024 80091424 3C01800D */  lui        $at, %hi(D_800C9D90)
/* 92028 80091428 A0209D90 */  sb         $zero, %lo(D_800C9D90)($at)
.L8009142C:
/* 9202C 8009142C 0C026018 */  jal        func_80098060
/* 92030 80091430 00000000 */   nop
/* 92034 80091434 1440000A */  bnez       $v0, .L80091460
/* 92038 80091438 2402FFFF */   addiu     $v0, $zero, -0x1
/* 9203C 8009143C 0C0006C8 */  jal        osVirtualToPhysical
/* 92040 80091440 02002021 */   addu      $a0, $s0, $zero
/* 92044 80091444 3C05A450 */  lui        $a1, (0xA4500004 >> 16)
/* 92048 80091448 34A50004 */  ori        $a1, $a1, (0xA4500004 & 0xFFFF)
/* 9204C 8009144C 00402021 */  addu       $a0, $v0, $zero
/* 92050 80091450 00001021 */  addu       $v0, $zero, $zero
/* 92054 80091454 3C03A450 */  lui        $v1, %hi(D_A4500000)
/* 92058 80091458 AC640000 */  sw         $a0, %lo(D_A4500000)($v1)
/* 9205C 8009145C ACB10000 */  sw         $s1, 0x0($a1)
.L80091460:
/* 92060 80091460 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92064 80091464 8FB10014 */  lw         $s1, 0x14($sp)
/* 92068 80091468 8FB00010 */  lw         $s0, 0x10($sp)
/* 9206C 8009146C 03E00008 */  jr         $ra
/* 92070 80091470 27BD0020 */   addiu     $sp, $sp, 0x20
/* 92074 80091474 00000000 */  nop
/* 92078 80091478 00000000 */  nop
/* 9207C 8009147C 00000000 */  nop

glabel func_80091480
/* 92080 80091480 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92084 80091484 AFB00010 */  sw         $s0, 0x10($sp)
/* 92088 80091488 00808021 */  addu       $s0, $a0, $zero
/* 9208C 8009148C AFB30018 */  sw         $s3, 0x18($sp)
/* 92090 80091490 AFB20014 */  sw         $s2, 0x14($sp)
/* 92094 80091494 00C09021 */  addu       $s2, $a2, $zero
/* 92098 80091498 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9209C 8009149C 0C026020 */  jal        func_80098080
/* 920A0 800914A0 00E09821 */   addu      $s3, $a3, $zero
/* 920A4 800914A4 14400016 */  bnez       $v0, .L80091500
/* 920A8 800914A8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 920AC 800914AC 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 920B0 800914B0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
/* 920B4 800914B4 24020001 */  addiu      $v0, $zero, 0x1
/* 920B8 800914B8 AC620000 */  sw         $v0, 0x0($v1)
/* 920BC 800914BC 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 920C0 800914C0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
.L800914C4:
/* 920C4 800914C4 8C620000 */  lw         $v0, 0x0($v1)
/* 920C8 800914C8 30420001 */  andi       $v0, $v0, 0x1
/* 920CC 800914CC 1440FFFD */  bnez       $v0, .L800914C4
/* 920D0 800914D0 00000000 */   nop
/* 920D4 800914D4 0C0006C8 */  jal        osVirtualToPhysical
/* 920D8 800914D8 02002021 */   addu      $a0, $s0, $zero
/* 920DC 800914DC 02002021 */  addu       $a0, $s0, $zero
/* 920E0 800914E0 3C03A410 */  lui        $v1, %hi(D_A4100000)
/* 920E4 800914E4 0C0006C8 */  jal        osVirtualToPhysical
/* 920E8 800914E8 AC620000 */   sw        $v0, %lo(D_A4100000)($v1)
/* 920EC 800914EC 3C04A410 */  lui        $a0, (0xA4100004 >> 16)
/* 920F0 800914F0 34840004 */  ori        $a0, $a0, (0xA4100004 & 0xFFFF)
/* 920F4 800914F4 02621821 */  addu       $v1, $s3, $v0
/* 920F8 800914F8 00001021 */  addu       $v0, $zero, $zero
/* 920FC 800914FC AC830000 */  sw         $v1, 0x0($a0)
.L80091500:
/* 92100 80091500 8FBF001C */  lw         $ra, 0x1C($sp)
/* 92104 80091504 8FB30018 */  lw         $s3, 0x18($sp)
/* 92108 80091508 8FB20014 */  lw         $s2, 0x14($sp)
/* 9210C 8009150C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92110 80091510 03E00008 */  jr         $ra
/* 92114 80091514 27BD0020 */   addiu     $sp, $sp, 0x20
/* 92118 80091518 00000000 */  nop
/* 9211C 8009151C 00000000 */  nop

glabel func_80091520
/* 92120 80091520 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92124 80091524 AFB00010 */  sw         $s0, 0x10($sp)
/* 92128 80091528 00808021 */  addu       $s0, $a0, $zero
/* 9212C 8009152C AFB10014 */  sw         $s1, 0x14($sp)
/* 92130 80091530 3C11802C */  lui        $s1, %hi(D_802C4460)
/* 92134 80091534 26314460 */  addiu      $s1, $s1, %lo(D_802C4460)
/* 92138 80091538 02202821 */  addu       $a1, $s1, $zero
/* 9213C 8009153C AFBF0018 */  sw         $ra, 0x18($sp)
/* 92140 80091540 0C024854 */  jal        func_80092150
/* 92144 80091544 24060040 */   addiu     $a2, $zero, 0x40
/* 92148 80091548 3C04802C */  lui        $a0, %hi(D_802C4470)
/* 9214C 8009154C 8C844470 */  lw         $a0, %lo(D_802C4470)($a0)
/* 92150 80091550 10800005 */  beqz       $a0, .L80091568
/* 92154 80091554 00000000 */   nop
/* 92158 80091558 0C0006C8 */  jal        osVirtualToPhysical
/* 9215C 8009155C 00000000 */   nop
/* 92160 80091560 3C01802C */  lui        $at, %hi(D_802C4470)
/* 92164 80091564 AC224470 */  sw         $v0, %lo(D_802C4470)($at)
.L80091568:
/* 92168 80091568 3C04802C */  lui        $a0, %hi(D_802C4478)
/* 9216C 8009156C 8C844478 */  lw         $a0, %lo(D_802C4478)($a0)
/* 92170 80091570 10800005 */  beqz       $a0, .L80091588
/* 92174 80091574 00000000 */   nop
/* 92178 80091578 0C0006C8 */  jal        osVirtualToPhysical
/* 9217C 8009157C 00000000 */   nop
/* 92180 80091580 3C01802C */  lui        $at, %hi(D_802C4478)
/* 92184 80091584 AC224478 */  sw         $v0, %lo(D_802C4478)($at)
.L80091588:
/* 92188 80091588 3C04802C */  lui        $a0, %hi(D_802C4480)
/* 9218C 8009158C 8C844480 */  lw         $a0, %lo(D_802C4480)($a0)
/* 92190 80091590 10800005 */  beqz       $a0, .L800915A8
/* 92194 80091594 00000000 */   nop
/* 92198 80091598 0C0006C8 */  jal        osVirtualToPhysical
/* 9219C 8009159C 00000000 */   nop
/* 921A0 800915A0 3C01802C */  lui        $at, %hi(D_802C4480)
/* 921A4 800915A4 AC224480 */  sw         $v0, %lo(D_802C4480)($at)
.L800915A8:
/* 921A8 800915A8 3C04802C */  lui        $a0, %hi(D_802C4488)
/* 921AC 800915AC 8C844488 */  lw         $a0, %lo(D_802C4488)($a0)
/* 921B0 800915B0 10800005 */  beqz       $a0, .L800915C8
/* 921B4 800915B4 00000000 */   nop
/* 921B8 800915B8 0C0006C8 */  jal        osVirtualToPhysical
/* 921BC 800915BC 00000000 */   nop
/* 921C0 800915C0 3C01802C */  lui        $at, %hi(D_802C4488)
/* 921C4 800915C4 AC224488 */  sw         $v0, %lo(D_802C4488)($at)
.L800915C8:
/* 921C8 800915C8 3C04802C */  lui        $a0, %hi(D_802C448C)
/* 921CC 800915CC 8C84448C */  lw         $a0, %lo(D_802C448C)($a0)
/* 921D0 800915D0 10800005 */  beqz       $a0, .L800915E8
/* 921D4 800915D4 00000000 */   nop
/* 921D8 800915D8 0C0006C8 */  jal        osVirtualToPhysical
/* 921DC 800915DC 00000000 */   nop
/* 921E0 800915E0 3C01802C */  lui        $at, %hi(D_802C448C)
/* 921E4 800915E4 AC22448C */  sw         $v0, %lo(D_802C448C)($at)
.L800915E8:
/* 921E8 800915E8 3C04802C */  lui        $a0, %hi(D_802C4490)
/* 921EC 800915EC 8C844490 */  lw         $a0, %lo(D_802C4490)($a0)
/* 921F0 800915F0 10800005 */  beqz       $a0, .L80091608
/* 921F4 800915F4 00000000 */   nop
/* 921F8 800915F8 0C0006C8 */  jal        osVirtualToPhysical
/* 921FC 800915FC 00000000 */   nop
/* 92200 80091600 3C01802C */  lui        $at, %hi(D_802C4490)
/* 92204 80091604 AC224490 */  sw         $v0, %lo(D_802C4490)($at)
.L80091608:
/* 92208 80091608 3C04802C */  lui        $a0, %hi(D_802C4498)
/* 9220C 8009160C 8C844498 */  lw         $a0, %lo(D_802C4498)($a0)
/* 92210 80091610 10800005 */  beqz       $a0, .L80091628
/* 92214 80091614 00000000 */   nop
/* 92218 80091618 0C0006C8 */  jal        osVirtualToPhysical
/* 9221C 8009161C 00000000 */   nop
/* 92220 80091620 3C01802C */  lui        $at, %hi(D_802C4498)
/* 92224 80091624 AC224498 */  sw         $v0, %lo(D_802C4498)($at)
.L80091628:
/* 92228 80091628 3C02802C */  lui        $v0, %hi(D_802C4464)
/* 9222C 8009162C 8C424464 */  lw         $v0, %lo(D_802C4464)($v0)
/* 92230 80091630 30420001 */  andi       $v0, $v0, 0x1
/* 92234 80091634 10400019 */  beqz       $v0, .L8009169C
/* 92238 80091638 02202021 */   addu      $a0, $s1, $zero
/* 9223C 8009163C 3C02802C */  lui        $v0, %hi(D_802C4498)
/* 92240 80091640 8C424498 */  lw         $v0, %lo(D_802C4498)($v0)
/* 92244 80091644 3C03802C */  lui        $v1, %hi(D_802C449C)
/* 92248 80091648 8C63449C */  lw         $v1, %lo(D_802C449C)($v1)
/* 9224C 8009164C 3C01802C */  lui        $at, %hi(D_802C4478)
/* 92250 80091650 AC224478 */  sw         $v0, %lo(D_802C4478)($at)
/* 92254 80091654 3C01802C */  lui        $at, %hi(D_802C447C)
/* 92258 80091658 AC23447C */  sw         $v1, %lo(D_802C447C)($at)
/* 9225C 8009165C 8E020004 */  lw         $v0, 0x4($s0)
/* 92260 80091660 2403FFFE */  addiu      $v1, $zero, -0x2
/* 92264 80091664 00431024 */  and        $v0, $v0, $v1
/* 92268 80091668 AE020004 */  sw         $v0, 0x4($s0)
/* 9226C 8009166C 3C02802C */  lui        $v0, %hi(D_802C4464)
/* 92270 80091670 8C424464 */  lw         $v0, %lo(D_802C4464)($v0)
/* 92274 80091674 30420004 */  andi       $v0, $v0, 0x4
/* 92278 80091678 10400008 */  beqz       $v0, .L8009169C
/* 9227C 8009167C 3C03A000 */   lui       $v1, %hi(D_A0000000)
/* 92280 80091680 8E020038 */  lw         $v0, 0x38($s0)
/* 92284 80091684 24420BFC */  addiu      $v0, $v0, 0xBFC
/* 92288 80091688 00431025 */  or         $v0, $v0, $v1
/* 9228C 8009168C 8C420000 */  lw         $v0, %lo(D_A0000000)($v0)
/* 92290 80091690 3C01802C */  lui        $at, %hi(D_802C4470)
/* 92294 80091694 AC224470 */  sw         $v0, %lo(D_802C4470)($at)
/* 92298 80091698 02202021 */  addu       $a0, $s1, $zero
.L8009169C:
/* 9229C 8009169C 0C000644 */  jal        func_80001910
/* 922A0 800916A0 24050040 */   addiu     $a1, $zero, 0x40
/* 922A4 800916A4 0C026034 */  jal        func_800980D0
/* 922A8 800916A8 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 922AC 800916AC 2410FFFF */  addiu      $s0, $zero, -0x1
/* 922B0 800916B0 3C040400 */  lui        $a0, (0x4001000 >> 16)
.L800916B4:
/* 922B4 800916B4 0C026038 */  jal        func_800980E0
/* 922B8 800916B8 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 922BC 800916BC 1050FFFD */  beq        $v0, $s0, .L800916B4
/* 922C0 800916C0 3C040400 */   lui       $a0, (0x4001000 >> 16)
/* 922C4 800916C4 2410FFFF */  addiu      $s0, $zero, -0x1
/* 922C8 800916C8 24040001 */  addiu      $a0, $zero, 0x1
.L800916CC:
/* 922CC 800916CC 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 922D0 800916D0 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 922D4 800916D4 02203021 */  addu       $a2, $s1, $zero
/* 922D8 800916D8 0C026044 */  jal        func_80098110
/* 922DC 800916DC 24070040 */   addiu     $a3, $zero, 0x40
/* 922E0 800916E0 1050FFFA */  beq        $v0, $s0, .L800916CC
/* 922E4 800916E4 24040001 */   addiu     $a0, $zero, 0x1
.L800916E8:
/* 922E8 800916E8 0C026028 */  jal        func_800980A0
/* 922EC 800916EC 00000000 */   nop
/* 922F0 800916F0 1440FFFD */  bnez       $v0, .L800916E8
/* 922F4 800916F4 24040001 */   addiu     $a0, $zero, 0x1
/* 922F8 800916F8 2410FFFF */  addiu      $s0, $zero, -0x1
.L800916FC:
/* 922FC 800916FC 8E260008 */  lw         $a2, 0x8($s1)
/* 92300 80091700 8E27000C */  lw         $a3, 0xC($s1)
/* 92304 80091704 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 92308 80091708 0C026044 */  jal        func_80098110
/* 9230C 8009170C 34A51000 */   ori       $a1, $a1, (0x4001000 & 0xFFFF)
/* 92310 80091710 1050FFFA */  beq        $v0, $s0, .L800916FC
/* 92314 80091714 24040001 */   addiu     $a0, $zero, 0x1
/* 92318 80091718 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9231C 8009171C 8FB10014 */  lw         $s1, 0x14($sp)
/* 92320 80091720 8FB00010 */  lw         $s0, 0x10($sp)
/* 92324 80091724 03E00008 */  jr         $ra
/* 92328 80091728 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8009172C
/* 9232C 8009172C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92330 80091730 AFBF0010 */  sw         $ra, 0x10($sp)
.L80091734:
/* 92334 80091734 0C026028 */  jal        func_800980A0
/* 92338 80091738 00000000 */   nop
/* 9233C 8009173C 1440FFFD */  bnez       $v0, .L80091734
/* 92340 80091740 00000000 */   nop
/* 92344 80091744 0C026034 */  jal        func_800980D0
/* 92348 80091748 24040125 */   addiu     $a0, $zero, 0x125
/* 9234C 8009174C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92350 80091750 03E00008 */  jr         $ra
/* 92354 80091754 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92358 80091758 00000000 */  nop
/* 9235C 8009175C 00000000 */  nop

glabel func_80091760
/* 92360 80091760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92364 80091764 AFBF0010 */  sw         $ra, 0x10($sp)
/* 92368 80091768 0C026034 */  jal        func_800980D0
/* 9236C 8009176C 24040400 */   addiu     $a0, $zero, 0x400
/* 92370 80091770 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92374 80091774 03E00008 */  jr         $ra
/* 92378 80091778 27BD0018 */   addiu     $sp, $sp, 0x18
/* 9237C 8009177C 00000000 */  nop

glabel func_80091780
/* 92380 80091780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92384 80091784 AFB00010 */  sw         $s0, 0x10($sp)
/* 92388 80091788 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9238C 8009178C 0C026030 */  jal        func_800980C0
/* 92390 80091790 00808021 */   addu      $s0, $a0, $zero
/* 92394 80091794 00022202 */  srl        $a0, $v0, 8
/* 92398 80091798 30420080 */  andi       $v0, $v0, 0x80
/* 9239C 8009179C 10400006 */  beqz       $v0, .L800917B8
/* 923A0 800917A0 30840001 */   andi      $a0, $a0, 0x1
/* 923A4 800917A4 8E020004 */  lw         $v0, 0x4($s0)
/* 923A8 800917A8 2403FFFD */  addiu      $v1, $zero, -0x3
/* 923AC 800917AC 00441025 */  or         $v0, $v0, $a0
/* 923B0 800917B0 00431024 */  and        $v0, $v0, $v1
/* 923B4 800917B4 AE020004 */  sw         $v0, 0x4($s0)
.L800917B8:
/* 923B8 800917B8 00801021 */  addu       $v0, $a0, $zero
/* 923BC 800917BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 923C0 800917C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 923C4 800917C4 03E00008 */  jr         $ra
/* 923C8 800917C8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 923CC 800917CC 00000000 */  nop

glabel func_800917D0
/* 923D0 800917D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 923D4 800917D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 923D8 800917D8 0C0005EC */  jal        func_800017B0
/* 923DC 800917DC AFB00010 */   sw        $s0, 0x10($sp)
/* 923E0 800917E0 3C03800D */  lui        $v1, %hi(D_800CB260)
/* 923E4 800917E4 8C63B260 */  lw         $v1, %lo(D_800CB260)($v1)
/* 923E8 800917E8 8C700004 */  lw         $s0, 0x4($v1)
/* 923EC 800917EC 0C0005F4 */  jal        __osRestoreInt
/* 923F0 800917F0 00402021 */   addu      $a0, $v0, $zero
/* 923F4 800917F4 02001021 */  addu       $v0, $s0, $zero
/* 923F8 800917F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 923FC 800917FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 92400 80091800 03E00008 */  jr         $ra
/* 92404 80091804 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92408 80091808 00000000 */  nop
/* 9240C 8009180C 00000000 */  nop

glabel func_80091810
/* 92410 80091810 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92414 80091814 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92418 80091818 0C0005EC */  jal        func_800017B0
/* 9241C 8009181C AFB00010 */   sw        $s0, 0x10($sp)
/* 92420 80091820 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92424 80091824 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 92428 80091828 8C700004 */  lw         $s0, 0x4($v1)
/* 9242C 8009182C 0C0005F4 */  jal        __osRestoreInt
/* 92430 80091830 00402021 */   addu      $a0, $v0, $zero
/* 92434 80091834 02001021 */  addu       $v0, $s0, $zero
/* 92438 80091838 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9243C 8009183C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92440 80091840 03E00008 */  jr         $ra
/* 92444 80091844 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92448 80091848 00000000 */  nop
/* 9244C 8009184C 00000000 */  nop

glabel func_80091850
/* 92450 80091850 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92454 80091854 AFB00010 */  sw         $s0, 0x10($sp)
/* 92458 80091858 00808021 */  addu       $s0, $a0, $zero
/* 9245C 8009185C AFB10014 */  sw         $s1, 0x14($sp)
/* 92460 80091860 00A08821 */  addu       $s1, $a1, $zero
/* 92464 80091864 AFB20018 */  sw         $s2, 0x18($sp)
/* 92468 80091868 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9246C 8009186C 0C0005EC */  jal        func_800017B0
/* 92470 80091870 00C09021 */   addu      $s2, $a2, $zero
/* 92474 80091874 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92478 80091878 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9247C 8009187C 00402021 */  addu       $a0, $v0, $zero
/* 92480 80091880 AC700010 */  sw         $s0, 0x10($v1)
/* 92484 80091884 AC710014 */  sw         $s1, 0x14($v1)
/* 92488 80091888 0C0005F4 */  jal        __osRestoreInt
/* 9248C 8009188C A4720002 */   sh        $s2, 0x2($v1)
/* 92490 80091890 8FBF001C */  lw         $ra, 0x1C($sp)
/* 92494 80091894 8FB20018 */  lw         $s2, 0x18($sp)
/* 92498 80091898 8FB10014 */  lw         $s1, 0x14($sp)
/* 9249C 8009189C 8FB00010 */  lw         $s0, 0x10($sp)
/* 924A0 800918A0 03E00008 */  jr         $ra
/* 924A4 800918A4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 924A8 800918A8 00000000 */  nop
/* 924AC 800918AC 00000000 */  nop

glabel func_800918B0
/* 924B0 800918B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 924B4 800918B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 924B8 800918B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 924BC 800918BC 0C0005EC */  jal        func_800017B0
/* 924C0 800918C0 00808021 */   addu      $s0, $a0, $zero
/* 924C4 800918C4 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 924C8 800918C8 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 924CC 800918CC AC900008 */  sw         $s0, 0x8($a0)
/* 924D0 800918D0 8C850008 */  lw         $a1, 0x8($a0)
/* 924D4 800918D4 24030001 */  addiu      $v1, $zero, 0x1
/* 924D8 800918D8 A4830000 */  sh         $v1, 0x0($a0)
/* 924DC 800918DC 8CA30004 */  lw         $v1, 0x4($a1)
/* 924E0 800918E0 AC83000C */  sw         $v1, 0xC($a0)
/* 924E4 800918E4 0C0005F4 */  jal        __osRestoreInt
/* 924E8 800918E8 00402021 */   addu      $a0, $v0, $zero
/* 924EC 800918EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 924F0 800918F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 924F4 800918F4 03E00008 */  jr         $ra
/* 924F8 800918F8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 924FC 800918FC 00000000 */  nop

glabel func_80091900
/* 92500 80091900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92504 80091904 AFB00010 */  sw         $s0, 0x10($sp)
/* 92508 80091908 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9250C 8009190C 0C0005EC */  jal        func_800017B0
/* 92510 80091910 00808021 */   addu      $s0, $a0, $zero
/* 92514 80091914 00403021 */  addu       $a2, $v0, $zero
/* 92518 80091918 32020001 */  andi       $v0, $s0, 0x1
/* 9251C 8009191C 10400007 */  beqz       $v0, .L8009193C
/* 92520 80091920 32020002 */   andi      $v0, $s0, 0x2
/* 92524 80091924 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92528 80091928 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9252C 8009192C 8C62000C */  lw         $v0, 0xC($v1)
/* 92530 80091930 34420008 */  ori        $v0, $v0, 0x8
/* 92534 80091934 AC62000C */  sw         $v0, 0xC($v1)
/* 92538 80091938 32020002 */  andi       $v0, $s0, 0x2
.L8009193C:
/* 9253C 8009193C 10400006 */  beqz       $v0, .L80091958
/* 92540 80091940 2404FFF7 */   addiu     $a0, $zero, -0x9
/* 92544 80091944 3C02800D */  lui        $v0, %hi(D_800CB264)
/* 92548 80091948 8C42B264 */  lw         $v0, %lo(D_800CB264)($v0)
/* 9254C 8009194C 8C43000C */  lw         $v1, 0xC($v0)
/* 92550 80091950 00641824 */  and        $v1, $v1, $a0
/* 92554 80091954 AC43000C */  sw         $v1, 0xC($v0)
.L80091958:
/* 92558 80091958 32020004 */  andi       $v0, $s0, 0x4
/* 9255C 8009195C 10400007 */  beqz       $v0, .L8009197C
/* 92560 80091960 32020008 */   andi      $v0, $s0, 0x8
/* 92564 80091964 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92568 80091968 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9256C 8009196C 8C62000C */  lw         $v0, 0xC($v1)
/* 92570 80091970 34420004 */  ori        $v0, $v0, 0x4
/* 92574 80091974 AC62000C */  sw         $v0, 0xC($v1)
/* 92578 80091978 32020008 */  andi       $v0, $s0, 0x8
.L8009197C:
/* 9257C 8009197C 10400006 */  beqz       $v0, .L80091998
/* 92580 80091980 2404FFFB */   addiu     $a0, $zero, -0x5
/* 92584 80091984 3C02800D */  lui        $v0, %hi(D_800CB264)
/* 92588 80091988 8C42B264 */  lw         $v0, %lo(D_800CB264)($v0)
/* 9258C 8009198C 8C43000C */  lw         $v1, 0xC($v0)
/* 92590 80091990 00641824 */  and        $v1, $v1, $a0
/* 92594 80091994 AC43000C */  sw         $v1, 0xC($v0)
.L80091998:
/* 92598 80091998 32020010 */  andi       $v0, $s0, 0x10
/* 9259C 8009199C 10400007 */  beqz       $v0, .L800919BC
/* 925A0 800919A0 32020020 */   andi      $v0, $s0, 0x20
/* 925A4 800919A4 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 925A8 800919A8 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 925AC 800919AC 8C62000C */  lw         $v0, 0xC($v1)
/* 925B0 800919B0 34420010 */  ori        $v0, $v0, 0x10
/* 925B4 800919B4 AC62000C */  sw         $v0, 0xC($v1)
/* 925B8 800919B8 32020020 */  andi       $v0, $s0, 0x20
.L800919BC:
/* 925BC 800919BC 10400006 */  beqz       $v0, .L800919D8
/* 925C0 800919C0 2404FFEF */   addiu     $a0, $zero, -0x11
/* 925C4 800919C4 3C02800D */  lui        $v0, %hi(D_800CB264)
/* 925C8 800919C8 8C42B264 */  lw         $v0, %lo(D_800CB264)($v0)
/* 925CC 800919CC 8C43000C */  lw         $v1, 0xC($v0)
/* 925D0 800919D0 00641824 */  and        $v1, $v1, $a0
/* 925D4 800919D4 AC43000C */  sw         $v1, 0xC($v0)
.L800919D8:
/* 925D8 800919D8 32020040 */  andi       $v0, $s0, 0x40
/* 925DC 800919DC 10400008 */  beqz       $v0, .L80091A00
/* 925E0 800919E0 3C030001 */   lui       $v1, (0x10000 >> 16)
/* 925E4 800919E4 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 925E8 800919E8 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 925EC 800919EC 8C82000C */  lw         $v0, 0xC($a0)
/* 925F0 800919F0 00431025 */  or         $v0, $v0, $v1
/* 925F4 800919F4 2403FCFF */  addiu      $v1, $zero, -0x301
/* 925F8 800919F8 00431024 */  and        $v0, $v0, $v1
/* 925FC 800919FC AC82000C */  sw         $v0, 0xC($a0)
.L80091A00:
/* 92600 80091A00 32020080 */  andi       $v0, $s0, 0x80
/* 92604 80091A04 1040000C */  beqz       $v0, .L80091A38
/* 92608 80091A08 3C02FFFE */   lui       $v0, (0xFFFEFFFF >> 16)
/* 9260C 80091A0C 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 92610 80091A10 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 92614 80091A14 8C83000C */  lw         $v1, 0xC($a0)
/* 92618 80091A18 8C850008 */  lw         $a1, 0x8($a0)
/* 9261C 80091A1C 3442FFFF */  ori        $v0, $v0, (0xFFFEFFFF & 0xFFFF)
/* 92620 80091A20 00621824 */  and        $v1, $v1, $v0
/* 92624 80091A24 AC83000C */  sw         $v1, 0xC($a0)
/* 92628 80091A28 8CA20004 */  lw         $v0, 0x4($a1)
/* 9262C 80091A2C 30420300 */  andi       $v0, $v0, 0x300
/* 92630 80091A30 00621825 */  or         $v1, $v1, $v0
/* 92634 80091A34 AC83000C */  sw         $v1, 0xC($a0)
.L80091A38:
/* 92638 80091A38 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 9263C 80091A3C 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 92640 80091A40 94620000 */  lhu        $v0, 0x0($v1)
/* 92644 80091A44 00C02021 */  addu       $a0, $a2, $zero
/* 92648 80091A48 34420008 */  ori        $v0, $v0, 0x8
/* 9264C 80091A4C 0C0005F4 */  jal        __osRestoreInt
/* 92650 80091A50 A4620000 */   sh        $v0, 0x0($v1)
/* 92654 80091A54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92658 80091A58 8FB00010 */  lw         $s0, 0x10($sp)
/* 9265C 80091A5C 03E00008 */  jr         $ra
/* 92660 80091A60 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92664 80091A64 00000000 */  nop
/* 92668 80091A68 00000000 */  nop
/* 9266C 80091A6C 00000000 */  nop

glabel func_80091A70
/* 92670 80091A70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92674 80091A74 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 92678 80091A78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9267C 80091A7C 0C0005EC */  jal        func_800017B0
/* 92680 80091A80 46006506 */   mov.s     $f20, $f12
/* 92684 80091A84 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 92688 80091A88 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 9268C 80091A8C 94830000 */  lhu        $v1, 0x0($a0)
/* 92690 80091A90 E4940024 */  swc1       $f20, 0x24($a0)
/* 92694 80091A94 34630004 */  ori        $v1, $v1, 0x4
/* 92698 80091A98 A4830000 */  sh         $v1, 0x0($a0)
/* 9269C 80091A9C 0C0005F4 */  jal        __osRestoreInt
/* 926A0 80091AA0 00402021 */   addu      $a0, $v0, $zero
/* 926A4 80091AA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 926A8 80091AA8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 926AC 80091AAC 03E00008 */  jr         $ra
/* 926B0 80091AB0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 926B4 80091AB4 00000000 */  nop
/* 926B8 80091AB8 00000000 */  nop
/* 926BC 80091ABC 00000000 */  nop

glabel func_80091AC0
/* 926C0 80091AC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 926C4 80091AC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 926C8 80091AC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 926CC 80091ACC 0C0005EC */  jal        func_800017B0
/* 926D0 80091AD0 00808021 */   addu      $s0, $a0, $zero
/* 926D4 80091AD4 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 926D8 80091AD8 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 926DC 80091ADC 94830000 */  lhu        $v1, 0x0($a0)
/* 926E0 80091AE0 AC900004 */  sw         $s0, 0x4($a0)
/* 926E4 80091AE4 34630010 */  ori        $v1, $v1, 0x10
/* 926E8 80091AE8 A4830000 */  sh         $v1, 0x0($a0)
/* 926EC 80091AEC 0C0005F4 */  jal        __osRestoreInt
/* 926F0 80091AF0 00402021 */   addu      $a0, $v0, $zero
/* 926F4 80091AF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 926F8 80091AF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 926FC 80091AFC 03E00008 */  jr         $ra
/* 92700 80091B00 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92704 80091B04 00000000 */  nop
/* 92708 80091B08 00000000 */  nop
/* 9270C 80091B0C 00000000 */  nop

glabel func_80091B10
/* 92710 80091B10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92714 80091B14 AFB00010 */  sw         $s0, 0x10($sp)
/* 92718 80091B18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9271C 80091B1C 0C0005EC */  jal        func_800017B0
/* 92720 80091B20 00808021 */   addu      $s0, $a0, $zero
/* 92724 80091B24 321000FF */  andi       $s0, $s0, 0xFF
/* 92728 80091B28 12000006 */  beqz       $s0, .L80091B44
/* 9272C 80091B2C 00402021 */   addu      $a0, $v0, $zero
/* 92730 80091B30 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92734 80091B34 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 92738 80091B38 94620000 */  lhu        $v0, 0x0($v1)
/* 9273C 80091B3C 080246D5 */  j          .L80091B54
/* 92740 80091B40 34420020 */   ori       $v0, $v0, 0x20
.L80091B44:
/* 92744 80091B44 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92748 80091B48 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9274C 80091B4C 94620000 */  lhu        $v0, 0x0($v1)
/* 92750 80091B50 3042FFDF */  andi       $v0, $v0, 0xFFDF
.L80091B54:
/* 92754 80091B54 0C0005F4 */  jal        __osRestoreInt
/* 92758 80091B58 A4620000 */   sh        $v0, 0x0($v1)
/* 9275C 80091B5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92760 80091B60 8FB00010 */  lw         $s0, 0x10($sp)
/* 92764 80091B64 03E00008 */  jr         $ra
/* 92768 80091B68 27BD0018 */   addiu     $sp, $sp, 0x18
/* 9276C 80091B6C 00000000 */  nop

glabel func_80091B70
/* 92770 80091B70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92774 80091B74 AFB00010 */  sw         $s0, 0x10($sp)
/* 92778 80091B78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9277C 80091B7C 0C0260E1 */  jal        func_80098384
/* 92780 80091B80 00808021 */   addu      $s0, $a0, $zero
/* 92784 80091B84 3C02802F */  lui        $v0, %hi(D_802F1C18)
/* 92788 80091B88 90421C18 */  lbu        $v0, %lo(D_802F1C18)($v0)
/* 9278C 80091B8C 1040000B */  beqz       $v0, .L80091BBC
/* 92790 80091B90 00000000 */   nop
/* 92794 80091B94 0C024798 */  jal        func_80091E60
/* 92798 80091B98 00002021 */   addu      $a0, $zero, $zero
/* 9279C 80091B9C 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 927A0 80091BA0 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 927A4 80091BA4 0C025114 */  jal        func_80094450
/* 927A8 80091BA8 24040001 */   addiu     $a0, $zero, 0x1
/* 927AC 80091BAC 02002021 */  addu       $a0, $s0, $zero
/* 927B0 80091BB0 00002821 */  addu       $a1, $zero, $zero
/* 927B4 80091BB4 0C000B3C */  jal        osRecvMesg
/* 927B8 80091BB8 24060001 */   addiu     $a2, $zero, 0x1
.L80091BBC:
/* 927BC 80091BBC 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 927C0 80091BC0 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 927C4 80091BC4 0C025114 */  jal        func_80094450
/* 927C8 80091BC8 00002021 */   addu      $a0, $zero, $zero
/* 927CC 80091BCC 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 927D0 80091BD0 A0201C18 */  sb         $zero, %lo(D_802F1C18)($at)
/* 927D4 80091BD4 0C0260FC */  jal        func_800983F0
/* 927D8 80091BD8 00408021 */   addu      $s0, $v0, $zero
/* 927DC 80091BDC 02001021 */  addu       $v0, $s0, $zero
/* 927E0 80091BE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 927E4 80091BE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 927E8 80091BE8 03E00008 */  jr         $ra
/* 927EC 80091BEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80091BF0
/* 927F0 80091BF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 927F4 80091BF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 927F8 80091BF8 00802821 */  addu       $a1, $a0, $zero
/* 927FC 80091BFC 0C02476B */  jal        func_80091DAC
/* 92800 80091C00 27A40010 */   addiu     $a0, $sp, 0x10
/* 92804 80091C04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92808 80091C08 03E00008 */  jr         $ra
/* 9280C 80091C0C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80091C10
/* 92810 80091C10 3C02800D */  lui        $v0, %hi(D_800C9DA0)
/* 92814 80091C14 8C429DA0 */  lw         $v0, %lo(D_800C9DA0)($v0)
/* 92818 80091C18 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9281C 80091C1C AFB40070 */  sw         $s4, 0x70($sp)
/* 92820 80091C20 0080A021 */  addu       $s4, $a0, $zero
/* 92824 80091C24 AFB50074 */  sw         $s5, 0x74($sp)
/* 92828 80091C28 00A0A821 */  addu       $s5, $a1, $zero
/* 9282C 80091C2C AFB60078 */  sw         $s6, 0x78($sp)
/* 92830 80091C30 00C0B021 */  addu       $s6, $a2, $zero
/* 92834 80091C34 AFBF007C */  sw         $ra, 0x7C($sp)
/* 92838 80091C38 AFB3006C */  sw         $s3, 0x6C($sp)
/* 9283C 80091C3C AFB20068 */  sw         $s2, 0x68($sp)
/* 92840 80091C40 AFB10064 */  sw         $s1, 0x64($sp)
/* 92844 80091C44 10400003 */  beqz       $v0, .L80091C54
/* 92848 80091C48 AFB00060 */   sw        $s0, 0x60($sp)
/* 9284C 80091C4C 08024761 */  j          .L80091D84
/* 92850 80091C50 00001021 */   addu      $v0, $zero, $zero
.L80091C54:
/* 92854 80091C54 24020001 */  addiu      $v0, $zero, 0x1
/* 92858 80091C58 3C01800D */  lui        $at, %hi(D_800C9DA0)
/* 9285C 80091C5C 0C024034 */  jal        func_800900D0
/* 92860 80091C60 AC229DA0 */   sw        $v0, %lo(D_800C9DA0)($at)
/* 92864 80091C64 00409021 */  addu       $s2, $v0, $zero
/* 92868 80091C68 00609821 */  addu       $s3, $v1, $zero
/* 9286C 80091C6C 56400022 */  bnel       $s2, $zero, .L80091CF8
/* 92870 80091C70 24020004 */   addiu     $v0, $zero, 0x4
/* 92874 80091C74 16400007 */  bnez       $s2, .L80091C94
/* 92878 80091C78 27B10040 */   addiu     $s1, $sp, 0x40
/* 9287C 80091C7C 3C020165 */  lui        $v0, (0x165A0BB >> 16)
/* 92880 80091C80 3442A0BB */  ori        $v0, $v0, (0x165A0BB & 0xFFFF)
/* 92884 80091C84 0053102B */  sltu       $v0, $v0, $s3
/* 92888 80091C88 1440001B */  bnez       $v0, .L80091CF8
/* 9288C 80091C8C 24020004 */   addiu     $v0, $zero, 0x4
/* 92890 80091C90 27B10040 */  addiu      $s1, $sp, 0x40
.L80091C94:
/* 92894 80091C94 02202021 */  addu       $a0, $s1, $zero
/* 92898 80091C98 27B00058 */  addiu      $s0, $sp, 0x58
/* 9289C 80091C9C 02002821 */  addu       $a1, $s0, $zero
/* 928A0 80091CA0 0C0009FC */  jal        func_800027F0
/* 928A4 80091CA4 24060001 */   addiu     $a2, $zero, 0x1
/* 928A8 80091CA8 00004021 */  addu       $t0, $zero, $zero
/* 928AC 80091CAC 00004821 */  addu       $t1, $zero, $zero
/* 928B0 80091CB0 27A40020 */  addiu      $a0, $sp, 0x20
/* 928B4 80091CB4 24060000 */  addiu      $a2, $zero, 0x0
/* 928B8 80091CB8 3C070165 */  lui        $a3, (0x165A0BC >> 16)
/* 928BC 80091CBC 34E7A0BC */  ori        $a3, $a3, (0x165A0BC & 0xFFFF)
/* 928C0 80091CC0 00F3102B */  sltu       $v0, $a3, $s3
/* 928C4 80091CC4 00F33823 */  subu       $a3, $a3, $s3
/* 928C8 80091CC8 00D23023 */  subu       $a2, $a2, $s2
/* 928CC 80091CCC 00C23023 */  subu       $a2, $a2, $v0
/* 928D0 80091CD0 AFA80010 */  sw         $t0, 0x10($sp)
/* 928D4 80091CD4 AFA90014 */  sw         $t1, 0x14($sp)
/* 928D8 80091CD8 AFB10018 */  sw         $s1, 0x18($sp)
/* 928DC 80091CDC 0C02532C */  jal        func_80094CB0
/* 928E0 80091CE0 AFB0001C */   sw        $s0, 0x1C($sp)
/* 928E4 80091CE4 02202021 */  addu       $a0, $s1, $zero
/* 928E8 80091CE8 02002821 */  addu       $a1, $s0, $zero
/* 928EC 80091CEC 0C000B3C */  jal        osRecvMesg
/* 928F0 80091CF0 24060001 */   addiu     $a2, $zero, 0x1
/* 928F4 80091CF4 24020004 */  addiu      $v0, $zero, 0x4
.L80091CF8:
/* 928F8 80091CF8 3C01802D */  lui        $at, %hi(D_802D2A54)
/* 928FC 80091CFC A0222A54 */  sb         $v0, %lo(D_802D2A54)($at)
/* 92900 80091D00 0C024798 */  jal        func_80091E60
/* 92904 80091D04 00002021 */   addu      $a0, $zero, $zero
/* 92908 80091D08 24040001 */  addiu      $a0, $zero, 0x1
/* 9290C 80091D0C 3C11802C */  lui        $s1, %hi(D_802C7990)
/* 92910 80091D10 26317990 */  addiu      $s1, $s1, %lo(D_802C7990)
/* 92914 80091D14 0C025114 */  jal        func_80094450
/* 92918 80091D18 02202821 */   addu      $a1, $s1, $zero
/* 9291C 80091D1C 02802021 */  addu       $a0, $s4, $zero
/* 92920 80091D20 27B00058 */  addiu      $s0, $sp, 0x58
/* 92924 80091D24 02002821 */  addu       $a1, $s0, $zero
/* 92928 80091D28 0C000B3C */  jal        osRecvMesg
/* 9292C 80091D2C 24060001 */   addiu     $a2, $zero, 0x1
/* 92930 80091D30 00002021 */  addu       $a0, $zero, $zero
/* 92934 80091D34 0C025114 */  jal        func_80094450
/* 92938 80091D38 02202821 */   addu      $a1, $s1, $zero
/* 9293C 80091D3C 02802021 */  addu       $a0, $s4, $zero
/* 92940 80091D40 02002821 */  addu       $a1, $s0, $zero
/* 92944 80091D44 24060001 */  addiu      $a2, $zero, 0x1
/* 92948 80091D48 0C000B3C */  jal        osRecvMesg
/* 9294C 80091D4C 00408021 */   addu      $s0, $v0, $zero
/* 92950 80091D50 02A02021 */  addu       $a0, $s5, $zero
/* 92954 80091D54 0C02476B */  jal        func_80091DAC
/* 92958 80091D58 02C02821 */   addu      $a1, $s6, $zero
/* 9295C 80091D5C 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 92960 80091D60 0C0260CC */  jal        func_80098330
/* 92964 80091D64 A0201C18 */   sb        $zero, %lo(D_802F1C18)($at)
/* 92968 80091D68 3C04803F */  lui        $a0, %hi(D_803F5BF8)
/* 9296C 80091D6C 24845BF8 */  addiu      $a0, $a0, %lo(D_803F5BF8)
/* 92970 80091D70 3C05802F */  lui        $a1, %hi(D_802F2204)
/* 92974 80091D74 24A52204 */  addiu      $a1, $a1, %lo(D_802F2204)
/* 92978 80091D78 0C0009FC */  jal        func_800027F0
/* 9297C 80091D7C 24060001 */   addiu     $a2, $zero, 0x1
/* 92980 80091D80 02001021 */  addu       $v0, $s0, $zero
.L80091D84:
/* 92984 80091D84 8FBF007C */  lw         $ra, 0x7C($sp)
/* 92988 80091D88 8FB60078 */  lw         $s6, 0x78($sp)
/* 9298C 80091D8C 8FB50074 */  lw         $s5, 0x74($sp)
/* 92990 80091D90 8FB40070 */  lw         $s4, 0x70($sp)
/* 92994 80091D94 8FB3006C */  lw         $s3, 0x6C($sp)
/* 92998 80091D98 8FB20068 */  lw         $s2, 0x68($sp)
/* 9299C 80091D9C 8FB10064 */  lw         $s1, 0x64($sp)
/* 929A0 80091DA0 8FB00060 */  lw         $s0, 0x60($sp)
/* 929A4 80091DA4 03E00008 */  jr         $ra
/* 929A8 80091DA8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_80091DAC
/* 929AC 80091DAC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 929B0 80091DB0 00805821 */  addu       $t3, $a0, $zero
/* 929B4 80091DB4 00A04821 */  addu       $t1, $a1, $zero
/* 929B8 80091DB8 00005021 */  addu       $t2, $zero, $zero
/* 929BC 80091DBC 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 929C0 80091DC0 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 929C4 80091DC4 3C08802C */  lui        $t0, %hi(D_802C7990)
/* 929C8 80091DC8 25087990 */  addiu      $t0, $t0, %lo(D_802C7990)
/* 929CC 80091DCC 18400021 */  blez       $v0, .L80091E54
/* 929D0 80091DD0 00003821 */   addu      $a3, $zero, $zero
/* 929D4 80091DD4 240C0001 */  addiu      $t4, $zero, 0x1
/* 929D8 80091DD8 24A60002 */  addiu      $a2, $a1, 0x2
.L80091DDC:
/* 929DC 80091DDC 89020000 */  lwl        $v0, 0x0($t0)
/* 929E0 80091DE0 99020003 */  lwr        $v0, 0x3($t0)
/* 929E4 80091DE4 89030004 */  lwl        $v1, 0x4($t0)
/* 929E8 80091DE8 99030007 */  lwr        $v1, 0x7($t0)
/* 929EC 80091DEC ABA20000 */  swl        $v0, 0x0($sp)
/* 929F0 80091DF0 BBA20003 */  swr        $v0, 0x3($sp)
/* 929F4 80091DF4 ABA30004 */  swl        $v1, 0x4($sp)
/* 929F8 80091DF8 BBA30007 */  swr        $v1, 0x7($sp)
/* 929FC 80091DFC 93A20002 */  lbu        $v0, 0x2($sp)
/* 92A00 80091E00 304200C0 */  andi       $v0, $v0, 0xC0
/* 92A04 80091E04 00021102 */  srl        $v0, $v0, 4
/* 92A08 80091E08 1440000A */  bnez       $v0, .L80091E34
/* 92A0C 80091E0C A0C20001 */   sb        $v0, 0x1($a2)
/* 92A10 80091E10 93A20005 */  lbu        $v0, 0x5($sp)
/* 92A14 80091E14 93A30004 */  lbu        $v1, 0x4($sp)
/* 92A18 80091E18 00021200 */  sll        $v0, $v0, 8
/* 92A1C 80091E1C 00621825 */  or         $v1, $v1, $v0
/* 92A20 80091E20 A5230000 */  sh         $v1, 0x0($t1)
/* 92A24 80091E24 93A30006 */  lbu        $v1, 0x6($sp)
/* 92A28 80091E28 00EC1004 */  sllv       $v0, $t4, $a3
/* 92A2C 80091E2C 01425025 */  or         $t2, $t2, $v0
/* 92A30 80091E30 A0C30000 */  sb         $v1, 0x0($a2)
.L80091E34:
/* 92A34 80091E34 24E70001 */  addiu      $a3, $a3, 0x1
/* 92A38 80091E38 25080008 */  addiu      $t0, $t0, 0x8
/* 92A3C 80091E3C 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 92A40 80091E40 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 92A44 80091E44 24C60004 */  addiu      $a2, $a2, 0x4
/* 92A48 80091E48 00E2102A */  slt        $v0, $a3, $v0
/* 92A4C 80091E4C 1440FFE3 */  bnez       $v0, .L80091DDC
/* 92A50 80091E50 25290004 */   addiu     $t1, $t1, 0x4
.L80091E54:
/* 92A54 80091E54 A16A0000 */  sb         $t2, 0x0($t3)
/* 92A58 80091E58 03E00008 */  jr         $ra
/* 92A5C 80091E5C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80091E60
/* 92A60 80091E60 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 92A64 80091E64 00802821 */  addu       $a1, $a0, $zero
/* 92A68 80091E68 2406000E */  addiu      $a2, $zero, 0xE
/* 92A6C 80091E6C 3C02802C */  lui        $v0, %hi(D_802C79C8)
/* 92A70 80091E70 244279C8 */  addiu      $v0, $v0, %lo(D_802C79C8)
.L80091E74:
/* 92A74 80091E74 AC400000 */  sw         $zero, 0x0($v0)
/* 92A78 80091E78 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 92A7C 80091E7C 04C1FFFD */  bgez       $a2, .L80091E74
/* 92A80 80091E80 2442FFFC */   addiu     $v0, $v0, -0x4
/* 92A84 80091E84 3C03802C */  lui        $v1, %hi(D_802C79CC)
/* 92A88 80091E88 246379CC */  addiu      $v1, $v1, %lo(D_802C79CC)
/* 92A8C 80091E8C 2467FFC4 */  addiu      $a3, $v1, -0x3C
/* 92A90 80091E90 3C04802D */  lui        $a0, %hi(D_802D2A54)
/* 92A94 80091E94 90842A54 */  lbu        $a0, %lo(D_802D2A54)($a0)
/* 92A98 80091E98 00003021 */  addu       $a2, $zero, $zero
/* 92A9C 80091E9C 24020001 */  addiu      $v0, $zero, 0x1
/* 92AA0 80091EA0 AC620000 */  sw         $v0, 0x0($v1)
/* 92AA4 80091EA4 240300FF */  addiu      $v1, $zero, 0xFF
/* 92AA8 80091EA8 24020001 */  addiu      $v0, $zero, 0x1
/* 92AAC 80091EAC A3A20001 */  sb         $v0, 0x1($sp)
/* 92AB0 80091EB0 24020003 */  addiu      $v0, $zero, 0x3
/* 92AB4 80091EB4 A3A30000 */  sb         $v1, 0x0($sp)
/* 92AB8 80091EB8 A3A20002 */  sb         $v0, 0x2($sp)
/* 92ABC 80091EBC A3A50003 */  sb         $a1, 0x3($sp)
/* 92AC0 80091EC0 A3A30004 */  sb         $v1, 0x4($sp)
/* 92AC4 80091EC4 A3A30005 */  sb         $v1, 0x5($sp)
/* 92AC8 80091EC8 A3A30006 */  sb         $v1, 0x6($sp)
/* 92ACC 80091ECC 1880000F */  blez       $a0, .L80091F0C
/* 92AD0 80091ED0 A3A30007 */   sb        $v1, 0x7($sp)
.L80091ED4:
/* 92AD4 80091ED4 8BA20000 */  lwl        $v0, 0x0($sp)
/* 92AD8 80091ED8 9BA20003 */  lwr        $v0, 0x3($sp)
/* 92ADC 80091EDC 8BA30004 */  lwl        $v1, 0x4($sp)
/* 92AE0 80091EE0 9BA30007 */  lwr        $v1, 0x7($sp)
/* 92AE4 80091EE4 A8E20000 */  swl        $v0, 0x0($a3)
/* 92AE8 80091EE8 B8E20003 */  swr        $v0, 0x3($a3)
/* 92AEC 80091EEC A8E30004 */  swl        $v1, 0x4($a3)
/* 92AF0 80091EF0 B8E30007 */  swr        $v1, 0x7($a3)
/* 92AF4 80091EF4 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 92AF8 80091EF8 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 92AFC 80091EFC 24C60001 */  addiu      $a2, $a2, 0x1
/* 92B00 80091F00 00C2102A */  slt        $v0, $a2, $v0
/* 92B04 80091F04 1440FFF3 */  bnez       $v0, .L80091ED4
/* 92B08 80091F08 24E70008 */   addiu     $a3, $a3, 0x8
.L80091F0C:
/* 92B0C 80091F0C 240200FE */  addiu      $v0, $zero, 0xFE
/* 92B10 80091F10 A0E20000 */  sb         $v0, 0x0($a3)
/* 92B14 80091F14 03E00008 */  jr         $ra
/* 92B18 80091F18 27BD0010 */   addiu     $sp, $sp, 0x10
/* 92B1C 80091F1C 00000000 */  nop

glabel func_80091F20
/* 92B20 80091F20 3C02800A */  lui        $v0, %hi(D_800A06F0)
/* 92B24 80091F24 8C4206F0 */  lw         $v0, %lo(D_800A06F0)($v0)
/* 92B28 80091F28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92B2C 80091F2C AFB00010 */  sw         $s0, 0x10($sp)
/* 92B30 80091F30 00A08021 */  addu       $s0, $a1, $zero
/* 92B34 80091F34 14400003 */  bnez       $v0, .L80091F44
/* 92B38 80091F38 AFBF0014 */   sw        $ra, 0x14($sp)
/* 92B3C 80091F3C 080247E9 */  j          .L80091FA4
/* 92B40 80091F40 2402FFFF */   addiu     $v0, $zero, -0x1
.L80091F44:
/* 92B44 80091F44 14C00003 */  bnez       $a2, .L80091F54
/* 92B48 80091F48 AE040014 */   sw        $a0, 0x14($s0)
/* 92B4C 80091F4C 080247D6 */  j          .L80091F58
/* 92B50 80091F50 2402000F */   addiu     $v0, $zero, 0xF
.L80091F54:
/* 92B54 80091F54 24020010 */  addiu      $v0, $zero, 0x10
.L80091F58:
/* 92B58 80091F58 A6020000 */  sh         $v0, 0x0($s0)
/* 92B5C 80091F5C 92030002 */  lbu        $v1, 0x2($s0)
/* 92B60 80091F60 24020001 */  addiu      $v0, $zero, 0x1
/* 92B64 80091F64 14620009 */  bne        $v1, $v0, .L80091F8C
/* 92B68 80091F68 00000000 */   nop
/* 92B6C 80091F6C 0C026108 */  jal        func_80098420
/* 92B70 80091F70 00000000 */   nop
/* 92B74 80091F74 00402021 */  addu       $a0, $v0, $zero
/* 92B78 80091F78 02002821 */  addu       $a1, $s0, $zero
/* 92B7C 80091F7C 0C0252DC */  jal        func_80094B70
/* 92B80 80091F80 00003021 */   addu      $a2, $zero, $zero
/* 92B84 80091F84 080247E9 */  j          .L80091FA4
/* 92B88 80091F88 00000000 */   nop
.L80091F8C:
/* 92B8C 80091F8C 0C026108 */  jal        func_80098420
/* 92B90 80091F90 00000000 */   nop
/* 92B94 80091F94 00402021 */  addu       $a0, $v0, $zero
/* 92B98 80091F98 02002821 */  addu       $a1, $s0, $zero
/* 92B9C 80091F9C 0C000B9C */  jal        osSendMesg
/* 92BA0 80091FA0 00003021 */   addu      $a2, $zero, $zero
.L80091FA4:
/* 92BA4 80091FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92BA8 80091FA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 92BAC 80091FAC 03E00008 */  jr         $ra
/* 92BB0 80091FB0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92BB4 80091FB4 00000000 */  nop
/* 92BB8 80091FB8 00000000 */  nop
/* 92BBC 80091FBC 00000000 */  nop

glabel func_80091FC0
/* 92BC0 80091FC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 92BC4 80091FC4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 92BC8 80091FC8 3C11803F */  lui        $s1, %hi(D_803F5C4C)
/* 92BCC 80091FCC 26315C4C */  addiu      $s1, $s1, %lo(D_803F5C4C)
/* 92BD0 80091FD0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 92BD4 80091FD4 AFB00018 */  sw         $s0, 0x18($sp)
/* 92BD8 80091FD8 8E220000 */  lw         $v0, 0x0($s1)
/* 92BDC 80091FDC 3C03B000 */  lui        $v1, (0xB0000000 >> 16)
/* 92BE0 80091FE0 10430025 */  beq        $v0, $v1, .L80092078
/* 92BE4 80091FE4 AFA00010 */   sw        $zero, 0x10($sp)
/* 92BE8 80091FE8 00002021 */  addu       $a0, $zero, $zero
/* 92BEC 80091FEC 27A50010 */  addiu      $a1, $sp, 0x10
/* 92BF0 80091FF0 3C01803F */  lui        $at, %hi(D_803F5C44)
/* 92BF4 80091FF4 A0205C44 */  sb         $zero, %lo(D_803F5C44)($at)
/* 92BF8 80091FF8 0C0002F0 */  jal        osPiRawReadIo
/* 92BFC 80091FFC AE230000 */   sw        $v1, 0x0($s1)
/* 92C00 80092000 8FA30010 */  lw         $v1, 0x10($sp)
/* 92C04 80092004 26240008 */  addiu      $a0, $s1, 0x8
/* 92C08 80092008 3C01803F */  lui        $at, %hi(D_803F5C49)
/* 92C0C 8009200C A0205C49 */  sb         $zero, %lo(D_803F5C49)($at)
/* 92C10 80092010 3C01803F */  lui        $at, %hi(D_803F5C50)
/* 92C14 80092014 AC205C50 */  sw         $zero, %lo(D_803F5C50)($at)
/* 92C18 80092018 00031202 */  srl        $v0, $v1, 8
/* 92C1C 8009201C 3C01803F */  lui        $at, %hi(D_803F5C48)
/* 92C20 80092020 A0225C48 */  sb         $v0, %lo(D_803F5C48)($at)
/* 92C24 80092024 00031402 */  srl        $v0, $v1, 16
/* 92C28 80092028 3042000F */  andi       $v0, $v0, 0xF
/* 92C2C 8009202C 3C01803F */  lui        $at, %hi(D_803F5C45)
/* 92C30 80092030 A0235C45 */  sb         $v1, %lo(D_803F5C45)($at)
/* 92C34 80092034 00031D02 */  srl        $v1, $v1, 20
/* 92C38 80092038 3063000F */  andi       $v1, $v1, 0xF
/* 92C3C 8009203C 3C01803F */  lui        $at, %hi(D_803F5C46)
/* 92C40 80092040 A0225C46 */  sb         $v0, %lo(D_803F5C46)($at)
/* 92C44 80092044 3C01803F */  lui        $at, %hi(D_803F5C47)
/* 92C48 80092048 A0235C47 */  sb         $v1, %lo(D_803F5C47)($at)
/* 92C4C 8009204C 0C00034C */  jal        _bzero
/* 92C50 80092050 24050060 */   addiu     $a1, $zero, 0x60
/* 92C54 80092054 0C0005EC */  jal        func_800017B0
/* 92C58 80092058 2630FFF4 */   addiu     $s0, $s1, -0xC
/* 92C5C 8009205C 3C03800A */  lui        $v1, %hi(D_800A070C)
/* 92C60 80092060 8C63070C */  lw         $v1, %lo(D_800A070C)($v1)
/* 92C64 80092064 00402021 */  addu       $a0, $v0, $zero
/* 92C68 80092068 3C01800A */  lui        $at, %hi(D_800A070C)
/* 92C6C 8009206C AC30070C */  sw         $s0, %lo(D_800A070C)($at)
/* 92C70 80092070 0C0005F4 */  jal        __osRestoreInt
/* 92C74 80092074 AE23FFF4 */   sw        $v1, -0xC($s1)
.L80092078:
/* 92C78 80092078 3C02803F */  lui        $v0, %hi(D_803F5C40)
/* 92C7C 8009207C 24425C40 */  addiu      $v0, $v0, %lo(D_803F5C40)
/* 92C80 80092080 8FBF0020 */  lw         $ra, 0x20($sp)
/* 92C84 80092084 8FB1001C */  lw         $s1, 0x1C($sp)
/* 92C88 80092088 8FB00018 */  lw         $s0, 0x18($sp)
/* 92C8C 8009208C 03E00008 */  jr         $ra
/* 92C90 80092090 27BD0028 */   addiu     $sp, $sp, 0x28
/* 92C94 80092094 00000000 */  nop
/* 92C98 80092098 00000000 */  nop
/* 92C9C 8009209C 00000000 */  nop

glabel func_800920A0
/* 92CA0 800920A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92CA4 800920A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 92CA8 800920A8 00808021 */  addu       $s0, $a0, $zero
/* 92CAC 800920AC 8FA40028 */  lw         $a0, 0x28($sp)
/* 92CB0 800920B0 3C02800A */  lui        $v0, %hi(D_800A06F0)
/* 92CB4 800920B4 8C4206F0 */  lw         $v0, %lo(D_800A06F0)($v0)
/* 92CB8 800920B8 8FA8002C */  lw         $t0, 0x2C($sp)
/* 92CBC 800920BC 8FA30030 */  lw         $v1, 0x30($sp)
/* 92CC0 800920C0 14400003 */  bnez       $v0, .L800920D0
/* 92CC4 800920C4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 92CC8 800920C8 0802484E */  j          .L80092138
/* 92CCC 800920CC 2402FFFF */   addiu     $v0, $zero, -0x1
.L800920D0:
/* 92CD0 800920D0 14C00002 */  bnez       $a2, .L800920DC
/* 92CD4 800920D4 2402000C */   addiu     $v0, $zero, 0xC
/* 92CD8 800920D8 2402000B */  addiu      $v0, $zero, 0xB
.L800920DC:
/* 92CDC 800920DC A6020000 */  sh         $v0, 0x0($s0)
/* 92CE0 800920E0 24020001 */  addiu      $v0, $zero, 0x1
/* 92CE4 800920E4 A2050002 */  sb         $a1, 0x2($s0)
/* 92CE8 800920E8 AE030004 */  sw         $v1, 0x4($s0)
/* 92CEC 800920EC AE040008 */  sw         $a0, 0x8($s0)
/* 92CF0 800920F0 AE07000C */  sw         $a3, 0xC($s0)
/* 92CF4 800920F4 AE080010 */  sw         $t0, 0x10($s0)
/* 92CF8 800920F8 14A20009 */  bne        $a1, $v0, .L80092120
/* 92CFC 800920FC AE000014 */   sw        $zero, 0x14($s0)
/* 92D00 80092100 0C026108 */  jal        func_80098420
/* 92D04 80092104 00000000 */   nop
/* 92D08 80092108 00402021 */  addu       $a0, $v0, $zero
/* 92D0C 8009210C 02002821 */  addu       $a1, $s0, $zero
/* 92D10 80092110 0C0252DC */  jal        func_80094B70
/* 92D14 80092114 00003021 */   addu      $a2, $zero, $zero
/* 92D18 80092118 0802484E */  j          .L80092138
/* 92D1C 8009211C 00000000 */   nop
.L80092120:
/* 92D20 80092120 0C026108 */  jal        func_80098420
/* 92D24 80092124 00000000 */   nop
/* 92D28 80092128 00402021 */  addu       $a0, $v0, $zero
/* 92D2C 8009212C 02002821 */  addu       $a1, $s0, $zero
/* 92D30 80092130 0C000B9C */  jal        osSendMesg
/* 92D34 80092134 00003021 */   addu      $a2, $zero, $zero
.L80092138:
/* 92D38 80092138 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92D3C 8009213C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92D40 80092140 03E00008 */  jr         $ra
/* 92D44 80092144 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92D48 80092148 00000000 */  nop
/* 92D4C 8009214C 00000000 */  nop

# Handwritten function
glabel func_80092150
/* 92D50 80092150 10C0001B */  beqz       $a2, .L800921C0
/* 92D54 80092154 00A03821 */   addu      $a3, $a1, $zero
/* 92D58 80092158 10850019 */  beq        $a0, $a1, .L800921C0
/* 92D5C 8009215C 00000000 */   nop
/* 92D60 80092160 00A4082A */  slt        $at, $a1, $a0
/* 92D64 80092164 14200007 */  bnez       $at, .L80092184
/* 92D68 80092168 00000000 */   nop
/* 92D6C 8009216C 00861020 */  add        $v0, $a0, $a2
/* 92D70 80092170 00A2082A */  slt        $at, $a1, $v0
/* 92D74 80092174 10200003 */  beqz       $at, .L80092184
/* 92D78 80092178 00000000 */   nop
/* 92D7C 8009217C 1000005C */  b          .L800922F0
/* 92D80 80092180 00000000 */   nop
.L80092184:
/* 92D84 80092184 28C10010 */  slti       $at, $a2, 0x10
/* 92D88 80092188 14200005 */  bnez       $at, .L800921A0
/* 92D8C 8009218C 00000000 */   nop
/* 92D90 80092190 30820003 */  andi       $v0, $a0, 0x3
/* 92D94 80092194 30A30003 */  andi       $v1, $a1, 0x3
/* 92D98 80092198 1043000B */  beq        $v0, $v1, .L800921C8
/* 92D9C 8009219C 00000000 */   nop
.L800921A0:
/* 92DA0 800921A0 10C00007 */  beqz       $a2, .L800921C0
/* 92DA4 800921A4 00000000 */   nop
/* 92DA8 800921A8 00861821 */  addu       $v1, $a0, $a2
.L800921AC:
/* 92DAC 800921AC 80820000 */  lb         $v0, 0x0($a0)
/* 92DB0 800921B0 24840001 */  addiu      $a0, $a0, 0x1
/* 92DB4 800921B4 A0A20000 */  sb         $v0, 0x0($a1)
/* 92DB8 800921B8 1483FFFC */  bne        $a0, $v1, .L800921AC
/* 92DBC 800921BC 24A50001 */   addiu     $a1, $a1, 0x1
.L800921C0:
/* 92DC0 800921C0 03E00008 */  jr         $ra
/* 92DC4 800921C4 00E01021 */   addu      $v0, $a3, $zero
.L800921C8:
/* 92DC8 800921C8 1040001A */  beqz       $v0, .L80092234
/* 92DCC 800921CC 00000000 */   nop
/* 92DD0 800921D0 24010001 */  addiu      $at, $zero, 0x1
/* 92DD4 800921D4 10410010 */  beq        $v0, $at, .L80092218
/* 92DD8 800921D8 00000000 */   nop
/* 92DDC 800921DC 24010002 */  addiu      $at, $zero, 0x2
/* 92DE0 800921E0 10410007 */  beq        $v0, $at, .L80092200
/* 92DE4 800921E4 00000000 */   nop
/* 92DE8 800921E8 80820000 */  lb         $v0, 0x0($a0)
/* 92DEC 800921EC 24840001 */  addiu      $a0, $a0, 0x1
/* 92DF0 800921F0 A0A20000 */  sb         $v0, 0x0($a1)
/* 92DF4 800921F4 24A50001 */  addiu      $a1, $a1, 0x1
/* 92DF8 800921F8 1000000E */  b          .L80092234
/* 92DFC 800921FC 24C6FFFF */   addiu     $a2, $a2, -0x1
.L80092200:
/* 92E00 80092200 84820000 */  lh         $v0, 0x0($a0)
/* 92E04 80092204 24840002 */  addiu      $a0, $a0, 0x2
/* 92E08 80092208 A4A20000 */  sh         $v0, 0x0($a1)
/* 92E0C 8009220C 24A50002 */  addiu      $a1, $a1, 0x2
/* 92E10 80092210 10000008 */  b          .L80092234
/* 92E14 80092214 24C6FFFE */   addiu     $a2, $a2, -0x2
.L80092218:
/* 92E18 80092218 80820000 */  lb         $v0, 0x0($a0)
/* 92E1C 8009221C 84830001 */  lh         $v1, 0x1($a0)
/* 92E20 80092220 24840003 */  addiu      $a0, $a0, 0x3
/* 92E24 80092224 A0A20000 */  sb         $v0, 0x0($a1)
/* 92E28 80092228 A4A30001 */  sh         $v1, 0x1($a1)
/* 92E2C 8009222C 24A50003 */  addiu      $a1, $a1, 0x3
/* 92E30 80092230 24C6FFFD */  addiu      $a2, $a2, -0x3
.L80092234:
/* 92E34 80092234 28C10020 */  slti       $at, $a2, 0x20
/* 92E38 80092238 14200015 */  bnez       $at, .L80092290
/* 92E3C 8009223C 00000000 */   nop
/* 92E40 80092240 8C820000 */  lw         $v0, 0x0($a0)
/* 92E44 80092244 8C830004 */  lw         $v1, 0x4($a0)
/* 92E48 80092248 8C880008 */  lw         $t0, 0x8($a0)
/* 92E4C 8009224C 8C89000C */  lw         $t1, 0xC($a0)
/* 92E50 80092250 8C8A0010 */  lw         $t2, 0x10($a0)
/* 92E54 80092254 8C8B0014 */  lw         $t3, 0x14($a0)
/* 92E58 80092258 8C8C0018 */  lw         $t4, 0x18($a0)
/* 92E5C 8009225C 8C8D001C */  lw         $t5, 0x1C($a0)
/* 92E60 80092260 24840020 */  addiu      $a0, $a0, 0x20
/* 92E64 80092264 ACA20000 */  sw         $v0, 0x0($a1)
/* 92E68 80092268 ACA30004 */  sw         $v1, 0x4($a1)
/* 92E6C 8009226C ACA80008 */  sw         $t0, 0x8($a1)
/* 92E70 80092270 ACA9000C */  sw         $t1, 0xC($a1)
/* 92E74 80092274 ACAA0010 */  sw         $t2, 0x10($a1)
/* 92E78 80092278 ACAB0014 */  sw         $t3, 0x14($a1)
/* 92E7C 8009227C ACAC0018 */  sw         $t4, 0x18($a1)
/* 92E80 80092280 ACAD001C */  sw         $t5, 0x1C($a1)
/* 92E84 80092284 24A50020 */  addiu      $a1, $a1, 0x20
/* 92E88 80092288 1000FFEA */  b          .L80092234
/* 92E8C 8009228C 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L80092290:
/* 92E90 80092290 28C10010 */  slti       $at, $a2, 0x10
/* 92E94 80092294 1420000D */  bnez       $at, .L800922CC
/* 92E98 80092298 00000000 */   nop
/* 92E9C 8009229C 8C820000 */  lw         $v0, 0x0($a0)
/* 92EA0 800922A0 8C830004 */  lw         $v1, 0x4($a0)
/* 92EA4 800922A4 8C880008 */  lw         $t0, 0x8($a0)
/* 92EA8 800922A8 8C89000C */  lw         $t1, 0xC($a0)
/* 92EAC 800922AC 24840010 */  addiu      $a0, $a0, 0x10
/* 92EB0 800922B0 ACA20000 */  sw         $v0, 0x0($a1)
/* 92EB4 800922B4 ACA30004 */  sw         $v1, 0x4($a1)
/* 92EB8 800922B8 ACA80008 */  sw         $t0, 0x8($a1)
/* 92EBC 800922BC ACA9000C */  sw         $t1, 0xC($a1)
/* 92EC0 800922C0 24A50010 */  addiu      $a1, $a1, 0x10
/* 92EC4 800922C4 1000FFF2 */  b          .L80092290
/* 92EC8 800922C8 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L800922CC:
/* 92ECC 800922CC 28C10004 */  slti       $at, $a2, 0x4
/* 92ED0 800922D0 1420FFB3 */  bnez       $at, .L800921A0
/* 92ED4 800922D4 00000000 */   nop
/* 92ED8 800922D8 8C820000 */  lw         $v0, 0x0($a0)
/* 92EDC 800922DC 24840004 */  addiu      $a0, $a0, 0x4
/* 92EE0 800922E0 ACA20000 */  sw         $v0, 0x0($a1)
/* 92EE4 800922E4 24A50004 */  addiu      $a1, $a1, 0x4
/* 92EE8 800922E8 1000FFF8 */  b          .L800922CC
/* 92EEC 800922EC 24C6FFFC */   addiu     $a2, $a2, -0x4
.L800922F0:
/* 92EF0 800922F0 00862020 */  add        $a0, $a0, $a2
/* 92EF4 800922F4 00A62820 */  add        $a1, $a1, $a2
/* 92EF8 800922F8 28C10010 */  slti       $at, $a2, 0x10
/* 92EFC 800922FC 14200005 */  bnez       $at, .L80092314
/* 92F00 80092300 00000000 */   nop
/* 92F04 80092304 30820003 */  andi       $v0, $a0, 0x3
/* 92F08 80092308 30A30003 */  andi       $v1, $a1, 0x3
/* 92F0C 8009230C 1043000D */  beq        $v0, $v1, .L80092344
/* 92F10 80092310 00000000 */   nop
.L80092314:
/* 92F14 80092314 10C0FFAA */  beqz       $a2, .L800921C0
/* 92F18 80092318 00000000 */   nop
/* 92F1C 8009231C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 92F20 80092320 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 92F24 80092324 00861823 */  subu       $v1, $a0, $a2
.L80092328:
/* 92F28 80092328 80820000 */  lb         $v0, 0x0($a0)
/* 92F2C 8009232C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 92F30 80092330 A0A20000 */  sb         $v0, 0x0($a1)
/* 92F34 80092334 1483FFFC */  bne        $a0, $v1, .L80092328
/* 92F38 80092338 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 92F3C 8009233C 03E00008 */  jr         $ra
/* 92F40 80092340 00E01021 */   addu      $v0, $a3, $zero
.L80092344:
/* 92F44 80092344 1040001A */  beqz       $v0, .L800923B0
/* 92F48 80092348 00000000 */   nop
/* 92F4C 8009234C 24010003 */  addiu      $at, $zero, 0x3
/* 92F50 80092350 10410010 */  beq        $v0, $at, .L80092394
/* 92F54 80092354 00000000 */   nop
/* 92F58 80092358 24010002 */  addiu      $at, $zero, 0x2
/* 92F5C 8009235C 10410007 */  beq        $v0, $at, .L8009237C
/* 92F60 80092360 00000000 */   nop
/* 92F64 80092364 8082FFFF */  lb         $v0, -0x1($a0)
/* 92F68 80092368 2484FFFF */  addiu      $a0, $a0, -0x1
/* 92F6C 8009236C A0A2FFFF */  sb         $v0, -0x1($a1)
/* 92F70 80092370 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 92F74 80092374 1000000E */  b          .L800923B0
/* 92F78 80092378 24C6FFFF */   addiu     $a2, $a2, -0x1
.L8009237C:
/* 92F7C 8009237C 8482FFFE */  lh         $v0, -0x2($a0)
/* 92F80 80092380 2484FFFE */  addiu      $a0, $a0, -0x2
/* 92F84 80092384 A4A2FFFE */  sh         $v0, -0x2($a1)
/* 92F88 80092388 24A5FFFE */  addiu      $a1, $a1, -0x2
/* 92F8C 8009238C 10000008 */  b          .L800923B0
/* 92F90 80092390 24C6FFFE */   addiu     $a2, $a2, -0x2
.L80092394:
/* 92F94 80092394 8082FFFF */  lb         $v0, -0x1($a0)
/* 92F98 80092398 8483FFFD */  lh         $v1, -0x3($a0)
/* 92F9C 8009239C 2484FFFD */  addiu      $a0, $a0, -0x3
/* 92FA0 800923A0 A0A2FFFF */  sb         $v0, -0x1($a1)
/* 92FA4 800923A4 A4A3FFFD */  sh         $v1, -0x3($a1)
/* 92FA8 800923A8 24A5FFFD */  addiu      $a1, $a1, -0x3
/* 92FAC 800923AC 24C6FFFD */  addiu      $a2, $a2, -0x3
.L800923B0:
/* 92FB0 800923B0 28C10020 */  slti       $at, $a2, 0x20
/* 92FB4 800923B4 14200015 */  bnez       $at, .L8009240C
/* 92FB8 800923B8 00000000 */   nop
/* 92FBC 800923BC 8C82FFFC */  lw         $v0, -0x4($a0)
/* 92FC0 800923C0 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 92FC4 800923C4 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 92FC8 800923C8 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 92FCC 800923CC 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 92FD0 800923D0 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 92FD4 800923D4 8C8CFFE4 */  lw         $t4, -0x1C($a0)
/* 92FD8 800923D8 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 92FDC 800923DC 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 92FE0 800923E0 ACA2FFFC */  sw         $v0, -0x4($a1)
/* 92FE4 800923E4 ACA3FFF8 */  sw         $v1, -0x8($a1)
/* 92FE8 800923E8 ACA8FFF4 */  sw         $t0, -0xC($a1)
/* 92FEC 800923EC ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 92FF0 800923F0 ACAAFFEC */  sw         $t2, -0x14($a1)
/* 92FF4 800923F4 ACABFFE8 */  sw         $t3, -0x18($a1)
/* 92FF8 800923F8 ACACFFE4 */  sw         $t4, -0x1C($a1)
/* 92FFC 800923FC ACADFFE0 */  sw         $t5, -0x20($a1)
/* 93000 80092400 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 93004 80092404 1000FFEA */  b          .L800923B0
/* 93008 80092408 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L8009240C:
/* 9300C 8009240C 28C10010 */  slti       $at, $a2, 0x10
/* 93010 80092410 1420000D */  bnez       $at, .L80092448
/* 93014 80092414 00000000 */   nop
/* 93018 80092418 8C82FFFC */  lw         $v0, -0x4($a0)
/* 9301C 8009241C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 93020 80092420 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 93024 80092424 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 93028 80092428 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 9302C 8009242C ACA2FFFC */  sw         $v0, -0x4($a1)
/* 93030 80092430 ACA3FFF8 */  sw         $v1, -0x8($a1)
/* 93034 80092434 ACA8FFF4 */  sw         $t0, -0xC($a1)
/* 93038 80092438 ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 9303C 8009243C 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 93040 80092440 1000FFF2 */  b          .L8009240C
/* 93044 80092444 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L80092448:
/* 93048 80092448 28C10004 */  slti       $at, $a2, 0x4
/* 9304C 8009244C 1420FFB1 */  bnez       $at, .L80092314
/* 93050 80092450 00000000 */   nop
/* 93054 80092454 8C82FFFC */  lw         $v0, -0x4($a0)
/* 93058 80092458 2484FFFC */  addiu      $a0, $a0, -0x4
/* 9305C 8009245C ACA2FFFC */  sw         $v0, -0x4($a1)
/* 93060 80092460 24A5FFFC */  addiu      $a1, $a1, -0x4
/* 93064 80092464 1000FFF8 */  b          .L80092448
/* 93068 80092468 24C6FFFC */   addiu     $a2, $a2, -0x4
/* 9306C 8009246C 00000000 */  nop
glabel func_80092470
/* 93070 80092470 90830000 */  lbu        $v1, 0x0($a0)
/* 93074 80092474 30A500FF */  andi       $a1, $a1, 0xFF
/* 93078 80092478 306200FF */  andi       $v0, $v1, 0xFF
/* 9307C 8009247C 10450008 */  beq        $v0, $a1, .L800924A0
/* 93080 80092480 00801021 */   addu      $v0, $a0, $zero
.L80092484:
/* 93084 80092484 14600003 */  bnez       $v1, .L80092494
/* 93088 80092488 24840001 */   addiu     $a0, $a0, 0x1
/* 9308C 8009248C 08024928 */  j          .L800924A0
/* 93090 80092490 00001021 */   addu      $v0, $zero, $zero
.L80092494:
/* 93094 80092494 90830000 */  lbu        $v1, 0x0($a0)
/* 93098 80092498 1465FFFA */  bne        $v1, $a1, .L80092484
/* 9309C 8009249C 00801021 */   addu      $v0, $a0, $zero
.L800924A0:
/* 930A0 800924A0 03E00008 */  jr         $ra
/* 930A4 800924A4 00000000 */   nop

glabel func_800924A8
/* 930A8 800924A8 90820000 */  lbu        $v0, 0x0($a0)
/* 930AC 800924AC 10400005 */  beqz       $v0, .L800924C4
/* 930B0 800924B0 00801821 */   addu      $v1, $a0, $zero
/* 930B4 800924B4 24630001 */  addiu      $v1, $v1, 0x1
.L800924B8:
/* 930B8 800924B8 90620000 */  lbu        $v0, 0x0($v1)
/* 930BC 800924BC 5440FFFE */  bnel       $v0, $zero, .L800924B8
/* 930C0 800924C0 24630001 */   addiu     $v1, $v1, 0x1
.L800924C4:
/* 930C4 800924C4 03E00008 */  jr         $ra
/* 930C8 800924C8 00641023 */   subu      $v0, $v1, $a0

glabel func_800924CC
/* 930CC 800924CC 10C00007 */  beqz       $a2, .L800924EC
/* 930D0 800924D0 00801821 */   addu      $v1, $a0, $zero
.L800924D4:
/* 930D4 800924D4 90A20000 */  lbu        $v0, 0x0($a1)
/* 930D8 800924D8 24A50001 */  addiu      $a1, $a1, 0x1
/* 930DC 800924DC 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 930E0 800924E0 A0620000 */  sb         $v0, 0x0($v1)
/* 930E4 800924E4 14C0FFFB */  bnez       $a2, .L800924D4
/* 930E8 800924E8 24630001 */   addiu     $v1, $v1, 0x1
.L800924EC:
/* 930EC 800924EC 03E00008 */  jr         $ra
/* 930F0 800924F0 00801021 */   addu      $v0, $a0, $zero
/* 930F4 800924F4 00000000 */  nop
/* 930F8 800924F8 00000000 */  nop
/* 930FC 800924FC 00000000 */  nop

glabel func_80092500
/* 93100 80092500 AFA50004 */  sw         $a1, 0x4($sp)
/* 93104 80092504 AFA60008 */  sw         $a2, 0x8($sp)
/* 93108 80092508 AFA7000C */  sw         $a3, 0xC($sp)
/* 9310C 8009250C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93110 80092510 AFB00010 */  sw         $s0, 0x10($sp)
/* 93114 80092514 00808021 */  addu       $s0, $a0, $zero
/* 93118 80092518 00A03021 */  addu       $a2, $a1, $zero
/* 9311C 8009251C 3C048009 */  lui        $a0, %hi(func_80092558)
/* 93120 80092520 24842558 */  addiu      $a0, $a0, %lo(func_80092558)
/* 93124 80092524 02002821 */  addu       $a1, $s0, $zero
/* 93128 80092528 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9312C 8009252C 0C026110 */  jal        func_80098440
/* 93130 80092530 27A70020 */   addiu     $a3, $sp, 0x20
/* 93134 80092534 00401821 */  addu       $v1, $v0, $zero
/* 93138 80092538 04600002 */  bltz       $v1, .L80092544
/* 9313C 8009253C 02031021 */   addu      $v0, $s0, $v1
/* 93140 80092540 A0400000 */  sb         $zero, 0x0($v0)
.L80092544:
/* 93144 80092544 00601021 */  addu       $v0, $v1, $zero
/* 93148 80092548 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9314C 8009254C 8FB00010 */  lw         $s0, 0x10($sp)
/* 93150 80092550 03E00008 */  jr         $ra
/* 93154 80092554 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80092558
/* 93158 80092558 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9315C 8009255C AFB10014 */  sw         $s1, 0x14($sp)
/* 93160 80092560 00808821 */  addu       $s1, $a0, $zero
/* 93164 80092564 AFB00010 */  sw         $s0, 0x10($sp)
/* 93168 80092568 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9316C 8009256C 0C024933 */  jal        func_800924CC
/* 93170 80092570 00C08021 */   addu      $s0, $a2, $zero
/* 93174 80092574 02301021 */  addu       $v0, $s1, $s0
/* 93178 80092578 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9317C 8009257C 8FB10014 */  lw         $s1, 0x14($sp)
/* 93180 80092580 8FB00010 */  lw         $s0, 0x10($sp)
/* 93184 80092584 03E00008 */  jr         $ra
/* 93188 80092588 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9318C 8009258C 00000000 */  nop

glabel func_80092590
/* 93190 80092590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93194 80092594 AFB00010 */  sw         $s0, 0x10($sp)
/* 93198 80092598 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9319C 8009259C 0C0260E1 */  jal        func_80098384
/* 931A0 800925A0 00808021 */   addu      $s0, $a0, $zero
/* 931A4 800925A4 3C03802F */  lui        $v1, %hi(D_802F1C18)
/* 931A8 800925A8 90631C18 */  lbu        $v1, %lo(D_802F1C18)($v1)
/* 931AC 800925AC 24020001 */  addiu      $v0, $zero, 0x1
/* 931B0 800925B0 1062000B */  beq        $v1, $v0, .L800925E0
/* 931B4 800925B4 00000000 */   nop
/* 931B8 800925B8 0C0249AD */  jal        func_800926B4
/* 931BC 800925BC 00000000 */   nop
/* 931C0 800925C0 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 931C4 800925C4 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 931C8 800925C8 0C025114 */  jal        func_80094450
/* 931CC 800925CC 24040001 */   addiu     $a0, $zero, 0x1
/* 931D0 800925D0 02002021 */  addu       $a0, $s0, $zero
/* 931D4 800925D4 00002821 */  addu       $a1, $zero, $zero
/* 931D8 800925D8 0C000B3C */  jal        osRecvMesg
/* 931DC 800925DC 24060001 */   addiu     $a2, $zero, 0x1
.L800925E0:
/* 931E0 800925E0 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 931E4 800925E4 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 931E8 800925E8 0C025114 */  jal        func_80094450
/* 931EC 800925EC 00002021 */   addu      $a0, $zero, $zero
/* 931F0 800925F0 24030001 */  addiu      $v1, $zero, 0x1
/* 931F4 800925F4 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 931F8 800925F8 A0231C18 */  sb         $v1, %lo(D_802F1C18)($at)
/* 931FC 800925FC 0C0260FC */  jal        func_800983F0
/* 93200 80092600 00408021 */   addu      $s0, $v0, $zero
/* 93204 80092604 02001021 */  addu       $v0, $s0, $zero
/* 93208 80092608 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9320C 8009260C 8FB00010 */  lw         $s0, 0x10($sp)
/* 93210 80092610 03E00008 */  jr         $ra
/* 93214 80092614 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80092618
/* 93218 80092618 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9321C 8009261C 00804821 */  addu       $t1, $a0, $zero
/* 93220 80092620 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 93224 80092624 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 93228 80092628 3C08802C */  lui        $t0, %hi(D_802C7990)
/* 9322C 8009262C 25087990 */  addiu      $t0, $t0, %lo(D_802C7990)
/* 93230 80092630 1840001D */  blez       $v0, .L800926A8
/* 93234 80092634 00003821 */   addu      $a3, $zero, $zero
/* 93238 80092638 24860003 */  addiu      $a2, $a0, 0x3
.L8009263C:
/* 9323C 8009263C 89020000 */  lwl        $v0, 0x0($t0)
/* 93240 80092640 99020003 */  lwr        $v0, 0x3($t0)
/* 93244 80092644 89030004 */  lwl        $v1, 0x4($t0)
/* 93248 80092648 99030007 */  lwr        $v1, 0x7($t0)
/* 9324C 8009264C ABA20000 */  swl        $v0, 0x0($sp)
/* 93250 80092650 BBA20003 */  swr        $v0, 0x3($sp)
/* 93254 80092654 ABA30004 */  swl        $v1, 0x4($sp)
/* 93258 80092658 BBA30007 */  swr        $v1, 0x7($sp)
/* 9325C 8009265C 93A20002 */  lbu        $v0, 0x2($sp)
/* 93260 80092660 304200C0 */  andi       $v0, $v0, 0xC0
/* 93264 80092664 00021102 */  srl        $v0, $v0, 4
/* 93268 80092668 14400007 */  bnez       $v0, .L80092688
/* 9326C 8009266C A0C20001 */   sb        $v0, 0x1($a2)
/* 93270 80092670 97A20004 */  lhu        $v0, 0x4($sp)
/* 93274 80092674 A5220000 */  sh         $v0, 0x0($t1)
/* 93278 80092678 93A20006 */  lbu        $v0, 0x6($sp)
/* 9327C 8009267C A0C2FFFF */  sb         $v0, -0x1($a2)
/* 93280 80092680 93A20007 */  lbu        $v0, 0x7($sp)
/* 93284 80092684 A0C20000 */  sb         $v0, 0x0($a2)
.L80092688:
/* 93288 80092688 24E70001 */  addiu      $a3, $a3, 0x1
/* 9328C 8009268C 25080008 */  addiu      $t0, $t0, 0x8
/* 93290 80092690 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 93294 80092694 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 93298 80092698 24C60006 */  addiu      $a2, $a2, 0x6
/* 9329C 8009269C 00E2102A */  slt        $v0, $a3, $v0
/* 932A0 800926A0 1440FFE6 */  bnez       $v0, .L8009263C
/* 932A4 800926A4 25290006 */   addiu     $t1, $t1, 0x6
.L800926A8:
/* 932A8 800926A8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 932AC 800926AC 03E00008 */  jr         $ra
/* 932B0 800926B0 00000000 */   nop

glabel func_800926B4
/* 932B4 800926B4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 932B8 800926B8 3C07802C */  lui        $a3, %hi(D_802C7990)
/* 932BC 800926BC 24E77990 */  addiu      $a3, $a3, %lo(D_802C7990)
/* 932C0 800926C0 2406000E */  addiu      $a2, $zero, 0xE
/* 932C4 800926C4 24E20038 */  addiu      $v0, $a3, 0x38
.L800926C8:
/* 932C8 800926C8 AC400000 */  sw         $zero, 0x0($v0)
/* 932CC 800926CC 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 932D0 800926D0 04C1FFFD */  bgez       $a2, .L800926C8
/* 932D4 800926D4 2442FFFC */   addiu     $v0, $v0, -0x4
/* 932D8 800926D8 24020001 */  addiu      $v0, $zero, 0x1
/* 932DC 800926DC 3C04802D */  lui        $a0, %hi(D_802D2A54)
/* 932E0 800926E0 90842A54 */  lbu        $a0, %lo(D_802D2A54)($a0)
/* 932E4 800926E4 00003021 */  addu       $a2, $zero, $zero
/* 932E8 800926E8 3C01802C */  lui        $at, %hi(D_802C79CC)
/* 932EC 800926EC AC2279CC */  sw         $v0, %lo(D_802C79CC)($at)
/* 932F0 800926F0 240200FF */  addiu      $v0, $zero, 0xFF
/* 932F4 800926F4 24030001 */  addiu      $v1, $zero, 0x1
/* 932F8 800926F8 A3A20000 */  sb         $v0, 0x0($sp)
/* 932FC 800926FC 24020004 */  addiu      $v0, $zero, 0x4
/* 93300 80092700 A3A20002 */  sb         $v0, 0x2($sp)
/* 93304 80092704 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 93308 80092708 A7A20004 */  sh         $v0, 0x4($sp)
/* 9330C 8009270C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93310 80092710 A3A30001 */  sb         $v1, 0x1($sp)
/* 93314 80092714 A3A30003 */  sb         $v1, 0x3($sp)
/* 93318 80092718 A3A20006 */  sb         $v0, 0x6($sp)
/* 9331C 8009271C 1880000F */  blez       $a0, .L8009275C
/* 93320 80092720 A3A20007 */   sb        $v0, 0x7($sp)
.L80092724:
/* 93324 80092724 8BA20000 */  lwl        $v0, 0x0($sp)
/* 93328 80092728 9BA20003 */  lwr        $v0, 0x3($sp)
/* 9332C 8009272C 8BA30004 */  lwl        $v1, 0x4($sp)
/* 93330 80092730 9BA30007 */  lwr        $v1, 0x7($sp)
/* 93334 80092734 A8E20000 */  swl        $v0, 0x0($a3)
/* 93338 80092738 B8E20003 */  swr        $v0, 0x3($a3)
/* 9333C 8009273C A8E30004 */  swl        $v1, 0x4($a3)
/* 93340 80092740 B8E30007 */  swr        $v1, 0x7($a3)
/* 93344 80092744 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 93348 80092748 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9334C 8009274C 24C60001 */  addiu      $a2, $a2, 0x1
/* 93350 80092750 00C2102A */  slt        $v0, $a2, $v0
/* 93354 80092754 1440FFF3 */  bnez       $v0, .L80092724
/* 93358 80092758 24E70008 */   addiu     $a3, $a3, 0x8
.L8009275C:
/* 9335C 8009275C 240200FE */  addiu      $v0, $zero, 0xFE
/* 93360 80092760 A0E20000 */  sb         $v0, 0x0($a3)
/* 93364 80092764 03E00008 */  jr         $ra
/* 93368 80092768 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9336C 8009276C 00000000 */  nop

glabel func_80092770
/* 93370 80092770 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 93374 80092774 AFB10014 */  sw         $s1, 0x14($sp)
/* 93378 80092778 00808821 */  addu       $s1, $a0, $zero
/* 9337C 8009277C AFB3001C */  sw         $s3, 0x1C($sp)
/* 93380 80092780 00A09821 */  addu       $s3, $a1, $zero
/* 93384 80092784 AFBF0020 */  sw         $ra, 0x20($sp)
/* 93388 80092788 AFB20018 */  sw         $s2, 0x18($sp)
/* 9338C 8009278C AFB00010 */  sw         $s0, 0x10($sp)
/* 93390 80092790 8E220008 */  lw         $v0, 0x8($s1)
/* 93394 80092794 8E230000 */  lw         $v1, 0x0($s1)
/* 93398 80092798 3C04802C */  lui        $a0, %hi(D_802C44A0)
/* 9339C 8009279C 248444A0 */  addiu      $a0, $a0, %lo(D_802C44A0)
/* 933A0 800927A0 00021180 */  sll        $v0, $v0, 6
/* 933A4 800927A4 30630008 */  andi       $v1, $v1, 0x8
/* 933A8 800927A8 14600003 */  bnez       $v1, .L800927B8
/* 933AC 800927AC 00449021 */   addu      $s2, $v0, $a0
/* 933B0 800927B0 08024A26 */  j          .L80092898
/* 933B4 800927B4 24020005 */   addiu     $v0, $zero, 0x5
.L800927B8:
/* 933B8 800927B8 0C0260E1 */  jal        func_80098384
/* 933BC 800927BC 00000000 */   nop
/* 933C0 800927C0 8E220008 */  lw         $v0, 0x8($s1)
/* 933C4 800927C4 24030001 */  addiu      $v1, $zero, 0x1
/* 933C8 800927C8 00021180 */  sll        $v0, $v0, 6
/* 933CC 800927CC 3C01802C */  lui        $at, %hi(D_802C44DC)
/* 933D0 800927D0 00220821 */  addu       $at, $at, $v0
/* 933D4 800927D4 AC2344DC */  sw         $v1, %lo(D_802C44DC)($at)
/* 933D8 800927D8 8E220008 */  lw         $v0, 0x8($s1)
/* 933DC 800927DC 2403001F */  addiu      $v1, $zero, 0x1F
/* 933E0 800927E0 02429021 */  addu       $s2, $s2, $v0
/* 933E4 800927E4 2642001F */  addiu      $v0, $s2, 0x1F
.L800927E8:
/* 933E8 800927E8 A0530006 */  sb         $s3, 0x6($v0)
/* 933EC 800927EC 2463FFFF */  addiu      $v1, $v1, -0x1
/* 933F0 800927F0 0461FFFD */  bgez       $v1, .L800927E8
/* 933F4 800927F4 2442FFFF */   addiu     $v0, $v0, -0x1
/* 933F8 800927F8 8E250008 */  lw         $a1, 0x8($s1)
/* 933FC 800927FC 24040001 */  addiu      $a0, $zero, 0x1
/* 93400 80092800 240200FE */  addiu      $v0, $zero, 0xFE
/* 93404 80092804 3C10802C */  lui        $s0, %hi(D_802C44A0)
/* 93408 80092808 261044A0 */  addiu      $s0, $s0, %lo(D_802C44A0)
/* 9340C 8009280C 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 93410 80092810 A0221C18 */  sb         $v0, %lo(D_802F1C18)($at)
/* 93414 80092814 00052980 */  sll        $a1, $a1, 6
/* 93418 80092818 0C025114 */  jal        func_80094450
/* 9341C 8009281C 00B02821 */   addu      $a1, $a1, $s0
/* 93420 80092820 8E240004 */  lw         $a0, 0x4($s1)
/* 93424 80092824 00002821 */  addu       $a1, $zero, $zero
/* 93428 80092828 0C000B3C */  jal        osRecvMesg
/* 9342C 8009282C 24060001 */   addiu     $a2, $zero, 0x1
/* 93430 80092830 8E250008 */  lw         $a1, 0x8($s1)
/* 93434 80092834 00002021 */  addu       $a0, $zero, $zero
/* 93438 80092838 00052980 */  sll        $a1, $a1, 6
/* 9343C 8009283C 0C025114 */  jal        func_80094450
/* 93440 80092840 00B02821 */   addu      $a1, $a1, $s0
/* 93444 80092844 8E240004 */  lw         $a0, 0x4($s1)
/* 93448 80092848 00002821 */  addu       $a1, $zero, $zero
/* 9344C 8009284C 0C000B3C */  jal        osRecvMesg
/* 93450 80092850 24060001 */   addiu     $a2, $zero, 0x1
/* 93454 80092854 92420002 */  lbu        $v0, 0x2($s2)
/* 93458 80092858 305000C0 */  andi       $s0, $v0, 0xC0
/* 9345C 8009285C 1600000B */  bnez       $s0, .L8009288C
/* 93460 80092860 00000000 */   nop
/* 93464 80092864 16600006 */  bnez       $s3, .L80092880
/* 93468 80092868 240200EB */   addiu     $v0, $zero, 0xEB
/* 9346C 8009286C 92420026 */  lbu        $v0, 0x26($s2)
/* 93470 80092870 10400006 */  beqz       $v0, .L8009288C
/* 93474 80092874 00000000 */   nop
/* 93478 80092878 08024A23 */  j          .L8009288C
/* 9347C 8009287C 24100004 */   addiu     $s0, $zero, 0x4
.L80092880:
/* 93480 80092880 92430026 */  lbu        $v1, 0x26($s2)
/* 93484 80092884 54620001 */  bnel       $v1, $v0, .L8009288C
/* 93488 80092888 24100004 */   addiu     $s0, $zero, 0x4
.L8009288C:
/* 9348C 8009288C 0C0260FC */  jal        func_800983F0
/* 93490 80092890 00000000 */   nop
/* 93494 80092894 02001021 */  addu       $v0, $s0, $zero
.L80092898:
/* 93498 80092898 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9349C 8009289C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 934A0 800928A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 934A4 800928A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 934A8 800928A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 934AC 800928AC 03E00008 */  jr         $ra
/* 934B0 800928B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800928B4
/* 934B4 800928B4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 934B8 800928B8 AFB00060 */  sw         $s0, 0x60($sp)
/* 934BC 800928BC 00808021 */  addu       $s0, $a0, $zero
/* 934C0 800928C0 AFB20068 */  sw         $s2, 0x68($sp)
/* 934C4 800928C4 00A09021 */  addu       $s2, $a1, $zero
/* 934C8 800928C8 AFB10064 */  sw         $s1, 0x64($sp)
/* 934CC 800928CC 00C08821 */  addu       $s1, $a2, $zero
/* 934D0 800928D0 02402021 */  addu       $a0, $s2, $zero
/* 934D4 800928D4 240500FE */  addiu      $a1, $zero, 0xFE
/* 934D8 800928D8 240200FF */  addiu      $v0, $zero, 0xFF
/* 934DC 800928DC AFBF0070 */  sw         $ra, 0x70($sp)
/* 934E0 800928E0 AFB3006C */  sw         $s3, 0x6C($sp)
/* 934E4 800928E4 AE500004 */  sw         $s0, 0x4($s2)
/* 934E8 800928E8 AE510008 */  sw         $s1, 0x8($s2)
/* 934EC 800928EC A2420065 */  sb         $v0, 0x65($s2)
/* 934F0 800928F0 0C0250F8 */  jal        func_800943E0
/* 934F4 800928F4 AE400000 */   sw        $zero, 0x0($s2)
/* 934F8 800928F8 24130002 */  addiu      $s3, $zero, 0x2
/* 934FC 800928FC 14530003 */  bne        $v0, $s3, .L8009290C
/* 93500 80092900 02402021 */   addu      $a0, $s2, $zero
/* 93504 80092904 0C0250F8 */  jal        func_800943E0
/* 93508 80092908 24050080 */   addiu     $a1, $zero, 0x80
.L8009290C:
/* 9350C 8009290C 14400074 */  bnez       $v0, .L80092AE0
/* 93510 80092910 02002021 */   addu      $a0, $s0, $zero
/* 93514 80092914 02202821 */  addu       $a1, $s1, $zero
/* 93518 80092918 24060400 */  addiu      $a2, $zero, 0x400
/* 9351C 8009291C 0C026640 */  jal        func_80099900
/* 93520 80092920 27A70010 */   addiu     $a3, $sp, 0x10
/* 93524 80092924 50530001 */  beql       $v0, $s3, .L8009292C
/* 93528 80092928 24020004 */   addiu     $v0, $zero, 0x4
.L8009292C:
/* 9352C 8009292C 1440006C */  bnez       $v0, .L80092AE0
/* 93530 80092930 00000000 */   nop
/* 93534 80092934 93A3002F */  lbu        $v1, 0x2F($sp)
/* 93538 80092938 240200FE */  addiu      $v0, $zero, 0xFE
/* 9353C 8009293C 10620013 */  beq        $v1, $v0, .L8009298C
/* 93540 80092940 02402021 */   addu      $a0, $s2, $zero
/* 93544 80092944 0C0250F8 */  jal        func_800943E0
/* 93548 80092948 24050080 */   addiu     $a1, $zero, 0x80
/* 9354C 8009294C 50530001 */  beql       $v0, $s3, .L80092954
/* 93550 80092950 24020004 */   addiu     $v0, $zero, 0x4
.L80092954:
/* 93554 80092954 14400062 */  bnez       $v0, .L80092AE0
/* 93558 80092958 02002021 */   addu      $a0, $s0, $zero
/* 9355C 8009295C 02202821 */  addu       $a1, $s1, $zero
/* 93560 80092960 24060400 */  addiu      $a2, $zero, 0x400
/* 93564 80092964 0C026640 */  jal        func_80099900
/* 93568 80092968 27A70010 */   addiu     $a3, $sp, 0x10
/* 9356C 8009296C 50530001 */  beql       $v0, $s3, .L80092974
/* 93570 80092970 24020004 */   addiu     $v0, $zero, 0x4
.L80092974:
/* 93574 80092974 1440005A */  bnez       $v0, .L80092AE0
/* 93578 80092978 00000000 */   nop
/* 9357C 8009297C 93A3002F */  lbu        $v1, 0x2F($sp)
/* 93580 80092980 24020080 */  addiu      $v0, $zero, 0x80
/* 93584 80092984 10620003 */  beq        $v1, $v0, .L80092994
/* 93588 80092988 00000000 */   nop
.L8009298C:
/* 9358C 8009298C 08024AB8 */  j          .L80092AE0
/* 93590 80092990 2402000B */   addiu     $v0, $zero, 0xB
.L80092994:
/* 93594 80092994 8E420000 */  lw         $v0, 0x0($s2)
/* 93598 80092998 30420008 */  andi       $v0, $v0, 0x8
/* 9359C 8009299C 1440004E */  bnez       $v0, .L80092AD8
/* 935A0 800929A0 24020008 */   addiu     $v0, $zero, 0x8
/* 935A4 800929A4 00111980 */  sll        $v1, $s1, 6
/* 935A8 800929A8 3C02802C */  lui        $v0, %hi(D_802C44A0)
/* 935AC 800929AC 244244A0 */  addiu      $v0, $v0, %lo(D_802C44A0)
/* 935B0 800929B0 00628021 */  addu       $s0, $v1, $v0
/* 935B4 800929B4 24040600 */  addiu      $a0, $zero, 0x600
/* 935B8 800929B8 240200FF */  addiu      $v0, $zero, 0xFF
/* 935BC 800929BC A3A20030 */  sb         $v0, 0x30($sp)
/* 935C0 800929C0 24020023 */  addiu      $v0, $zero, 0x23
/* 935C4 800929C4 A3A20031 */  sb         $v0, 0x31($sp)
/* 935C8 800929C8 24020001 */  addiu      $v0, $zero, 0x1
/* 935CC 800929CC A3A20032 */  sb         $v0, 0x32($sp)
/* 935D0 800929D0 24020003 */  addiu      $v0, $zero, 0x3
/* 935D4 800929D4 A3A20033 */  sb         $v0, 0x33($sp)
/* 935D8 800929D8 240200C0 */  addiu      $v0, $zero, 0xC0
/* 935DC 800929DC 0C026738 */  jal        func_80099CE0
/* 935E0 800929E0 A3A20034 */   sb        $v0, 0x34($sp)
/* 935E4 800929E4 12200008 */  beqz       $s1, .L80092A08
/* 935E8 800929E8 A3A20035 */   sb        $v0, 0x35($sp)
/* 935EC 800929EC 1A200006 */  blez       $s1, .L80092A08
/* 935F0 800929F0 00001821 */   addu      $v1, $zero, $zero
.L800929F4:
/* 935F4 800929F4 A2000000 */  sb         $zero, 0x0($s0)
/* 935F8 800929F8 24630001 */  addiu      $v1, $v1, 0x1
/* 935FC 800929FC 0071102A */  slt        $v0, $v1, $s1
/* 93600 80092A00 1440FFFC */  bnez       $v0, .L800929F4
/* 93604 80092A04 26100001 */   addiu     $s0, $s0, 0x1
.L80092A08:
/* 93608 80092A08 27A60030 */  addiu      $a2, $sp, 0x30
/* 9360C 80092A0C 00D01025 */  or         $v0, $a2, $s0
/* 93610 80092A10 30420003 */  andi       $v0, $v0, 0x3
/* 93614 80092A14 10400017 */  beqz       $v0, .L80092A74
/* 93618 80092A18 02003821 */   addu      $a3, $s0, $zero
/* 9361C 80092A1C 27A80050 */  addiu      $t0, $sp, 0x50
.L80092A20:
/* 93620 80092A20 88C20000 */  lwl        $v0, 0x0($a2)
/* 93624 80092A24 98C20003 */  lwr        $v0, 0x3($a2)
/* 93628 80092A28 88C30004 */  lwl        $v1, 0x4($a2)
/* 9362C 80092A2C 98C30007 */  lwr        $v1, 0x7($a2)
/* 93630 80092A30 88C40008 */  lwl        $a0, 0x8($a2)
/* 93634 80092A34 98C4000B */  lwr        $a0, 0xB($a2)
/* 93638 80092A38 88C5000C */  lwl        $a1, 0xC($a2)
/* 9363C 80092A3C 98C5000F */  lwr        $a1, 0xF($a2)
/* 93640 80092A40 A8E20000 */  swl        $v0, 0x0($a3)
/* 93644 80092A44 B8E20003 */  swr        $v0, 0x3($a3)
/* 93648 80092A48 A8E30004 */  swl        $v1, 0x4($a3)
/* 9364C 80092A4C B8E30007 */  swr        $v1, 0x7($a3)
/* 93650 80092A50 A8E40008 */  swl        $a0, 0x8($a3)
/* 93654 80092A54 B8E4000B */  swr        $a0, 0xB($a3)
/* 93658 80092A58 A8E5000C */  swl        $a1, 0xC($a3)
/* 9365C 80092A5C B8E5000F */  swr        $a1, 0xF($a3)
/* 93660 80092A60 24C60010 */  addiu      $a2, $a2, 0x10
/* 93664 80092A64 14C8FFEE */  bne        $a2, $t0, .L80092A20
/* 93668 80092A68 24E70010 */   addiu     $a3, $a3, 0x10
/* 9366C 80092A6C 08024AA9 */  j          .L80092AA4
/* 93670 80092A70 00000000 */   nop
.L80092A74:
/* 93674 80092A74 27A80050 */  addiu      $t0, $sp, 0x50
.L80092A78:
/* 93678 80092A78 8CC20000 */  lw         $v0, 0x0($a2)
/* 9367C 80092A7C 8CC30004 */  lw         $v1, 0x4($a2)
/* 93680 80092A80 8CC40008 */  lw         $a0, 0x8($a2)
/* 93684 80092A84 8CC5000C */  lw         $a1, 0xC($a2)
/* 93688 80092A88 ACE20000 */  sw         $v0, 0x0($a3)
/* 9368C 80092A8C ACE30004 */  sw         $v1, 0x4($a3)
/* 93690 80092A90 ACE40008 */  sw         $a0, 0x8($a3)
/* 93694 80092A94 ACE5000C */  sw         $a1, 0xC($a3)
/* 93698 80092A98 24C60010 */  addiu      $a2, $a2, 0x10
/* 9369C 80092A9C 14C8FFF6 */  bne        $a2, $t0, .L80092A78
/* 936A0 80092AA0 24E70010 */   addiu     $a3, $a3, 0x10
.L80092AA4:
/* 936A4 80092AA4 88C20000 */  lwl        $v0, 0x0($a2)
/* 936A8 80092AA8 98C20003 */  lwr        $v0, 0x3($a2)
/* 936AC 80092AAC 80C30004 */  lb         $v1, 0x4($a2)
/* 936B0 80092AB0 80C40005 */  lb         $a0, 0x5($a2)
/* 936B4 80092AB4 80C50006 */  lb         $a1, 0x6($a2)
/* 936B8 80092AB8 A8E20000 */  swl        $v0, 0x0($a3)
/* 936BC 80092ABC B8E20003 */  swr        $v0, 0x3($a3)
/* 936C0 80092AC0 A0E30004 */  sb         $v1, 0x4($a3)
/* 936C4 80092AC4 A0E40005 */  sb         $a0, 0x5($a3)
/* 936C8 80092AC8 A0E50006 */  sb         $a1, 0x6($a3)
/* 936CC 80092ACC 240200FE */  addiu      $v0, $zero, 0xFE
/* 936D0 80092AD0 A2020027 */  sb         $v0, 0x27($s0)
/* 936D4 80092AD4 24020008 */  addiu      $v0, $zero, 0x8
.L80092AD8:
/* 936D8 80092AD8 AE420000 */  sw         $v0, 0x0($s2)
/* 936DC 80092ADC 00001021 */  addu       $v0, $zero, $zero
.L80092AE0:
/* 936E0 80092AE0 8FBF0070 */  lw         $ra, 0x70($sp)
/* 936E4 80092AE4 8FB3006C */  lw         $s3, 0x6C($sp)
/* 936E8 80092AE8 8FB20068 */  lw         $s2, 0x68($sp)
/* 936EC 80092AEC 8FB10064 */  lw         $s1, 0x64($sp)
/* 936F0 80092AF0 8FB00060 */  lw         $s0, 0x60($sp)
/* 936F4 80092AF4 03E00008 */  jr         $ra
/* 936F8 80092AF8 27BD0078 */   addiu     $sp, $sp, 0x78
/* 936FC 80092AFC 00000000 */  nop

glabel func_80092B00
/* 93700 80092B00 27BDFD68 */  addiu      $sp, $sp, -0x298
/* 93704 80092B04 AFB00270 */  sw         $s0, 0x270($sp)
/* 93708 80092B08 8FB002AC */  lw         $s0, 0x2AC($sp)
/* 9370C 80092B0C A7A50256 */  sh         $a1, 0x256($sp)
/* 93710 80092B10 97A50256 */  lhu        $a1, 0x256($sp)
/* 93714 80092B14 AFB20278 */  sw         $s2, 0x278($sp)
/* 93718 80092B18 00809021 */  addu       $s2, $a0, $zero
/* 9371C 80092B1C AFB60288 */  sw         $s6, 0x288($sp)
/* 93720 80092B20 0000B021 */  addu       $s6, $zero, $zero
/* 93724 80092B24 AFB7028C */  sw         $s7, 0x28C($sp)
/* 93728 80092B28 0000B821 */  addu       $s7, $zero, $zero
/* 9372C 80092B2C AFB50284 */  sw         $s5, 0x284($sp)
/* 93730 80092B30 0000A821 */  addu       $s5, $zero, $zero
/* 93734 80092B34 AFA6025C */  sw         $a2, 0x25C($sp)
/* 93738 80092B38 2CC30001 */  sltiu      $v1, $a2, 0x1
/* 9373C 80092B3C AFBF0294 */  sw         $ra, 0x294($sp)
/* 93740 80092B40 AFBE0290 */  sw         $fp, 0x290($sp)
/* 93744 80092B44 AFB40280 */  sw         $s4, 0x280($sp)
/* 93748 80092B48 AFB3027C */  sw         $s3, 0x27C($sp)
/* 9374C 80092B4C AFB10274 */  sw         $s1, 0x274($sp)
/* 93750 80092B50 2CA20001 */  sltiu      $v0, $a1, 0x1
/* 93754 80092B54 00431025 */  or         $v0, $v0, $v1
/* 93758 80092B58 14400020 */  bnez       $v0, .L80092BDC
/* 9375C 80092B5C AFA70264 */   sw        $a3, 0x264($sp)
/* 93760 80092B60 260600FF */  addiu      $a2, $s0, 0xFF
/* 93764 80092B64 04C20001 */  bltzl      $a2, .L80092B6C
/* 93768 80092B68 260601FE */   addiu     $a2, $s0, 0x1FE
.L80092B6C:
/* 9376C 80092B6C 00069A03 */  sra        $s3, $a2, 8
/* 93770 80092B70 8FA802A8 */  lw         $t0, 0x2A8($sp)
/* 93774 80092B74 8FA6025C */  lw         $a2, 0x25C($sp)
/* 93778 80092B78 8FA70264 */  lw         $a3, 0x264($sp)
/* 9377C 80092B7C AFA80010 */  sw         $t0, 0x10($sp)
/* 93780 80092B80 8FA802B0 */  lw         $t0, 0x2B0($sp)
/* 93784 80092B84 02402021 */  addu       $a0, $s2, $zero
/* 93788 80092B88 0C025090 */  jal        func_80094240
/* 9378C 80092B8C AFA80014 */   sw        $t0, 0x14($sp)
/* 93790 80092B90 00401821 */  addu       $v1, $v0, $zero
/* 93794 80092B94 10600003 */  beqz       $v1, .L80092BA4
/* 93798 80092B98 24020005 */   addiu     $v0, $zero, 0x5
/* 9379C 80092B9C 1462008F */  bne        $v1, $v0, .L80092DDC
/* 937A0 80092BA0 00601021 */   addu      $v0, $v1, $zero
.L80092BA4:
/* 937A4 80092BA4 8FA802B0 */  lw         $t0, 0x2B0($sp)
/* 937A8 80092BA8 8D030000 */  lw         $v1, 0x0($t0)
/* 937AC 80092BAC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 937B0 80092BB0 1462008A */  bne        $v1, $v0, .L80092DDC
/* 937B4 80092BB4 24020009 */   addiu     $v0, $zero, 0x9
/* 937B8 80092BB8 02402021 */  addu       $a0, $s2, $zero
/* 937BC 80092BBC 0C024E80 */  jal        func_80093A00
/* 937C0 80092BC0 27A50240 */   addiu     $a1, $sp, 0x240
/* 937C4 80092BC4 8FA20240 */  lw         $v0, 0x240($sp)
/* 937C8 80092BC8 0050102A */  slt        $v0, $v0, $s0
/* 937CC 80092BCC 14400083 */  bnez       $v0, .L80092DDC
/* 937D0 80092BD0 24020007 */   addiu     $v0, $zero, 0x7
/* 937D4 80092BD4 16600003 */  bnez       $s3, .L80092BE4
/* 937D8 80092BD8 02402021 */   addu      $a0, $s2, $zero
.L80092BDC:
/* 937DC 80092BDC 08024B77 */  j          .L80092DDC
/* 937E0 80092BE0 24020005 */   addiu     $v0, $zero, 0x5
.L80092BE4:
/* 937E4 80092BE4 00002821 */  addu       $a1, $zero, $zero
/* 937E8 80092BE8 8FA802B0 */  lw         $t0, 0x2B0($sp)
/* 937EC 80092BEC 00003021 */  addu       $a2, $zero, $zero
/* 937F0 80092BF0 00003821 */  addu       $a3, $zero, $zero
/* 937F4 80092BF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 937F8 80092BF8 0C025090 */  jal        func_80094240
/* 937FC 80092BFC AFA80014 */   sw        $t0, 0x14($sp)
/* 93800 80092C00 00401821 */  addu       $v1, $v0, $zero
/* 93804 80092C04 10600003 */  beqz       $v1, .L80092C14
/* 93808 80092C08 24020005 */   addiu     $v0, $zero, 0x5
/* 9380C 80092C0C 14620073 */  bne        $v1, $v0, .L80092DDC
/* 93810 80092C10 00601021 */   addu      $v0, $v1, $zero
.L80092C14:
/* 93814 80092C14 8FA802B0 */  lw         $t0, 0x2B0($sp)
/* 93818 80092C18 8D030000 */  lw         $v1, 0x0($t0)
/* 9381C 80092C1C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93820 80092C20 1062006E */  beq        $v1, $v0, .L80092DDC
/* 93824 80092C24 24020008 */   addiu     $v0, $zero, 0x8
/* 93828 80092C28 92420064 */  lbu        $v0, 0x64($s2)
/* 9382C 80092C2C 1040004A */  beqz       $v0, .L80092D58
/* 93830 80092C30 00008821 */   addu      $s1, $zero, $zero
/* 93834 80092C34 27B40120 */  addiu      $s4, $sp, 0x120
/* 93838 80092C38 02402021 */  addu       $a0, $s2, $zero
.L80092C3C:
/* 9383C 80092C3C 27A50020 */  addiu      $a1, $sp, 0x20
/* 93840 80092C40 00003021 */  addu       $a2, $zero, $zero
/* 93844 80092C44 323000FF */  andi       $s0, $s1, 0xFF
/* 93848 80092C48 0C02656F */  jal        func_800995BC
/* 9384C 80092C4C 02003821 */   addu      $a3, $s0, $zero
/* 93850 80092C50 00401821 */  addu       $v1, $v0, $zero
/* 93854 80092C54 14600048 */  bnez       $v1, .L80092D78
/* 93858 80092C58 02402021 */   addu      $a0, $s2, $zero
/* 9385C 80092C5C 27A50020 */  addiu      $a1, $sp, 0x20
/* 93860 80092C60 02603021 */  addu       $a2, $s3, $zero
/* 93864 80092C64 27A70244 */  addiu      $a3, $sp, 0x244
/* 93868 80092C68 27A20248 */  addiu      $v0, $sp, 0x248
/* 9386C 80092C6C AFA20014 */  sw         $v0, 0x14($sp)
/* 93870 80092C70 27A2024C */  addiu      $v0, $sp, 0x24C
/* 93874 80092C74 AFB00010 */  sw         $s0, 0x10($sp)
/* 93878 80092C78 0C024B83 */  jal        func_80092E0C
/* 9387C 80092C7C AFA20018 */   sw        $v0, 0x18($sp)
/* 93880 80092C80 00401821 */  addu       $v1, $v0, $zero
/* 93884 80092C84 1460003C */  bnez       $v1, .L80092D78
/* 93888 80092C88 2402FFFF */   addiu     $v0, $zero, -0x1
/* 9388C 80092C8C 8FA30244 */  lw         $v1, 0x244($sp)
/* 93890 80092C90 1062002B */  beq        $v1, $v0, .L80092D40
/* 93894 80092C94 00000000 */   nop
/* 93898 80092C98 12A0000F */  beqz       $s5, .L80092CD8
/* 9389C 80092C9C 02402021 */   addu      $a0, $s2, $zero
/* 938A0 80092CA0 02802821 */  addu       $a1, $s4, $zero
/* 938A4 80092CA4 00161040 */  sll        $v0, $s6, 1
/* 938A8 80092CA8 02821021 */  addu       $v0, $s4, $v0
/* 938AC 80092CAC A0510000 */  sb         $s1, 0x0($v0)
/* 938B0 80092CB0 8FA30244 */  lw         $v1, 0x244($sp)
/* 938B4 80092CB4 24060001 */  addiu      $a2, $zero, 0x1
/* 938B8 80092CB8 32E700FF */  andi       $a3, $s7, 0xFF
/* 938BC 80092CBC 0C02656F */  jal        func_800995BC
/* 938C0 80092CC0 A0430001 */   sb        $v1, 0x1($v0)
/* 938C4 80092CC4 00401821 */  addu       $v1, $v0, $zero
/* 938C8 80092CC8 10600006 */  beqz       $v1, .L80092CE4
/* 938CC 80092CCC 00000000 */   nop
/* 938D0 80092CD0 08024B77 */  j          .L80092DDC
/* 938D4 80092CD4 00000000 */   nop
.L80092CD8:
/* 938D8 80092CD8 306300FF */  andi       $v1, $v1, 0xFF
/* 938DC 80092CDC 00111200 */  sll        $v0, $s1, 8
/* 938E0 80092CE0 0043F025 */  or         $fp, $v0, $v1
.L80092CE4:
/* 938E4 80092CE4 8FA20248 */  lw         $v0, 0x248($sp)
/* 938E8 80092CE8 0053102A */  slt        $v0, $v0, $s3
/* 938EC 80092CEC 1440000C */  bnez       $v0, .L80092D20
/* 938F0 80092CF0 27A40020 */   addiu     $a0, $sp, 0x20
/* 938F4 80092CF4 00009821 */  addu       $s3, $zero, $zero
/* 938F8 80092CF8 02402021 */  addu       $a0, $s2, $zero
/* 938FC 80092CFC 27A50020 */  addiu      $a1, $sp, 0x20
/* 93900 80092D00 24060001 */  addiu      $a2, $zero, 0x1
/* 93904 80092D04 0C02656F */  jal        func_800995BC
/* 93908 80092D08 322700FF */   andi      $a3, $s1, 0xFF
/* 9390C 80092D0C 00401821 */  addu       $v1, $v0, $zero
/* 93910 80092D10 10600011 */  beqz       $v1, .L80092D58
/* 93914 80092D14 00000000 */   nop
/* 93918 80092D18 08024B77 */  j          .L80092DDC
/* 9391C 80092D1C 00000000 */   nop
.L80092D20:
/* 93920 80092D20 27A50120 */  addiu      $a1, $sp, 0x120
/* 93924 80092D24 0C024854 */  jal        func_80092150
/* 93928 80092D28 24060100 */   addiu     $a2, $zero, 0x100
/* 9392C 80092D2C 8FB6024C */  lw         $s6, 0x24C($sp)
/* 93930 80092D30 8FA20248 */  lw         $v0, 0x248($sp)
/* 93934 80092D34 0220B821 */  addu       $s7, $s1, $zero
/* 93938 80092D38 26B50001 */  addiu      $s5, $s5, 0x1
/* 9393C 80092D3C 02629823 */  subu       $s3, $s3, $v0
.L80092D40:
/* 93940 80092D40 92430064 */  lbu        $v1, 0x64($s2)
/* 93944 80092D44 26310001 */  addiu      $s1, $s1, 0x1
/* 93948 80092D48 322200FF */  andi       $v0, $s1, 0xFF
/* 9394C 80092D4C 0043102B */  sltu       $v0, $v0, $v1
/* 93950 80092D50 1440FFBA */  bnez       $v0, .L80092C3C
/* 93954 80092D54 02402021 */   addu      $a0, $s2, $zero
.L80092D58:
/* 93958 80092D58 1E600020 */  bgtz       $s3, .L80092DDC
/* 9395C 80092D5C 24020003 */   addiu     $v0, $zero, 0x3
/* 93960 80092D60 8FA30244 */  lw         $v1, 0x244($sp)
/* 93964 80092D64 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93968 80092D68 14620005 */  bne        $v1, $v0, .L80092D80
/* 9396C 80092D6C 27A50230 */   addiu     $a1, $sp, 0x230
/* 93970 80092D70 08024B77 */  j          .L80092DDC
/* 93974 80092D74 24020003 */   addiu     $v0, $zero, 0x3
.L80092D78:
/* 93978 80092D78 08024B77 */  j          .L80092DDC
/* 9397C 80092D7C 00601021 */   addu      $v0, $v1, $zero
.L80092D80:
/* 93980 80092D80 97A80256 */  lhu        $t0, 0x256($sp)
/* 93984 80092D84 8FA40264 */  lw         $a0, 0x264($sp)
/* 93988 80092D88 A7A80224 */  sh         $t0, 0x224($sp)
/* 9398C 80092D8C 8FA8025C */  lw         $t0, 0x25C($sp)
/* 93990 80092D90 24060010 */  addiu      $a2, $zero, 0x10
/* 93994 80092D94 A7BE0226 */  sh         $fp, 0x226($sp)
/* 93998 80092D98 A7A0022A */  sh         $zero, 0x22A($sp)
/* 9399C 80092D9C 0C024854 */  jal        func_80092150
/* 939A0 80092DA0 AFA80220 */   sw        $t0, 0x220($sp)
/* 939A4 80092DA4 8FA402A8 */  lw         $a0, 0x2A8($sp)
/* 939A8 80092DA8 27A5022C */  addiu      $a1, $sp, 0x22C
/* 939AC 80092DAC 0C024854 */  jal        func_80092150
/* 939B0 80092DB0 24060004 */   addiu     $a2, $zero, 0x4
/* 939B4 80092DB4 8FA802B0 */  lw         $t0, 0x2B0($sp)
/* 939B8 80092DB8 8E46005C */  lw         $a2, 0x5C($s2)
/* 939BC 80092DBC 8D020000 */  lw         $v0, 0x0($t0)
/* 939C0 80092DC0 27A70220 */  addiu      $a3, $sp, 0x220
/* 939C4 80092DC4 AFA00010 */  sw         $zero, 0x10($sp)
/* 939C8 80092DC8 8E440004 */  lw         $a0, 0x4($s2)
/* 939CC 80092DCC 8E450008 */  lw         $a1, 0x8($s2)
/* 939D0 80092DD0 00C23021 */  addu       $a2, $a2, $v0
/* 939D4 80092DD4 0C0266B8 */  jal        func_80099AE0
/* 939D8 80092DD8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
.L80092DDC:
/* 939DC 80092DDC 8FBF0294 */  lw         $ra, 0x294($sp)
/* 939E0 80092DE0 8FBE0290 */  lw         $fp, 0x290($sp)
/* 939E4 80092DE4 8FB7028C */  lw         $s7, 0x28C($sp)
/* 939E8 80092DE8 8FB60288 */  lw         $s6, 0x288($sp)
/* 939EC 80092DEC 8FB50284 */  lw         $s5, 0x284($sp)
/* 939F0 80092DF0 8FB40280 */  lw         $s4, 0x280($sp)
/* 939F4 80092DF4 8FB3027C */  lw         $s3, 0x27C($sp)
/* 939F8 80092DF8 8FB20278 */  lw         $s2, 0x278($sp)
/* 939FC 80092DFC 8FB10274 */  lw         $s1, 0x274($sp)
/* 93A00 80092E00 8FB00270 */  lw         $s0, 0x270($sp)
/* 93A04 80092E04 03E00008 */  jr         $ra
/* 93A08 80092E08 27BD0298 */   addiu     $sp, $sp, 0x298

glabel func_80092E0C
/* 93A0C 80092E0C 24020001 */  addiu      $v0, $zero, 0x1
/* 93A10 80092E10 8FAA0014 */  lw         $t2, 0x14($sp)
/* 93A14 80092E14 93AB0013 */  lbu        $t3, 0x13($sp)
/* 93A18 80092E18 8FAE0018 */  lw         $t6, 0x18($sp)
/* 93A1C 80092E1C 15600002 */  bnez       $t3, .L80092E28
/* 93A20 80092E20 00007821 */   addu      $t7, $zero, $zero
/* 93A24 80092E24 8C820060 */  lw         $v0, 0x60($a0)
.L80092E28:
/* 93A28 80092E28 00402021 */  addu       $a0, $v0, $zero
/* 93A2C 80092E2C 28820080 */  slti       $v0, $a0, 0x80
/* 93A30 80092E30 1040000A */  beqz       $v0, .L80092E5C
/* 93A34 80092E34 00041040 */   sll       $v0, $a0, 1
/* 93A38 80092E38 24080003 */  addiu      $t0, $zero, 0x3
/* 93A3C 80092E3C 00451821 */  addu       $v1, $v0, $a1
.L80092E40:
/* 93A40 80092E40 94620000 */  lhu        $v0, 0x0($v1)
/* 93A44 80092E44 10480006 */  beq        $v0, $t0, .L80092E60
/* 93A48 80092E48 24020080 */   addiu     $v0, $zero, 0x80
/* 93A4C 80092E4C 24840001 */  addiu      $a0, $a0, 0x1
/* 93A50 80092E50 28820080 */  slti       $v0, $a0, 0x80
/* 93A54 80092E54 1440FFFA */  bnez       $v0, .L80092E40
/* 93A58 80092E58 24630002 */   addiu     $v1, $v1, 0x2
.L80092E5C:
/* 93A5C 80092E5C 24020080 */  addiu      $v0, $zero, 0x80
.L80092E60:
/* 93A60 80092E60 14820004 */  bne        $a0, $v0, .L80092E74
/* 93A64 80092E64 24030001 */   addiu     $v1, $zero, 0x1
/* 93A68 80092E68 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93A6C 80092E6C 08024BC7 */  j          .L80092F1C
/* 93A70 80092E70 ACE20000 */   sw        $v0, 0x0($a3)
.L80092E74:
/* 93A74 80092E74 AD430000 */  sw         $v1, 0x0($t2)
/* 93A78 80092E78 00804021 */  addu       $t0, $a0, $zero
/* 93A7C 80092E7C 25040001 */  addiu      $a0, $t0, 0x1
/* 93A80 80092E80 0066182A */  slt        $v1, $v1, $a2
/* 93A84 80092E84 28820080 */  slti       $v0, $a0, 0x80
/* 93A88 80092E88 00621824 */  and        $v1, $v1, $v0
/* 93A8C 80092E8C 10600015 */  beqz       $v1, .L80092EE4
/* 93A90 80092E90 01006821 */   addu      $t5, $t0, $zero
/* 93A94 80092E94 240C0003 */  addiu      $t4, $zero, 0x3
/* 93A98 80092E98 00041040 */  sll        $v0, $a0, 1
/* 93A9C 80092E9C 00454821 */  addu       $t1, $v0, $a1
.L80092EA0:
/* 93AA0 80092EA0 95220000 */  lhu        $v0, 0x0($t1)
/* 93AA4 80092EA4 144C0008 */  bne        $v0, $t4, .L80092EC8
/* 93AA8 80092EA8 00081040 */   sll       $v0, $t0, 1
/* 93AAC 80092EAC 00A21021 */  addu       $v0, $a1, $v0
/* 93AB0 80092EB0 A04B0000 */  sb         $t3, 0x0($v0)
/* 93AB4 80092EB4 A0440001 */  sb         $a0, 0x1($v0)
/* 93AB8 80092EB8 8D420000 */  lw         $v0, 0x0($t2)
/* 93ABC 80092EBC 00804021 */  addu       $t0, $a0, $zero
/* 93AC0 80092EC0 24420001 */  addiu      $v0, $v0, 0x1
/* 93AC4 80092EC4 AD420000 */  sw         $v0, 0x0($t2)
.L80092EC8:
/* 93AC8 80092EC8 8D430000 */  lw         $v1, 0x0($t2)
/* 93ACC 80092ECC 24840001 */  addiu      $a0, $a0, 0x1
/* 93AD0 80092ED0 28820080 */  slti       $v0, $a0, 0x80
/* 93AD4 80092ED4 0066182A */  slt        $v1, $v1, $a2
/* 93AD8 80092ED8 00621824 */  and        $v1, $v1, $v0
/* 93ADC 80092EDC 1460FFF0 */  bnez       $v1, .L80092EA0
/* 93AE0 80092EE0 25290002 */   addiu     $t1, $t1, 0x2
.L80092EE4:
/* 93AE4 80092EE4 24020080 */  addiu      $v0, $zero, 0x80
/* 93AE8 80092EE8 14820007 */  bne        $a0, $v0, .L80092F08
/* 93AEC 80092EEC ACED0000 */   sw        $t5, 0x0($a3)
/* 93AF0 80092EF0 8D420000 */  lw         $v0, 0x0($t2)
/* 93AF4 80092EF4 0046102A */  slt        $v0, $v0, $a2
/* 93AF8 80092EF8 50400004 */  beql       $v0, $zero, .L80092F0C
/* 93AFC 80092EFC 00081040 */   sll       $v0, $t0, 1
/* 93B00 80092F00 08024BC7 */  j          .L80092F1C
/* 93B04 80092F04 ADC80000 */   sw        $t0, 0x0($t6)
.L80092F08:
/* 93B08 80092F08 00081040 */  sll        $v0, $t0, 1
.L80092F0C:
/* 93B0C 80092F0C 00A21021 */  addu       $v0, $a1, $v0
/* 93B10 80092F10 24030001 */  addiu      $v1, $zero, 0x1
/* 93B14 80092F14 A4430000 */  sh         $v1, 0x0($v0)
/* 93B18 80092F18 ADC00000 */  sw         $zero, 0x0($t6)
.L80092F1C:
/* 93B1C 80092F1C 03E00008 */  jr         $ra
/* 93B20 80092F20 01E01021 */   addu      $v0, $t7, $zero
/* 93B24 80092F24 00000000 */  nop
/* 93B28 80092F28 00000000 */  nop
/* 93B2C 80092F2C 00000000 */  nop

glabel func_80092F30
/* 93B30 80092F30 27BDFB60 */  addiu      $sp, $sp, -0x4A0
/* 93B34 80092F34 AFB1047C */  sw         $s1, 0x47C($sp)
/* 93B38 80092F38 00808821 */  addu       $s1, $a0, $zero
/* 93B3C 80092F3C AFBE0498 */  sw         $fp, 0x498($sp)
/* 93B40 80092F40 0000F021 */  addu       $fp, $zero, $zero
/* 93B44 80092F44 AFB60490 */  sw         $s6, 0x490($sp)
/* 93B48 80092F48 241600FE */  addiu      $s6, $zero, 0xFE
/* 93B4C 80092F4C AFBF049C */  sw         $ra, 0x49C($sp)
/* 93B50 80092F50 AFB70494 */  sw         $s7, 0x494($sp)
/* 93B54 80092F54 AFB5048C */  sw         $s5, 0x48C($sp)
/* 93B58 80092F58 AFB40488 */  sw         $s4, 0x488($sp)
/* 93B5C 80092F5C AFB30484 */  sw         $s3, 0x484($sp)
/* 93B60 80092F60 AFB20480 */  sw         $s2, 0x480($sp)
/* 93B64 80092F64 0C026541 */  jal        func_80099504
/* 93B68 80092F68 AFB00478 */   sw        $s0, 0x478($sp)
/* 93B6C 80092F6C 00408021 */  addu       $s0, $v0, $zero
/* 93B70 80092F70 24020002 */  addiu      $v0, $zero, 0x2
/* 93B74 80092F74 16020004 */  bne        $s0, $v0, .L80092F88
/* 93B78 80092F78 00000000 */   nop
/* 93B7C 80092F7C 0C0264CE */  jal        func_80099338
/* 93B80 80092F80 02202021 */   addu      $a0, $s1, $zero
/* 93B84 80092F84 00408021 */  addu       $s0, $v0, $zero
.L80092F88:
/* 93B88 80092F88 12000003 */  beqz       $s0, .L80092F98
/* 93B8C 80092F8C 02202021 */   addu      $a0, $s1, $zero
.L80092F90:
/* 93B90 80092F90 08024CD8 */  j          .L80093360
/* 93B94 80092F94 02001021 */   addu      $v0, $s0, $zero
.L80092F98:
/* 93B98 80092F98 0C024CE4 */  jal        func_80093390
/* 93B9C 80092F9C 27A50258 */   addiu     $a1, $sp, 0x258
/* 93BA0 80092FA0 00408021 */  addu       $s0, $v0, $zero
/* 93BA4 80092FA4 160000EE */  bnez       $s0, .L80093360
/* 93BA8 80092FA8 00000000 */   nop
/* 93BAC 80092FAC 8E220050 */  lw         $v0, 0x50($s1)
/* 93BB0 80092FB0 0202102A */  slt        $v0, $s0, $v0
/* 93BB4 80092FB4 1040006B */  beqz       $v0, .L80093164
/* 93BB8 80092FB8 00009021 */   addu      $s2, $zero, $zero
/* 93BBC 80092FBC 27B70018 */  addiu      $s7, $sp, 0x18
.L80092FC0:
/* 93BC0 80092FC0 8E240004 */  lw         $a0, 0x4($s1)
/* 93BC4 80092FC4 8E26005C */  lw         $a2, 0x5C($s1)
/* 93BC8 80092FC8 8E250008 */  lw         $a1, 0x8($s1)
/* 93BCC 80092FCC 27A70218 */  addiu      $a3, $sp, 0x218
/* 93BD0 80092FD0 00D23021 */  addu       $a2, $a2, $s2
/* 93BD4 80092FD4 0C026640 */  jal        func_80099900
/* 93BD8 80092FD8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93BDC 80092FDC 00408021 */  addu       $s0, $v0, $zero
/* 93BE0 80092FE0 160000DF */  bnez       $s0, .L80093360
/* 93BE4 80092FE4 02001021 */   addu      $v0, $s0, $zero
/* 93BE8 80092FE8 97A2021C */  lhu        $v0, 0x21C($sp)
/* 93BEC 80092FEC 14400006 */  bnez       $v0, .L80093008
/* 93BF0 80092FF0 00000000 */   nop
/* 93BF4 80092FF4 8FA20218 */  lw         $v0, 0x218($sp)
/* 93BF8 80092FF8 10400055 */  beqz       $v0, .L80093150
/* 93BFC 80092FFC 2405FFFF */   addiu     $a1, $zero, -0x1
/* 93C00 80093000 08024C38 */  j          .L800930E0
/* 93C04 80093004 00000000 */   nop
.L80093008:
/* 93C08 80093008 8FA20218 */  lw         $v0, 0x218($sp)
/* 93C0C 8009300C 14400003 */  bnez       $v0, .L8009301C
/* 93C10 80093010 00002821 */   addu      $a1, $zero, $zero
/* 93C14 80093014 08024C38 */  j          .L800930E0
/* 93C18 80093018 2405FFFF */   addiu     $a1, $zero, -0x1
.L8009301C:
/* 93C1C 8009301C 97B4021E */  lhu        $s4, 0x21E($sp)
/* 93C20 80093020 0000A821 */  addu       $s5, $zero, $zero
/* 93C24 80093024 8E220060 */  lw         $v0, 0x60($s1)
/* 93C28 80093028 08024C30 */  j          .L800930C0
/* 93C2C 8009302C 241300FF */   addiu     $s3, $zero, 0xFF
.L80093030:
/* 93C30 80093030 0002182B */  sltu       $v1, $zero, $v0
/* 93C34 80093034 2C420080 */  sltiu      $v0, $v0, 0x80
/* 93C38 80093038 00621824 */  and        $v1, $v1, $v0
/* 93C3C 8009303C 10600028 */  beqz       $v1, .L800930E0
/* 93C40 80093040 00041A02 */   srl       $v1, $a0, 8
/* 93C44 80093044 326200FF */  andi       $v0, $s3, 0xFF
/* 93C48 80093048 306700FF */  andi       $a3, $v1, 0xFF
/* 93C4C 8009304C 1047000F */  beq        $v0, $a3, .L8009308C
/* 93C50 80093050 32C200FF */   andi      $v0, $s6, 0xFF
/* 93C54 80093054 10470007 */  beq        $v0, $a3, .L80093074
/* 93C58 80093058 00609821 */   addu      $s3, $v1, $zero
/* 93C5C 8009305C 02202021 */  addu       $a0, $s1, $zero
/* 93C60 80093060 27A50118 */  addiu      $a1, $sp, 0x118
/* 93C64 80093064 0C02656F */  jal        func_800995BC
/* 93C68 80093068 00003021 */   addu      $a2, $zero, $zero
/* 93C6C 8009306C 00408021 */  addu       $s0, $v0, $zero
/* 93C70 80093070 0260B021 */  addu       $s6, $s3, $zero
.L80093074:
/* 93C74 80093074 0010182B */  sltu       $v1, $zero, $s0
/* 93C78 80093078 3A020003 */  xori       $v0, $s0, 0x3
/* 93C7C 8009307C 0002102B */  sltu       $v0, $zero, $v0
/* 93C80 80093080 00621824 */  and        $v1, $v1, $v0
/* 93C84 80093084 146000B6 */  bnez       $v1, .L80093360
/* 93C88 80093088 02001021 */   addu      $v0, $s0, $zero
.L8009308C:
/* 93C8C 8009308C 02202021 */  addu       $a0, $s1, $zero
/* 93C90 80093090 02802821 */  addu       $a1, $s4, $zero
/* 93C94 80093094 27A60258 */  addiu      $a2, $sp, 0x258
/* 93C98 80093098 0C024D3A */  jal        func_800934E8
/* 93C9C 8009309C 00052C00 */   sll       $a1, $a1, 16
/* 93CA0 800930A0 00552823 */  subu       $a1, $v0, $s5
/* 93CA4 800930A4 14A00014 */  bnez       $a1, .L800930F8
/* 93CA8 800930A8 328200FF */   andi      $v0, $s4, 0xFF
/* 93CAC 800930AC 00021040 */  sll        $v0, $v0, 1
/* 93CB0 800930B0 00571021 */  addu       $v0, $v0, $s7
/* 93CB4 800930B4 94540100 */  lhu        $s4, 0x100($v0)
/* 93CB8 800930B8 8E220060 */  lw         $v0, 0x60($s1)
/* 93CBC 800930BC 24150001 */  addiu      $s5, $zero, 0x1
.L800930C0:
/* 93CC0 800930C0 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 93CC4 800930C4 0082102A */  slt        $v0, $a0, $v0
/* 93CC8 800930C8 14400005 */  bnez       $v0, .L800930E0
/* 93CCC 800930CC 00041202 */   srl       $v0, $a0, 8
/* 93CD0 800930D0 92230064 */  lbu        $v1, 0x64($s1)
/* 93CD4 800930D4 0043102B */  sltu       $v0, $v0, $v1
/* 93CD8 800930D8 1440FFD5 */  bnez       $v0, .L80093030
/* 93CDC 800930DC 328200FF */   andi      $v0, $s4, 0xFF
.L800930E0:
/* 93CE0 800930E0 54A00006 */  bnel       $a1, $zero, .L800930FC
/* 93CE4 800930E4 27A40218 */   addiu     $a0, $sp, 0x218
/* 93CE8 800930E8 3283FFFF */  andi       $v1, $s4, 0xFFFF
/* 93CEC 800930EC 24020001 */  addiu      $v0, $zero, 0x1
/* 93CF0 800930F0 10620017 */  beq        $v1, $v0, .L80093150
/* 93CF4 800930F4 00000000 */   nop
.L800930F8:
/* 93CF8 800930F8 27A40218 */  addiu      $a0, $sp, 0x218
.L800930FC:
/* 93CFC 800930FC 0C00034C */  jal        _bzero
/* 93D00 80093100 24050020 */   addiu     $a1, $zero, 0x20
/* 93D04 80093104 92220065 */  lbu        $v0, 0x65($s1)
/* 93D08 80093108 10400006 */  beqz       $v0, .L80093124
/* 93D0C 8009310C 02202021 */   addu      $a0, $s1, $zero
/* 93D10 80093110 0C0250F8 */  jal        func_800943E0
/* 93D14 80093114 00002821 */   addu      $a1, $zero, $zero
/* 93D18 80093118 00408021 */  addu       $s0, $v0, $zero
/* 93D1C 8009311C 16000090 */  bnez       $s0, .L80093360
/* 93D20 80093120 02001021 */   addu      $v0, $s0, $zero
.L80093124:
/* 93D24 80093124 8E26005C */  lw         $a2, 0x5C($s1)
/* 93D28 80093128 AFA00010 */  sw         $zero, 0x10($sp)
/* 93D2C 8009312C 8E240004 */  lw         $a0, 0x4($s1)
/* 93D30 80093130 8E250008 */  lw         $a1, 0x8($s1)
/* 93D34 80093134 27A70218 */  addiu      $a3, $sp, 0x218
/* 93D38 80093138 00D23021 */  addu       $a2, $a2, $s2
/* 93D3C 8009313C 0C0266B8 */  jal        func_80099AE0
/* 93D40 80093140 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93D44 80093144 00408021 */  addu       $s0, $v0, $zero
/* 93D48 80093148 1600FF91 */  bnez       $s0, .L80092F90
/* 93D4C 8009314C 27DE0001 */   addiu     $fp, $fp, 0x1
.L80093150:
/* 93D50 80093150 8E220050 */  lw         $v0, 0x50($s1)
/* 93D54 80093154 26520001 */  addiu      $s2, $s2, 0x1
/* 93D58 80093158 0242102A */  slt        $v0, $s2, $v0
/* 93D5C 8009315C 1440FF98 */  bnez       $v0, .L80092FC0
/* 93D60 80093160 00000000 */   nop
.L80093164:
/* 93D64 80093164 8E220050 */  lw         $v0, 0x50($s1)
/* 93D68 80093168 1840001D */  blez       $v0, .L800931E0
/* 93D6C 8009316C 00009021 */   addu      $s2, $zero, $zero
/* 93D70 80093170 27B30238 */  addiu      $s3, $sp, 0x238
.L80093174:
/* 93D74 80093174 8E240004 */  lw         $a0, 0x4($s1)
/* 93D78 80093178 8E26005C */  lw         $a2, 0x5C($s1)
/* 93D7C 8009317C 8E250008 */  lw         $a1, 0x8($s1)
/* 93D80 80093180 27A70218 */  addiu      $a3, $sp, 0x218
/* 93D84 80093184 00D23021 */  addu       $a2, $a2, $s2
/* 93D88 80093188 0C026640 */  jal        func_80099900
/* 93D8C 8009318C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93D90 80093190 00408021 */  addu       $s0, $v0, $zero
/* 93D94 80093194 16000072 */  bnez       $s0, .L80093360
/* 93D98 80093198 02001021 */   addu      $v0, $s0, $zero
/* 93D9C 8009319C 97A2021C */  lhu        $v0, 0x21C($sp)
/* 93DA0 800931A0 5040000A */  beql       $v0, $zero, .L800931CC
/* 93DA4 800931A4 A6600000 */   sh        $zero, 0x0($s3)
/* 93DA8 800931A8 8FA20218 */  lw         $v0, 0x218($sp)
/* 93DAC 800931AC 50400007 */  beql       $v0, $zero, .L800931CC
/* 93DB0 800931B0 A6600000 */   sh        $zero, 0x0($s3)
/* 93DB4 800931B4 97A3021E */  lhu        $v1, 0x21E($sp)
/* 93DB8 800931B8 96220062 */  lhu        $v0, 0x62($s1)
/* 93DBC 800931BC 0062102B */  sltu       $v0, $v1, $v0
/* 93DC0 800931C0 54400002 */  bnel       $v0, $zero, .L800931CC
/* 93DC4 800931C4 A6600000 */   sh        $zero, 0x0($s3)
/* 93DC8 800931C8 A6630000 */  sh         $v1, 0x0($s3)
.L800931CC:
/* 93DCC 800931CC 8E220050 */  lw         $v0, 0x50($s1)
/* 93DD0 800931D0 26520001 */  addiu      $s2, $s2, 0x1
/* 93DD4 800931D4 0242102A */  slt        $v0, $s2, $v0
/* 93DD8 800931D8 1440FFE6 */  bnez       $v0, .L80093174
/* 93DDC 800931DC 26730002 */   addiu     $s3, $s3, 0x2
.L800931E0:
/* 93DE0 800931E0 92220064 */  lbu        $v0, 0x64($s1)
/* 93DE4 800931E4 10400055 */  beqz       $v0, .L8009333C
/* 93DE8 800931E8 00009821 */   addu      $s3, $zero, $zero
/* 93DEC 800931EC 27B40018 */  addiu      $s4, $sp, 0x18
/* 93DF0 800931F0 27B60118 */  addiu      $s6, $sp, 0x118
/* 93DF4 800931F4 27B50238 */  addiu      $s5, $sp, 0x238
/* 93DF8 800931F8 02202021 */  addu       $a0, $s1, $zero
.L800931FC:
/* 93DFC 800931FC 27A50118 */  addiu      $a1, $sp, 0x118
/* 93E00 80093200 00003021 */  addu       $a2, $zero, $zero
/* 93E04 80093204 327200FF */  andi       $s2, $s3, 0xFF
/* 93E08 80093208 0C02656F */  jal        func_800995BC
/* 93E0C 8009320C 02403821 */   addu      $a3, $s2, $zero
/* 93E10 80093210 00408021 */  addu       $s0, $v0, $zero
/* 93E14 80093214 0010182B */  sltu       $v1, $zero, $s0
/* 93E18 80093218 3A020003 */  xori       $v0, $s0, 0x3
/* 93E1C 8009321C 0002102B */  sltu       $v0, $zero, $v0
/* 93E20 80093220 00621824 */  and        $v1, $v1, $v0
/* 93E24 80093224 5460004E */  bnel       $v1, $zero, .L80093360
/* 93E28 80093228 02001021 */   addu      $v0, $s0, $zero
/* 93E2C 8009322C 16400002 */  bnez       $s2, .L80093238
/* 93E30 80093230 24050001 */   addiu     $a1, $zero, 0x1
/* 93E34 80093234 8E250060 */  lw         $a1, 0x60($s1)
.L80093238:
/* 93E38 80093238 18A0000A */  blez       $a1, .L80093264
/* 93E3C 8009323C 00009021 */   addu      $s2, $zero, $zero
/* 93E40 80093240 02802021 */  addu       $a0, $s4, $zero
/* 93E44 80093244 02C01821 */  addu       $v1, $s6, $zero
.L80093248:
/* 93E48 80093248 94620000 */  lhu        $v0, 0x0($v1)
/* 93E4C 8009324C 24630002 */  addiu      $v1, $v1, 0x2
/* 93E50 80093250 26520001 */  addiu      $s2, $s2, 0x1
/* 93E54 80093254 A4820000 */  sh         $v0, 0x0($a0)
/* 93E58 80093258 0245102A */  slt        $v0, $s2, $a1
/* 93E5C 8009325C 1440FFFA */  bnez       $v0, .L80093248
/* 93E60 80093260 24840002 */   addiu     $a0, $a0, 0x2
.L80093264:
/* 93E64 80093264 2A420080 */  slti       $v0, $s2, 0x80
/* 93E68 80093268 10400008 */  beqz       $v0, .L8009328C
/* 93E6C 8009326C 00121040 */   sll       $v0, $s2, 1
/* 93E70 80093270 24040003 */  addiu      $a0, $zero, 0x3
/* 93E74 80093274 00541821 */  addu       $v1, $v0, $s4
.L80093278:
/* 93E78 80093278 A4640000 */  sh         $a0, 0x0($v1)
/* 93E7C 8009327C 26520001 */  addiu      $s2, $s2, 0x1
/* 93E80 80093280 2A420080 */  slti       $v0, $s2, 0x80
/* 93E84 80093284 1440FFFC */  bnez       $v0, .L80093278
/* 93E88 80093288 24630002 */   addiu     $v1, $v1, 0x2
.L8009328C:
/* 93E8C 8009328C 8E220050 */  lw         $v0, 0x50($s1)
/* 93E90 80093290 1840001D */  blez       $v0, .L80093308
/* 93E94 80093294 00009021 */   addu      $s2, $zero, $zero
/* 93E98 80093298 326800FF */  andi       $t0, $s3, 0xFF
/* 93E9C 8009329C 00003021 */  addu       $a2, $zero, $zero
/* 93EA0 800932A0 02A03821 */  addu       $a3, $s5, $zero
.L800932A4:
/* 93EA4 800932A4 90E20000 */  lbu        $v0, 0x0($a3)
/* 93EA8 800932A8 14480011 */  bne        $v0, $t0, .L800932F0
/* 93EAC 800932AC 02A02821 */   addu      $a1, $s5, $zero
.L800932B0:
/* 93EB0 800932B0 00A62021 */  addu       $a0, $a1, $a2
/* 93EB4 800932B4 94830000 */  lhu        $v1, 0x0($a0)
/* 93EB8 800932B8 96220062 */  lhu        $v0, 0x62($s1)
/* 93EBC 800932BC 0062182B */  sltu       $v1, $v1, $v0
/* 93EC0 800932C0 5460000C */  bnel       $v1, $zero, .L800932F4
/* 93EC4 800932C4 24C60002 */   addiu     $a2, $a2, 0x2
/* 93EC8 800932C8 90820001 */  lbu        $v0, 0x1($a0)
/* 93ECC 800932CC 00021040 */  sll        $v0, $v0, 1
/* 93ED0 800932D0 00541021 */  addu       $v0, $v0, $s4
/* 93ED4 800932D4 94430100 */  lhu        $v1, 0x100($v0)
/* 93ED8 800932D8 A4430000 */  sh         $v1, 0x0($v0)
/* 93EDC 800932DC 00D41021 */  addu       $v0, $a2, $s4
/* 93EE0 800932E0 A4430220 */  sh         $v1, 0x220($v0)
/* 93EE4 800932E4 90820000 */  lbu        $v0, 0x0($a0)
/* 93EE8 800932E8 1048FFF1 */  beq        $v0, $t0, .L800932B0
/* 93EEC 800932EC 00000000 */   nop
.L800932F0:
/* 93EF0 800932F0 24C60002 */  addiu      $a2, $a2, 0x2
.L800932F4:
/* 93EF4 800932F4 8E220050 */  lw         $v0, 0x50($s1)
/* 93EF8 800932F8 26520001 */  addiu      $s2, $s2, 0x1
/* 93EFC 800932FC 0242102A */  slt        $v0, $s2, $v0
/* 93F00 80093300 1440FFE8 */  bnez       $v0, .L800932A4
/* 93F04 80093304 24E70002 */   addiu     $a3, $a3, 0x2
.L80093308:
/* 93F08 80093308 02202021 */  addu       $a0, $s1, $zero
/* 93F0C 8009330C 27A50018 */  addiu      $a1, $sp, 0x18
/* 93F10 80093310 24060001 */  addiu      $a2, $zero, 0x1
/* 93F14 80093314 0C02656F */  jal        func_800995BC
/* 93F18 80093318 326700FF */   andi      $a3, $s3, 0xFF
/* 93F1C 8009331C 00408021 */  addu       $s0, $v0, $zero
/* 93F20 80093320 1600FF1B */  bnez       $s0, .L80092F90
/* 93F24 80093324 26730001 */   addiu     $s3, $s3, 0x1
/* 93F28 80093328 92230064 */  lbu        $v1, 0x64($s1)
/* 93F2C 8009332C 326200FF */  andi       $v0, $s3, 0xFF
/* 93F30 80093330 0043102B */  sltu       $v0, $v0, $v1
/* 93F34 80093334 1440FFB1 */  bnez       $v0, .L800931FC
/* 93F38 80093338 02202021 */   addu      $a0, $s1, $zero
.L8009333C:
/* 93F3C 8009333C 13C00004 */  beqz       $fp, .L80093350
/* 93F40 80093340 2403FFFD */   addiu     $v1, $zero, -0x3
/* 93F44 80093344 8E220000 */  lw         $v0, 0x0($s1)
/* 93F48 80093348 08024CD6 */  j          .L80093358
/* 93F4C 8009334C 34420002 */   ori       $v0, $v0, 0x2
.L80093350:
/* 93F50 80093350 8E220000 */  lw         $v0, 0x0($s1)
/* 93F54 80093354 00431024 */  and        $v0, $v0, $v1
.L80093358:
/* 93F58 80093358 AE220000 */  sw         $v0, 0x0($s1)
/* 93F5C 8009335C 00001021 */  addu       $v0, $zero, $zero
.L80093360:
/* 93F60 80093360 8FBF049C */  lw         $ra, 0x49C($sp)
/* 93F64 80093364 8FBE0498 */  lw         $fp, 0x498($sp)
/* 93F68 80093368 8FB70494 */  lw         $s7, 0x494($sp)
/* 93F6C 8009336C 8FB60490 */  lw         $s6, 0x490($sp)
/* 93F70 80093370 8FB5048C */  lw         $s5, 0x48C($sp)
/* 93F74 80093374 8FB40488 */  lw         $s4, 0x488($sp)
/* 93F78 80093378 8FB30484 */  lw         $s3, 0x484($sp)
/* 93F7C 8009337C 8FB20480 */  lw         $s2, 0x480($sp)
/* 93F80 80093380 8FB1047C */  lw         $s1, 0x47C($sp)
/* 93F84 80093384 8FB00478 */  lw         $s0, 0x478($sp)
/* 93F88 80093388 03E00008 */  jr         $ra
/* 93F8C 8009338C 27BD04A0 */   addiu     $sp, $sp, 0x4A0

glabel func_80093390
/* 93F90 80093390 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 93F94 80093394 AFB20118 */  sw         $s2, 0x118($sp)
/* 93F98 80093398 00809021 */  addu       $s2, $a0, $zero
/* 93F9C 8009339C AFB40120 */  sw         $s4, 0x120($sp)
/* 93FA0 800933A0 00A0A021 */  addu       $s4, $a1, $zero
/* 93FA4 800933A4 240500FF */  addiu      $a1, $zero, 0xFF
/* 93FA8 800933A8 268200FF */  addiu      $v0, $s4, 0xFF
/* 93FAC 800933AC AFBF012C */  sw         $ra, 0x12C($sp)
/* 93FB0 800933B0 AFB60128 */  sw         $s6, 0x128($sp)
/* 93FB4 800933B4 AFB50124 */  sw         $s5, 0x124($sp)
/* 93FB8 800933B8 AFB3011C */  sw         $s3, 0x11C($sp)
/* 93FBC 800933BC AFB10114 */  sw         $s1, 0x114($sp)
/* 93FC0 800933C0 AFB00110 */  sw         $s0, 0x110($sp)
.L800933C4:
/* 93FC4 800933C4 A0400101 */  sb         $zero, 0x101($v0)
/* 93FC8 800933C8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 93FCC 800933CC 04A1FFFD */  bgez       $a1, .L800933C4
/* 93FD0 800933D0 2442FFFF */   addiu     $v0, $v0, -0x1
/* 93FD4 800933D4 240200FF */  addiu      $v0, $zero, 0xFF
/* 93FD8 800933D8 A2820100 */  sb         $v0, 0x100($s4)
/* 93FDC 800933DC 92420064 */  lbu        $v0, 0x64($s2)
/* 93FE0 800933E0 10400036 */  beqz       $v0, .L800934BC
/* 93FE4 800933E4 00009821 */   addu      $s3, $zero, $zero
/* 93FE8 800933E8 27B50010 */  addiu      $s5, $sp, 0x10
/* 93FEC 800933EC 24160001 */  addiu      $s6, $zero, 0x1
/* 93FF0 800933F0 327000FF */  andi       $s0, $s3, 0xFF
.L800933F4:
/* 93FF4 800933F4 16000002 */  bnez       $s0, .L80093400
/* 93FF8 800933F8 24110001 */   addiu     $s1, $zero, 0x1
/* 93FFC 800933FC 8E510060 */  lw         $s1, 0x60($s2)
.L80093400:
/* 94000 80093400 02402021 */  addu       $a0, $s2, $zero
/* 94004 80093404 27A50010 */  addiu      $a1, $sp, 0x10
/* 94008 80093408 00003021 */  addu       $a2, $zero, $zero
/* 9400C 8009340C 0C02656F */  jal        func_800995BC
/* 94010 80093410 02003821 */   addu      $a3, $s0, $zero
/* 94014 80093414 00402021 */  addu       $a0, $v0, $zero
/* 94018 80093418 0004182B */  sltu       $v1, $zero, $a0
/* 9401C 8009341C 38820003 */  xori       $v0, $a0, 0x3
/* 94020 80093420 0002102B */  sltu       $v0, $zero, $v0
/* 94024 80093424 00621824 */  and        $v1, $v1, $v0
/* 94028 80093428 14600025 */  bnez       $v1, .L800934C0
/* 9402C 8009342C 00801021 */   addu      $v0, $a0, $zero
/* 94030 80093430 02202821 */  addu       $a1, $s1, $zero
/* 94034 80093434 28A20080 */  slti       $v0, $a1, 0x80
/* 94038 80093438 1040001A */  beqz       $v0, .L800934A4
/* 9403C 8009343C 32020007 */   andi      $v0, $s0, 0x7
/* 94040 80093440 02003821 */  addu       $a3, $s0, $zero
/* 94044 80093444 00564004 */  sllv       $t0, $s6, $v0
/* 94048 80093448 00051040 */  sll        $v0, $a1, 1
/* 9404C 8009344C 00553021 */  addu       $a2, $v0, $s5
.L80093450:
/* 94050 80093450 94C40000 */  lhu        $a0, 0x0($a2)
/* 94054 80093454 8E420060 */  lw         $v0, 0x60($s2)
/* 94058 80093458 3083FFFF */  andi       $v1, $a0, 0xFFFF
/* 9405C 8009345C 0062102A */  slt        $v0, $v1, $v0
/* 94060 80093460 1440000D */  bnez       $v0, .L80093498
/* 94064 80093464 24A50001 */   addiu     $a1, $a1, 0x1
/* 94068 80093468 00031A02 */  srl        $v1, $v1, 8
/* 9406C 8009346C 1067000A */  beq        $v1, $a3, .L80093498
/* 94070 80093470 00000000 */   nop
/* 94074 80093474 308200FF */  andi       $v0, $a0, 0xFF
/* 94078 80093478 00021082 */  srl        $v0, $v0, 2
/* 9407C 8009347C 30630007 */  andi       $v1, $v1, 0x7
/* 94080 80093480 00031940 */  sll        $v1, $v1, 5
/* 94084 80093484 00431021 */  addu       $v0, $v0, $v1
/* 94088 80093488 02821021 */  addu       $v0, $s4, $v0
/* 9408C 8009348C 90430101 */  lbu        $v1, 0x101($v0)
/* 94090 80093490 00681825 */  or         $v1, $v1, $t0
/* 94094 80093494 A0430101 */  sb         $v1, 0x101($v0)
.L80093498:
/* 94098 80093498 28A20080 */  slti       $v0, $a1, 0x80
/* 9409C 8009349C 1440FFEC */  bnez       $v0, .L80093450
/* 940A0 800934A0 24C60002 */   addiu     $a2, $a2, 0x2
.L800934A4:
/* 940A4 800934A4 92430064 */  lbu        $v1, 0x64($s2)
/* 940A8 800934A8 26730001 */  addiu      $s3, $s3, 0x1
/* 940AC 800934AC 326200FF */  andi       $v0, $s3, 0xFF
/* 940B0 800934B0 0043102B */  sltu       $v0, $v0, $v1
/* 940B4 800934B4 1440FFCF */  bnez       $v0, .L800933F4
/* 940B8 800934B8 327000FF */   andi      $s0, $s3, 0xFF
.L800934BC:
/* 940BC 800934BC 00001021 */  addu       $v0, $zero, $zero
.L800934C0:
/* 940C0 800934C0 8FBF012C */  lw         $ra, 0x12C($sp)
/* 940C4 800934C4 8FB60128 */  lw         $s6, 0x128($sp)
/* 940C8 800934C8 8FB50124 */  lw         $s5, 0x124($sp)
/* 940CC 800934CC 8FB40120 */  lw         $s4, 0x120($sp)
/* 940D0 800934D0 8FB3011C */  lw         $s3, 0x11C($sp)
/* 940D4 800934D4 8FB20118 */  lw         $s2, 0x118($sp)
/* 940D8 800934D8 8FB10114 */  lw         $s1, 0x114($sp)
/* 940DC 800934DC 8FB00110 */  lw         $s0, 0x110($sp)
/* 940E0 800934E0 03E00008 */  jr         $ra
/* 940E4 800934E4 27BD0130 */   addiu     $sp, $sp, 0x130

glabel func_800934E8
/* 940E8 800934E8 00052C03 */  sra        $a1, $a1, 16
/* 940EC 800934EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 940F0 800934F0 AFB40028 */  sw         $s4, 0x28($sp)
/* 940F4 800934F4 0080A021 */  addu       $s4, $a0, $zero
/* 940F8 800934F8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 940FC 800934FC 00C08821 */  addu       $s1, $a2, $zero
/* 94100 80093500 AFB20020 */  sw         $s2, 0x20($sp)
/* 94104 80093504 00009021 */  addu       $s2, $zero, $zero
/* 94108 80093508 AFB00018 */  sw         $s0, 0x18($sp)
/* 9410C 8009350C 00008021 */  addu       $s0, $zero, $zero
/* 94110 80093510 30A300FF */  andi       $v1, $a1, 0xFF
/* 94114 80093514 00031882 */  srl        $v1, $v1, 2
/* 94118 80093518 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 9411C 8009351C 00053202 */  srl        $a2, $a1, 8
/* 94120 80093520 30C20007 */  andi       $v0, $a2, 0x7
/* 94124 80093524 AFBF0038 */  sw         $ra, 0x38($sp)
/* 94128 80093528 AFB70034 */  sw         $s7, 0x34($sp)
/* 9412C 8009352C AFB60030 */  sw         $s6, 0x30($sp)
/* 94130 80093530 AFB5002C */  sw         $s5, 0x2C($sp)
/* 94134 80093534 AFB30024 */  sw         $s3, 0x24($sp)
/* 94138 80093538 92840064 */  lbu        $a0, 0x64($s4)
/* 9413C 8009353C 00021140 */  sll        $v0, $v0, 5
/* 94140 80093540 10800037 */  beqz       $a0, .L80093620
/* 94144 80093544 0062B821 */   addu      $s7, $v1, $v0
/* 94148 80093548 00A0A821 */  addu       $s5, $a1, $zero
/* 9414C 8009354C 00C0B021 */  addu       $s6, $a2, $zero
/* 94150 80093550 324700FF */  andi       $a3, $s2, 0xFF
.L80093554:
/* 94154 80093554 14E00002 */  bnez       $a3, .L80093560
/* 94158 80093558 24130001 */   addiu     $s3, $zero, 0x1
/* 9415C 8009355C 8E930060 */  lw         $s3, 0x60($s4)
.L80093560:
/* 94160 80093560 10F60007 */  beq        $a3, $s6, .L80093580
/* 94164 80093564 02371021 */   addu      $v0, $s1, $s7
/* 94168 80093568 90420101 */  lbu        $v0, 0x101($v0)
/* 9416C 8009356C 30E30007 */  andi       $v1, $a3, 0x7
/* 94170 80093570 00621007 */  srav       $v0, $v0, $v1
/* 94174 80093574 30420001 */  andi       $v0, $v0, 0x1
/* 94178 80093578 10400023 */  beqz       $v0, .L80093608
/* 9417C 8009357C 00000000 */   nop
.L80093580:
/* 94180 80093580 92220100 */  lbu        $v0, 0x100($s1)
/* 94184 80093584 10E2000C */  beq        $a3, $v0, .L800935B8
/* 94188 80093588 02802021 */   addu      $a0, $s4, $zero
/* 9418C 8009358C 02202821 */  addu       $a1, $s1, $zero
/* 94190 80093590 0C02656F */  jal        func_800995BC
/* 94194 80093594 00003021 */   addu      $a2, $zero, $zero
/* 94198 80093598 00402021 */  addu       $a0, $v0, $zero
/* 9419C 8009359C 0004182B */  sltu       $v1, $zero, $a0
/* 941A0 800935A0 38820003 */  xori       $v0, $a0, 0x3
/* 941A4 800935A4 0002102B */  sltu       $v0, $zero, $v0
/* 941A8 800935A8 00621824 */  and        $v1, $v1, $v0
/* 941AC 800935AC 1460001D */  bnez       $v1, .L80093624
/* 941B0 800935B0 00801021 */   addu      $v0, $a0, $zero
/* 941B4 800935B4 A2320100 */  sb         $s2, 0x100($s1)
.L800935B8:
/* 941B8 800935B8 02602821 */  addu       $a1, $s3, $zero
/* 941BC 800935BC 2A020002 */  slti       $v0, $s0, 0x2
/* 941C0 800935C0 28A30080 */  slti       $v1, $a1, 0x80
/* 941C4 800935C4 00431024 */  and        $v0, $v0, $v1
/* 941C8 800935C8 1040000C */  beqz       $v0, .L800935FC
/* 941CC 800935CC 00051040 */   sll       $v0, $a1, 1
/* 941D0 800935D0 00512021 */  addu       $a0, $v0, $s1
.L800935D4:
/* 941D4 800935D4 94820000 */  lhu        $v0, 0x0($a0)
/* 941D8 800935D8 24A50001 */  addiu      $a1, $a1, 0x1
/* 941DC 800935DC 28A30080 */  slti       $v1, $a1, 0x80
/* 941E0 800935E0 00551026 */  xor        $v0, $v0, $s5
/* 941E4 800935E4 2C420001 */  sltiu      $v0, $v0, 0x1
/* 941E8 800935E8 02028021 */  addu       $s0, $s0, $v0
/* 941EC 800935EC 2A020002 */  slti       $v0, $s0, 0x2
/* 941F0 800935F0 00431024 */  and        $v0, $v0, $v1
/* 941F4 800935F4 1440FFF7 */  bnez       $v0, .L800935D4
/* 941F8 800935F8 24840002 */   addiu     $a0, $a0, 0x2
.L800935FC:
/* 941FC 800935FC 2A020002 */  slti       $v0, $s0, 0x2
/* 94200 80093600 10400008 */  beqz       $v0, .L80093624
/* 94204 80093604 24020002 */   addiu     $v0, $zero, 0x2
.L80093608:
/* 94208 80093608 92830064 */  lbu        $v1, 0x64($s4)
/* 9420C 8009360C 26520001 */  addiu      $s2, $s2, 0x1
/* 94210 80093610 324200FF */  andi       $v0, $s2, 0xFF
/* 94214 80093614 0043102B */  sltu       $v0, $v0, $v1
/* 94218 80093618 1440FFCE */  bnez       $v0, .L80093554
/* 9421C 8009361C 324700FF */   andi      $a3, $s2, 0xFF
.L80093620:
/* 94220 80093620 02001021 */  addu       $v0, $s0, $zero
.L80093624:
/* 94224 80093624 8FBF0038 */  lw         $ra, 0x38($sp)
/* 94228 80093628 8FB70034 */  lw         $s7, 0x34($sp)
/* 9422C 8009362C 8FB60030 */  lw         $s6, 0x30($sp)
/* 94230 80093630 8FB5002C */  lw         $s5, 0x2C($sp)
/* 94234 80093634 8FB40028 */  lw         $s4, 0x28($sp)
/* 94238 80093638 8FB30024 */  lw         $s3, 0x24($sp)
/* 9423C 8009363C 8FB20020 */  lw         $s2, 0x20($sp)
/* 94240 80093640 8FB1001C */  lw         $s1, 0x1C($sp)
/* 94244 80093644 8FB00018 */  lw         $s0, 0x18($sp)
/* 94248 80093648 03E00008 */  jr         $ra
/* 9424C 8009364C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80093650
/* 94250 80093650 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 94254 80093654 AFB10144 */  sw         $s1, 0x144($sp)
/* 94258 80093658 00808821 */  addu       $s1, $a0, $zero
/* 9425C 8009365C 8FA80170 */  lw         $t0, 0x170($sp)
/* 94260 80093660 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 94264 80093664 2CA20001 */  sltiu      $v0, $a1, 0x1
/* 94268 80093668 2CC30001 */  sltiu      $v1, $a2, 0x1
/* 9426C 8009366C 00431025 */  or         $v0, $v0, $v1
/* 94270 80093670 AFBF0158 */  sw         $ra, 0x158($sp)
/* 94274 80093674 AFB50154 */  sw         $s5, 0x154($sp)
/* 94278 80093678 AFB40150 */  sw         $s4, 0x150($sp)
/* 9427C 8009367C AFB3014C */  sw         $s3, 0x14C($sp)
/* 94280 80093680 AFB20148 */  sw         $s2, 0x148($sp)
/* 94284 80093684 10400003 */  beqz       $v0, .L80093694
/* 94288 80093688 AFB00140 */   sw        $s0, 0x140($sp)
/* 9428C 8009368C 08024DF6 */  j          .L800937D8
/* 94290 80093690 24020005 */   addiu     $v0, $zero, 0x5
.L80093694:
/* 94294 80093694 02202021 */  addu       $a0, $s1, $zero
/* 94298 80093698 27A20138 */  addiu      $v0, $sp, 0x138
/* 9429C 8009369C AFA80010 */  sw         $t0, 0x10($sp)
/* 942A0 800936A0 0C025090 */  jal        func_80094240
/* 942A4 800936A4 AFA20014 */   sw        $v0, 0x14($sp)
/* 942A8 800936A8 1440004B */  bnez       $v0, .L800937D8
/* 942AC 800936AC 00000000 */   nop
/* 942B0 800936B0 92220065 */  lbu        $v0, 0x65($s1)
/* 942B4 800936B4 10400005 */  beqz       $v0, .L800936CC
/* 942B8 800936B8 02202021 */   addu      $a0, $s1, $zero
/* 942BC 800936BC 0C0250F8 */  jal        func_800943E0
/* 942C0 800936C0 00002821 */   addu      $a1, $zero, $zero
/* 942C4 800936C4 14400044 */  bnez       $v0, .L800937D8
/* 942C8 800936C8 00000000 */   nop
.L800936CC:
/* 942CC 800936CC 8E240004 */  lw         $a0, 0x4($s1)
/* 942D0 800936D0 8E26005C */  lw         $a2, 0x5C($s1)
/* 942D4 800936D4 8FA20138 */  lw         $v0, 0x138($sp)
/* 942D8 800936D8 8E250008 */  lw         $a1, 0x8($s1)
/* 942DC 800936DC 27A70118 */  addiu      $a3, $sp, 0x118
/* 942E0 800936E0 00C23021 */  addu       $a2, $a2, $v0
/* 942E4 800936E4 0C026640 */  jal        func_80099900
/* 942E8 800936E8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 942EC 800936EC 1440003A */  bnez       $v0, .L800937D8
/* 942F0 800936F0 00000000 */   nop
/* 942F4 800936F4 93B3011E */  lbu        $s3, 0x11E($sp)
/* 942F8 800936F8 92220064 */  lbu        $v0, 0x64($s1)
/* 942FC 800936FC 93B2011F */  lbu        $s2, 0x11F($sp)
/* 94300 80093700 327000FF */  andi       $s0, $s3, 0xFF
/* 94304 80093704 0202102B */  sltu       $v0, $s0, $v0
/* 94308 80093708 10400032 */  beqz       $v0, .L800937D4
/* 9430C 8009370C 27B4013C */   addiu     $s4, $sp, 0x13C
/* 94310 80093710 24150001 */  addiu      $s5, $zero, 0x1
/* 94314 80093714 02202021 */  addu       $a0, $s1, $zero
.L80093718:
/* 94318 80093718 27A50018 */  addiu      $a1, $sp, 0x18
/* 9431C 8009371C 00003021 */  addu       $a2, $zero, $zero
/* 94320 80093720 0C02656F */  jal        func_800995BC
/* 94324 80093724 02003821 */   addu      $a3, $s0, $zero
/* 94328 80093728 1440002B */  bnez       $v0, .L800937D8
/* 9432C 8009372C 02202021 */   addu      $a0, $s1, $zero
/* 94330 80093730 AFB40010 */  sw         $s4, 0x10($sp)
/* 94334 80093734 27A50018 */  addiu      $a1, $sp, 0x18
/* 94338 80093738 02403021 */  addu       $a2, $s2, $zero
/* 9433C 8009373C 0C024DFF */  jal        func_800937FC
/* 94340 80093740 02003821 */   addu      $a3, $s0, $zero
/* 94344 80093744 14400024 */  bnez       $v0, .L800937D8
/* 94348 80093748 02202021 */   addu      $a0, $s1, $zero
/* 9434C 8009374C 27A50018 */  addiu      $a1, $sp, 0x18
/* 94350 80093750 24060001 */  addiu      $a2, $zero, 0x1
/* 94354 80093754 0C02656F */  jal        func_800995BC
/* 94358 80093758 02003821 */   addu      $a3, $s0, $zero
/* 9435C 8009375C 1440001E */  bnez       $v0, .L800937D8
/* 94360 80093760 00000000 */   nop
/* 94364 80093764 97A2013C */  lhu        $v0, 0x13C($sp)
/* 94368 80093768 10550008 */  beq        $v0, $s5, .L8009378C
/* 9436C 8009376C 00000000 */   nop
/* 94370 80093770 93B3013C */  lbu        $s3, 0x13C($sp)
/* 94374 80093774 92220064 */  lbu        $v0, 0x64($s1)
/* 94378 80093778 93B2013D */  lbu        $s2, 0x13D($sp)
/* 9437C 8009377C 327000FF */  andi       $s0, $s3, 0xFF
/* 94380 80093780 0202102B */  sltu       $v0, $s0, $v0
/* 94384 80093784 1440FFE4 */  bnez       $v0, .L80093718
/* 94388 80093788 02202021 */   addu      $a0, $s1, $zero
.L8009378C:
/* 9438C 8009378C 92220064 */  lbu        $v0, 0x64($s1)
/* 94390 80093790 0262102B */  sltu       $v0, $s3, $v0
/* 94394 80093794 1040000F */  beqz       $v0, .L800937D4
/* 94398 80093798 27B00118 */   addiu     $s0, $sp, 0x118
/* 9439C 8009379C 02002021 */  addu       $a0, $s0, $zero
/* 943A0 800937A0 0C00034C */  jal        _bzero
/* 943A4 800937A4 24050020 */   addiu     $a1, $zero, 0x20
/* 943A8 800937A8 8E26005C */  lw         $a2, 0x5C($s1)
/* 943AC 800937AC 8FA20138 */  lw         $v0, 0x138($sp)
/* 943B0 800937B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 943B4 800937B4 8E240004 */  lw         $a0, 0x4($s1)
/* 943B8 800937B8 8E250008 */  lw         $a1, 0x8($s1)
/* 943BC 800937BC 02003821 */  addu       $a3, $s0, $zero
/* 943C0 800937C0 00C23021 */  addu       $a2, $a2, $v0
/* 943C4 800937C4 0C0266B8 */  jal        func_80099AE0
/* 943C8 800937C8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 943CC 800937CC 08024DF6 */  j          .L800937D8
/* 943D0 800937D0 00000000 */   nop
.L800937D4:
/* 943D4 800937D4 24020003 */  addiu      $v0, $zero, 0x3
.L800937D8:
/* 943D8 800937D8 8FBF0158 */  lw         $ra, 0x158($sp)
/* 943DC 800937DC 8FB50154 */  lw         $s5, 0x154($sp)
/* 943E0 800937E0 8FB40150 */  lw         $s4, 0x150($sp)
/* 943E4 800937E4 8FB3014C */  lw         $s3, 0x14C($sp)
/* 943E8 800937E8 8FB20148 */  lw         $s2, 0x148($sp)
/* 943EC 800937EC 8FB10144 */  lw         $s1, 0x144($sp)
/* 943F0 800937F0 8FB00140 */  lw         $s0, 0x140($sp)
/* 943F4 800937F4 03E00008 */  jr         $ra
/* 943F8 800937F8 27BD0160 */   addiu     $sp, $sp, 0x160

glabel func_800937FC
/* 943FC 800937FC 8FA90010 */  lw         $t1, 0x10($sp)
/* 94400 80093800 00071200 */  sll        $v0, $a3, 8
/* 94404 80093804 30C600FF */  andi       $a2, $a2, 0xFF
/* 94408 80093808 00461825 */  or         $v1, $v0, $a2
/* 9440C 8009380C 24080003 */  addiu      $t0, $zero, 0x3
/* 94410 80093810 30E700FF */  andi       $a3, $a3, 0xFF
/* 94414 80093814 00601021 */  addu       $v0, $v1, $zero
.L80093818:
/* 94418 80093818 304300FF */  andi       $v1, $v0, 0xFF
/* 9441C 8009381C 00031840 */  sll        $v1, $v1, 1
/* 94420 80093820 00651821 */  addu       $v1, $v1, $a1
/* 94424 80093824 94630000 */  lhu        $v1, 0x0($v1)
/* 94428 80093828 304200FF */  andi       $v0, $v0, 0xFF
/* 9442C 8009382C 00021040 */  sll        $v0, $v0, 1
/* 94430 80093830 00A21021 */  addu       $v0, $a1, $v0
/* 94434 80093834 A4480000 */  sh         $t0, 0x0($v0)
/* 94438 80093838 8C820060 */  lw         $v0, 0x60($a0)
/* 9443C 8009383C 3066FFFF */  andi       $a2, $v1, 0xFFFF
/* 94440 80093840 00C2102A */  slt        $v0, $a2, $v0
/* 94444 80093844 54400005 */  bnel       $v0, $zero, .L8009385C
/* 94448 80093848 A5230000 */   sh        $v1, 0x0($t1)
/* 9444C 8009384C 00061202 */  srl        $v0, $a2, 8
/* 94450 80093850 1047FFF1 */  beq        $v0, $a3, .L80093818
/* 94454 80093854 00601021 */   addu      $v0, $v1, $zero
/* 94458 80093858 A5230000 */  sh         $v1, 0x0($t1)
.L8009385C:
/* 9445C 8009385C 03E00008 */  jr         $ra
/* 94460 80093860 00001021 */   addu      $v0, $zero, $zero
/* 94464 80093864 00000000 */  nop
/* 94468 80093868 00000000 */  nop
/* 9446C 8009386C 00000000 */  nop

glabel func_80093870
/* 94470 80093870 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 94474 80093874 AFB10134 */  sw         $s1, 0x134($sp)
/* 94478 80093878 00808821 */  addu       $s1, $a0, $zero
/* 9447C 8009387C AFB00130 */  sw         $s0, 0x130($sp)
/* 94480 80093880 00A08021 */  addu       $s0, $a1, $zero
/* 94484 80093884 AFBF0148 */  sw         $ra, 0x148($sp)
/* 94488 80093888 AFB50144 */  sw         $s5, 0x144($sp)
/* 9448C 8009388C AFB40140 */  sw         $s4, 0x140($sp)
/* 94490 80093890 AFB3013C */  sw         $s3, 0x13C($sp)
/* 94494 80093894 AFB20138 */  sw         $s2, 0x138($sp)
/* 94498 80093898 8E220050 */  lw         $v0, 0x50($s1)
/* 9449C 8009389C 00101FC2 */  srl        $v1, $s0, 31
/* 944A0 800938A0 0202102A */  slt        $v0, $s0, $v0
/* 944A4 800938A4 38420001 */  xori       $v0, $v0, 0x1
/* 944A8 800938A8 00431025 */  or         $v0, $v0, $v1
/* 944AC 800938AC 1440001F */  bnez       $v0, .L8009392C
/* 944B0 800938B0 00C0A021 */   addu      $s4, $a2, $zero
/* 944B4 800938B4 8E220000 */  lw         $v0, 0x0($s1)
/* 944B8 800938B8 30420001 */  andi       $v0, $v0, 0x1
/* 944BC 800938BC 10400046 */  beqz       $v0, .L800939D8
/* 944C0 800938C0 24020005 */   addiu     $v0, $zero, 0x5
/* 944C4 800938C4 0C026541 */  jal        func_80099504
/* 944C8 800938C8 02202021 */   addu      $a0, $s1, $zero
/* 944CC 800938CC 14400042 */  bnez       $v0, .L800939D8
/* 944D0 800938D0 00000000 */   nop
/* 944D4 800938D4 92220065 */  lbu        $v0, 0x65($s1)
/* 944D8 800938D8 10400005 */  beqz       $v0, .L800938F0
/* 944DC 800938DC 02202021 */   addu      $a0, $s1, $zero
/* 944E0 800938E0 0C0250F8 */  jal        func_800943E0
/* 944E4 800938E4 00002821 */   addu      $a1, $zero, $zero
/* 944E8 800938E8 1440003B */  bnez       $v0, .L800939D8
/* 944EC 800938EC 00000000 */   nop
.L800938F0:
/* 944F0 800938F0 8E240004 */  lw         $a0, 0x4($s1)
/* 944F4 800938F4 8E26005C */  lw         $a2, 0x5C($s1)
/* 944F8 800938F8 8E250008 */  lw         $a1, 0x8($s1)
/* 944FC 800938FC 27A70110 */  addiu      $a3, $sp, 0x110
/* 94500 80093900 00D03021 */  addu       $a2, $a2, $s0
/* 94504 80093904 0C026640 */  jal        func_80099900
/* 94508 80093908 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9450C 8009390C 14400032 */  bnez       $v0, .L800939D8
/* 94510 80093910 00000000 */   nop
/* 94514 80093914 97A20114 */  lhu        $v0, 0x114($sp)
/* 94518 80093918 1040002F */  beqz       $v0, .L800939D8
/* 9451C 8009391C 24020005 */   addiu     $v0, $zero, 0x5
/* 94520 80093920 8FA20110 */  lw         $v0, 0x110($sp)
/* 94524 80093924 14400003 */  bnez       $v0, .L80093934
/* 94528 80093928 00009821 */   addu      $s3, $zero, $zero
.L8009392C:
/* 9452C 8009392C 08024E76 */  j          .L800939D8
/* 94530 80093930 24020005 */   addiu     $v0, $zero, 0x5
.L80093934:
/* 94534 80093934 97B00116 */  lhu        $s0, 0x116($sp)
/* 94538 80093938 241200FF */  addiu      $s2, $zero, 0xFF
/* 9453C 8009393C 27B50010 */  addiu      $s5, $sp, 0x10
.L80093940:
/* 94540 80093940 8E220060 */  lw         $v0, 0x60($s1)
/* 94544 80093944 3203FFFF */  andi       $v1, $s0, 0xFFFF
/* 94548 80093948 0062102A */  slt        $v0, $v1, $v0
/* 9454C 8009394C 14400010 */  bnez       $v0, .L80093990
/* 94550 80093950 00031202 */   srl       $v0, $v1, 8
/* 94554 80093954 304700FF */  andi       $a3, $v0, 0xFF
/* 94558 80093958 10F20007 */  beq        $a3, $s2, .L80093978
/* 9455C 8009395C 02202021 */   addu      $a0, $s1, $zero
/* 94560 80093960 00409021 */  addu       $s2, $v0, $zero
/* 94564 80093964 27A50010 */  addiu      $a1, $sp, 0x10
/* 94568 80093968 0C02656F */  jal        func_800995BC
/* 9456C 8009396C 00003021 */   addu      $a2, $zero, $zero
/* 94570 80093970 14400019 */  bnez       $v0, .L800939D8
/* 94574 80093974 00000000 */   nop
.L80093978:
/* 94578 80093978 320200FF */  andi       $v0, $s0, 0xFF
/* 9457C 8009397C 00021040 */  sll        $v0, $v0, 1
/* 94580 80093980 00551021 */  addu       $v0, $v0, $s5
/* 94584 80093984 94500000 */  lhu        $s0, 0x0($v0)
/* 94588 80093988 08024E50 */  j          .L80093940
/* 9458C 8009398C 26730001 */   addiu     $s3, $s3, 0x1
.L80093990:
/* 94590 80093990 24020001 */  addiu      $v0, $zero, 0x1
/* 94594 80093994 54620010 */  bnel       $v1, $v0, .L800939D8
/* 94598 80093998 24020003 */   addiu     $v0, $zero, 0x3
/* 9459C 8009399C 00131200 */  sll        $v0, $s3, 8
/* 945A0 800939A0 AE820000 */  sw         $v0, 0x0($s4)
/* 945A4 800939A4 97A20114 */  lhu        $v0, 0x114($sp)
/* 945A8 800939A8 27A40120 */  addiu      $a0, $sp, 0x120
/* 945AC 800939AC A6820008 */  sh         $v0, 0x8($s4)
/* 945B0 800939B0 8FA20110 */  lw         $v0, 0x110($sp)
/* 945B4 800939B4 2685000E */  addiu      $a1, $s4, 0xE
/* 945B8 800939B8 24060010 */  addiu      $a2, $zero, 0x10
/* 945BC 800939BC 0C024854 */  jal        func_80092150
/* 945C0 800939C0 AE820004 */   sw        $v0, 0x4($s4)
/* 945C4 800939C4 27A4011C */  addiu      $a0, $sp, 0x11C
/* 945C8 800939C8 2685000A */  addiu      $a1, $s4, 0xA
/* 945CC 800939CC 0C024854 */  jal        func_80092150
/* 945D0 800939D0 24060004 */   addiu     $a2, $zero, 0x4
/* 945D4 800939D4 00001021 */  addu       $v0, $zero, $zero
.L800939D8:
/* 945D8 800939D8 8FBF0148 */  lw         $ra, 0x148($sp)
/* 945DC 800939DC 8FB50144 */  lw         $s5, 0x144($sp)
/* 945E0 800939E0 8FB40140 */  lw         $s4, 0x140($sp)
/* 945E4 800939E4 8FB3013C */  lw         $s3, 0x13C($sp)
/* 945E8 800939E8 8FB20138 */  lw         $s2, 0x138($sp)
/* 945EC 800939EC 8FB10134 */  lw         $s1, 0x134($sp)
/* 945F0 800939F0 8FB00130 */  lw         $s0, 0x130($sp)
/* 945F4 800939F4 03E00008 */  jr         $ra
/* 945F8 800939F8 27BD0150 */   addiu     $sp, $sp, 0x150
/* 945FC 800939FC 00000000 */  nop

glabel func_80093A00
/* 94600 80093A00 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 94604 80093A04 AFB20118 */  sw         $s2, 0x118($sp)
/* 94608 80093A08 00809021 */  addu       $s2, $a0, $zero
/* 9460C 80093A0C AFBF0128 */  sw         $ra, 0x128($sp)
/* 94610 80093A10 AFB50124 */  sw         $s5, 0x124($sp)
/* 94614 80093A14 AFB40120 */  sw         $s4, 0x120($sp)
/* 94618 80093A18 AFB3011C */  sw         $s3, 0x11C($sp)
/* 9461C 80093A1C AFB10114 */  sw         $s1, 0x114($sp)
/* 94620 80093A20 AFB00110 */  sw         $s0, 0x110($sp)
/* 94624 80093A24 8E420000 */  lw         $v0, 0x0($s2)
/* 94628 80093A28 00A0A821 */  addu       $s5, $a1, $zero
/* 9462C 80093A2C 30420001 */  andi       $v0, $v0, 0x1
/* 94630 80093A30 14400003 */  bnez       $v0, .L80093A40
/* 94634 80093A34 00009821 */   addu      $s3, $zero, $zero
/* 94638 80093A38 08024EBA */  j          .L80093AE8
/* 9463C 80093A3C 24020005 */   addiu     $v0, $zero, 0x5
.L80093A40:
/* 94640 80093A40 0C026541 */  jal        func_80099504
/* 94644 80093A44 02402021 */   addu      $a0, $s2, $zero
/* 94648 80093A48 14400027 */  bnez       $v0, .L80093AE8
/* 9464C 80093A4C 00000000 */   nop
/* 94650 80093A50 92420064 */  lbu        $v0, 0x64($s2)
/* 94654 80093A54 0262102B */  sltu       $v0, $s3, $v0
/* 94658 80093A58 10400020 */  beqz       $v0, .L80093ADC
/* 9465C 80093A5C 00008821 */   addu      $s1, $zero, $zero
/* 94660 80093A60 27B40010 */  addiu      $s4, $sp, 0x10
/* 94664 80093A64 02402021 */  addu       $a0, $s2, $zero
.L80093A68:
/* 94668 80093A68 323000FF */  andi       $s0, $s1, 0xFF
/* 9466C 80093A6C 27A50010 */  addiu      $a1, $sp, 0x10
/* 94670 80093A70 00003021 */  addu       $a2, $zero, $zero
/* 94674 80093A74 0C02656F */  jal        func_800995BC
/* 94678 80093A78 02003821 */   addu      $a3, $s0, $zero
/* 9467C 80093A7C 1440001A */  bnez       $v0, .L80093AE8
/* 94680 80093A80 00000000 */   nop
/* 94684 80093A84 16000002 */  bnez       $s0, .L80093A90
/* 94688 80093A88 24020001 */   addiu     $v0, $zero, 0x1
/* 9468C 80093A8C 8E420060 */  lw         $v0, 0x60($s2)
.L80093A90:
/* 94690 80093A90 00402021 */  addu       $a0, $v0, $zero
/* 94694 80093A94 28820080 */  slti       $v0, $a0, 0x80
/* 94698 80093A98 1040000A */  beqz       $v0, .L80093AC4
/* 9469C 80093A9C 00041040 */   sll       $v0, $a0, 1
/* 946A0 80093AA0 00541821 */  addu       $v1, $v0, $s4
.L80093AA4:
/* 946A4 80093AA4 94620000 */  lhu        $v0, 0x0($v1)
/* 946A8 80093AA8 24840001 */  addiu      $a0, $a0, 0x1
/* 946AC 80093AAC 38420003 */  xori       $v0, $v0, 0x3
/* 946B0 80093AB0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 946B4 80093AB4 02629821 */  addu       $s3, $s3, $v0
/* 946B8 80093AB8 28820080 */  slti       $v0, $a0, 0x80
/* 946BC 80093ABC 1440FFF9 */  bnez       $v0, .L80093AA4
/* 946C0 80093AC0 24630002 */   addiu     $v1, $v1, 0x2
.L80093AC4:
/* 946C4 80093AC4 92430064 */  lbu        $v1, 0x64($s2)
/* 946C8 80093AC8 26310001 */  addiu      $s1, $s1, 0x1
/* 946CC 80093ACC 322200FF */  andi       $v0, $s1, 0xFF
/* 946D0 80093AD0 0043102B */  sltu       $v0, $v0, $v1
/* 946D4 80093AD4 5440FFE4 */  bnel       $v0, $zero, .L80093A68
/* 946D8 80093AD8 02402021 */   addu      $a0, $s2, $zero
.L80093ADC:
/* 946DC 80093ADC 00131200 */  sll        $v0, $s3, 8
/* 946E0 80093AE0 AEA20000 */  sw         $v0, 0x0($s5)
/* 946E4 80093AE4 00001021 */  addu       $v0, $zero, $zero
.L80093AE8:
/* 946E8 80093AE8 8FBF0128 */  lw         $ra, 0x128($sp)
/* 946EC 80093AEC 8FB50124 */  lw         $s5, 0x124($sp)
/* 946F0 80093AF0 8FB40120 */  lw         $s4, 0x120($sp)
/* 946F4 80093AF4 8FB3011C */  lw         $s3, 0x11C($sp)
/* 946F8 80093AF8 8FB20118 */  lw         $s2, 0x118($sp)
/* 946FC 80093AFC 8FB10114 */  lw         $s1, 0x114($sp)
/* 94700 80093B00 8FB00110 */  lw         $s0, 0x110($sp)
/* 94704 80093B04 03E00008 */  jr         $ra
/* 94708 80093B08 27BD0130 */   addiu     $sp, $sp, 0x130
/* 9470C 80093B0C 00000000 */  nop

glabel func_80093B10
/* 94710 80093B10 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 94714 80093B14 AFB20060 */  sw         $s2, 0x60($sp)
/* 94718 80093B18 00809021 */  addu       $s2, $a0, $zero
/* 9471C 80093B1C AFB1005C */  sw         $s1, 0x5C($sp)
/* 94720 80093B20 00A08821 */  addu       $s1, $a1, $zero
/* 94724 80093B24 AFB30064 */  sw         $s3, 0x64($sp)
/* 94728 80093B28 00C09821 */  addu       $s3, $a2, $zero
/* 9472C 80093B2C AFBF0068 */  sw         $ra, 0x68($sp)
/* 94730 80093B30 0C0260E1 */  jal        func_80098384
/* 94734 80093B34 AFB00058 */   sw        $s0, 0x58($sp)
/* 94738 80093B38 02402021 */  addu       $a0, $s2, $zero
/* 9473C 80093B3C 0C026774 */  jal        func_80099DD0
/* 94740 80093B40 02602821 */   addu      $a1, $s3, $zero
/* 94744 80093B44 0C0260FC */  jal        func_800983F0
/* 94748 80093B48 00408021 */   addu      $s0, $v0, $zero
/* 9474C 80093B4C 16000063 */  bnez       $s0, .L80093CDC
/* 94750 80093B50 02001021 */   addu      $v0, $s0, $zero
/* 94754 80093B54 02202021 */  addu       $a0, $s1, $zero
/* 94758 80093B58 00002821 */  addu       $a1, $zero, $zero
/* 9475C 80093B5C AE320004 */  sw         $s2, 0x4($s1)
/* 94760 80093B60 AE330008 */  sw         $s3, 0x8($s1)
/* 94764 80093B64 0C0250F8 */  jal        func_800943E0
/* 94768 80093B68 AE200000 */   sw        $zero, 0x0($s1)
/* 9476C 80093B6C 00408021 */  addu       $s0, $v0, $zero
/* 94770 80093B70 1600005A */  bnez       $s0, .L80093CDC
/* 94774 80093B74 24060001 */   addiu     $a2, $zero, 0x1
/* 94778 80093B78 8E240004 */  lw         $a0, 0x4($s1)
/* 9477C 80093B7C 8E250008 */  lw         $a1, 0x8($s1)
/* 94780 80093B80 0C026640 */  jal        func_80099900
/* 94784 80093B84 27A70010 */   addiu     $a3, $sp, 0x10
/* 94788 80093B88 00408021 */  addu       $s0, $v0, $zero
/* 9478C 80093B8C 16000053 */  bnez       $s0, .L80093CDC
/* 94790 80093B90 27A40010 */   addiu     $a0, $sp, 0x10
/* 94794 80093B94 27A50050 */  addiu      $a1, $sp, 0x50
/* 94798 80093B98 0C0263A9 */  jal        func_80098EA4
/* 9479C 80093B9C 27A60052 */   addiu     $a2, $sp, 0x52
/* 947A0 80093BA0 97A3002C */  lhu        $v1, 0x2C($sp)
/* 947A4 80093BA4 97A20050 */  lhu        $v0, 0x50($sp)
/* 947A8 80093BA8 14620005 */  bne        $v1, $v0, .L80093BC0
/* 947AC 80093BAC 27B20010 */   addiu     $s2, $sp, 0x10
/* 947B0 80093BB0 97A3002E */  lhu        $v1, 0x2E($sp)
/* 947B4 80093BB4 97A20052 */  lhu        $v0, 0x52($sp)
/* 947B8 80093BB8 1062000B */  beq        $v1, $v0, .L80093BE8
/* 947BC 80093BBC 00000000 */   nop
.L80093BC0:
/* 947C0 80093BC0 02202021 */  addu       $a0, $s1, $zero
/* 947C4 80093BC4 0C026475 */  jal        func_800991D4
/* 947C8 80093BC8 02402821 */   addu      $a1, $s2, $zero
/* 947CC 80093BCC 00408021 */  addu       $s0, $v0, $zero
/* 947D0 80093BD0 12000005 */  beqz       $s0, .L80093BE8
/* 947D4 80093BD4 00000000 */   nop
/* 947D8 80093BD8 8E230000 */  lw         $v1, 0x0($s1)
/* 947DC 80093BDC 34630004 */  ori        $v1, $v1, 0x4
/* 947E0 80093BE0 08024F37 */  j          .L80093CDC
/* 947E4 80093BE4 AE230000 */   sw        $v1, 0x0($s1)
.L80093BE8:
/* 947E8 80093BE8 96420018 */  lhu        $v0, 0x18($s2)
/* 947EC 80093BEC 30420001 */  andi       $v0, $v0, 0x1
/* 947F0 80093BF0 14400015 */  bnez       $v0, .L80093C48
/* 947F4 80093BF4 02402021 */   addu      $a0, $s2, $zero
/* 947F8 80093BF8 02202021 */  addu       $a0, $s1, $zero
/* 947FC 80093BFC 02402821 */  addu       $a1, $s2, $zero
/* 94800 80093C00 27B20030 */  addiu      $s2, $sp, 0x30
/* 94804 80093C04 0C0263BA */  jal        func_80098EE8
/* 94808 80093C08 02403021 */   addu      $a2, $s2, $zero
/* 9480C 80093C0C 00408021 */  addu       $s0, $v0, $zero
/* 94810 80093C10 12000007 */  beqz       $s0, .L80093C30
/* 94814 80093C14 2402000A */   addiu     $v0, $zero, 0xA
/* 94818 80093C18 16020030 */  bne        $s0, $v0, .L80093CDC
/* 9481C 80093C1C 02001021 */   addu      $v0, $s0, $zero
/* 94820 80093C20 8E220000 */  lw         $v0, 0x0($s1)
/* 94824 80093C24 34420004 */  ori        $v0, $v0, 0x4
/* 94828 80093C28 08024F36 */  j          .L80093CD8
/* 9482C 80093C2C AE220000 */   sw        $v0, 0x0($s1)
.L80093C30:
/* 94830 80093C30 97A20048 */  lhu        $v0, 0x48($sp)
/* 94834 80093C34 30420001 */  andi       $v0, $v0, 0x1
/* 94838 80093C38 14400003 */  bnez       $v0, .L80093C48
/* 9483C 80093C3C 02402021 */   addu      $a0, $s2, $zero
/* 94840 80093C40 08024F37 */  j          .L80093CDC
/* 94844 80093C44 2402000B */   addiu     $v0, $zero, 0xB
.L80093C48:
/* 94848 80093C48 2625000C */  addiu      $a1, $s1, 0xC
/* 9484C 80093C4C 0C024854 */  jal        func_80092150
/* 94850 80093C50 24060020 */   addiu     $a2, $zero, 0x20
/* 94854 80093C54 8E240004 */  lw         $a0, 0x4($s1)
/* 94858 80093C58 8E250008 */  lw         $a1, 0x8($s1)
/* 9485C 80093C5C 9242001B */  lbu        $v0, 0x1B($s2)
/* 94860 80093C60 24060007 */  addiu      $a2, $zero, 0x7
/* 94864 80093C64 AE22004C */  sw         $v0, 0x4C($s1)
/* 94868 80093C68 9243001A */  lbu        $v1, 0x1A($s2)
/* 9486C 80093C6C 2627002C */  addiu      $a3, $s1, 0x2C
/* 94870 80093C70 24020010 */  addiu      $v0, $zero, 0x10
/* 94874 80093C74 AE220050 */  sw         $v0, 0x50($s1)
/* 94878 80093C78 24020008 */  addiu      $v0, $zero, 0x8
/* 9487C 80093C7C AE220054 */  sw         $v0, 0x54($s1)
/* 94880 80093C80 A2230064 */  sb         $v1, 0x64($s1)
/* 94884 80093C84 92220064 */  lbu        $v0, 0x64($s1)
/* 94888 80093C88 00031840 */  sll        $v1, $v1, 1
/* 9488C 80093C8C 24630003 */  addiu      $v1, $v1, 0x3
/* 94890 80093C90 AE230060 */  sw         $v1, 0x60($s1)
/* 94894 80093C94 92230064 */  lbu        $v1, 0x64($s1)
/* 94898 80093C98 24420001 */  addiu      $v0, $v0, 0x1
/* 9489C 80093C9C 000210C0 */  sll        $v0, $v0, 3
/* 948A0 80093CA0 000318C0 */  sll        $v1, $v1, 3
/* 948A4 80093CA4 AE220058 */  sw         $v0, 0x58($s1)
/* 948A8 80093CA8 00431021 */  addu       $v0, $v0, $v1
/* 948AC 80093CAC 0C026640 */  jal        func_80099900
/* 948B0 80093CB0 AE22005C */   sw        $v0, 0x5C($s1)
/* 948B4 80093CB4 00408021 */  addu       $s0, $v0, $zero
/* 948B8 80093CB8 16000008 */  bnez       $s0, .L80093CDC
/* 948BC 80093CBC 02001021 */   addu      $v0, $s0, $zero
/* 948C0 80093CC0 0C024BCC */  jal        func_80092F30
/* 948C4 80093CC4 02202021 */   addu      $a0, $s1, $zero
/* 948C8 80093CC8 8E230000 */  lw         $v1, 0x0($s1)
/* 948CC 80093CCC 34630001 */  ori        $v1, $v1, 0x1
/* 948D0 80093CD0 08024F37 */  j          .L80093CDC
/* 948D4 80093CD4 AE230000 */   sw        $v1, 0x0($s1)
.L80093CD8:
/* 948D8 80093CD8 02001021 */  addu       $v0, $s0, $zero
.L80093CDC:
/* 948DC 80093CDC 8FBF0068 */  lw         $ra, 0x68($sp)
/* 948E0 80093CE0 8FB30064 */  lw         $s3, 0x64($sp)
/* 948E4 80093CE4 8FB20060 */  lw         $s2, 0x60($sp)
/* 948E8 80093CE8 8FB1005C */  lw         $s1, 0x5C($sp)
/* 948EC 80093CEC 8FB00058 */  lw         $s0, 0x58($sp)
/* 948F0 80093CF0 03E00008 */  jr         $ra
/* 948F4 80093CF4 27BD0070 */   addiu     $sp, $sp, 0x70
/* 948F8 80093CF8 00000000 */  nop
/* 948FC 80093CFC 00000000 */  nop

glabel func_80093D00
/* 94900 80093D00 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 94904 80093D04 AFB1003C */  sw         $s1, 0x3C($sp)
/* 94908 80093D08 00808821 */  addu       $s1, $a0, $zero
/* 9490C 80093D0C AFB40048 */  sw         $s4, 0x48($sp)
/* 94910 80093D10 00A0A021 */  addu       $s4, $a1, $zero
/* 94914 80093D14 AFBF004C */  sw         $ra, 0x4C($sp)
/* 94918 80093D18 AFB30044 */  sw         $s3, 0x44($sp)
/* 9491C 80093D1C AFB20040 */  sw         $s2, 0x40($sp)
/* 94920 80093D20 AFB00038 */  sw         $s0, 0x38($sp)
/* 94924 80093D24 8E220000 */  lw         $v0, 0x0($s1)
/* 94928 80093D28 00C09821 */  addu       $s3, $a2, $zero
/* 9492C 80093D2C 30420001 */  andi       $v0, $v0, 0x1
/* 94930 80093D30 14400003 */  bnez       $v0, .L80093D40
/* 94934 80093D34 00009021 */   addu      $s2, $zero, $zero
/* 94938 80093D38 08024F76 */  j          .L80093DD8
/* 9493C 80093D3C 24020005 */   addiu     $v0, $zero, 0x5
.L80093D40:
/* 94940 80093D40 0C026541 */  jal        func_80099504
/* 94944 80093D44 02202021 */   addu      $a0, $s1, $zero
/* 94948 80093D48 14400023 */  bnez       $v0, .L80093DD8
/* 9494C 80093D4C 00000000 */   nop
/* 94950 80093D50 92220065 */  lbu        $v0, 0x65($s1)
/* 94954 80093D54 10400005 */  beqz       $v0, .L80093D6C
/* 94958 80093D58 02202021 */   addu      $a0, $s1, $zero
/* 9495C 80093D5C 0C0250F8 */  jal        func_800943E0
/* 94960 80093D60 00002821 */   addu      $a1, $zero, $zero
/* 94964 80093D64 1440001C */  bnez       $v0, .L80093DD8
/* 94968 80093D68 00000000 */   nop
.L80093D6C:
/* 9496C 80093D6C 8E220050 */  lw         $v0, 0x50($s1)
/* 94970 80093D70 18400015 */  blez       $v0, .L80093DC8
/* 94974 80093D74 00008021 */   addu      $s0, $zero, $zero
.L80093D78:
/* 94978 80093D78 8E26005C */  lw         $a2, 0x5C($s1)
/* 9497C 80093D7C 8E240004 */  lw         $a0, 0x4($s1)
/* 94980 80093D80 8E250008 */  lw         $a1, 0x8($s1)
/* 94984 80093D84 27A70010 */  addiu      $a3, $sp, 0x10
/* 94988 80093D88 00D03021 */  addu       $a2, $a2, $s0
/* 9498C 80093D8C 0C026640 */  jal        func_80099900
/* 94990 80093D90 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94994 80093D94 14400010 */  bnez       $v0, .L80093DD8
/* 94998 80093D98 00000000 */   nop
/* 9499C 80093D9C 97A20014 */  lhu        $v0, 0x14($sp)
/* 949A0 80093DA0 10400004 */  beqz       $v0, .L80093DB4
/* 949A4 80093DA4 00000000 */   nop
/* 949A8 80093DA8 8FA20010 */  lw         $v0, 0x10($sp)
/* 949AC 80093DAC 0002102B */  sltu       $v0, $zero, $v0
/* 949B0 80093DB0 02429021 */  addu       $s2, $s2, $v0
.L80093DB4:
/* 949B4 80093DB4 8E220050 */  lw         $v0, 0x50($s1)
/* 949B8 80093DB8 26100001 */  addiu      $s0, $s0, 0x1
/* 949BC 80093DBC 0202102A */  slt        $v0, $s0, $v0
/* 949C0 80093DC0 1440FFED */  bnez       $v0, .L80093D78
/* 949C4 80093DC4 00000000 */   nop
.L80093DC8:
/* 949C8 80093DC8 AE720000 */  sw         $s2, 0x0($s3)
/* 949CC 80093DCC 8E230050 */  lw         $v1, 0x50($s1)
/* 949D0 80093DD0 00001021 */  addu       $v0, $zero, $zero
/* 949D4 80093DD4 AE830000 */  sw         $v1, 0x0($s4)
.L80093DD8:
/* 949D8 80093DD8 8FBF004C */  lw         $ra, 0x4C($sp)
/* 949DC 80093DDC 8FB40048 */  lw         $s4, 0x48($sp)
/* 949E0 80093DE0 8FB30044 */  lw         $s3, 0x44($sp)
/* 949E4 80093DE4 8FB20040 */  lw         $s2, 0x40($sp)
/* 949E8 80093DE8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 949EC 80093DEC 8FB00038 */  lw         $s0, 0x38($sp)
/* 949F0 80093DF0 03E00008 */  jr         $ra
/* 949F4 80093DF4 27BD0050 */   addiu     $sp, $sp, 0x50
/* 949F8 80093DF8 00000000 */  nop
/* 949FC 80093DFC 00000000 */  nop

glabel func_80093E00
/* 94A00 80093E00 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 94A04 80093E04 AFB60158 */  sw         $s6, 0x158($sp)
/* 94A08 80093E08 8FB60170 */  lw         $s6, 0x170($sp)
/* 94A0C 80093E0C AFB00140 */  sw         $s0, 0x140($sp)
/* 94A10 80093E10 00808021 */  addu       $s0, $a0, $zero
/* 94A14 80093E14 AFB50154 */  sw         $s5, 0x154($sp)
/* 94A18 80093E18 00A0A821 */  addu       $s5, $a1, $zero
/* 94A1C 80093E1C AFB10144 */  sw         $s1, 0x144($sp)
/* 94A20 80093E20 00E08821 */  addu       $s1, $a3, $zero
/* 94A24 80093E24 AFBF015C */  sw         $ra, 0x15C($sp)
/* 94A28 80093E28 AFB40150 */  sw         $s4, 0x150($sp)
/* 94A2C 80093E2C AFB3014C */  sw         $s3, 0x14C($sp)
/* 94A30 80093E30 AFB20148 */  sw         $s2, 0x148($sp)
/* 94A34 80093E34 8E020050 */  lw         $v0, 0x50($s0)
/* 94A38 80093E38 00151FC2 */  srl        $v1, $s5, 31
/* 94A3C 80093E3C 02A2102A */  slt        $v0, $s5, $v0
/* 94A40 80093E40 38420001 */  xori       $v0, $v0, 0x1
/* 94A44 80093E44 00431025 */  or         $v0, $v0, $v1
/* 94A48 80093E48 1440003F */  bnez       $v0, .L80093F48
/* 94A4C 80093E4C 00C0A021 */   addu      $s4, $a2, $zero
/* 94A50 80093E50 1AC0003D */  blez       $s6, .L80093F48
/* 94A54 80093E54 32C2001F */   andi      $v0, $s6, 0x1F
/* 94A58 80093E58 544000EC */  bnel       $v0, $zero, .L8009420C
/* 94A5C 80093E5C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A60 80093E60 06200039 */  bltz       $s1, .L80093F48
/* 94A64 80093E64 3222001F */   andi      $v0, $s1, 0x1F
/* 94A68 80093E68 144000E8 */  bnez       $v0, .L8009420C
/* 94A6C 80093E6C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A70 80093E70 8E020000 */  lw         $v0, 0x0($s0)
/* 94A74 80093E74 30420001 */  andi       $v0, $v0, 0x1
/* 94A78 80093E78 104000E4 */  beqz       $v0, .L8009420C
/* 94A7C 80093E7C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A80 80093E80 0C026541 */  jal        func_80099504
/* 94A84 80093E84 02002021 */   addu      $a0, $s0, $zero
/* 94A88 80093E88 24030002 */  addiu      $v1, $zero, 0x2
/* 94A8C 80093E8C 104300DF */  beq        $v0, $v1, .L8009420C
/* 94A90 80093E90 24020002 */   addiu     $v0, $zero, 0x2
/* 94A94 80093E94 92020065 */  lbu        $v0, 0x65($s0)
/* 94A98 80093E98 10400006 */  beqz       $v0, .L80093EB4
/* 94A9C 80093E9C 02002021 */   addu      $a0, $s0, $zero
/* 94AA0 80093EA0 0C0250F8 */  jal        func_800943E0
/* 94AA4 80093EA4 00002821 */   addu      $a1, $zero, $zero
/* 94AA8 80093EA8 00401821 */  addu       $v1, $v0, $zero
/* 94AAC 80093EAC 146000D7 */  bnez       $v1, .L8009420C
/* 94AB0 80093EB0 00000000 */   nop
.L80093EB4:
/* 94AB4 80093EB4 8E040004 */  lw         $a0, 0x4($s0)
/* 94AB8 80093EB8 8E06005C */  lw         $a2, 0x5C($s0)
/* 94ABC 80093EBC 8E050008 */  lw         $a1, 0x8($s0)
/* 94AC0 80093EC0 27A70018 */  addiu      $a3, $sp, 0x18
/* 94AC4 80093EC4 00D53021 */  addu       $a2, $a2, $s5
/* 94AC8 80093EC8 0C026640 */  jal        func_80099900
/* 94ACC 80093ECC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94AD0 80093ED0 00401821 */  addu       $v1, $v0, $zero
/* 94AD4 80093ED4 146000CD */  bnez       $v1, .L8009420C
/* 94AD8 80093ED8 00000000 */   nop
/* 94ADC 80093EDC 97A2001C */  lhu        $v0, 0x1C($sp)
/* 94AE0 80093EE0 104000CA */  beqz       $v0, .L8009420C
/* 94AE4 80093EE4 24020005 */   addiu     $v0, $zero, 0x5
/* 94AE8 80093EE8 8FA20018 */  lw         $v0, 0x18($sp)
/* 94AEC 80093EEC 104000C7 */  beqz       $v0, .L8009420C
/* 94AF0 80093EF0 24020005 */   addiu     $v0, $zero, 0x5
/* 94AF4 80093EF4 97A2001E */  lhu        $v0, 0x1E($sp)
/* 94AF8 80093EF8 8E030060 */  lw         $v1, 0x60($s0)
/* 94AFC 80093EFC 0043102A */  slt        $v0, $v0, $v1
/* 94B00 80093F00 1440000D */  bnez       $v0, .L80093F38
/* 94B04 80093F04 00000000 */   nop
/* 94B08 80093F08 93A2001E */  lbu        $v0, 0x1E($sp)
/* 94B0C 80093F0C 92030064 */  lbu        $v1, 0x64($s0)
/* 94B10 80093F10 0043102B */  sltu       $v0, $v0, $v1
/* 94B14 80093F14 10400008 */  beqz       $v0, .L80093F38
/* 94B18 80093F18 00000000 */   nop
/* 94B1C 80093F1C 93A2001F */  lbu        $v0, 0x1F($sp)
/* 94B20 80093F20 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94B24 80093F24 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94B28 80093F28 38420001 */  xori       $v0, $v0, 0x1
/* 94B2C 80093F2C 00621825 */  or         $v1, $v1, $v0
/* 94B30 80093F30 50600007 */  beql       $v1, $zero, .L80093F50
/* 94B34 80093F34 328200FF */   andi      $v0, $s4, 0xFF
.L80093F38:
/* 94B38 80093F38 97A4001E */  lhu        $a0, 0x1E($sp)
/* 94B3C 80093F3C 24030001 */  addiu      $v1, $zero, 0x1
/* 94B40 80093F40 148300B2 */  bne        $a0, $v1, .L8009420C
/* 94B44 80093F44 24020003 */   addiu     $v0, $zero, 0x3
.L80093F48:
/* 94B48 80093F48 08025083 */  j          .L8009420C
/* 94B4C 80093F4C 24020005 */   addiu     $v0, $zero, 0x5
.L80093F50:
/* 94B50 80093F50 14400007 */  bnez       $v0, .L80093F70
/* 94B54 80093F54 240200FF */   addiu     $v0, $zero, 0xFF
/* 94B58 80093F58 93A20020 */  lbu        $v0, 0x20($sp)
/* 94B5C 80093F5C 30420002 */  andi       $v0, $v0, 0x2
/* 94B60 80093F60 14400003 */  bnez       $v0, .L80093F70
/* 94B64 80093F64 240200FF */   addiu     $v0, $zero, 0xFF
/* 94B68 80093F68 08025083 */  j          .L8009420C
/* 94B6C 80093F6C 24020006 */   addiu     $v0, $zero, 0x6
.L80093F70:
/* 94B70 80093F70 02203821 */  addu       $a3, $s1, $zero
/* 94B74 80093F74 04E10002 */  bgez       $a3, .L80093F80
/* 94B78 80093F78 A3A20138 */   sb        $v0, 0x138($sp)
/* 94B7C 80093F7C 24E7001F */  addiu      $a3, $a3, 0x1F
.L80093F80:
/* 94B80 80093F80 97A2001E */  lhu        $v0, 0x1E($sp)
/* 94B84 80093F84 00078943 */  sra        $s1, $a3, 5
/* 94B88 80093F88 A7A2013A */  sh         $v0, 0x13A($sp)
/* 94B8C 80093F8C 2A220008 */  slti       $v0, $s1, 0x8
/* 94B90 80093F90 1440002C */  bnez       $v0, .L80094044
/* 94B94 80093F94 02C01021 */   addu      $v0, $s6, $zero
/* 94B98 80093F98 27B20038 */  addiu      $s2, $sp, 0x38
/* 94B9C 80093F9C 24130001 */  addiu      $s3, $zero, 0x1
.L80093FA0:
/* 94BA0 80093FA0 93A3013A */  lbu        $v1, 0x13A($sp)
/* 94BA4 80093FA4 93A20138 */  lbu        $v0, 0x138($sp)
/* 94BA8 80093FA8 306700FF */  andi       $a3, $v1, 0xFF
/* 94BAC 80093FAC 10E20007 */  beq        $a3, $v0, .L80093FCC
/* 94BB0 80093FB0 02002021 */   addu      $a0, $s0, $zero
/* 94BB4 80093FB4 A3A30138 */  sb         $v1, 0x138($sp)
/* 94BB8 80093FB8 02402821 */  addu       $a1, $s2, $zero
/* 94BBC 80093FBC 0C02656F */  jal        func_800995BC
/* 94BC0 80093FC0 00003021 */   addu      $a2, $zero, $zero
/* 94BC4 80093FC4 1440001A */  bnez       $v0, .L80094030
/* 94BC8 80093FC8 00401821 */   addu      $v1, $v0, $zero
.L80093FCC:
/* 94BCC 80093FCC 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94BD0 80093FD0 00021040 */  sll        $v0, $v0, 1
/* 94BD4 80093FD4 00521021 */  addu       $v0, $v0, $s2
/* 94BD8 80093FD8 94430000 */  lhu        $v1, 0x0($v0)
/* 94BDC 80093FDC A7A3013A */  sh         $v1, 0x13A($sp)
/* 94BE0 80093FE0 8E020060 */  lw         $v0, 0x60($s0)
/* 94BE4 80093FE4 0062182A */  slt        $v1, $v1, $v0
/* 94BE8 80093FE8 1460000D */  bnez       $v1, .L80094020
/* 94BEC 80093FEC 00000000 */   nop
/* 94BF0 80093FF0 93A2013A */  lbu        $v0, 0x13A($sp)
/* 94BF4 80093FF4 92030064 */  lbu        $v1, 0x64($s0)
/* 94BF8 80093FF8 0043102B */  sltu       $v0, $v0, $v1
/* 94BFC 80093FFC 10400008 */  beqz       $v0, .L80094020
/* 94C00 80094000 00000000 */   nop
/* 94C04 80094004 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94C08 80094008 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94C0C 8009400C 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94C10 80094010 38420001 */  xori       $v0, $v0, 0x1
/* 94C14 80094014 00621825 */  or         $v1, $v1, $v0
/* 94C18 80094018 50600005 */  beql       $v1, $zero, .L80094030
/* 94C1C 8009401C 00001821 */   addu      $v1, $zero, $zero
.L80094020:
/* 94C20 80094020 97A2013A */  lhu        $v0, 0x13A($sp)
/* 94C24 80094024 14530002 */  bne        $v0, $s3, .L80094030
/* 94C28 80094028 24030003 */   addiu     $v1, $zero, 0x3
/* 94C2C 8009402C 24030005 */  addiu      $v1, $zero, 0x5
.L80094030:
/* 94C30 80094030 14600075 */  bnez       $v1, .L80094208
/* 94C34 80094034 2631FFF8 */   addiu     $s1, $s1, -0x8
/* 94C38 80094038 2A220008 */  slti       $v0, $s1, 0x8
/* 94C3C 8009403C 1040FFD8 */  beqz       $v0, .L80093FA0
/* 94C40 80094040 02C01021 */   addu      $v0, $s6, $zero
.L80094044:
/* 94C44 80094044 04420001 */  bltzl      $v0, .L8009404C
/* 94C48 80094048 2442001F */   addiu     $v0, $v0, 0x1F
.L8009404C:
/* 94C4C 8009404C 00029943 */  sra        $s3, $v0, 5
/* 94C50 80094050 8FB20174 */  lw         $s2, 0x174($sp)
/* 94C54 80094054 5A60004E */  blezl      $s3, .L80094190
/* 94C58 80094058 328300FF */   andi      $v1, $s4, 0xFF
/* 94C5C 8009405C 24160001 */  addiu      $s6, $zero, 0x1
.L80094060:
/* 94C60 80094060 24020008 */  addiu      $v0, $zero, 0x8
/* 94C64 80094064 16220028 */  bne        $s1, $v0, .L80094108
/* 94C68 80094068 00000000 */   nop
/* 94C6C 8009406C 93A3013A */  lbu        $v1, 0x13A($sp)
/* 94C70 80094070 93A20138 */  lbu        $v0, 0x138($sp)
/* 94C74 80094074 306700FF */  andi       $a3, $v1, 0xFF
/* 94C78 80094078 10E20008 */  beq        $a3, $v0, .L8009409C
/* 94C7C 8009407C 27B10038 */   addiu     $s1, $sp, 0x38
/* 94C80 80094080 A3A30138 */  sb         $v1, 0x138($sp)
/* 94C84 80094084 02002021 */  addu       $a0, $s0, $zero
/* 94C88 80094088 02202821 */  addu       $a1, $s1, $zero
/* 94C8C 8009408C 0C02656F */  jal        func_800995BC
/* 94C90 80094090 00003021 */   addu      $a2, $zero, $zero
/* 94C94 80094094 1440001A */  bnez       $v0, .L80094100
/* 94C98 80094098 00401821 */   addu      $v1, $v0, $zero
.L8009409C:
/* 94C9C 8009409C 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94CA0 800940A0 00021040 */  sll        $v0, $v0, 1
/* 94CA4 800940A4 00511021 */  addu       $v0, $v0, $s1
/* 94CA8 800940A8 94430000 */  lhu        $v1, 0x0($v0)
/* 94CAC 800940AC A7A3013A */  sh         $v1, 0x13A($sp)
/* 94CB0 800940B0 8E020060 */  lw         $v0, 0x60($s0)
/* 94CB4 800940B4 0062182A */  slt        $v1, $v1, $v0
/* 94CB8 800940B8 1460000D */  bnez       $v1, .L800940F0
/* 94CBC 800940BC 00000000 */   nop
/* 94CC0 800940C0 93A2013A */  lbu        $v0, 0x13A($sp)
/* 94CC4 800940C4 92030064 */  lbu        $v1, 0x64($s0)
/* 94CC8 800940C8 0043102B */  sltu       $v0, $v0, $v1
/* 94CCC 800940CC 10400008 */  beqz       $v0, .L800940F0
/* 94CD0 800940D0 00000000 */   nop
/* 94CD4 800940D4 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94CD8 800940D8 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94CDC 800940DC 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94CE0 800940E0 38420001 */  xori       $v0, $v0, 0x1
/* 94CE4 800940E4 00621825 */  or         $v1, $v1, $v0
/* 94CE8 800940E8 50600005 */  beql       $v1, $zero, .L80094100
/* 94CEC 800940EC 00001821 */   addu      $v1, $zero, $zero
.L800940F0:
/* 94CF0 800940F0 97A2013A */  lhu        $v0, 0x13A($sp)
/* 94CF4 800940F4 14560002 */  bne        $v0, $s6, .L80094100
/* 94CF8 800940F8 24030003 */   addiu     $v1, $zero, 0x3
/* 94CFC 800940FC 24030005 */  addiu      $v1, $zero, 0x5
.L80094100:
/* 94D00 80094100 14600041 */  bnez       $v1, .L80094208
/* 94D04 80094104 00008821 */   addu      $s1, $zero, $zero
.L80094108:
/* 94D08 80094108 92020065 */  lbu        $v0, 0x65($s0)
/* 94D0C 8009410C 93A5013A */  lbu        $a1, 0x13A($sp)
/* 94D10 80094110 10450006 */  beq        $v0, $a1, .L8009412C
/* 94D14 80094114 00000000 */   nop
/* 94D18 80094118 0C0250F8 */  jal        func_800943E0
/* 94D1C 8009411C 02002021 */   addu      $a0, $s0, $zero
/* 94D20 80094120 00401821 */  addu       $v1, $v0, $zero
/* 94D24 80094124 14600039 */  bnez       $v1, .L8009420C
/* 94D28 80094128 00601021 */   addu      $v0, $v1, $zero
.L8009412C:
/* 94D2C 8009412C 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94D30 80094130 000210C0 */  sll        $v0, $v0, 3
/* 94D34 80094134 00513021 */  addu       $a2, $v0, $s1
/* 94D38 80094138 328200FF */  andi       $v0, $s4, 0xFF
/* 94D3C 8009413C 54400008 */  bnel       $v0, $zero, .L80094160
/* 94D40 80094140 AFA00010 */   sw        $zero, 0x10($sp)
/* 94D44 80094144 8E040004 */  lw         $a0, 0x4($s0)
/* 94D48 80094148 8E050008 */  lw         $a1, 0x8($s0)
/* 94D4C 8009414C 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 94D50 80094150 0C026640 */  jal        func_80099900
/* 94D54 80094154 02403821 */   addu      $a3, $s2, $zero
/* 94D58 80094158 0802505E */  j          .L80094178
/* 94D5C 8009415C 00401821 */   addu      $v1, $v0, $zero
.L80094160:
/* 94D60 80094160 8E040004 */  lw         $a0, 0x4($s0)
/* 94D64 80094164 8E050008 */  lw         $a1, 0x8($s0)
/* 94D68 80094168 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 94D6C 8009416C 0C0266B8 */  jal        func_80099AE0
/* 94D70 80094170 02403821 */   addu      $a3, $s2, $zero
/* 94D74 80094174 00401821 */  addu       $v1, $v0, $zero
.L80094178:
/* 94D78 80094178 14600023 */  bnez       $v1, .L80094208
/* 94D7C 8009417C 26520020 */   addiu     $s2, $s2, 0x20
/* 94D80 80094180 2673FFFF */  addiu      $s3, $s3, -0x1
/* 94D84 80094184 1E60FFB6 */  bgtz       $s3, .L80094060
/* 94D88 80094188 26310001 */   addiu     $s1, $s1, 0x1
/* 94D8C 8009418C 328300FF */  andi       $v1, $s4, 0xFF
.L80094190:
/* 94D90 80094190 24020001 */  addiu      $v0, $zero, 0x1
/* 94D94 80094194 1462001D */  bne        $v1, $v0, .L8009420C
/* 94D98 80094198 00001021 */   addu      $v0, $zero, $zero
/* 94D9C 8009419C 93A30020 */  lbu        $v1, 0x20($sp)
/* 94DA0 800941A0 30620002 */  andi       $v0, $v1, 0x2
/* 94DA4 800941A4 14400019 */  bnez       $v0, .L8009420C
/* 94DA8 800941A8 00001021 */   addu      $v0, $zero, $zero
/* 94DAC 800941AC 34620002 */  ori        $v0, $v1, 0x2
/* 94DB0 800941B0 A3A20020 */  sb         $v0, 0x20($sp)
/* 94DB4 800941B4 92020065 */  lbu        $v0, 0x65($s0)
/* 94DB8 800941B8 10400006 */  beqz       $v0, .L800941D4
/* 94DBC 800941BC 02002021 */   addu      $a0, $s0, $zero
/* 94DC0 800941C0 0C0250F8 */  jal        func_800943E0
/* 94DC4 800941C4 00002821 */   addu      $a1, $zero, $zero
/* 94DC8 800941C8 00401821 */  addu       $v1, $v0, $zero
/* 94DCC 800941CC 1460000F */  bnez       $v1, .L8009420C
/* 94DD0 800941D0 00000000 */   nop
.L800941D4:
/* 94DD4 800941D4 8E06005C */  lw         $a2, 0x5C($s0)
/* 94DD8 800941D8 AFA00010 */  sw         $zero, 0x10($sp)
/* 94DDC 800941DC 8E040004 */  lw         $a0, 0x4($s0)
/* 94DE0 800941E0 8E050008 */  lw         $a1, 0x8($s0)
/* 94DE4 800941E4 27A70018 */  addiu      $a3, $sp, 0x18
/* 94DE8 800941E8 00D53021 */  addu       $a2, $a2, $s5
/* 94DEC 800941EC 0C0266B8 */  jal        func_80099AE0
/* 94DF0 800941F0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94DF4 800941F4 00401821 */  addu       $v1, $v0, $zero
/* 94DF8 800941F8 50600004 */  beql       $v1, $zero, .L8009420C
/* 94DFC 800941FC 00001021 */   addu      $v0, $zero, $zero
/* 94E00 80094200 08025083 */  j          .L8009420C
/* 94E04 80094204 00000000 */   nop
.L80094208:
/* 94E08 80094208 00601021 */  addu       $v0, $v1, $zero
.L8009420C:
/* 94E0C 8009420C 8FBF015C */  lw         $ra, 0x15C($sp)
/* 94E10 80094210 8FB60158 */  lw         $s6, 0x158($sp)
/* 94E14 80094214 8FB50154 */  lw         $s5, 0x154($sp)
/* 94E18 80094218 8FB40150 */  lw         $s4, 0x150($sp)
/* 94E1C 8009421C 8FB3014C */  lw         $s3, 0x14C($sp)
/* 94E20 80094220 8FB20148 */  lw         $s2, 0x148($sp)
/* 94E24 80094224 8FB10144 */  lw         $s1, 0x144($sp)
/* 94E28 80094228 8FB00140 */  lw         $s0, 0x140($sp)
/* 94E2C 8009422C 03E00008 */  jr         $ra
/* 94E30 80094230 27BD0160 */   addiu     $sp, $sp, 0x160
/* 94E34 80094234 00000000 */  nop
/* 94E38 80094238 00000000 */  nop
/* 94E3C 8009423C 00000000 */  nop

glabel func_80094240
/* 94E40 80094240 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 94E44 80094244 AFB30044 */  sw         $s3, 0x44($sp)
/* 94E48 80094248 8FB30070 */  lw         $s3, 0x70($sp)
/* 94E4C 8009424C AFB1003C */  sw         $s1, 0x3C($sp)
/* 94E50 80094250 00808821 */  addu       $s1, $a0, $zero
/* 94E54 80094254 AFBE0058 */  sw         $fp, 0x58($sp)
/* 94E58 80094258 00C0F021 */  addu       $fp, $a2, $zero
/* 94E5C 8009425C AFB20040 */  sw         $s2, 0x40($sp)
/* 94E60 80094260 00E09021 */  addu       $s2, $a3, $zero
/* 94E64 80094264 AFBF005C */  sw         $ra, 0x5C($sp)
/* 94E68 80094268 AFB70054 */  sw         $s7, 0x54($sp)
/* 94E6C 8009426C AFB60050 */  sw         $s6, 0x50($sp)
/* 94E70 80094270 AFB5004C */  sw         $s5, 0x4C($sp)
/* 94E74 80094274 AFB40048 */  sw         $s4, 0x48($sp)
/* 94E78 80094278 AFB00038 */  sw         $s0, 0x38($sp)
/* 94E7C 8009427C 8E220000 */  lw         $v0, 0x0($s1)
/* 94E80 80094280 8FB40074 */  lw         $s4, 0x74($sp)
/* 94E84 80094284 30420001 */  andi       $v0, $v0, 0x1
/* 94E88 80094288 10400048 */  beqz       $v0, .L800943AC
/* 94E8C 8009428C 00A0B821 */   addu      $s7, $a1, $zero
/* 94E90 80094290 0C026541 */  jal        func_80099504
/* 94E94 80094294 02202021 */   addu      $a0, $s1, $zero
/* 94E98 80094298 00404021 */  addu       $t0, $v0, $zero
/* 94E9C 8009429C 15000044 */  bnez       $t0, .L800943B0
/* 94EA0 800942A0 00000000 */   nop
/* 94EA4 800942A4 8E220050 */  lw         $v0, 0x50($s1)
/* 94EA8 800942A8 1840003E */  blez       $v0, .L800943A4
/* 94EAC 800942AC 00008021 */   addu      $s0, $zero, $zero
/* 94EB0 800942B0 27B60020 */  addiu      $s6, $sp, 0x20
/* 94EB4 800942B4 27B5001C */  addiu      $s5, $sp, 0x1C
.L800942B8:
/* 94EB8 800942B8 8E26005C */  lw         $a2, 0x5C($s1)
/* 94EBC 800942BC 8E240004 */  lw         $a0, 0x4($s1)
/* 94EC0 800942C0 8E250008 */  lw         $a1, 0x8($s1)
/* 94EC4 800942C4 27A70010 */  addiu      $a3, $sp, 0x10
/* 94EC8 800942C8 00D03021 */  addu       $a2, $a2, $s0
/* 94ECC 800942CC 0C026640 */  jal        func_80099900
/* 94ED0 800942D0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94ED4 800942D4 00404021 */  addu       $t0, $v0, $zero
/* 94ED8 800942D8 15000027 */  bnez       $t0, .L80094378
/* 94EDC 800942DC 32E2FFFF */   andi      $v0, $s7, 0xFFFF
/* 94EE0 800942E0 97A30014 */  lhu        $v1, 0x14($sp)
/* 94EE4 800942E4 1462002A */  bne        $v1, $v0, .L80094390
/* 94EE8 800942E8 00000000 */   nop
/* 94EEC 800942EC 8FA20010 */  lw         $v0, 0x10($sp)
/* 94EF0 800942F0 145E0027 */  bne        $v0, $fp, .L80094390
/* 94EF4 800942F4 00000000 */   nop
/* 94EF8 800942F8 1240000C */  beqz       $s2, .L8009432C
/* 94EFC 800942FC 00003821 */   addu      $a3, $zero, $zero
/* 94F00 80094300 00002021 */  addu       $a0, $zero, $zero
/* 94F04 80094304 02403021 */  addu       $a2, $s2, $zero
/* 94F08 80094308 02C02821 */  addu       $a1, $s6, $zero
.L8009430C:
/* 94F0C 8009430C 90A30000 */  lbu        $v1, 0x0($a1)
/* 94F10 80094310 90C20000 */  lbu        $v0, 0x0($a2)
/* 94F14 80094314 1462001C */  bne        $v1, $v0, .L80094388
/* 94F18 80094318 24C60001 */   addiu     $a2, $a2, 0x1
/* 94F1C 8009431C 24840001 */  addiu      $a0, $a0, 0x1
/* 94F20 80094320 28820010 */  slti       $v0, $a0, 0x10
/* 94F24 80094324 1440FFF9 */  bnez       $v0, .L8009430C
/* 94F28 80094328 24A50001 */   addiu     $a1, $a1, 0x1
.L8009432C:
/* 94F2C 8009432C 0013102B */  sltu       $v0, $zero, $s3
/* 94F30 80094330 2CE30001 */  sltiu      $v1, $a3, 0x1
/* 94F34 80094334 00431024 */  and        $v0, $v0, $v1
/* 94F38 80094338 1040000C */  beqz       $v0, .L8009436C
/* 94F3C 8009433C 00000000 */   nop
/* 94F40 80094340 00002021 */  addu       $a0, $zero, $zero
/* 94F44 80094344 02603021 */  addu       $a2, $s3, $zero
/* 94F48 80094348 02A02821 */  addu       $a1, $s5, $zero
.L8009434C:
/* 94F4C 8009434C 90A30000 */  lbu        $v1, 0x0($a1)
/* 94F50 80094350 90C20000 */  lbu        $v0, 0x0($a2)
/* 94F54 80094354 1462000A */  bne        $v1, $v0, .L80094380
/* 94F58 80094358 24C60001 */   addiu     $a2, $a2, 0x1
/* 94F5C 8009435C 24840001 */  addiu      $a0, $a0, 0x1
/* 94F60 80094360 28820004 */  slti       $v0, $a0, 0x4
/* 94F64 80094364 1440FFF9 */  bnez       $v0, .L8009434C
/* 94F68 80094368 24A50001 */   addiu     $a1, $a1, 0x1
.L8009436C:
/* 94F6C 8009436C 14E00008 */  bnez       $a3, .L80094390
/* 94F70 80094370 00000000 */   nop
/* 94F74 80094374 AE900000 */  sw         $s0, 0x0($s4)
.L80094378:
/* 94F78 80094378 080250EC */  j          .L800943B0
/* 94F7C 8009437C 01001021 */   addu      $v0, $t0, $zero
.L80094380:
/* 94F80 80094380 080250DB */  j          .L8009436C
/* 94F84 80094384 24070001 */   addiu     $a3, $zero, 0x1
.L80094388:
/* 94F88 80094388 080250CB */  j          .L8009432C
/* 94F8C 8009438C 24070001 */   addiu     $a3, $zero, 0x1
.L80094390:
/* 94F90 80094390 8E220050 */  lw         $v0, 0x50($s1)
/* 94F94 80094394 26100001 */  addiu      $s0, $s0, 0x1
/* 94F98 80094398 0202102A */  slt        $v0, $s0, $v0
/* 94F9C 8009439C 1440FFC6 */  bnez       $v0, .L800942B8
/* 94FA0 800943A0 00000000 */   nop
.L800943A4:
/* 94FA4 800943A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 94FA8 800943A8 AE820000 */  sw         $v0, 0x0($s4)
.L800943AC:
/* 94FAC 800943AC 24020005 */  addiu      $v0, $zero, 0x5
.L800943B0:
/* 94FB0 800943B0 8FBF005C */  lw         $ra, 0x5C($sp)
/* 94FB4 800943B4 8FBE0058 */  lw         $fp, 0x58($sp)
/* 94FB8 800943B8 8FB70054 */  lw         $s7, 0x54($sp)
/* 94FBC 800943BC 8FB60050 */  lw         $s6, 0x50($sp)
/* 94FC0 800943C0 8FB5004C */  lw         $s5, 0x4C($sp)
/* 94FC4 800943C4 8FB40048 */  lw         $s4, 0x48($sp)
/* 94FC8 800943C8 8FB30044 */  lw         $s3, 0x44($sp)
/* 94FCC 800943CC 8FB20040 */  lw         $s2, 0x40($sp)
/* 94FD0 800943D0 8FB1003C */  lw         $s1, 0x3C($sp)
/* 94FD4 800943D4 8FB00038 */  lw         $s0, 0x38($sp)
/* 94FD8 800943D8 03E00008 */  jr         $ra
/* 94FDC 800943DC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800943E0
/* 94FE0 800943E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 94FE4 800943E4 AFB00038 */  sw         $s0, 0x38($sp)
/* 94FE8 800943E8 00808021 */  addu       $s0, $a0, $zero
/* 94FEC 800943EC AFB1003C */  sw         $s1, 0x3C($sp)
/* 94FF0 800943F0 00A08821 */  addu       $s1, $a1, $zero
/* 94FF4 800943F4 2403001F */  addiu      $v1, $zero, 0x1F
/* 94FF8 800943F8 27A20037 */  addiu      $v0, $sp, 0x37
/* 94FFC 800943FC AFBF0040 */  sw         $ra, 0x40($sp)
.L80094400:
/* 95000 80094400 A0510000 */  sb         $s1, 0x0($v0)
/* 95004 80094404 2463FFFF */  addiu      $v1, $v1, -0x1
/* 95008 80094408 0461FFFD */  bgez       $v1, .L80094400
/* 9500C 8009440C 2442FFFF */   addiu     $v0, $v0, -0x1
/* 95010 80094410 AFA00010 */  sw         $zero, 0x10($sp)
/* 95014 80094414 8E040004 */  lw         $a0, 0x4($s0)
/* 95018 80094418 8E050008 */  lw         $a1, 0x8($s0)
/* 9501C 8009441C 24060400 */  addiu      $a2, $zero, 0x400
/* 95020 80094420 0C0266B8 */  jal        func_80099AE0
/* 95024 80094424 27A70018 */   addiu     $a3, $sp, 0x18
/* 95028 80094428 50400001 */  beql       $v0, $zero, .L80094430
/* 9502C 8009442C A2110065 */   sb        $s1, 0x65($s0)
.L80094430:
/* 95030 80094430 8FBF0040 */  lw         $ra, 0x40($sp)
/* 95034 80094434 8FB1003C */  lw         $s1, 0x3C($sp)
/* 95038 80094438 8FB00038 */  lw         $s0, 0x38($sp)
/* 9503C 8009443C 03E00008 */  jr         $ra
/* 95040 80094440 27BD0048 */   addiu     $sp, $sp, 0x48
/* 95044 80094444 00000000 */  nop
/* 95048 80094448 00000000 */  nop
/* 9504C 8009444C 00000000 */  nop

glabel func_80094450
/* 95050 80094450 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95054 80094454 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 95058 80094458 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 9505C 8009445C AFBF0018 */  sw         $ra, 0x18($sp)
/* 95060 80094460 AFB10014 */  sw         $s1, 0x14($sp)
/* 95064 80094464 AFB00010 */  sw         $s0, 0x10($sp)
/* 95068 80094468 8C420000 */  lw         $v0, 0x0($v0)
/* 9506C 8009446C 00808021 */  addu       $s0, $a0, $zero
/* 95070 80094470 30420003 */  andi       $v0, $v0, 0x3
/* 95074 80094474 10400003 */  beqz       $v0, .L80094484
/* 95078 80094478 00A08821 */   addu      $s1, $a1, $zero
/* 9507C 8009447C 08025138 */  j          .L800944E0
/* 95080 80094480 2402FFFF */   addiu     $v0, $zero, -0x1
.L80094484:
/* 95084 80094484 24020001 */  addiu      $v0, $zero, 0x1
/* 95088 80094488 16020003 */  bne        $s0, $v0, .L80094498
/* 9508C 8009448C 02202021 */   addu      $a0, $s1, $zero
/* 95090 80094490 0C000644 */  jal        func_80001910
/* 95094 80094494 24050040 */   addiu     $a1, $zero, 0x40
.L80094498:
/* 95098 80094498 0C0006C8 */  jal        osVirtualToPhysical
/* 9509C 8009449C 02202021 */   addu      $a0, $s1, $zero
/* 950A0 800944A0 3C03A480 */  lui        $v1, %hi(D_A4800000)
/* 950A4 800944A4 AC620000 */  sw         $v0, %lo(D_A4800000)($v1)
/* 950A8 800944A8 56000003 */  bnel       $s0, $zero, .L800944B8
/* 950AC 800944AC 3C03A480 */   lui       $v1, (0xA4800010 >> 16)
/* 950B0 800944B0 0802512F */  j          .L800944BC
/* 950B4 800944B4 34630004 */   ori       $v1, $v1, (0xA4800004 & 0xFFFF)
.L800944B8:
/* 950B8 800944B8 34630010 */  ori        $v1, $v1, (0xA4800010 & 0xFFFF)
.L800944BC:
/* 950BC 800944BC 3C021FC0 */  lui        $v0, (0x1FC007C0 >> 16)
/* 950C0 800944C0 344207C0 */  ori        $v0, $v0, (0x1FC007C0 & 0xFFFF)
/* 950C4 800944C4 AC620000 */  sw         $v0, 0x0($v1)
/* 950C8 800944C8 16000005 */  bnez       $s0, .L800944E0
/* 950CC 800944CC 00001021 */   addu      $v0, $zero, $zero
/* 950D0 800944D0 02202021 */  addu       $a0, $s1, $zero
/* 950D4 800944D4 0C023FFC */  jal        func_8008FFF0
/* 950D8 800944D8 24050040 */   addiu     $a1, $zero, 0x40
/* 950DC 800944DC 00001021 */  addu       $v0, $zero, $zero
.L800944E0:
/* 950E0 800944E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 950E4 800944E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 950E8 800944E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 950EC 800944EC 03E00008 */  jr         $ra
/* 950F0 800944F0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 950F4 800944F4 00000000 */  nop
/* 950F8 800944F8 00000000 */  nop
/* 950FC 800944FC 00000000 */  nop

glabel func_80094500
/* 95100 80094500 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95104 80094504 AFB40028 */  sw         $s4, 0x28($sp)
/* 95108 80094508 3C14800D */  lui        $s4, %hi(D_800C9DB0)
/* 9510C 8009450C 26949DB0 */  addiu      $s4, $s4, %lo(D_800C9DB0)
/* 95110 80094510 AFBF002C */  sw         $ra, 0x2C($sp)
/* 95114 80094514 AFB30024 */  sw         $s3, 0x24($sp)
/* 95118 80094518 AFB20020 */  sw         $s2, 0x20($sp)
/* 9511C 8009451C AFB1001C */  sw         $s1, 0x1C($sp)
/* 95120 80094520 AFB00018 */  sw         $s0, 0x18($sp)
/* 95124 80094524 8E820000 */  lw         $v0, 0x0($s4)
/* 95128 80094528 14400055 */  bnez       $v0, .L80094680
/* 9512C 8009452C 00808821 */   addu      $s1, $a0, $zero
/* 95130 80094530 0C024058 */  jal        func_80090160
/* 95134 80094534 2412FFFF */   addiu     $s2, $zero, -0x1
/* 95138 80094538 3C13802C */  lui        $s3, %hi(D_802C5760)
/* 9513C 8009453C 26735760 */  addiu      $s3, $s3, %lo(D_802C5760)
/* 95140 80094540 02602021 */  addu       $a0, $s3, $zero
/* 95144 80094544 3C05802C */  lui        $a1, %hi(D_802C5778)
/* 95148 80094548 24A55778 */  addiu      $a1, $a1, %lo(D_802C5778)
/* 9514C 8009454C 3C01800D */  lui        $at, %hi(D_800C9DCC)
/* 95150 80094550 AC209DCC */  sw         $zero, %lo(D_800C9DCC)($at)
/* 95154 80094554 0C0009FC */  jal        func_800027F0
/* 95158 80094558 24060005 */   addiu     $a2, $zero, 0x5
/* 9515C 8009455C 24040007 */  addiu      $a0, $zero, 0x7
/* 95160 80094560 3C06802C */  lui        $a2, %hi(D_802C5790)
/* 95164 80094564 24C65790 */  addiu      $a2, $a2, %lo(D_802C5790)
/* 95168 80094568 2402000D */  addiu      $v0, $zero, 0xD
/* 9516C 8009456C 3C10802C */  lui        $s0, %hi(D_802C57A8)
/* 95170 80094570 261057A8 */  addiu      $s0, $s0, %lo(D_802C57A8)
/* 95174 80094574 A4C20000 */  sh         $v0, 0x0($a2)
/* 95178 80094578 2402000E */  addiu      $v0, $zero, 0xE
/* 9517C 8009457C 3C01802C */  lui        $at, %hi(D_802C5792)
/* 95180 80094580 A0205792 */  sb         $zero, %lo(D_802C5792)($at)
/* 95184 80094584 3C01802C */  lui        $at, %hi(D_802C5794)
/* 95188 80094588 AC205794 */  sw         $zero, %lo(D_802C5794)($at)
/* 9518C 8009458C A6020000 */  sh         $v0, 0x0($s0)
/* 95190 80094590 3C01802C */  lui        $at, %hi(D_802C57AA)
/* 95194 80094594 A02057AA */  sb         $zero, %lo(D_802C57AA)($at)
/* 95198 80094598 3C01802C */  lui        $at, %hi(D_802C57AC)
/* 9519C 8009459C AC2057AC */  sw         $zero, %lo(D_802C57AC)($at)
/* 951A0 800945A0 0C0006B0 */  jal        osSetEventMesg
/* 951A4 800945A4 02602821 */   addu      $a1, $s3, $zero
/* 951A8 800945A8 24040003 */  addiu      $a0, $zero, 0x3
/* 951AC 800945AC 02602821 */  addu       $a1, $s3, $zero
/* 951B0 800945B0 0C0006B0 */  jal        osSetEventMesg
/* 951B4 800945B4 02003021 */   addu      $a2, $s0, $zero
/* 951B8 800945B8 0C000A08 */  jal        func_80002820
/* 951BC 800945BC 00002021 */   addu      $a0, $zero, $zero
/* 951C0 800945C0 00401821 */  addu       $v1, $v0, $zero
/* 951C4 800945C4 0071102A */  slt        $v0, $v1, $s1
/* 951C8 800945C8 10400005 */  beqz       $v0, .L800945E0
/* 951CC 800945CC 00000000 */   nop
/* 951D0 800945D0 00609021 */  addu       $s2, $v1, $zero
/* 951D4 800945D4 00002021 */  addu       $a0, $zero, $zero
/* 951D8 800945D8 0C000220 */  jal        osSetThreadPri
/* 951DC 800945DC 02202821 */   addu      $a1, $s1, $zero
.L800945E0:
/* 951E0 800945E0 0C0005EC */  jal        func_800017B0
/* 951E4 800945E4 00000000 */   nop
/* 951E8 800945E8 3C10802C */  lui        $s0, %hi(D_802C45A8)
/* 951EC 800945EC 261045A8 */  addiu      $s0, $s0, %lo(D_802C45A8)
/* 951F0 800945F0 02002021 */  addu       $a0, $s0, $zero
/* 951F4 800945F4 00002821 */  addu       $a1, $zero, $zero
/* 951F8 800945F8 3C068009 */  lui        $a2, %hi(func_800946A0)
/* 951FC 800945FC 24C646A0 */  addiu      $a2, $a2, %lo(func_800946A0)
/* 95200 80094600 24030001 */  addiu      $v1, $zero, 0x1
/* 95204 80094604 AE830000 */  sw         $v1, 0x0($s4)
/* 95208 80094608 3C03802C */  lui        $v1, %hi(D_802C5760)
/* 9520C 8009460C 24635760 */  addiu      $v1, $v1, %lo(D_802C5760)
/* 95210 80094610 AFB10014 */  sw         $s1, 0x14($sp)
/* 95214 80094614 00408821 */  addu       $s1, $v0, $zero
/* 95218 80094618 02803821 */  addu       $a3, $s4, $zero
/* 9521C 8009461C 3C01800D */  lui        $at, %hi(D_800C9DB4)
/* 95220 80094620 AC309DB4 */  sw         $s0, %lo(D_800C9DB4)($at)
/* 95224 80094624 3C01800D */  lui        $at, %hi(D_800C9DB8)
/* 95228 80094628 AC339DB8 */  sw         $s3, %lo(D_800C9DB8)($at)
/* 9522C 8009462C 3C01800D */  lui        $at, %hi(D_800C9DBC)
/* 95230 80094630 AC339DBC */  sw         $s3, %lo(D_800C9DBC)($at)
/* 95234 80094634 3C01800D */  lui        $at, %hi(D_800C9DC0)
/* 95238 80094638 AC209DC0 */  sw         $zero, %lo(D_800C9DC0)($at)
/* 9523C 8009463C 3C01800D */  lui        $at, %hi(D_800C9DC4)
/* 95240 80094640 AC209DC4 */  sw         $zero, %lo(D_800C9DC4)($at)
/* 95244 80094644 3C01800D */  lui        $at, %hi(D_800C9DC8)
/* 95248 80094648 AC209DC8 */  sw         $zero, %lo(D_800C9DC8)($at)
/* 9524C 8009464C 0C000168 */  jal        osCreateThread
/* 95250 80094650 AFA30010 */   sw        $v1, 0x10($sp)
/* 95254 80094654 0C026084 */  jal        func_80098210
/* 95258 80094658 00000000 */   nop
/* 9525C 8009465C 0C000254 */  jal        osStartThread
/* 95260 80094660 02002021 */   addu      $a0, $s0, $zero
/* 95264 80094664 0C0005F4 */  jal        __osRestoreInt
/* 95268 80094668 02202021 */   addu      $a0, $s1, $zero
/* 9526C 8009466C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 95270 80094670 12420003 */  beq        $s2, $v0, .L80094680
/* 95274 80094674 00002021 */   addu      $a0, $zero, $zero
/* 95278 80094678 0C000220 */  jal        osSetThreadPri
/* 9527C 8009467C 02402821 */   addu      $a1, $s2, $zero
.L80094680:
/* 95280 80094680 8FBF002C */  lw         $ra, 0x2C($sp)
/* 95284 80094684 8FB40028 */  lw         $s4, 0x28($sp)
/* 95288 80094688 8FB30024 */  lw         $s3, 0x24($sp)
/* 9528C 8009468C 8FB20020 */  lw         $s2, 0x20($sp)
/* 95290 80094690 8FB1001C */  lw         $s1, 0x1C($sp)
/* 95294 80094694 8FB00018 */  lw         $s0, 0x18($sp)
/* 95298 80094698 03E00008 */  jr         $ra
/* 9529C 8009469C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800946A0
/* 952A0 800946A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 952A4 800946A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 952A8 800946A8 00808021 */  addu       $s0, $a0, $zero
/* 952AC 800946AC AFBF002C */  sw         $ra, 0x2C($sp)
/* 952B0 800946B0 AFB40028 */  sw         $s4, 0x28($sp)
/* 952B4 800946B4 AFB30024 */  sw         $s3, 0x24($sp)
/* 952B8 800946B8 AFB20020 */  sw         $s2, 0x20($sp)
/* 952BC 800946BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 952C0 800946C0 0C0260C8 */  jal        func_80098320
/* 952C4 800946C4 AFA00010 */   sw        $zero, 0x10($sp)
/* 952C8 800946C8 94420002 */  lhu        $v0, 0x2($v0)
/* 952CC 800946CC 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 952D0 800946D0 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
/* 952D4 800946D4 14400004 */  bnez       $v0, .L800946E8
/* 952D8 800946D8 00008821 */   addu      $s1, $zero, $zero
/* 952DC 800946DC 24020001 */  addiu      $v0, $zero, 0x1
/* 952E0 800946E0 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 952E4 800946E4 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
.L800946E8:
/* 952E8 800946E8 02009021 */  addu       $s2, $s0, $zero
/* 952EC 800946EC 2414000D */  addiu      $s4, $zero, 0xD
/* 952F0 800946F0 2413000E */  addiu      $s3, $zero, 0xE
.L800946F4:
/* 952F4 800946F4 8E44000C */  lw         $a0, 0xC($s2)
/* 952F8 800946F8 27A50010 */  addiu      $a1, $sp, 0x10
/* 952FC 800946FC 0C000B3C */  jal        osRecvMesg
/* 95300 80094700 24060001 */   addiu     $a2, $zero, 0x1
/* 95304 80094704 8FA20010 */  lw         $v0, 0x10($sp)
/* 95308 80094708 94420000 */  lhu        $v0, 0x0($v0)
/* 9530C 8009470C 10540005 */  beq        $v0, $s4, .L80094724
/* 95310 80094710 00000000 */   nop
/* 95314 80094714 1053003C */  beq        $v0, $s3, .L80094808
/* 95318 80094718 00000000 */   nop
/* 9531C 8009471C 080251BD */  j          .L800946F4
/* 95320 80094720 00000000 */   nop
.L80094724:
/* 95324 80094724 0C025210 */  jal        func_80094840
/* 95328 80094728 00000000 */   nop
/* 9532C 8009472C 3C02802C */  lui        $v0, %hi(D_802C45A0)
/* 95330 80094730 944245A0 */  lhu        $v0, %lo(D_802C45A0)($v0)
/* 95334 80094734 2442FFFF */  addiu      $v0, $v0, -0x1
/* 95338 80094738 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 9533C 8009473C A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
/* 95340 80094740 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95344 80094744 1440000C */  bnez       $v0, .L80094778
/* 95348 80094748 00000000 */   nop
/* 9534C 8009474C 0C0260C8 */  jal        func_80098320
/* 95350 80094750 00000000 */   nop
/* 95354 80094754 8C440010 */  lw         $a0, 0x10($v0)
/* 95358 80094758 10800004 */  beqz       $a0, .L8009476C
/* 9535C 8009475C 00408021 */   addu      $s0, $v0, $zero
/* 95360 80094760 8E050014 */  lw         $a1, 0x14($s0)
/* 95364 80094764 0C000B9C */  jal        osSendMesg
/* 95368 80094768 00003021 */   addu      $a2, $zero, $zero
.L8009476C:
/* 9536C 8009476C 96020002 */  lhu        $v0, 0x2($s0)
/* 95370 80094770 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 95374 80094774 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
.L80094778:
/* 95378 80094778 3C02802D */  lui        $v0, %hi(D_802D0BB0)
/* 9537C 8009477C 8C420BB0 */  lw         $v0, %lo(D_802D0BB0)($v0)
/* 95380 80094780 24420001 */  addiu      $v0, $v0, 0x1
/* 95384 80094784 3C01802D */  lui        $at, %hi(D_802D0BB0)
/* 95388 80094788 1220000A */  beqz       $s1, .L800947B4
/* 9538C 8009478C AC220BB0 */   sw        $v0, %lo(D_802D0BB0)($at)
/* 95390 80094790 0C0252D4 */  jal        func_80094B50
/* 95394 80094794 00008821 */   addu      $s1, $zero, $zero
/* 95398 80094798 00408021 */  addu       $s0, $v0, $zero
/* 9539C 8009479C 02001821 */  addu       $v1, $s0, $zero
/* 953A0 800947A0 00001021 */  addu       $v0, $zero, $zero
/* 953A4 800947A4 3C01802D */  lui        $at, %hi(D_802D2FC8)
/* 953A8 800947A8 AC222FC8 */  sw         $v0, %lo(D_802D2FC8)($at)
/* 953AC 800947AC 3C01802D */  lui        $at, %hi(D_802D2FCC)
/* 953B0 800947B0 AC232FCC */  sw         $v1, %lo(D_802D2FCC)($at)
.L800947B4:
/* 953B4 800947B4 3C10802C */  lui        $s0, %hi(D_802C6680)
/* 953B8 800947B8 0C0252D4 */  jal        func_80094B50
/* 953BC 800947BC 8E106680 */   lw        $s0, %lo(D_802C6680)($s0)
/* 953C0 800947C0 3C01802C */  lui        $at, %hi(D_802C6680)
/* 953C4 800947C4 AC226680 */  sw         $v0, %lo(D_802C6680)($at)
/* 953C8 800947C8 00508023 */  subu       $s0, $v0, $s0
/* 953CC 800947CC 3C02802D */  lui        $v0, %hi(D_802D2FC8)
/* 953D0 800947D0 8C422FC8 */  lw         $v0, %lo(D_802D2FC8)($v0)
/* 953D4 800947D4 3C03802D */  lui        $v1, %hi(D_802D2FCC)
/* 953D8 800947D8 8C632FCC */  lw         $v1, %lo(D_802D2FCC)($v1)
/* 953DC 800947DC 02002821 */  addu       $a1, $s0, $zero
/* 953E0 800947E0 00002021 */  addu       $a0, $zero, $zero
/* 953E4 800947E4 00651821 */  addu       $v1, $v1, $a1
/* 953E8 800947E8 0065302B */  sltu       $a2, $v1, $a1
/* 953EC 800947EC 00441021 */  addu       $v0, $v0, $a0
/* 953F0 800947F0 00461021 */  addu       $v0, $v0, $a2
/* 953F4 800947F4 3C01802D */  lui        $at, %hi(D_802D2FC8)
/* 953F8 800947F8 AC222FC8 */  sw         $v0, %lo(D_802D2FC8)($at)
/* 953FC 800947FC 3C01802D */  lui        $at, %hi(D_802D2FCC)
/* 95400 80094800 080251BD */  j          .L800946F4
/* 95404 80094804 AC232FCC */   sw        $v1, %lo(D_802D2FCC)($at)
.L80094808:
/* 95408 80094808 0C02406D */  jal        func_800901B4
/* 9540C 8009480C 00000000 */   nop
/* 95410 80094810 080251BD */  j          .L800946F4
/* 95414 80094814 00000000 */   nop
/* 95418 80094818 8FBF002C */  lw         $ra, 0x2C($sp)
/* 9541C 8009481C 8FB40028 */  lw         $s4, 0x28($sp)
/* 95420 80094820 8FB30024 */  lw         $s3, 0x24($sp)
/* 95424 80094824 8FB20020 */  lw         $s2, 0x20($sp)
/* 95428 80094828 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9542C 8009482C 8FB00018 */  lw         $s0, 0x18($sp)
/* 95430 80094830 03E00008 */  jr         $ra
/* 95434 80094834 27BD0030 */   addiu     $sp, $sp, 0x30
/* 95438 80094838 00000000 */  nop
/* 9543C 8009483C 00000000 */  nop

glabel func_80094840
/* 95440 80094840 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95444 80094844 AFB00010 */  sw         $s0, 0x10($sp)
/* 95448 80094848 3C10800D */  lui        $s0, %hi(D_800CB264)
/* 9544C 8009484C 8E10B264 */  lw         $s0, %lo(D_800CB264)($s0)
/* 95450 80094850 3C02A440 */  lui        $v0, (0xA4400010 >> 16)
/* 95454 80094854 34420010 */  ori        $v0, $v0, (0xA4400010 & 0xFFFF)
/* 95458 80094858 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9545C 8009485C AFB40020 */  sw         $s4, 0x20($sp)
/* 95460 80094860 AFB3001C */  sw         $s3, 0x1C($sp)
/* 95464 80094864 AFB20018 */  sw         $s2, 0x18($sp)
/* 95468 80094868 AFB10014 */  sw         $s1, 0x14($sp)
/* 9546C 8009486C 8C420000 */  lw         $v0, 0x0($v0)
/* 95470 80094870 8E040004 */  lw         $a0, 0x4($s0)
/* 95474 80094874 8E120008 */  lw         $s2, 0x8($s0)
/* 95478 80094878 0C0006C8 */  jal        osVirtualToPhysical
/* 9547C 8009487C 30510001 */   andi      $s1, $v0, 0x1
/* 95480 80094880 00111880 */  sll        $v1, $s1, 2
/* 95484 80094884 00711821 */  addu       $v1, $v1, $s1
/* 95488 80094888 00031880 */  sll        $v1, $v1, 2
/* 9548C 8009488C 02431821 */  addu       $v1, $s2, $v1
/* 95490 80094890 8C640028 */  lw         $a0, 0x28($v1)
/* 95494 80094894 96030000 */  lhu        $v1, 0x0($s0)
/* 95498 80094898 30630002 */  andi       $v1, $v1, 0x2
/* 9549C 8009489C 10600008 */  beqz       $v1, .L800948C0
/* 954A0 800948A0 00443021 */   addu      $a2, $v0, $a0
/* 954A4 800948A4 8E420020 */  lw         $v0, 0x20($s2)
/* 954A8 800948A8 8E030020 */  lw         $v1, 0x20($s0)
/* 954AC 800948AC 2404F000 */  addiu      $a0, $zero, -0x1000
/* 954B0 800948B0 00441024 */  and        $v0, $v0, $a0
/* 954B4 800948B4 00621825 */  or         $v1, $v1, $v0
/* 954B8 800948B8 08025232 */  j          .L800948C8
/* 954BC 800948BC AE030020 */   sw        $v1, 0x20($s0)
.L800948C0:
/* 954C0 800948C0 8E420020 */  lw         $v0, 0x20($s2)
/* 954C4 800948C4 AE020020 */  sw         $v0, 0x20($s0)
.L800948C8:
/* 954C8 800948C8 96020000 */  lhu        $v0, 0x0($s0)
/* 954CC 800948CC 30420004 */  andi       $v0, $v0, 0x4
/* 954D0 800948D0 1040002B */  beqz       $v0, .L80094980
/* 954D4 800948D4 00111080 */   sll       $v0, $s1, 2
/* 954D8 800948D8 00511021 */  addu       $v0, $v0, $s1
/* 954DC 800948DC 00021080 */  sll        $v0, $v0, 2
/* 954E0 800948E0 02421021 */  addu       $v0, $s2, $v0
/* 954E4 800948E4 8C42002C */  lw         $v0, 0x2C($v0)
/* 954E8 800948E8 30420FFF */  andi       $v0, $v0, 0xFFF
/* 954EC 800948EC 44822000 */  mtc1       $v0, $f4
/* 954F0 800948F0 00000000 */  nop
/* 954F4 800948F4 04410004 */  bgez       $v0, .L80094908
/* 954F8 800948F8 46802121 */   cvt.d.w   $f4, $f4
/* 954FC 800948FC 3C01800D */  lui        $at, %hi(D_800D6C30)
/* 95500 80094900 D4206C30 */  ldc1       $f0, %lo(D_800D6C30)($at)
/* 95504 80094904 46202100 */  add.d      $f4, $f4, $f0
.L80094908:
/* 95508 80094908 C6020024 */  lwc1       $f2, 0x24($s0)
/* 9550C 8009490C 46202020 */  cvt.s.d    $f0, $f4
/* 95510 80094910 46001082 */  mul.s      $f2, $f2, $f0
/* 95514 80094914 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 95518 80094918 44810000 */  mtc1       $at, $f0
/* 9551C 8009491C 00000000 */  nop
/* 95520 80094920 4602003E */  c.le.s     $f0, $f2
/* 95524 80094924 00000000 */  nop
/* 95528 80094928 00000000 */  nop
/* 9552C 8009492C 45030006 */  bc1tl      .L80094948
/* 95530 80094930 46001001 */   sub.s     $f0, $f2, $f0
/* 95534 80094934 4600100D */  trunc.w.s  $f0, $f2
/* 95538 80094938 44040000 */  mfc1       $a0, $f0
/* 9553C 8009493C 00000000 */  nop
/* 95540 80094940 08025257 */  j          .L8009495C
/* 95544 80094944 00111080 */   sll       $v0, $s1, 2
.L80094948:
/* 95548 80094948 4600008D */  trunc.w.s  $f2, $f0
/* 9554C 8009494C 44041000 */  mfc1       $a0, $f2
/* 95550 80094950 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 95554 80094954 00822025 */  or         $a0, $a0, $v0
/* 95558 80094958 00111080 */  sll        $v0, $s1, 2
.L8009495C:
/* 9555C 8009495C 00511021 */  addu       $v0, $v0, $s1
/* 95560 80094960 00021080 */  sll        $v0, $v0, 2
/* 95564 80094964 02421021 */  addu       $v0, $s2, $v0
/* 95568 80094968 AE04002C */  sw         $a0, 0x2C($s0)
/* 9556C 8009496C 8C42002C */  lw         $v0, 0x2C($v0)
/* 95570 80094970 2403F000 */  addiu      $v1, $zero, -0x1000
/* 95574 80094974 00431024 */  and        $v0, $v0, $v1
/* 95578 80094978 08025264 */  j          .L80094990
/* 9557C 8009497C 00821025 */   or        $v0, $a0, $v0
.L80094980:
/* 95580 80094980 00511021 */  addu       $v0, $v0, $s1
/* 95584 80094984 00021080 */  sll        $v0, $v0, 2
/* 95588 80094988 02421021 */  addu       $v0, $s2, $v0
/* 9558C 8009498C 8C42002C */  lw         $v0, 0x2C($v0)
.L80094990:
/* 95590 80094990 AE02002C */  sw         $v0, 0x2C($s0)
/* 95594 80094994 8E53001C */  lw         $s3, 0x1C($s2)
/* 95598 80094998 00111080 */  sll        $v0, $s1, 2
/* 9559C 8009499C 00511021 */  addu       $v0, $v0, $s1
/* 955A0 800949A0 00021080 */  sll        $v0, $v0, 2
/* 955A4 800949A4 02428821 */  addu       $s1, $s2, $v0
/* 955A8 800949A8 96040000 */  lhu        $a0, 0x0($s0)
/* 955AC 800949AC 3C05800D */  lui        $a1, %hi(D_800C9DCC)
/* 955B0 800949B0 8CA59DCC */  lw         $a1, %lo(D_800C9DCC)($a1)
/* 955B4 800949B4 8E230030 */  lw         $v1, 0x30($s1)
/* 955B8 800949B8 30820020 */  andi       $v0, $a0, 0x20
/* 955BC 800949BC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 955C0 800949C0 00021023 */  negu       $v0, $v0
/* 955C4 800949C4 02629824 */  and        $s3, $s3, $v0
/* 955C8 800949C8 00051400 */  sll        $v0, $a1, 16
/* 955CC 800949CC 00621823 */  subu       $v1, $v1, $v0
/* 955D0 800949D0 30840040 */  andi       $a0, $a0, 0x40
/* 955D4 800949D4 10800005 */  beqz       $a0, .L800949EC
/* 955D8 800949D8 0065A021 */   addu      $s4, $v1, $a1
/* 955DC 800949DC 8E040004 */  lw         $a0, 0x4($s0)
/* 955E0 800949E0 0C0006C8 */  jal        osVirtualToPhysical
/* 955E4 800949E4 AE00002C */   sw        $zero, 0x2C($s0)
/* 955E8 800949E8 00403021 */  addu       $a2, $v0, $zero
.L800949EC:
/* 955EC 800949EC 96020000 */  lhu        $v0, 0x0($s0)
/* 955F0 800949F0 30420080 */  andi       $v0, $v0, 0x80
/* 955F4 800949F4 10400008 */  beqz       $v0, .L80094A18
/* 955F8 800949F8 3C0303FF */   lui       $v1, (0x3FF0000 >> 16)
/* 955FC 800949FC 96020028 */  lhu        $v0, 0x28($s0)
/* 95600 80094A00 8E040004 */  lw         $a0, 0x4($s0)
/* 95604 80094A04 00021400 */  sll        $v0, $v0, 16
/* 95608 80094A08 00431024 */  and        $v0, $v0, $v1
/* 9560C 80094A0C 0C0006C8 */  jal        osVirtualToPhysical
/* 95610 80094A10 AE02002C */   sw        $v0, 0x2C($s0)
/* 95614 80094A14 00403021 */  addu       $a2, $v0, $zero
.L80094A18:
/* 95618 80094A18 3C02A440 */  lui        $v0, (0xA4400004 >> 16)
/* 9561C 80094A1C 34420004 */  ori        $v0, $v0, (0xA4400004 & 0xFFFF)
/* 95620 80094A20 3C03A440 */  lui        $v1, (0xA4400008 >> 16)
/* 95624 80094A24 34630008 */  ori        $v1, $v1, (0xA4400008 & 0xFFFF)
/* 95628 80094A28 3C04A440 */  lui        $a0, (0xA4400014 >> 16)
/* 9562C 80094A2C 34840014 */  ori        $a0, $a0, (0xA4400014 & 0xFFFF)
/* 95630 80094A30 AC460000 */  sw         $a2, 0x0($v0)
/* 95634 80094A34 8E420008 */  lw         $v0, 0x8($s2)
/* 95638 80094A38 3C05A440 */  lui        $a1, (0xA4400018 >> 16)
/* 9563C 80094A3C 34A50018 */  ori        $a1, $a1, (0xA4400018 & 0xFFFF)
/* 95640 80094A40 AC620000 */  sw         $v0, 0x0($v1)
/* 95644 80094A44 8E42000C */  lw         $v0, 0xC($s2)
/* 95648 80094A48 3C06A440 */  lui        $a2, (0xA4400020 >> 16)
/* 9564C 80094A4C 34C60020 */  ori        $a2, $a2, (0xA4400020 & 0xFFFF)
/* 95650 80094A50 AC820000 */  sw         $v0, 0x0($a0)
/* 95654 80094A54 8E420010 */  lw         $v0, 0x10($s2)
/* 95658 80094A58 3C03A440 */  lui        $v1, (0xA440001C >> 16)
/* 9565C 80094A5C 3463001C */  ori        $v1, $v1, (0xA440001C & 0xFFFF)
/* 95660 80094A60 ACA20000 */  sw         $v0, 0x0($a1)
/* 95664 80094A64 8E420014 */  lw         $v0, 0x14($s2)
/* 95668 80094A68 3C04A440 */  lui        $a0, (0xA4400024 >> 16)
/* 9566C 80094A6C 34840024 */  ori        $a0, $a0, (0xA4400024 & 0xFFFF)
/* 95670 80094A70 AC620000 */  sw         $v0, 0x0($v1)
/* 95674 80094A74 8E420018 */  lw         $v0, 0x18($s2)
/* 95678 80094A78 3C03A440 */  lui        $v1, (0xA4400028 >> 16)
/* 9567C 80094A7C 34630028 */  ori        $v1, $v1, (0xA4400028 & 0xFFFF)
/* 95680 80094A80 ACC20000 */  sw         $v0, 0x0($a2)
/* 95684 80094A84 AC930000 */  sw         $s3, 0x0($a0)
/* 95688 80094A88 AC740000 */  sw         $s4, 0x0($v1)
/* 9568C 80094A8C 8E230034 */  lw         $v1, 0x34($s1)
/* 95690 80094A90 3C02A440 */  lui        $v0, (0xA440002C >> 16)
/* 95694 80094A94 3442002C */  ori        $v0, $v0, (0xA440002C & 0xFFFF)
/* 95698 80094A98 AC430000 */  sw         $v1, 0x0($v0)
/* 9569C 80094A9C 8E230038 */  lw         $v1, 0x38($s1)
/* 956A0 80094AA0 3C02A440 */  lui        $v0, (0xA440000C >> 16)
/* 956A4 80094AA4 3442000C */  ori        $v0, $v0, (0xA440000C & 0xFFFF)
/* 956A8 80094AA8 AC430000 */  sw         $v1, 0x0($v0)
/* 956AC 80094AAC 8E030020 */  lw         $v1, 0x20($s0)
/* 956B0 80094AB0 3C02A440 */  lui        $v0, (0xA4400030 >> 16)
/* 956B4 80094AB4 34420030 */  ori        $v0, $v0, (0xA4400030 & 0xFFFF)
/* 956B8 80094AB8 AC430000 */  sw         $v1, 0x0($v0)
/* 956BC 80094ABC 8E03002C */  lw         $v1, 0x2C($s0)
/* 956C0 80094AC0 3C02A440 */  lui        $v0, (0xA4400034 >> 16)
/* 956C4 80094AC4 34420034 */  ori        $v0, $v0, (0xA4400034 & 0xFFFF)
/* 956C8 80094AC8 AC430000 */  sw         $v1, 0x0($v0)
/* 956CC 80094ACC 8E03000C */  lw         $v1, 0xC($s0)
/* 956D0 80094AD0 3C02800D */  lui        $v0, %hi(D_800CB260)
/* 956D4 80094AD4 8C42B260 */  lw         $v0, %lo(D_800CB260)($v0)
/* 956D8 80094AD8 02003021 */  addu       $a2, $s0, $zero
/* 956DC 80094ADC 24C80030 */  addiu      $t0, $a2, 0x30
/* 956E0 80094AE0 3C01800D */  lui        $at, %hi(D_800CB260)
/* 956E4 80094AE4 AC26B260 */  sw         $a2, %lo(D_800CB260)($at)
/* 956E8 80094AE8 00403821 */  addu       $a3, $v0, $zero
/* 956EC 80094AEC 3C02A440 */  lui        $v0, %hi(D_A4400000)
/* 956F0 80094AF0 3C01800D */  lui        $at, %hi(D_800CB264)
/* 956F4 80094AF4 AC27B264 */  sw         $a3, %lo(D_800CB264)($at)
/* 956F8 80094AF8 AC430000 */  sw         $v1, %lo(D_A4400000)($v0)
.L80094AFC:
/* 956FC 80094AFC 8CC20000 */  lw         $v0, 0x0($a2)
/* 95700 80094B00 8CC30004 */  lw         $v1, 0x4($a2)
/* 95704 80094B04 8CC40008 */  lw         $a0, 0x8($a2)
/* 95708 80094B08 8CC5000C */  lw         $a1, 0xC($a2)
/* 9570C 80094B0C ACE20000 */  sw         $v0, 0x0($a3)
/* 95710 80094B10 ACE30004 */  sw         $v1, 0x4($a3)
/* 95714 80094B14 ACE40008 */  sw         $a0, 0x8($a3)
/* 95718 80094B18 ACE5000C */  sw         $a1, 0xC($a3)
/* 9571C 80094B1C 24C60010 */  addiu      $a2, $a2, 0x10
/* 95720 80094B20 14C8FFF6 */  bne        $a2, $t0, .L80094AFC
/* 95724 80094B24 24E70010 */   addiu     $a3, $a3, 0x10
/* 95728 80094B28 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9572C 80094B2C 8FB40020 */  lw         $s4, 0x20($sp)
/* 95730 80094B30 8FB3001C */  lw         $s3, 0x1C($sp)
/* 95734 80094B34 8FB20018 */  lw         $s2, 0x18($sp)
/* 95738 80094B38 8FB10014 */  lw         $s1, 0x14($sp)
/* 9573C 80094B3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 95740 80094B40 03E00008 */  jr         $ra
/* 95744 80094B44 27BD0028 */   addiu     $sp, $sp, 0x28
/* 95748 80094B48 00000000 */  nop
/* 9574C 80094B4C 00000000 */  nop

# Handwritten function
glabel func_80094B50
/* 95750 80094B50 40024800 */  mfc0       $v0, $9
/* 95754 80094B54 03E00008 */  jr         $ra
/* 95758 80094B58 00000000 */   nop
/* 9575C 80094B5C 00000000 */  nop

# Handwritten function
glabel func_80094B60
/* 95760 80094B60 40845800 */  mtc0       $a0, $11
/* 95764 80094B64 03E00008 */  jr         $ra
/* 95768 80094B68 00000000 */   nop
/* 9576C 80094B6C 00000000 */  nop

glabel func_80094B70
/* 95770 80094B70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95774 80094B74 AFB00010 */  sw         $s0, 0x10($sp)
/* 95778 80094B78 00808021 */  addu       $s0, $a0, $zero
/* 9577C 80094B7C AFB50024 */  sw         $s5, 0x24($sp)
/* 95780 80094B80 00A0A821 */  addu       $s5, $a1, $zero
/* 95784 80094B84 AFB20018 */  sw         $s2, 0x18($sp)
/* 95788 80094B88 00C09021 */  addu       $s2, $a2, $zero
/* 9578C 80094B8C AFBF0028 */  sw         $ra, 0x28($sp)
/* 95790 80094B90 AFB40020 */  sw         $s4, 0x20($sp)
/* 95794 80094B94 AFB3001C */  sw         $s3, 0x1C($sp)
/* 95798 80094B98 0C0005EC */  jal        func_800017B0
/* 9579C 80094B9C AFB10014 */   sw        $s1, 0x14($sp)
/* 957A0 80094BA0 8E030008 */  lw         $v1, 0x8($s0)
/* 957A4 80094BA4 8E040010 */  lw         $a0, 0x10($s0)
/* 957A8 80094BA8 0064182A */  slt        $v1, $v1, $a0
/* 957AC 80094BAC 14600012 */  bnez       $v1, .L80094BF8
/* 957B0 80094BB0 00408821 */   addu      $s1, $v0, $zero
/* 957B4 80094BB4 24140001 */  addiu      $s4, $zero, 0x1
/* 957B8 80094BB8 24130008 */  addiu      $s3, $zero, 0x8
.L80094BBC:
/* 957BC 80094BBC 12540005 */  beq        $s2, $s4, .L80094BD4
/* 957C0 80094BC0 26040004 */   addiu     $a0, $s0, 0x4
/* 957C4 80094BC4 0C0005F4 */  jal        __osRestoreInt
/* 957C8 80094BC8 02202021 */   addu      $a0, $s1, $zero
/* 957CC 80094BCC 08025320 */  j          .L80094C80
/* 957D0 80094BD0 2402FFFF */   addiu     $v0, $zero, -0x1
.L80094BD4:
/* 957D4 80094BD4 3C02800A */  lui        $v0, %hi(D_800A06C0)
/* 957D8 80094BD8 8C4206C0 */  lw         $v0, %lo(D_800A06C0)($v0)
/* 957DC 80094BDC 0C00050D */  jal        func_80001434
/* 957E0 80094BE0 A4530010 */   sh        $s3, 0x10($v0)
/* 957E4 80094BE4 8E020008 */  lw         $v0, 0x8($s0)
/* 957E8 80094BE8 8E030010 */  lw         $v1, 0x10($s0)
/* 957EC 80094BEC 0043102A */  slt        $v0, $v0, $v1
/* 957F0 80094BF0 1040FFF2 */  beqz       $v0, .L80094BBC
/* 957F4 80094BF4 00000000 */   nop
.L80094BF8:
/* 957F8 80094BF8 8E02000C */  lw         $v0, 0xC($s0)
/* 957FC 80094BFC 8E030010 */  lw         $v1, 0x10($s0)
/* 95800 80094C00 00431021 */  addu       $v0, $v0, $v1
/* 95804 80094C04 2442FFFF */  addiu      $v0, $v0, -0x1
/* 95808 80094C08 0043001A */  div        $zero, $v0, $v1
/* 9580C 80094C0C 14600002 */  bnez       $v1, .L80094C18
/* 95810 80094C10 00000000 */   nop
/* 95814 80094C14 0007000D */  break      7
.L80094C18:
/* 95818 80094C18 2401FFFF */  addiu      $at, $zero, -0x1
/* 9581C 80094C1C 14610004 */  bne        $v1, $at, .L80094C30
/* 95820 80094C20 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 95824 80094C24 14410002 */  bne        $v0, $at, .L80094C30
/* 95828 80094C28 00000000 */   nop
/* 9582C 80094C2C 0006000D */  break      6
.L80094C30:
/* 95830 80094C30 00001810 */  mfhi       $v1
/* 95834 80094C34 8E020014 */  lw         $v0, 0x14($s0)
/* 95838 80094C38 AE03000C */  sw         $v1, 0xC($s0)
/* 9583C 80094C3C 00031880 */  sll        $v1, $v1, 2
/* 95840 80094C40 00621821 */  addu       $v1, $v1, $v0
/* 95844 80094C44 AC750000 */  sw         $s5, 0x0($v1)
/* 95848 80094C48 8E020008 */  lw         $v0, 0x8($s0)
/* 9584C 80094C4C 8E030000 */  lw         $v1, 0x0($s0)
/* 95850 80094C50 24420001 */  addiu      $v0, $v0, 0x1
/* 95854 80094C54 AE020008 */  sw         $v0, 0x8($s0)
/* 95858 80094C58 8C620000 */  lw         $v0, 0x0($v1)
/* 9585C 80094C5C 10400005 */  beqz       $v0, .L80094C74
/* 95860 80094C60 00000000 */   nop
/* 95864 80094C64 0C000561 */  jal        __osPopThread
/* 95868 80094C68 02002021 */   addu      $a0, $s0, $zero
/* 9586C 80094C6C 0C000254 */  jal        osStartThread
/* 95870 80094C70 00402021 */   addu      $a0, $v0, $zero
.L80094C74:
/* 95874 80094C74 0C0005F4 */  jal        __osRestoreInt
/* 95878 80094C78 02202021 */   addu      $a0, $s1, $zero
/* 9587C 80094C7C 00001021 */  addu       $v0, $zero, $zero
.L80094C80:
/* 95880 80094C80 8FBF0028 */  lw         $ra, 0x28($sp)
/* 95884 80094C84 8FB50024 */  lw         $s5, 0x24($sp)
/* 95888 80094C88 8FB40020 */  lw         $s4, 0x20($sp)
/* 9588C 80094C8C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 95890 80094C90 8FB20018 */  lw         $s2, 0x18($sp)
/* 95894 80094C94 8FB10014 */  lw         $s1, 0x14($sp)
/* 95898 80094C98 8FB00010 */  lw         $s0, 0x10($sp)
/* 9589C 80094C9C 03E00008 */  jr         $ra
/* 958A0 80094CA0 27BD0030 */   addiu     $sp, $sp, 0x30
/* 958A4 80094CA4 00000000 */  nop
/* 958A8 80094CA8 00000000 */  nop
/* 958AC 80094CAC 00000000 */  nop

glabel func_80094CB0
/* 958B0 80094CB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 958B4 80094CB4 8FA20028 */  lw         $v0, 0x28($sp)
/* 958B8 80094CB8 8FA3002C */  lw         $v1, 0x2C($sp)
/* 958BC 80094CBC AFB00010 */  sw         $s0, 0x10($sp)
/* 958C0 80094CC0 00808021 */  addu       $s0, $a0, $zero
/* 958C4 80094CC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 958C8 80094CC8 AE000000 */  sw         $zero, 0x0($s0)
/* 958CC 80094CCC AE000004 */  sw         $zero, 0x4($s0)
/* 958D0 80094CD0 AE060010 */  sw         $a2, 0x10($s0)
/* 958D4 80094CD4 AE070014 */  sw         $a3, 0x14($s0)
/* 958D8 80094CD8 AE020008 */  sw         $v0, 0x8($s0)
/* 958DC 80094CDC AE03000C */  sw         $v1, 0xC($s0)
/* 958E0 80094CE0 8FA50030 */  lw         $a1, 0x30($sp)
/* 958E4 80094CE4 8FA80034 */  lw         $t0, 0x34($sp)
/* 958E8 80094CE8 14C00006 */  bnez       $a2, .L80094D04
/* 958EC 80094CEC 02002021 */   addu      $a0, $s0, $zero
/* 958F0 80094CF0 54E00005 */  bnel       $a3, $zero, .L80094D08
/* 958F4 80094CF4 AE050018 */   sw        $a1, 0x18($s0)
/* 958F8 80094CF8 AE020010 */  sw         $v0, 0x10($s0)
/* 958FC 80094CFC AE030014 */  sw         $v1, 0x14($s0)
/* 95900 80094D00 02002021 */  addu       $a0, $s0, $zero
.L80094D04:
/* 95904 80094D04 AE050018 */  sw         $a1, 0x18($s0)
.L80094D08:
/* 95908 80094D08 0C0240D4 */  jal        func_80090350
/* 9590C 80094D0C AE08001C */   sw        $t0, 0x1C($s0)
/* 95910 80094D10 3C04800D */  lui        $a0, %hi(D_800C9D70)
/* 95914 80094D14 8C849D70 */  lw         $a0, %lo(D_800C9D70)($a0)
/* 95918 80094D18 8C840000 */  lw         $a0, 0x0($a0)
/* 9591C 80094D1C 54900005 */  bnel       $a0, $s0, .L80094D34
/* 95920 80094D20 00001021 */   addu      $v0, $zero, $zero
/* 95924 80094D24 00402021 */  addu       $a0, $v0, $zero
/* 95928 80094D28 0C0240BC */  jal        func_800902F0
/* 9592C 80094D2C 00602821 */   addu      $a1, $v1, $zero
/* 95930 80094D30 00001021 */  addu       $v0, $zero, $zero
.L80094D34:
/* 95934 80094D34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 95938 80094D38 8FB00010 */  lw         $s0, 0x10($sp)
/* 9593C 80094D3C 03E00008 */  jr         $ra
/* 95940 80094D40 27BD0018 */   addiu     $sp, $sp, 0x18
/* 95944 80094D44 00000000 */  nop
/* 95948 80094D48 00000000 */  nop
/* 9594C 80094D4C 00000000 */  nop

glabel func_80094D50
/* 95950 80094D50 24050007 */  addiu      $a1, $zero, 0x7
/* 95954 80094D54 84830000 */  lh         $v1, 0x0($a0)
/* 95958 80094D58 2486000E */  addiu      $a2, $a0, 0xE
/* 9595C 80094D5C 24020001 */  addiu      $v0, $zero, 0x1
/* 95960 80094D60 AC82002C */  sw         $v0, 0x2C($a0)
/* 95964 80094D64 24024000 */  addiu      $v0, $zero, 0x4000
/* 95968 80094D68 00031843 */  sra        $v1, $v1, 1
/* 9596C 80094D6C 00603821 */  addu       $a3, $v1, $zero
/* 95970 80094D70 00431023 */  subu       $v0, $v0, $v1
/* 95974 80094D74 A4820002 */  sh         $v0, 0x2($a0)
.L80094D78:
/* 95978 80094D78 A4C00008 */  sh         $zero, 0x8($a2)
/* 9597C 80094D7C 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 95980 80094D80 04A1FFFD */  bgez       $a1, .L80094D78
/* 95984 80094D84 24C6FFFE */   addiu     $a2, $a2, -0x2
/* 95988 80094D88 00071400 */  sll        $v0, $a3, 16
/* 9598C 80094D8C 3C01800D */  lui        $at, %hi(D_800D6C50)
/* 95990 80094D90 D4226C50 */  ldc1       $f2, %lo(D_800D6C50)($at)
/* 95994 80094D94 00021403 */  sra        $v0, $v0, 16
/* 95998 80094D98 44820000 */  mtc1       $v0, $f0
/* 9599C 80094D9C 00000000 */  nop
/* 959A0 80094DA0 46800021 */  cvt.d.w    $f0, $f0
/* 959A4 80094DA4 46220103 */  div.d      $f4, $f0, $f2
/* 959A8 80094DA8 24050009 */  addiu      $a1, $zero, 0x9
/* 959AC 80094DAC 24860012 */  addiu      $a2, $a0, 0x12
/* 959B0 80094DB0 A4870018 */  sh         $a3, 0x18($a0)
/* 959B4 80094DB4 46201206 */  mov.d      $f8, $f2
/* 959B8 80094DB8 46202186 */  mov.d      $f6, $f4
.L80094DBC:
/* 959BC 80094DBC 00000000 */  nop
/* 959C0 80094DC0 46262102 */  mul.d      $f4, $f4, $f6
/* 959C4 80094DC4 00000000 */  nop
/* 959C8 80094DC8 46282002 */  mul.d      $f0, $f4, $f8
/* 959CC 80094DCC 24A50001 */  addiu      $a1, $a1, 0x1
/* 959D0 80094DD0 4620008D */  trunc.w.d  $f2, $f0
/* 959D4 80094DD4 44021000 */  mfc1       $v0, $f2
/* 959D8 80094DD8 00000000 */  nop
/* 959DC 80094DDC A4C20008 */  sh         $v0, 0x8($a2)
/* 959E0 80094DE0 28A20010 */  slti       $v0, $a1, 0x10
/* 959E4 80094DE4 1440FFF5 */  bnez       $v0, .L80094DBC
/* 959E8 80094DE8 24C60002 */   addiu     $a2, $a2, 0x2
/* 959EC 80094DEC 03E00008 */  jr         $ra
/* 959F0 80094DF0 00000000 */   nop

glabel func_80094DF4
/* 959F4 80094DF4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 959F8 80094DF8 AFB30024 */  sw         $s3, 0x24($sp)
/* 959FC 80094DFC 00809821 */  addu       $s3, $a0, $zero
/* 95A00 80094E00 AFB60030 */  sw         $s6, 0x30($sp)
/* 95A04 80094E04 00A0B021 */  addu       $s6, $a1, $zero
/* 95A08 80094E08 AFB5002C */  sw         $s5, 0x2C($sp)
/* 95A0C 80094E0C 00C0A821 */  addu       $s5, $a2, $zero
/* 95A10 80094E10 00002821 */  addu       $a1, $zero, $zero
/* 95A14 80094E14 3C068009 */  lui        $a2, %hi(func_800976C0)
/* 95A18 80094E18 24C676C0 */  addiu      $a2, $a2, %lo(func_800976C0)
/* 95A1C 80094E1C AFBF0038 */  sw         $ra, 0x38($sp)
/* 95A20 80094E20 AFB70034 */  sw         $s7, 0x34($sp)
/* 95A24 80094E24 AFB40028 */  sw         $s4, 0x28($sp)
/* 95A28 80094E28 AFB20020 */  sw         $s2, 0x20($sp)
/* 95A2C 80094E2C AFB1001C */  sw         $s1, 0x1C($sp)
/* 95A30 80094E30 AFB00018 */  sw         $s0, 0x18($sp)
/* 95A34 80094E34 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 95A38 80094E38 0C025BB4 */  jal        func_80096ED0
/* 95A3C 80094E3C 24070005 */   addiu     $a3, $zero, 0x5
/* 95A40 80094E40 3C028009 */  lui        $v0, %hi(func_80097310)
/* 95A44 80094E44 24427310 */  addiu      $v0, $v0, %lo(func_80097310)
/* 95A48 80094E48 AE620004 */  sw         $v0, 0x4($s3)
/* 95A4C 80094E4C 3C028009 */  lui        $v0, %hi(func_800976D4)
/* 95A50 80094E50 244276D4 */  addiu      $v0, $v0, %lo(func_800976D4)
/* 95A54 80094E54 AE620028 */  sw         $v0, 0x28($s3)
/* 95A58 80094E58 92C2001C */  lbu        $v0, 0x1C($s6)
/* 95A5C 80094E5C 2443FFFF */  addiu      $v1, $v0, -0x1
/* 95A60 80094E60 2C620006 */  sltiu      $v0, $v1, 0x6
/* 95A64 80094E64 10400017 */  beqz       $v0, .L80094EC4
/* 95A68 80094E68 00031080 */   sll       $v0, $v1, 2
/* 95A6C 80094E6C 3C01800D */  lui        $at, %hi(jtbl_800D6C58_main)
/* 95A70 80094E70 00220821 */  addu       $at, $at, $v0
/* 95A74 80094E74 8C226C58 */  lw         $v0, %lo(jtbl_800D6C58_main)($at)
/* 95A78 80094E78 00400008 */  jr         $v0
/* 95A7C 80094E7C 00000000 */   nop
glabel L80094E80
/* 95A80 80094E80 3C12800D */  lui        $s2, %hi(D_800CAF50)
/* 95A84 80094E84 080253B3 */  j          .L80094ECC
/* 95A88 80094E88 2652AF50 */   addiu     $s2, $s2, %lo(D_800CAF50)
glabel L80094E8C
/* 95A8C 80094E8C 3C12800D */  lui        $s2, %hi(D_800CAFB8)
/* 95A90 80094E90 080253B3 */  j          .L80094ECC
/* 95A94 80094E94 2652AFB8 */   addiu     $s2, $s2, %lo(D_800CAFB8)
glabel L80094E98
/* 95A98 80094E98 3C12800D */  lui        $s2, %hi(D_800CB040)
/* 95A9C 80094E9C 080253B3 */  j          .L80094ECC
/* 95AA0 80094EA0 2652B040 */   addiu     $s2, $s2, %lo(D_800CB040)
glabel L80094EA4
/* 95AA4 80094EA4 3C12800D */  lui        $s2, %hi(D_800CB068)
/* 95AA8 80094EA8 080253B3 */  j          .L80094ECC
/* 95AAC 80094EAC 2652B068 */   addiu     $s2, $s2, %lo(D_800CB068)
glabel L80094EB0
/* 95AB0 80094EB0 3C12800D */  lui        $s2, %hi(D_800CB090)
/* 95AB4 80094EB4 080253B3 */  j          .L80094ECC
/* 95AB8 80094EB8 2652B090 */   addiu     $s2, $s2, %lo(D_800CB090)
glabel L80094EBC
/* 95ABC 80094EBC 080253B3 */  j          .L80094ECC
/* 95AC0 80094EC0 8ED20020 */   lw        $s2, 0x20($s6)
.L80094EC4:
/* 95AC4 80094EC4 3C12800D */  lui        $s2, %hi(D_800CB0B8)
/* 95AC8 80094EC8 2652B0B8 */  addiu      $s2, $s2, %lo(D_800CB0B8)
.L80094ECC:
/* 95ACC 80094ECC 8E420000 */  lw         $v0, 0x0($s2)
/* 95AD0 80094ED0 00002021 */  addu       $a0, $zero, $zero
/* 95AD4 80094ED4 A2620024 */  sb         $v0, 0x24($s3)
/* 95AD8 80094ED8 92670024 */  lbu        $a3, 0x24($s3)
/* 95ADC 80094EDC 8E420004 */  lw         $v0, 0x4($s2)
/* 95AE0 80094EE0 00002821 */  addu       $a1, $zero, $zero
/* 95AE4 80094EE4 02A03021 */  addu       $a2, $s5, $zero
/* 95AE8 80094EE8 AE62001C */  sw         $v0, 0x1C($s3)
/* 95AEC 80094EEC 24020028 */  addiu      $v0, $zero, 0x28
/* 95AF0 80094EF0 0C024154 */  jal        func_80090550
/* 95AF4 80094EF4 AFA20010 */   sw        $v0, 0x10($sp)
/* 95AF8 80094EF8 00002021 */  addu       $a0, $zero, $zero
/* 95AFC 80094EFC AE620020 */  sw         $v0, 0x20($s3)
/* 95B00 80094F00 24020002 */  addiu      $v0, $zero, 0x2
/* 95B04 80094F04 AFA20010 */  sw         $v0, 0x10($sp)
/* 95B08 80094F08 8E67001C */  lw         $a3, 0x1C($s3)
/* 95B0C 80094F0C 00002821 */  addu       $a1, $zero, $zero
/* 95B10 80094F10 0C024154 */  jal        func_80090550
/* 95B14 80094F14 02A03021 */   addu      $a2, $s5, $zero
/* 95B18 80094F18 8E63001C */  lw         $v1, 0x1C($s3)
/* 95B1C 80094F1C 24110002 */  addiu      $s1, $zero, 0x2
/* 95B20 80094F20 00002021 */  addu       $a0, $zero, $zero
/* 95B24 80094F24 AE620014 */  sw         $v0, 0x14($s3)
/* 95B28 80094F28 1060000C */  beqz       $v1, .L80094F5C
/* 95B2C 80094F2C AE620018 */   sw        $v0, 0x18($s3)
.L80094F30:
/* 95B30 80094F30 8E630014 */  lw         $v1, 0x14($s3)
/* 95B34 80094F34 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 95B38 80094F38 00021040 */  sll        $v0, $v0, 1
/* 95B3C 80094F3C 00431021 */  addu       $v0, $v0, $v1
/* 95B40 80094F40 A4400000 */  sh         $zero, 0x0($v0)
/* 95B44 80094F44 8E63001C */  lw         $v1, 0x1C($s3)
/* 95B48 80094F48 24840001 */  addiu      $a0, $a0, 0x1
/* 95B4C 80094F4C 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 95B50 80094F50 0043102B */  sltu       $v0, $v0, $v1
/* 95B54 80094F54 1440FFF6 */  bnez       $v0, .L80094F30
/* 95B58 80094F58 00000000 */   nop
.L80094F5C:
/* 95B5C 80094F5C 92620024 */  lbu        $v0, 0x24($s3)
/* 95B60 80094F60 104000BE */  beqz       $v0, .L8009525C
/* 95B64 80094F64 0000A021 */   addu      $s4, $zero, $zero
/* 95B68 80094F68 24170001 */  addiu      $s7, $zero, 0x1
/* 95B6C 80094F6C 3C01800D */  lui        $at, %hi(D_800D6C70)
/* 95B70 80094F70 D4346C70 */  ldc1       $f20, %lo(D_800D6C70)($at)
/* 95B74 80094F74 3282FFFF */  andi       $v0, $s4, 0xFFFF
.L80094F78:
/* 95B78 80094F78 00021880 */  sll        $v1, $v0, 2
/* 95B7C 80094F7C 00621821 */  addu       $v1, $v1, $v0
/* 95B80 80094F80 8E650020 */  lw         $a1, 0x20($s3)
/* 95B84 80094F84 02202021 */  addu       $a0, $s1, $zero
/* 95B88 80094F88 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 95B8C 80094F8C 00021080 */  sll        $v0, $v0, 2
/* 95B90 80094F90 00521021 */  addu       $v0, $v0, $s2
/* 95B94 80094F94 8C420000 */  lw         $v0, 0x0($v0)
/* 95B98 80094F98 000318C0 */  sll        $v1, $v1, 3
/* 95B9C 80094F9C 00A38021 */  addu       $s0, $a1, $v1
/* 95BA0 80094FA0 24850001 */  addiu      $a1, $a0, 0x1
/* 95BA4 80094FA4 AE020000 */  sw         $v0, 0x0($s0)
/* 95BA8 80094FA8 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 95BAC 80094FAC 00021080 */  sll        $v0, $v0, 2
/* 95BB0 80094FB0 00521021 */  addu       $v0, $v0, $s2
/* 95BB4 80094FB4 8C430000 */  lw         $v1, 0x0($v0)
/* 95BB8 80094FB8 24A20001 */  addiu      $v0, $a1, 0x1
/* 95BBC 80094FBC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95BC0 80094FC0 00021080 */  sll        $v0, $v0, 2
/* 95BC4 80094FC4 00521021 */  addu       $v0, $v0, $s2
/* 95BC8 80094FC8 AE030004 */  sw         $v1, 0x4($s0)
/* 95BCC 80094FCC 8C430000 */  lw         $v1, 0x0($v0)
/* 95BD0 80094FD0 24A20002 */  addiu      $v0, $a1, 0x2
/* 95BD4 80094FD4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95BD8 80094FD8 00021080 */  sll        $v0, $v0, 2
/* 95BDC 80094FDC 00521021 */  addu       $v0, $v0, $s2
/* 95BE0 80094FE0 A603000A */  sh         $v1, 0xA($s0)
/* 95BE4 80094FE4 8C430000 */  lw         $v1, 0x0($v0)
/* 95BE8 80094FE8 24A20003 */  addiu      $v0, $a1, 0x3
/* 95BEC 80094FEC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95BF0 80094FF0 00021080 */  sll        $v0, $v0, 2
/* 95BF4 80094FF4 00521021 */  addu       $v0, $v0, $s2
/* 95BF8 80094FF8 A6030008 */  sh         $v1, 0x8($s0)
/* 95BFC 80094FFC 8C420000 */  lw         $v0, 0x0($v0)
/* 95C00 80095000 24B10004 */  addiu      $s1, $a1, 0x4
/* 95C04 80095004 A602000C */  sh         $v0, 0xC($s0)
/* 95C08 80095008 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* 95C0C 8009500C 00021080 */  sll        $v0, $v0, 2
/* 95C10 80095010 00521021 */  addu       $v0, $v0, $s2
/* 95C14 80095014 8C420000 */  lw         $v0, 0x0($v0)
/* 95C18 80095018 10400042 */  beqz       $v0, .L80095124
/* 95C1C 8009501C 02201021 */   addu      $v0, $s1, $zero
/* 95C20 80095020 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95C24 80095024 00021080 */  sll        $v0, $v0, 2
/* 95C28 80095028 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 95C2C 8009502C 44811000 */  mtc1       $at, $f2
/* 95C30 80095030 00521021 */  addu       $v0, $v0, $s2
/* 95C34 80095034 C4400000 */  lwc1       $f0, 0x0($v0)
/* 95C38 80095038 46800020 */  cvt.s.w    $f0, $f0
/* 95C3C 8009503C 46020003 */  div.s      $f0, $f0, $f2
/* 95C40 80095040 46000021 */  cvt.d.s    $f0, $f0
/* 95C44 80095044 46200000 */  add.d      $f0, $f0, $f0
/* 95C48 80095048 C6C20018 */  lwc1       $f2, 0x18($s6)
/* 95C4C 8009504C 468010A1 */  cvt.d.w    $f2, $f2
/* 95C50 80095050 46220003 */  div.d      $f0, $f0, $f2
/* 95C54 80095054 8E040004 */  lw         $a0, 0x4($s0)
/* 95C58 80095058 8E030000 */  lw         $v1, 0x0($s0)
/* 95C5C 8009505C 24A20005 */  addiu      $v0, $a1, 0x5
/* 95C60 80095060 24B10006 */  addiu      $s1, $a1, 0x6
/* 95C64 80095064 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95C68 80095068 00021080 */  sll        $v0, $v0, 2
/* 95C6C 8009506C 00521021 */  addu       $v0, $v0, $s2
/* 95C70 80095070 00832023 */  subu       $a0, $a0, $v1
/* 95C74 80095074 3C01800D */  lui        $at, %hi(D_800D6C78)
/* 95C78 80095078 D4226C78 */  ldc1       $f2, %lo(D_800D6C78)($at)
/* 95C7C 8009507C 44842000 */  mtc1       $a0, $f4
/* 95C80 80095080 00000000 */  nop
/* 95C84 80095084 46802121 */  cvt.d.w    $f4, $f4
/* 95C88 80095088 46200020 */  cvt.s.d    $f0, $f0
/* 95C8C 8009508C E6000010 */  swc1       $f0, 0x10($s0)
/* 95C90 80095090 C4400000 */  lwc1       $f0, 0x0($v0)
/* 95C94 80095094 46800020 */  cvt.s.w    $f0, $f0
/* 95C98 80095098 46000021 */  cvt.d.s    $f0, $f0
/* 95C9C 8009509C 04810004 */  bgez       $a0, .L800950B0
/* 95CA0 800950A0 46220083 */   div.d     $f2, $f0, $f2
/* 95CA4 800950A4 3C01800D */  lui        $at, %hi(D_800D6C80)
/* 95CA8 800950A8 D4206C80 */  ldc1       $f0, %lo(D_800D6C80)($at)
/* 95CAC 800950AC 46202100 */  add.d      $f4, $f4, $f0
.L800950B0:
/* 95CB0 800950B0 00002021 */  addu       $a0, $zero, $zero
/* 95CB4 800950B4 46241002 */  mul.d      $f0, $f2, $f4
/* 95CB8 800950B8 00002821 */  addu       $a1, $zero, $zero
/* 95CBC 800950BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 95CC0 800950C0 44811000 */  mtc1       $at, $f2
/* 95CC4 800950C4 02A03021 */  addu       $a2, $s5, $zero
/* 95CC8 800950C8 24070001 */  addiu      $a3, $zero, 0x1
/* 95CCC 800950CC 24020034 */  addiu      $v0, $zero, 0x34
/* 95CD0 800950D0 AE000018 */  sw         $zero, 0x18($s0)
/* 95CD4 800950D4 E6020014 */  swc1       $f2, 0x14($s0)
/* 95CD8 800950D8 46200020 */  cvt.s.d    $f0, $f0
/* 95CDC 800950DC E600001C */  swc1       $f0, 0x1C($s0)
/* 95CE0 800950E0 0C024154 */  jal        func_80090550
/* 95CE4 800950E4 AFA20010 */   sw        $v0, 0x10($sp)
/* 95CE8 800950E8 00002021 */  addu       $a0, $zero, $zero
/* 95CEC 800950EC 00002821 */  addu       $a1, $zero, $zero
/* 95CF0 800950F0 02A03021 */  addu       $a2, $s5, $zero
/* 95CF4 800950F4 24070001 */  addiu      $a3, $zero, 0x1
/* 95CF8 800950F8 AE020024 */  sw         $v0, 0x24($s0)
/* 95CFC 800950FC 24020020 */  addiu      $v0, $zero, 0x20
/* 95D00 80095100 0C024154 */  jal        func_80090550
/* 95D04 80095104 AFA20010 */   sw        $v0, 0x10($sp)
/* 95D08 80095108 8E030024 */  lw         $v1, 0x24($s0)
/* 95D0C 8009510C AC620014 */  sw         $v0, 0x14($v1)
/* 95D10 80095110 8E020024 */  lw         $v0, 0x24($s0)
/* 95D14 80095114 AC400020 */  sw         $zero, 0x20($v0)
/* 95D18 80095118 8E020024 */  lw         $v0, 0x24($s0)
/* 95D1C 8009511C 0802544B */  j          .L8009512C
/* 95D20 80095120 AC570024 */   sw        $s7, 0x24($v0)
.L80095124:
/* 95D24 80095124 AE000024 */  sw         $zero, 0x24($s0)
/* 95D28 80095128 24B10006 */  addiu      $s1, $a1, 0x6
.L8009512C:
/* 95D2C 8009512C 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* 95D30 80095130 00021080 */  sll        $v0, $v0, 2
/* 95D34 80095134 00521021 */  addu       $v0, $v0, $s2
/* 95D38 80095138 8C420000 */  lw         $v0, 0x0($v0)
/* 95D3C 8009513C 1040003F */  beqz       $v0, .L8009523C
/* 95D40 80095140 00002021 */   addu      $a0, $zero, $zero
/* 95D44 80095144 00002821 */  addu       $a1, $zero, $zero
/* 95D48 80095148 02A03021 */  addu       $a2, $s5, $zero
/* 95D4C 8009514C 24070001 */  addiu      $a3, $zero, 0x1
/* 95D50 80095150 24020030 */  addiu      $v0, $zero, 0x30
/* 95D54 80095154 0C024154 */  jal        func_80090550
/* 95D58 80095158 AFA20010 */   sw        $v0, 0x10($sp)
/* 95D5C 8009515C 00002021 */  addu       $a0, $zero, $zero
/* 95D60 80095160 00002821 */  addu       $a1, $zero, $zero
/* 95D64 80095164 02A03021 */  addu       $a2, $s5, $zero
/* 95D68 80095168 24070001 */  addiu      $a3, $zero, 0x1
/* 95D6C 8009516C AE020020 */  sw         $v0, 0x20($s0)
/* 95D70 80095170 24020008 */  addiu      $v0, $zero, 0x8
/* 95D74 80095174 0C024154 */  jal        func_80090550
/* 95D78 80095178 AFA20010 */   sw        $v0, 0x10($sp)
/* 95D7C 8009517C 8E030020 */  lw         $v1, 0x20($s0)
/* 95D80 80095180 AC620028 */  sw         $v0, 0x28($v1)
/* 95D84 80095184 8E030020 */  lw         $v1, 0x20($s0)
/* 95D88 80095188 02201021 */  addu       $v0, $s1, $zero
/* 95D8C 8009518C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95D90 80095190 00021080 */  sll        $v0, $v0, 2
/* 95D94 80095194 00521021 */  addu       $v0, $v0, $s2
/* 95D98 80095198 8C420000 */  lw         $v0, 0x0($v0)
/* 95D9C 8009519C A4620000 */  sh         $v0, 0x0($v1)
/* 95DA0 800951A0 8E050020 */  lw         $a1, 0x20($s0)
/* 95DA4 800951A4 24040007 */  addiu      $a0, $zero, 0x7
/* 95DA8 800951A8 26310001 */  addiu      $s1, $s1, 0x1
/* 95DAC 800951AC 84A30000 */  lh         $v1, 0x0($a1)
/* 95DB0 800951B0 24024000 */  addiu      $v0, $zero, 0x4000
/* 95DB4 800951B4 24A6000E */  addiu      $a2, $a1, 0xE
/* 95DB8 800951B8 ACB7002C */  sw         $s7, 0x2C($a1)
/* 95DBC 800951BC 00031843 */  sra        $v1, $v1, 1
/* 95DC0 800951C0 00603821 */  addu       $a3, $v1, $zero
/* 95DC4 800951C4 00431023 */  subu       $v0, $v0, $v1
/* 95DC8 800951C8 A4A20002 */  sh         $v0, 0x2($a1)
.L800951CC:
/* 95DCC 800951CC A4C00008 */  sh         $zero, 0x8($a2)
/* 95DD0 800951D0 2484FFFF */  addiu      $a0, $a0, -0x1
/* 95DD4 800951D4 0481FFFD */  bgez       $a0, .L800951CC
/* 95DD8 800951D8 24C6FFFE */   addiu     $a2, $a2, -0x2
/* 95DDC 800951DC 00071400 */  sll        $v0, $a3, 16
/* 95DE0 800951E0 00021403 */  sra        $v0, $v0, 16
/* 95DE4 800951E4 44820000 */  mtc1       $v0, $f0
/* 95DE8 800951E8 00000000 */  nop
/* 95DEC 800951EC 46800021 */  cvt.d.w    $f0, $f0
/* 95DF0 800951F0 46340103 */  div.d      $f4, $f0, $f20
/* 95DF4 800951F4 A4A70018 */  sh         $a3, 0x18($a1)
/* 95DF8 800951F8 24040009 */  addiu      $a0, $zero, 0x9
/* 95DFC 800951FC 24A50012 */  addiu      $a1, $a1, 0x12
/* 95E00 80095200 46202186 */  mov.d      $f6, $f4
.L80095204:
/* 95E04 80095204 00000000 */  nop
/* 95E08 80095208 46262102 */  mul.d      $f4, $f4, $f6
/* 95E0C 8009520C 00000000 */  nop
/* 95E10 80095210 46342002 */  mul.d      $f0, $f4, $f20
/* 95E14 80095214 24840001 */  addiu      $a0, $a0, 0x1
/* 95E18 80095218 4620008D */  trunc.w.d  $f2, $f0
/* 95E1C 8009521C 44021000 */  mfc1       $v0, $f2
/* 95E20 80095220 00000000 */  nop
/* 95E24 80095224 A4A20008 */  sh         $v0, 0x8($a1)
/* 95E28 80095228 28820010 */  slti       $v0, $a0, 0x10
/* 95E2C 8009522C 1440FFF5 */  bnez       $v0, .L80095204
/* 95E30 80095230 24A50002 */   addiu     $a1, $a1, 0x2
/* 95E34 80095234 08025491 */  j          .L80095244
/* 95E38 80095238 00000000 */   nop
.L8009523C:
/* 95E3C 8009523C AE000020 */  sw         $zero, 0x20($s0)
/* 95E40 80095240 26310001 */  addiu      $s1, $s1, 0x1
.L80095244:
/* 95E44 80095244 92630024 */  lbu        $v1, 0x24($s3)
/* 95E48 80095248 26940001 */  addiu      $s4, $s4, 0x1
/* 95E4C 8009524C 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* 95E50 80095250 0043102B */  sltu       $v0, $v0, $v1
/* 95E54 80095254 1440FF48 */  bnez       $v0, .L80094F78
/* 95E58 80095258 3282FFFF */   andi      $v0, $s4, 0xFFFF
.L8009525C:
/* 95E5C 8009525C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 95E60 80095260 8FB70034 */  lw         $s7, 0x34($sp)
/* 95E64 80095264 8FB60030 */  lw         $s6, 0x30($sp)
/* 95E68 80095268 8FB5002C */  lw         $s5, 0x2C($sp)
/* 95E6C 8009526C 8FB40028 */  lw         $s4, 0x28($sp)
/* 95E70 80095270 8FB30024 */  lw         $s3, 0x24($sp)
/* 95E74 80095274 8FB20020 */  lw         $s2, 0x20($sp)
/* 95E78 80095278 8FB1001C */  lw         $s1, 0x1C($sp)
/* 95E7C 8009527C 8FB00018 */  lw         $s0, 0x18($sp)
/* 95E80 80095280 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 95E84 80095284 03E00008 */  jr         $ra
/* 95E88 80095288 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8009528C
/* 95E8C 8009528C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95E90 80095290 AFB00018 */  sw         $s0, 0x18($sp)
/* 95E94 80095294 00808021 */  addu       $s0, $a0, $zero
/* 95E98 80095298 AFB1001C */  sw         $s1, 0x1C($sp)
/* 95E9C 8009529C 00A08821 */  addu       $s1, $a1, $zero
/* 95EA0 800952A0 3C058009 */  lui        $a1, %hi(func_800961A0)
/* 95EA4 800952A4 24A561A0 */  addiu      $a1, $a1, %lo(func_800961A0)
/* 95EA8 800952A8 3C068009 */  lui        $a2, %hi(func_800966EC)
/* 95EAC 800952AC 24C666EC */  addiu      $a2, $a2, %lo(func_800966EC)
/* 95EB0 800952B0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 95EB4 800952B4 0C025BB4 */  jal        func_80096ED0
/* 95EB8 800952B8 24070004 */   addiu     $a3, $zero, 0x4
/* 95EBC 800952BC 00002021 */  addu       $a0, $zero, $zero
/* 95EC0 800952C0 00002821 */  addu       $a1, $zero, $zero
/* 95EC4 800952C4 02203021 */  addu       $a2, $s1, $zero
/* 95EC8 800952C8 24070001 */  addiu      $a3, $zero, 0x1
/* 95ECC 800952CC 24020050 */  addiu      $v0, $zero, 0x50
/* 95ED0 800952D0 0C024154 */  jal        func_80090550
/* 95ED4 800952D4 AFA20010 */   sw        $v0, 0x10($sp)
/* 95ED8 800952D8 AE020014 */  sw         $v0, 0x14($s0)
/* 95EDC 800952DC 24020001 */  addiu      $v0, $zero, 0x1
/* 95EE0 800952E0 AE020038 */  sw         $v0, 0x38($s0)
/* 95EE4 800952E4 24020001 */  addiu      $v0, $zero, 0x1
/* 95EE8 800952E8 AE000048 */  sw         $zero, 0x48($s0)
/* 95EEC 800952EC A602001A */  sh         $v0, 0x1A($s0)
/* 95EF0 800952F0 A6020028 */  sh         $v0, 0x28($s0)
/* 95EF4 800952F4 A602002E */  sh         $v0, 0x2E($s0)
/* 95EF8 800952F8 A602001C */  sh         $v0, 0x1C($s0)
/* 95EFC 800952FC A602001E */  sh         $v0, 0x1E($s0)
/* 95F00 80095300 A6000020 */  sh         $zero, 0x20($s0)
/* 95F04 80095304 A6000022 */  sh         $zero, 0x22($s0)
/* 95F08 80095308 A6020026 */  sh         $v0, 0x26($s0)
/* 95F0C 8009530C A6000024 */  sh         $zero, 0x24($s0)
/* 95F10 80095310 A6020026 */  sh         $v0, 0x26($s0)
/* 95F14 80095314 A6000024 */  sh         $zero, 0x24($s0)
/* 95F18 80095318 AE000030 */  sw         $zero, 0x30($s0)
/* 95F1C 8009531C AE000034 */  sw         $zero, 0x34($s0)
/* 95F20 80095320 A6000018 */  sh         $zero, 0x18($s0)
/* 95F24 80095324 AE00003C */  sw         $zero, 0x3C($s0)
/* 95F28 80095328 AE000040 */  sw         $zero, 0x40($s0)
/* 95F2C 8009532C AE000044 */  sw         $zero, 0x44($s0)
/* 95F30 80095330 8FBF0020 */  lw         $ra, 0x20($sp)
/* 95F34 80095334 8FB1001C */  lw         $s1, 0x1C($sp)
/* 95F38 80095338 8FB00018 */  lw         $s0, 0x18($sp)
/* 95F3C 8009533C 03E00008 */  jr         $ra
/* 95F40 80095340 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80095344
/* 95F44 80095344 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95F48 80095348 AFB00018 */  sw         $s0, 0x18($sp)
/* 95F4C 8009534C 00808021 */  addu       $s0, $a0, $zero
/* 95F50 80095350 AFB30024 */  sw         $s3, 0x24($sp)
/* 95F54 80095354 00A09821 */  addu       $s3, $a1, $zero
/* 95F58 80095358 AFB20020 */  sw         $s2, 0x20($sp)
/* 95F5C 8009535C 00C09021 */  addu       $s2, $a2, $zero
/* 95F60 80095360 3C058009 */  lui        $a1, %hi(func_80095580)
/* 95F64 80095364 24A55580 */  addiu      $a1, $a1, %lo(func_80095580)
/* 95F68 80095368 3C068009 */  lui        $a2, %hi(func_80095D60)
/* 95F6C 8009536C 24C65D60 */  addiu      $a2, $a2, %lo(func_80095D60)
/* 95F70 80095370 00003821 */  addu       $a3, $zero, $zero
/* 95F74 80095374 AFBF0028 */  sw         $ra, 0x28($sp)
/* 95F78 80095378 0C025BB4 */  jal        func_80096ED0
/* 95F7C 8009537C AFB1001C */   sw        $s1, 0x1C($sp)
/* 95F80 80095380 00002021 */  addu       $a0, $zero, $zero
/* 95F84 80095384 00002821 */  addu       $a1, $zero, $zero
/* 95F88 80095388 02403021 */  addu       $a2, $s2, $zero
/* 95F8C 8009538C 24070001 */  addiu      $a3, $zero, 0x1
/* 95F90 80095390 24110020 */  addiu      $s1, $zero, 0x20
/* 95F94 80095394 0C024154 */  jal        func_80090550
/* 95F98 80095398 AFB10010 */   sw        $s1, 0x10($sp)
/* 95F9C 8009539C 00002021 */  addu       $a0, $zero, $zero
/* 95FA0 800953A0 00002821 */  addu       $a1, $zero, $zero
/* 95FA4 800953A4 02403021 */  addu       $a2, $s2, $zero
/* 95FA8 800953A8 24070001 */  addiu      $a3, $zero, 0x1
/* 95FAC 800953AC AE020014 */  sw         $v0, 0x14($s0)
/* 95FB0 800953B0 0C024154 */  jal        func_80090550
/* 95FB4 800953B4 AFB10010 */   sw        $s1, 0x10($sp)
/* 95FB8 800953B8 26040034 */  addiu      $a0, $s0, 0x34
/* 95FBC 800953BC 0260F809 */  jalr       $s3
/* 95FC0 800953C0 AE020018 */   sw        $v0, 0x18($s0)
/* 95FC4 800953C4 AE020030 */  sw         $v0, 0x30($s0)
/* 95FC8 800953C8 24020001 */  addiu      $v0, $zero, 0x1
/* 95FCC 800953CC AE00003C */  sw         $zero, 0x3C($s0)
/* 95FD0 800953D0 AE020040 */  sw         $v0, 0x40($s0)
/* 95FD4 800953D4 AE000044 */  sw         $zero, 0x44($s0)
/* 95FD8 800953D8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 95FDC 800953DC 8FB30024 */  lw         $s3, 0x24($sp)
/* 95FE0 800953E0 8FB20020 */  lw         $s2, 0x20($sp)
/* 95FE4 800953E4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 95FE8 800953E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 95FEC 800953EC 03E00008 */  jr         $ra
/* 95FF0 800953F0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800953F4
/* 95FF4 800953F4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95FF8 800953F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 95FFC 800953FC 00808021 */  addu       $s0, $a0, $zero
/* 96000 80095400 AFB1001C */  sw         $s1, 0x1C($sp)
/* 96004 80095404 00A08821 */  addu       $s1, $a1, $zero
/* 96008 80095408 3C058009 */  lui        $a1, %hi(func_80097060)
/* 9600C 8009540C 24A57060 */  addiu      $a1, $a1, %lo(func_80097060)
/* 96010 80095410 3C068009 */  lui        $a2, %hi(func_8009724C)
/* 96014 80095414 24C6724C */  addiu      $a2, $a2, %lo(func_8009724C)
/* 96018 80095418 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9601C 8009541C 0C025BB4 */  jal        func_80096ED0
/* 96020 80095420 24070001 */   addiu     $a3, $zero, 0x1
/* 96024 80095424 00002021 */  addu       $a0, $zero, $zero
/* 96028 80095428 00002821 */  addu       $a1, $zero, $zero
/* 9602C 8009542C 02203021 */  addu       $a2, $s1, $zero
/* 96030 80095430 24070001 */  addiu      $a3, $zero, 0x1
/* 96034 80095434 24020020 */  addiu      $v0, $zero, 0x20
/* 96038 80095438 0C024154 */  jal        func_80090550
/* 9603C 8009543C AFA20010 */   sw        $v0, 0x10($sp)
/* 96040 80095440 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 96044 80095444 44810000 */  mtc1       $at, $f0
/* 96048 80095448 AE020014 */  sw         $v0, 0x14($s0)
/* 9604C 8009544C 24020001 */  addiu      $v0, $zero, 0x1
/* 96050 80095450 AE000020 */  sw         $zero, 0x20($s0)
/* 96054 80095454 AE020024 */  sw         $v0, 0x24($s0)
/* 96058 80095458 AE000030 */  sw         $zero, 0x30($s0)
/* 9605C 8009545C AE00001C */  sw         $zero, 0x1C($s0)
/* 96060 80095460 AE000028 */  sw         $zero, 0x28($s0)
/* 96064 80095464 AE00002C */  sw         $zero, 0x2C($s0)
/* 96068 80095468 E6000018 */  swc1       $f0, 0x18($s0)
/* 9606C 8009546C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 96070 80095470 8FB1001C */  lw         $s1, 0x1C($sp)
/* 96074 80095474 8FB00018 */  lw         $s0, 0x18($sp)
/* 96078 80095478 03E00008 */  jr         $ra
/* 9607C 8009547C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80095480
/* 96080 80095480 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96084 80095484 AFB00010 */  sw         $s0, 0x10($sp)
/* 96088 80095488 00808021 */  addu       $s0, $a0, $zero
/* 9608C 8009548C AFB20018 */  sw         $s2, 0x18($sp)
/* 96090 80095490 00A09021 */  addu       $s2, $a1, $zero
/* 96094 80095494 AFB10014 */  sw         $s1, 0x14($sp)
/* 96098 80095498 00C08821 */  addu       $s1, $a2, $zero
/* 9609C 8009549C 3C058009 */  lui        $a1, %hi(func_80096090)
/* 960A0 800954A0 24A56090 */  addiu      $a1, $a1, %lo(func_80096090)
/* 960A4 800954A4 3C068009 */  lui        $a2, %hi(func_8009616C)
/* 960A8 800954A8 24C6616C */  addiu      $a2, $a2, %lo(func_8009616C)
/* 960AC 800954AC AFBF001C */  sw         $ra, 0x1C($sp)
/* 960B0 800954B0 0C025BB4 */  jal        func_80096ED0
/* 960B4 800954B4 24070006 */   addiu     $a3, $zero, 0x6
/* 960B8 800954B8 AE000014 */  sw         $zero, 0x14($s0)
/* 960BC 800954BC AE110018 */  sw         $s1, 0x18($s0)
/* 960C0 800954C0 AE12001C */  sw         $s2, 0x1C($s0)
/* 960C4 800954C4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 960C8 800954C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 960CC 800954CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 960D0 800954D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 960D4 800954D4 03E00008 */  jr         $ra
/* 960D8 800954D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800954DC
/* 960DC 800954DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 960E0 800954E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 960E4 800954E4 00808021 */  addu       $s0, $a0, $zero
/* 960E8 800954E8 AFB20018 */  sw         $s2, 0x18($sp)
/* 960EC 800954EC 00A09021 */  addu       $s2, $a1, $zero
/* 960F0 800954F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 960F4 800954F4 00C08821 */  addu       $s1, $a2, $zero
/* 960F8 800954F8 3C058009 */  lui        $a1, %hi(func_80096EF0)
/* 960FC 800954FC 24A56EF0 */  addiu      $a1, $a1, %lo(func_80096EF0)
/* 96100 80095500 3C068009 */  lui        $a2, %hi(func_80097030)
/* 96104 80095504 24C67030 */  addiu      $a2, $a2, %lo(func_80097030)
/* 96108 80095508 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9610C 8009550C 0C025BB4 */  jal        func_80096ED0
/* 96110 80095510 24070007 */   addiu     $a3, $zero, 0x7
/* 96114 80095514 AE000014 */  sw         $zero, 0x14($s0)
/* 96118 80095518 AE110018 */  sw         $s1, 0x18($s0)
/* 9611C 8009551C AE12001C */  sw         $s2, 0x1C($s0)
/* 96120 80095520 8FBF001C */  lw         $ra, 0x1C($sp)
/* 96124 80095524 8FB20018 */  lw         $s2, 0x18($sp)
/* 96128 80095528 8FB10014 */  lw         $s1, 0x14($sp)
/* 9612C 8009552C 8FB00010 */  lw         $s0, 0x10($sp)
/* 96130 80095530 03E00008 */  jr         $ra
/* 96134 80095534 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80095538
/* 96138 80095538 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9613C 8009553C AFB00010 */  sw         $s0, 0x10($sp)
/* 96140 80095540 00808021 */  addu       $s0, $a0, $zero
/* 96144 80095544 3C058009 */  lui        $a1, %hi(func_80097EF0)
/* 96148 80095548 24A57EF0 */  addiu      $a1, $a1, %lo(func_80097EF0)
/* 9614C 8009554C 3C068009 */  lui        $a2, %hi(func_80097FF0)
/* 96150 80095550 24C67FF0 */  addiu      $a2, $a2, %lo(func_80097FF0)
/* 96154 80095554 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96158 80095558 0C025BB4 */  jal        func_80096ED0
/* 9615C 8009555C 24070003 */   addiu     $a3, $zero, 0x3
/* 96160 80095560 24020001 */  addiu      $v0, $zero, 0x1
/* 96164 80095564 AE000014 */  sw         $zero, 0x14($s0)
/* 96168 80095568 AE020018 */  sw         $v0, 0x18($s0)
/* 9616C 8009556C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96170 80095570 8FB00010 */  lw         $s0, 0x10($sp)
/* 96174 80095574 03E00008 */  jr         $ra
/* 96178 80095578 27BD0018 */   addiu     $sp, $sp, 0x18
/* 9617C 8009557C 00000000 */  nop

glabel func_80095580
/* 96180 80095580 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 96184 80095584 8FA80068 */  lw         $t0, 0x68($sp)
/* 96188 80095588 AFB50044 */  sw         $s5, 0x44($sp)
/* 9618C 8009558C 00A0A821 */  addu       $s5, $a1, $zero
/* 96190 80095590 AFB40040 */  sw         $s4, 0x40($sp)
/* 96194 80095594 00C0A021 */  addu       $s4, $a2, $zero
/* 96198 80095598 AFBE0050 */  sw         $fp, 0x50($sp)
/* 9619C 8009559C 0000F021 */  addu       $fp, $zero, $zero
/* 961A0 800955A0 AFB00030 */  sw         $s0, 0x30($sp)
/* 961A4 800955A4 00808021 */  addu       $s0, $a0, $zero
/* 961A8 800955A8 AFBF0054 */  sw         $ra, 0x54($sp)
/* 961AC 800955AC AFB7004C */  sw         $s7, 0x4C($sp)
/* 961B0 800955B0 AFB60048 */  sw         $s6, 0x48($sp)
/* 961B4 800955B4 AFB3003C */  sw         $s3, 0x3C($sp)
/* 961B8 800955B8 AFB20038 */  sw         $s2, 0x38($sp)
/* 961BC 800955BC AFB10034 */  sw         $s1, 0x34($sp)
/* 961C0 800955C0 128000F3 */  beqz       $s4, .L80095990
/* 961C4 800955C4 01002821 */   addu      $a1, $t0, $zero
/* 961C8 800955C8 8E02002C */  lw         $v0, 0x2C($s0)
/* 961CC 800955CC 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 961D0 800955D0 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 961D4 800955D4 00431024 */  and        $v0, $v0, $v1
/* 961D8 800955D8 3C030B00 */  lui        $v1, (0xB000000 >> 16)
/* 961DC 800955DC 00431025 */  or         $v0, $v0, $v1
/* 961E0 800955E0 ACA20000 */  sw         $v0, 0x0($a1)
/* 961E4 800955E4 8E020028 */  lw         $v0, 0x28($s0)
/* 961E8 800955E8 25080008 */  addiu      $t0, $t0, 0x8
/* 961EC 800955EC 00002021 */  addu       $a0, $zero, $zero
/* 961F0 800955F0 8C420010 */  lw         $v0, 0x10($v0)
/* 961F4 800955F4 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 961F8 800955F8 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 961FC 800955FC 24420008 */  addiu      $v0, $v0, 0x8
/* 96200 80095600 00431024 */  and        $v0, $v0, $v1
/* 96204 80095604 ACA20004 */  sw         $v0, 0x4($a1)
/* 96208 80095608 8E050038 */  lw         $a1, 0x38($s0)
/* 9620C 8009560C 8E030020 */  lw         $v1, 0x20($s0)
/* 96210 80095610 02851021 */  addu       $v0, $s4, $a1
/* 96214 80095614 0062102B */  sltu       $v0, $v1, $v0
/* 96218 80095618 10400003 */  beqz       $v0, .L80095628
/* 9621C 8009561C 0000B821 */   addu      $s7, $zero, $zero
/* 96220 80095620 8E020024 */  lw         $v0, 0x24($s0)
/* 96224 80095624 0002202B */  sltu       $a0, $zero, $v0
.L80095628:
/* 96228 80095628 10800002 */  beqz       $a0, .L80095634
/* 9622C 8009562C 02808821 */   addu      $s1, $s4, $zero
/* 96230 80095630 00658823 */  subu       $s1, $v1, $a1
.L80095634:
/* 96234 80095634 8E03003C */  lw         $v1, 0x3C($s0)
/* 96238 80095638 10600003 */  beqz       $v1, .L80095648
/* 9623C 8009563C 24020010 */   addiu     $v0, $zero, 0x10
/* 96240 80095640 08025593 */  j          .L8009564C
/* 96244 80095644 0043B023 */   subu      $s6, $v0, $v1
.L80095648:
/* 96248 80095648 0000B021 */  addu       $s6, $zero, $zero
.L8009564C:
/* 9624C 8009564C 02363023 */  subu       $a2, $s1, $s6
/* 96250 80095650 00061027 */  nor        $v0, $zero, $a2
/* 96254 80095654 000217C3 */  sra        $v0, $v0, 31
/* 96258 80095658 00C23024 */  and        $a2, $a2, $v0
/* 9625C 8009565C 24C2000F */  addiu      $v0, $a2, 0xF
/* 96260 80095660 00029103 */  sra        $s2, $v0, 4
/* 96264 80095664 001248C0 */  sll        $t1, $s2, 3
/* 96268 80095668 10800072 */  beqz       $a0, .L80095834
/* 9626C 8009566C 01323821 */   addu      $a3, $t1, $s2
/* 96270 80095670 86A20000 */  lh         $v0, 0x0($s5)
/* 96274 80095674 AFA00014 */  sw         $zero, 0x14($sp)
/* 96278 80095678 AFA20010 */  sw         $v0, 0x10($sp)
/* 9627C 8009567C 8E020040 */  lw         $v0, 0x40($s0)
/* 96280 80095680 01002021 */  addu       $a0, $t0, $zero
/* 96284 80095684 02002821 */  addu       $a1, $s0, $zero
/* 96288 80095688 0C0257C3 */  jal        func_80095F0C
/* 9628C 8009568C AFA20018 */   sw        $v0, 0x18($sp)
/* 96290 80095690 8E03003C */  lw         $v1, 0x3C($s0)
/* 96294 80095694 10600005 */  beqz       $v1, .L800956AC
/* 96298 80095698 00404021 */   addu      $t0, $v0, $zero
/* 9629C 8009569C 96A20000 */  lhu        $v0, 0x0($s5)
/* 962A0 800956A0 00031840 */  sll        $v1, $v1, 1
/* 962A4 800956A4 080255AD */  j          .L800956B4
/* 962A8 800956A8 00431021 */   addu      $v0, $v0, $v1
.L800956AC:
/* 962AC 800956AC 96A20000 */  lhu        $v0, 0x0($s5)
/* 962B0 800956B0 24420020 */  addiu      $v0, $v0, 0x20
.L800956B4:
/* 962B4 800956B4 A6A20000 */  sh         $v0, 0x0($s5)
/* 962B8 800956B8 8E02001C */  lw         $v0, 0x1C($s0)
/* 962BC 800956BC 8E05001C */  lw         $a1, 0x1C($s0)
/* 962C0 800956C0 8E03001C */  lw         $v1, 0x1C($s0)
/* 962C4 800956C4 3042000F */  andi       $v0, $v0, 0xF
/* 962C8 800956C8 AE02003C */  sw         $v0, 0x3C($s0)
/* 962CC 800956CC 8E020028 */  lw         $v0, 0x28($s0)
/* 962D0 800956D0 00031902 */  srl        $v1, $v1, 4
/* 962D4 800956D4 24630001 */  addiu      $v1, $v1, 0x1
/* 962D8 800956D8 8C440000 */  lw         $a0, 0x0($v0)
/* 962DC 800956DC 000310C0 */  sll        $v0, $v1, 3
/* 962E0 800956E0 00431021 */  addu       $v0, $v0, $v1
/* 962E4 800956E4 AE050038 */  sw         $a1, 0x38($s0)
/* 962E8 800956E8 00822021 */  addu       $a0, $a0, $v0
/* 962EC 800956EC AE040044 */  sw         $a0, 0x44($s0)
/* 962F0 800956F0 86B30000 */  lh         $s3, 0x0($s5)
/* 962F4 800956F4 0234102A */  slt        $v0, $s1, $s4
/* 962F8 800956F8 10400040 */  beqz       $v0, .L800957FC
/* 962FC 800956FC 00171400 */   sll       $v0, $s7, 16
/* 96300 80095700 0002B403 */  sra        $s6, $v0, 16
.L80095704:
/* 96304 80095704 26430001 */  addiu      $v1, $s2, 0x1
/* 96308 80095708 00031940 */  sll        $v1, $v1, 5
/* 9630C 8009570C 02631821 */  addu       $v1, $s3, $v1
/* 96310 80095710 00111040 */  sll        $v0, $s1, 1
/* 96314 80095714 02629821 */  addu       $s3, $s3, $v0
/* 96318 80095718 8E040024 */  lw         $a0, 0x24($s0)
/* 9631C 8009571C 2402FFE0 */  addiu      $v0, $zero, -0x20
/* 96320 80095720 0062A824 */  and        $s5, $v1, $v0
/* 96324 80095724 00041027 */  nor        $v0, $zero, $a0
/* 96328 80095728 0002102B */  sltu       $v0, $zero, $v0
/* 9632C 8009572C 0004182B */  sltu       $v1, $zero, $a0
/* 96330 80095730 00431024 */  and        $v0, $v0, $v1
/* 96334 80095734 10400003 */  beqz       $v0, .L80095744
/* 96338 80095738 0291A023 */   subu      $s4, $s4, $s1
/* 9633C 8009573C 2482FFFF */  addiu      $v0, $a0, -0x1
/* 96340 80095740 AE020024 */  sw         $v0, 0x24($s0)
.L80095744:
/* 96344 80095744 8E030020 */  lw         $v1, 0x20($s0)
/* 96348 80095748 8E02001C */  lw         $v0, 0x1C($s0)
/* 9634C 8009574C 00621823 */  subu       $v1, $v1, $v0
/* 96350 80095750 0283102B */  sltu       $v0, $s4, $v1
/* 96354 80095754 14400002 */  bnez       $v0, .L80095760
/* 96358 80095758 02808821 */   addu      $s1, $s4, $zero
/* 9635C 8009575C 00608821 */  addu       $s1, $v1, $zero
.L80095760:
/* 96360 80095760 01002021 */  addu       $a0, $t0, $zero
/* 96364 80095764 02002821 */  addu       $a1, $s0, $zero
/* 96368 80095768 8E03003C */  lw         $v1, 0x3C($s0)
/* 9636C 8009576C 00151400 */  sll        $v0, $s5, 16
/* 96370 80095770 00021403 */  sra        $v0, $v0, 16
/* 96374 80095774 AFA20010 */  sw         $v0, 0x10($sp)
/* 96378 80095778 AFB60014 */  sw         $s6, 0x14($sp)
/* 9637C 8009577C 2463FFF0 */  addiu      $v1, $v1, -0x10
/* 96380 80095780 02233021 */  addu       $a2, $s1, $v1
/* 96384 80095784 00061027 */  nor        $v0, $zero, $a2
/* 96388 80095788 000217C3 */  sra        $v0, $v0, 31
/* 9638C 8009578C 00C23024 */  and        $a2, $a2, $v0
/* 96390 80095790 24C2000F */  addiu      $v0, $a2, 0xF
/* 96394 80095794 00029103 */  sra        $s2, $v0, 4
/* 96398 80095798 8E020040 */  lw         $v0, 0x40($s0)
/* 9639C 8009579C 001238C0 */  sll        $a3, $s2, 3
/* 963A0 800957A0 00F23821 */  addu       $a3, $a3, $s2
/* 963A4 800957A4 34420002 */  ori        $v0, $v0, 0x2
/* 963A8 800957A8 0C0257C3 */  jal        func_80095F0C
/* 963AC 800957AC AFA20018 */   sw        $v0, 0x18($sp)
/* 963B0 800957B0 00404021 */  addu       $t0, $v0, $zero
/* 963B4 800957B4 01002821 */  addu       $a1, $t0, $zero
/* 963B8 800957B8 25080008 */  addiu      $t0, $t0, 0x8
/* 963BC 800957BC 3C0600FF */  lui        $a2, (0xFFFFFF >> 16)
/* 963C0 800957C0 34C6FFFF */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
/* 963C4 800957C4 8E03003C */  lw         $v1, 0x3C($s0)
/* 963C8 800957C8 00132400 */  sll        $a0, $s3, 16
/* 963CC 800957CC 00111040 */  sll        $v0, $s1, 1
/* 963D0 800957D0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 963D4 800957D4 00822025 */  or         $a0, $a0, $v0
/* 963D8 800957D8 3C020A00 */  lui        $v0, (0xA000000 >> 16)
/* 963DC 800957DC ACA40004 */  sw         $a0, 0x4($a1)
/* 963E0 800957E0 00031840 */  sll        $v1, $v1, 1
/* 963E4 800957E4 02A31821 */  addu       $v1, $s5, $v1
/* 963E8 800957E8 00661824 */  and        $v1, $v1, $a2
/* 963EC 800957EC 00621825 */  or         $v1, $v1, $v0
/* 963F0 800957F0 0234102A */  slt        $v0, $s1, $s4
/* 963F4 800957F4 1440FFC3 */  bnez       $v0, .L80095704
/* 963F8 800957F8 ACA30000 */   sw        $v1, 0x0($a1)
.L800957FC:
/* 963FC 800957FC 8E040038 */  lw         $a0, 0x38($s0)
/* 96400 80095800 8E03003C */  lw         $v1, 0x3C($s0)
/* 96404 80095804 01001021 */  addu       $v0, $t0, $zero
/* 96408 80095808 00942021 */  addu       $a0, $a0, $s4
/* 9640C 8009580C AE040038 */  sw         $a0, 0x38($s0)
/* 96410 80095810 8E040044 */  lw         $a0, 0x44($s0)
/* 96414 80095814 02831821 */  addu       $v1, $s4, $v1
/* 96418 80095818 3063000F */  andi       $v1, $v1, 0xF
/* 9641C 8009581C AE03003C */  sw         $v1, 0x3C($s0)
/* 96420 80095820 001218C0 */  sll        $v1, $s2, 3
/* 96424 80095824 00721821 */  addu       $v1, $v1, $s2
/* 96428 80095828 00832021 */  addu       $a0, $a0, $v1
/* 9642C 8009582C 08025665 */  j          .L80095994
/* 96430 80095830 AE040044 */   sw        $a0, 0x44($s0)
.L80095834:
/* 96434 80095834 8E040028 */  lw         $a0, 0x28($s0)
/* 96438 80095838 3C0538E3 */  lui        $a1, (0x38E38E39 >> 16)
/* 9643C 8009583C 8E030044 */  lw         $v1, 0x44($s0)
/* 96440 80095840 8C820000 */  lw         $v0, 0x0($a0)
/* 96444 80095844 8C840004 */  lw         $a0, 0x4($a0)
/* 96448 80095848 34A58E39 */  ori        $a1, $a1, (0x38E38E39 & 0xFFFF)
/* 9644C 8009584C 00671821 */  addu       $v1, $v1, $a3
/* 96450 80095850 00441021 */  addu       $v0, $v0, $a0
/* 96454 80095854 00622023 */  subu       $a0, $v1, $v0
/* 96458 80095858 00041027 */  nor        $v0, $zero, $a0
/* 9645C 8009585C 000217C3 */  sra        $v0, $v0, 31
/* 96460 80095860 00822024 */  and        $a0, $a0, $v0
/* 96464 80095864 00850018 */  mult       $a0, $a1
/* 96468 80095868 00128900 */  sll        $s1, $s2, 4
/* 9646C 8009586C 00041FC3 */  sra        $v1, $a0, 31
/* 96470 80095870 00005010 */  mfhi       $t2
/* 96474 80095874 000A1043 */  sra        $v0, $t2, 1
/* 96478 80095878 00431023 */  subu       $v0, $v0, $v1
/* 9647C 8009587C 00029900 */  sll        $s3, $v0, 4
/* 96480 80095880 02361821 */  addu       $v1, $s1, $s6
/* 96484 80095884 0073102A */  slt        $v0, $v1, $s3
/* 96488 80095888 54400001 */  bnel       $v0, $zero, .L80095890
/* 9648C 8009588C 00609821 */   addu      $s3, $v1, $zero
.L80095890:
/* 96490 80095890 3262000F */  andi       $v0, $s3, 0xF
/* 96494 80095894 02621023 */  subu       $v0, $s3, $v0
/* 96498 80095898 0054102A */  slt        $v0, $v0, $s4
/* 9649C 8009589C 10400022 */  beqz       $v0, .L80095928
/* 964A0 800958A0 00E43823 */   subu      $a3, $a3, $a0
/* 964A4 800958A4 86A20000 */  lh         $v0, 0x0($s5)
/* 964A8 800958A8 01002021 */  addu       $a0, $t0, $zero
/* 964AC 800958AC AFA00014 */  sw         $zero, 0x14($sp)
/* 964B0 800958B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 964B4 800958B4 8E020040 */  lw         $v0, 0x40($s0)
/* 964B8 800958B8 02002821 */  addu       $a1, $s0, $zero
/* 964BC 800958BC 02333023 */  subu       $a2, $s1, $s3
/* 964C0 800958C0 0C0257C3 */  jal        func_80095F0C
/* 964C4 800958C4 AFA20018 */   sw        $v0, 0x18($sp)
/* 964C8 800958C8 8E03003C */  lw         $v1, 0x3C($s0)
/* 964CC 800958CC 241E0001 */  addiu      $fp, $zero, 0x1
/* 964D0 800958D0 10600005 */  beqz       $v1, .L800958E8
/* 964D4 800958D4 00404021 */   addu      $t0, $v0, $zero
/* 964D8 800958D8 96A20000 */  lhu        $v0, 0x0($s5)
/* 964DC 800958DC 00031840 */  sll        $v1, $v1, 1
/* 964E0 800958E0 0802563C */  j          .L800958F0
/* 964E4 800958E4 00431021 */   addu      $v0, $v0, $v1
.L800958E8:
/* 964E8 800958E8 96A20000 */  lhu        $v0, 0x0($s5)
/* 964EC 800958EC 24420020 */  addiu      $v0, $v0, 0x20
.L800958F0:
/* 964F0 800958F0 A6A20000 */  sh         $v0, 0x0($s5)
/* 964F4 800958F4 8E030038 */  lw         $v1, 0x38($s0)
/* 964F8 800958F8 8E02003C */  lw         $v0, 0x3C($s0)
/* 964FC 800958FC 00741821 */  addu       $v1, $v1, $s4
/* 96500 80095900 AE030038 */  sw         $v1, 0x38($s0)
/* 96504 80095904 8E030044 */  lw         $v1, 0x44($s0)
/* 96508 80095908 02821021 */  addu       $v0, $s4, $v0
/* 9650C 8009590C 3042000F */  andi       $v0, $v0, 0xF
/* 96510 80095910 AE02003C */  sw         $v0, 0x3C($s0)
/* 96514 80095914 001210C0 */  sll        $v0, $s2, 3
/* 96518 80095918 00521021 */  addu       $v0, $v0, $s2
/* 9651C 8009591C 00621821 */  addu       $v1, $v1, $v0
/* 96520 80095920 0802564F */  j          .L8009593C
/* 96524 80095924 AE030044 */   sw        $v1, 0x44($s0)
.L80095928:
/* 96528 80095928 8E020044 */  lw         $v0, 0x44($s0)
/* 9652C 8009592C 01321821 */  addu       $v1, $t1, $s2
/* 96530 80095930 AE00003C */  sw         $zero, 0x3C($s0)
/* 96534 80095934 00431021 */  addu       $v0, $v0, $v1
/* 96538 80095938 AE020044 */  sw         $v0, 0x44($s0)
.L8009593C:
/* 9653C 8009593C 12600015 */  beqz       $s3, .L80095994
/* 96540 80095940 01001021 */   addu      $v0, $t0, $zero
/* 96544 80095944 13C00005 */  beqz       $fp, .L8009595C
/* 96548 80095948 AE00003C */   sw        $zero, 0x3C($s0)
/* 9654C 8009594C 02D11021 */  addu       $v0, $s6, $s1
/* 96550 80095950 00531023 */  subu       $v0, $v0, $s3
/* 96554 80095954 08025658 */  j          .L80095960
/* 96558 80095958 00023040 */   sll       $a2, $v0, 1
.L8009595C:
/* 9655C 8009595C 00003021 */  addu       $a2, $zero, $zero
.L80095960:
/* 96560 80095960 01002821 */  addu       $a1, $t0, $zero
/* 96564 80095964 25080008 */  addiu      $t0, $t0, 0x8
/* 96568 80095968 3C0400FF */  lui        $a0, (0xFFFFFF >> 16)
/* 9656C 8009596C 86A20000 */  lh         $v0, 0x0($s5)
/* 96570 80095970 3484FFFF */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
/* 96574 80095974 00131840 */  sll        $v1, $s3, 1
/* 96578 80095978 ACA30004 */  sw         $v1, 0x4($a1)
/* 9657C 8009597C 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 96580 80095980 00C21021 */  addu       $v0, $a2, $v0
/* 96584 80095984 00441024 */  and        $v0, $v0, $a0
/* 96588 80095988 00431025 */  or         $v0, $v0, $v1
/* 9658C 8009598C ACA20000 */  sw         $v0, 0x0($a1)
.L80095990:
/* 96590 80095990 01001021 */  addu       $v0, $t0, $zero
.L80095994:
/* 96594 80095994 8FBF0054 */  lw         $ra, 0x54($sp)
/* 96598 80095998 8FBE0050 */  lw         $fp, 0x50($sp)
/* 9659C 8009599C 8FB7004C */  lw         $s7, 0x4C($sp)
/* 965A0 800959A0 8FB60048 */  lw         $s6, 0x48($sp)
/* 965A4 800959A4 8FB50044 */  lw         $s5, 0x44($sp)
/* 965A8 800959A8 8FB40040 */  lw         $s4, 0x40($sp)
/* 965AC 800959AC 8FB3003C */  lw         $s3, 0x3C($sp)
/* 965B0 800959B0 8FB20038 */  lw         $s2, 0x38($sp)
/* 965B4 800959B4 8FB10034 */  lw         $s1, 0x34($sp)
/* 965B8 800959B8 8FB00030 */  lw         $s0, 0x30($sp)
/* 965BC 800959BC 03E00008 */  jr         $ra
/* 965C0 800959C0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800959C4
/* 965C4 800959C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 965C8 800959C8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 965CC 800959CC 8FB30040 */  lw         $s3, 0x40($sp)
/* 965D0 800959D0 AFB50024 */  sw         $s5, 0x24($sp)
/* 965D4 800959D4 00A0A821 */  addu       $s5, $a1, $zero
/* 965D8 800959D8 AFB60028 */  sw         $s6, 0x28($sp)
/* 965DC 800959DC 00C0B021 */  addu       $s6, $a2, $zero
/* 965E0 800959E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 965E4 800959E4 00809021 */  addu       $s2, $a0, $zero
/* 965E8 800959E8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 965EC 800959EC AFB40020 */  sw         $s4, 0x20($sp)
/* 965F0 800959F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 965F4 800959F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 965F8 800959F8 12C000CE */  beqz       $s6, .L80095D34
/* 965FC 800959FC 02608821 */   addu      $s1, $s3, $zero
/* 96600 80095A00 8E440038 */  lw         $a0, 0x38($s2)
/* 96604 80095A04 8E430020 */  lw         $v1, 0x20($s2)
/* 96608 80095A08 02C41021 */  addu       $v0, $s6, $a0
/* 9660C 80095A0C 0062102B */  sltu       $v0, $v1, $v0
/* 96610 80095A10 10400080 */  beqz       $v0, .L80095C14
/* 96614 80095A14 00000000 */   nop
/* 96618 80095A18 8E420024 */  lw         $v0, 0x24($s2)
/* 9661C 80095A1C 1040007D */  beqz       $v0, .L80095C14
/* 96620 80095A20 0064A023 */   subu      $s4, $v1, $a0
/* 96624 80095A24 1A80001A */  blez       $s4, .L80095A90
/* 96628 80095A28 00148040 */   sll       $s0, $s4, 1
/* 9662C 80095A2C 8E440044 */  lw         $a0, 0x44($s2)
/* 96630 80095A30 8E460034 */  lw         $a2, 0x34($s2)
/* 96634 80095A34 8E420030 */  lw         $v0, 0x30($s2)
/* 96638 80095A38 02002821 */  addu       $a1, $s0, $zero
/* 9663C 80095A3C 0040F809 */  jalr       $v0
/* 96640 80095A40 26730008 */   addiu     $s3, $s3, 0x8
/* 96644 80095A44 00403821 */  addu       $a3, $v0, $zero
/* 96648 80095A48 30E60007 */  andi       $a2, $a3, 0x7
/* 9664C 80095A4C 02068021 */  addu       $s0, $s0, $a2
/* 96650 80095A50 02602021 */  addu       $a0, $s3, $zero
/* 96654 80095A54 26730008 */  addiu      $s3, $s3, 0x8
/* 96658 80095A58 96A30000 */  lhu        $v1, 0x0($s5)
/* 9665C 80095A5C 32020007 */  andi       $v0, $s0, 0x7
/* 96660 80095A60 2442FFF8 */  addiu      $v0, $v0, -0x8
/* 96664 80095A64 02021023 */  subu       $v0, $s0, $v0
/* 96668 80095A68 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 9666C 80095A6C AE220004 */  sw         $v0, 0x4($s1)
/* 96670 80095A70 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* 96674 80095A74 00621825 */  or         $v1, $v1, $v0
/* 96678 80095A78 3C020400 */  lui        $v0, (0x4000000 >> 16)
/* 9667C 80095A7C AE230000 */  sw         $v1, 0x0($s1)
/* 96680 80095A80 AC820000 */  sw         $v0, 0x0($a0)
/* 96684 80095A84 00E61023 */  subu       $v0, $a3, $a2
/* 96688 80095A88 080256A5 */  j          .L80095A94
/* 9668C 80095A8C AC820004 */   sw        $v0, 0x4($a0)
.L80095A90:
/* 96690 80095A90 00003021 */  addu       $a2, $zero, $zero
.L80095A94:
/* 96694 80095A94 96A20000 */  lhu        $v0, 0x0($s5)
/* 96698 80095A98 00461021 */  addu       $v0, $v0, $a2
/* 9669C 80095A9C A6A20000 */  sh         $v0, 0x0($s5)
/* 966A0 80095AA0 8E430028 */  lw         $v1, 0x28($s2)
/* 966A4 80095AA4 8E44001C */  lw         $a0, 0x1C($s2)
/* 966A8 80095AA8 8E42001C */  lw         $v0, 0x1C($s2)
/* 966AC 80095AAC 8C630000 */  lw         $v1, 0x0($v1)
/* 966B0 80095AB0 00021040 */  sll        $v0, $v0, 1
/* 966B4 80095AB4 AE440038 */  sw         $a0, 0x38($s2)
/* 966B8 80095AB8 00621821 */  addu       $v1, $v1, $v0
/* 966BC 80095ABC AE430044 */  sw         $v1, 0x44($s2)
/* 966C0 80095AC0 86B50000 */  lh         $s5, 0x0($s5)
/* 966C4 80095AC4 0296102A */  slt        $v0, $s4, $s6
/* 966C8 80095AC8 10400049 */  beqz       $v0, .L80095BF0
/* 966CC 80095ACC 2671FFFC */   addiu     $s1, $s3, -0x4
/* 966D0 80095AD0 00141040 */  sll        $v0, $s4, 1
.L80095AD4:
/* 966D4 80095AD4 8E440024 */  lw         $a0, 0x24($s2)
/* 966D8 80095AD8 02A2A821 */  addu       $s5, $s5, $v0
/* 966DC 80095ADC 00041027 */  nor        $v0, $zero, $a0
/* 966E0 80095AE0 0002102B */  sltu       $v0, $zero, $v0
/* 966E4 80095AE4 0004182B */  sltu       $v1, $zero, $a0
/* 966E8 80095AE8 00431024 */  and        $v0, $v0, $v1
/* 966EC 80095AEC 10400003 */  beqz       $v0, .L80095AFC
/* 966F0 80095AF0 02D4B023 */   subu      $s6, $s6, $s4
/* 966F4 80095AF4 2482FFFF */  addiu      $v0, $a0, -0x1
/* 966F8 80095AF8 AE420024 */  sw         $v0, 0x24($s2)
.L80095AFC:
/* 966FC 80095AFC 8E430020 */  lw         $v1, 0x20($s2)
/* 96700 80095B00 8E42001C */  lw         $v0, 0x1C($s2)
/* 96704 80095B04 00621823 */  subu       $v1, $v1, $v0
/* 96708 80095B08 02C3102B */  sltu       $v0, $s6, $v1
/* 9670C 80095B0C 14400002 */  bnez       $v0, .L80095B18
/* 96710 80095B10 02C0A021 */   addu      $s4, $s6, $zero
/* 96714 80095B14 0060A021 */  addu       $s4, $v1, $zero
.L80095B18:
/* 96718 80095B18 8E440044 */  lw         $a0, 0x44($s2)
/* 9671C 80095B1C 8E460034 */  lw         $a2, 0x34($s2)
/* 96720 80095B20 8E420030 */  lw         $v0, 0x30($s2)
/* 96724 80095B24 00148040 */  sll        $s0, $s4, 1
/* 96728 80095B28 0040F809 */  jalr       $v0
/* 9672C 80095B2C 02002821 */   addu      $a1, $s0, $zero
/* 96730 80095B30 00403821 */  addu       $a3, $v0, $zero
/* 96734 80095B34 30E60007 */  andi       $a2, $a3, 0x7
/* 96738 80095B38 32A30007 */  andi       $v1, $s5, 0x7
/* 9673C 80095B3C 10600004 */  beqz       $v1, .L80095B50
/* 96740 80095B40 02068021 */   addu      $s0, $s0, $a2
/* 96744 80095B44 24020008 */  addiu      $v0, $zero, 0x8
/* 96748 80095B48 080256D5 */  j          .L80095B54
/* 9674C 80095B4C 00432023 */   subu      $a0, $v0, $v1
.L80095B50:
/* 96750 80095B50 00002021 */  addu       $a0, $zero, $zero
.L80095B54:
/* 96754 80095B54 26310008 */  addiu      $s1, $s1, 0x8
/* 96758 80095B58 02A41021 */  addu       $v0, $s5, $a0
/* 9675C 80095B5C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 96760 80095B60 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 96764 80095B64 00431025 */  or         $v0, $v0, $v1
/* 96768 80095B68 AE22FFFC */  sw         $v0, -0x4($s1)
/* 9676C 80095B6C 32020007 */  andi       $v0, $s0, 0x7
/* 96770 80095B70 2442FFF8 */  addiu      $v0, $v0, -0x8
/* 96774 80095B74 02021023 */  subu       $v0, $s0, $v0
/* 96778 80095B78 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 9677C 80095B7C AE220000 */  sw         $v0, 0x0($s1)
/* 96780 80095B80 26310008 */  addiu      $s1, $s1, 0x8
/* 96784 80095B84 3C020400 */  lui        $v0, (0x4000000 >> 16)
/* 96788 80095B88 AE22FFFC */  sw         $v0, -0x4($s1)
/* 9678C 80095B8C 00E61023 */  subu       $v0, $a3, $a2
/* 96790 80095B90 AE220000 */  sw         $v0, 0x0($s1)
/* 96794 80095B94 0006102B */  sltu       $v0, $zero, $a2
/* 96798 80095B98 0004182B */  sltu       $v1, $zero, $a0
/* 9679C 80095B9C 00431025 */  or         $v0, $v0, $v1
/* 967A0 80095BA0 10400010 */  beqz       $v0, .L80095BE4
/* 967A4 80095BA4 26730010 */   addiu     $s3, $s3, 0x10
/* 967A8 80095BA8 26310008 */  addiu      $s1, $s1, 0x8
/* 967AC 80095BAC 26730008 */  addiu      $s3, $s3, 0x8
/* 967B0 80095BB0 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 967B4 80095BB4 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 967B8 80095BB8 02A61021 */  addu       $v0, $s5, $a2
/* 967BC 80095BBC 00441021 */  addu       $v0, $v0, $a0
/* 967C0 80095BC0 00431024 */  and        $v0, $v0, $v1
/* 967C4 80095BC4 3C030A00 */  lui        $v1, (0xA000000 >> 16)
/* 967C8 80095BC8 00431025 */  or         $v0, $v0, $v1
/* 967CC 80095BCC 00151C00 */  sll        $v1, $s5, 16
/* 967D0 80095BD0 AE22FFFC */  sw         $v0, -0x4($s1)
/* 967D4 80095BD4 00141040 */  sll        $v0, $s4, 1
/* 967D8 80095BD8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 967DC 80095BDC 00621825 */  or         $v1, $v1, $v0
/* 967E0 80095BE0 AE230000 */  sw         $v1, 0x0($s1)
.L80095BE4:
/* 967E4 80095BE4 0296102A */  slt        $v0, $s4, $s6
/* 967E8 80095BE8 1440FFBA */  bnez       $v0, .L80095AD4
/* 967EC 80095BEC 00141040 */   sll       $v0, $s4, 1
.L80095BF0:
/* 967F0 80095BF0 8E430038 */  lw         $v1, 0x38($s2)
/* 967F4 80095BF4 8E440044 */  lw         $a0, 0x44($s2)
/* 967F8 80095BF8 02601021 */  addu       $v0, $s3, $zero
/* 967FC 80095BFC 00761821 */  addu       $v1, $v1, $s6
/* 96800 80095C00 AE430038 */  sw         $v1, 0x38($s2)
/* 96804 80095C04 00161840 */  sll        $v1, $s6, 1
/* 96808 80095C08 00832021 */  addu       $a0, $a0, $v1
/* 9680C 80095C0C 0802574E */  j          .L80095D38
/* 96810 80095C10 AE440044 */   sw        $a0, 0x44($s2)
.L80095C14:
/* 96814 80095C14 8E430028 */  lw         $v1, 0x28($s2)
/* 96818 80095C18 8E440044 */  lw         $a0, 0x44($s2)
/* 9681C 80095C1C 8C620000 */  lw         $v0, 0x0($v1)
/* 96820 80095C20 8C630004 */  lw         $v1, 0x4($v1)
/* 96824 80095C24 00168040 */  sll        $s0, $s6, 1
/* 96828 80095C28 00902821 */  addu       $a1, $a0, $s0
/* 9682C 80095C2C 00431021 */  addu       $v0, $v0, $v1
/* 96830 80095C30 00A28823 */  subu       $s1, $a1, $v0
/* 96834 80095C34 00111027 */  nor        $v0, $zero, $s1
/* 96838 80095C38 000217C3 */  sra        $v0, $v0, 31
/* 9683C 80095C3C 02228824 */  and        $s1, $s1, $v0
/* 96840 80095C40 0211102A */  slt        $v0, $s0, $s1
/* 96844 80095C44 54400001 */  bnel       $v0, $zero, .L80095C4C
/* 96848 80095C48 02008821 */   addu      $s1, $s0, $zero
.L80095C4C:
/* 9684C 80095C4C 0230102A */  slt        $v0, $s1, $s0
/* 96850 80095C50 50400027 */  beql       $v0, $zero, .L80095CF0
/* 96854 80095C54 AE450044 */   sw        $a1, 0x44($s2)
/* 96858 80095C58 1AC0001A */  blez       $s6, .L80095CC4
/* 9685C 80095C5C 02118023 */   subu      $s0, $s0, $s1
/* 96860 80095C60 8E460034 */  lw         $a2, 0x34($s2)
/* 96864 80095C64 8E420030 */  lw         $v0, 0x30($s2)
/* 96868 80095C68 0040F809 */  jalr       $v0
/* 9686C 80095C6C 02002821 */   addu      $a1, $s0, $zero
/* 96870 80095C70 00403821 */  addu       $a3, $v0, $zero
/* 96874 80095C74 30E60007 */  andi       $a2, $a3, 0x7
/* 96878 80095C78 02068021 */  addu       $s0, $s0, $a2
/* 9687C 80095C7C 02602021 */  addu       $a0, $s3, $zero
/* 96880 80095C80 26730008 */  addiu      $s3, $s3, 0x8
/* 96884 80095C84 02602821 */  addu       $a1, $s3, $zero
/* 96888 80095C88 26730008 */  addiu      $s3, $s3, 0x8
/* 9688C 80095C8C 96A30000 */  lhu        $v1, 0x0($s5)
/* 96890 80095C90 32020007 */  andi       $v0, $s0, 0x7
/* 96894 80095C94 2442FFF8 */  addiu      $v0, $v0, -0x8
/* 96898 80095C98 02021023 */  subu       $v0, $s0, $v0
/* 9689C 80095C9C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 968A0 80095CA0 AC820004 */  sw         $v0, 0x4($a0)
/* 968A4 80095CA4 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* 968A8 80095CA8 00621825 */  or         $v1, $v1, $v0
/* 968AC 80095CAC 3C020400 */  lui        $v0, (0x4000000 >> 16)
/* 968B0 80095CB0 AC830000 */  sw         $v1, 0x0($a0)
/* 968B4 80095CB4 ACA20000 */  sw         $v0, 0x0($a1)
/* 968B8 80095CB8 00E61023 */  subu       $v0, $a3, $a2
/* 968BC 80095CBC 08025732 */  j          .L80095CC8
/* 968C0 80095CC0 ACA20004 */   sw        $v0, 0x4($a1)
.L80095CC4:
/* 968C4 80095CC4 00003021 */  addu       $a2, $zero, $zero
.L80095CC8:
/* 968C8 80095CC8 96A20000 */  lhu        $v0, 0x0($s5)
/* 968CC 80095CCC 00461021 */  addu       $v0, $v0, $a2
/* 968D0 80095CD0 A6A20000 */  sh         $v0, 0x0($s5)
/* 968D4 80095CD4 8E420038 */  lw         $v0, 0x38($s2)
/* 968D8 80095CD8 8E430044 */  lw         $v1, 0x44($s2)
/* 968DC 80095CDC 00561021 */  addu       $v0, $v0, $s6
/* 968E0 80095CE0 AE420038 */  sw         $v0, 0x38($s2)
/* 968E4 80095CE4 00161040 */  sll        $v0, $s6, 1
/* 968E8 80095CE8 00621821 */  addu       $v1, $v1, $v0
/* 968EC 80095CEC AE430044 */  sw         $v1, 0x44($s2)
.L80095CF0:
/* 968F0 80095CF0 12200010 */  beqz       $s1, .L80095D34
/* 968F4 80095CF4 00161040 */   sll       $v0, $s6, 1
/* 968F8 80095CF8 00511023 */  subu       $v0, $v0, $s1
/* 968FC 80095CFC 00021827 */  nor        $v1, $zero, $v0
/* 96900 80095D00 00031FC3 */  sra        $v1, $v1, 31
/* 96904 80095D04 02603021 */  addu       $a2, $s3, $zero
/* 96908 80095D08 26730008 */  addiu      $s3, $s3, 0x8
/* 9690C 80095D0C 86A40000 */  lh         $a0, 0x0($s5)
/* 96910 80095D10 3C0500FF */  lui        $a1, (0xFFFFFF >> 16)
/* 96914 80095D14 34A5FFFF */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
/* 96918 80095D18 00431024 */  and        $v0, $v0, $v1
/* 9691C 80095D1C 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 96920 80095D20 ACD10004 */  sw         $s1, 0x4($a2)
/* 96924 80095D24 00441021 */  addu       $v0, $v0, $a0
/* 96928 80095D28 00451024 */  and        $v0, $v0, $a1
/* 9692C 80095D2C 00431025 */  or         $v0, $v0, $v1
/* 96930 80095D30 ACC20000 */  sw         $v0, 0x0($a2)
.L80095D34:
/* 96934 80095D34 02601021 */  addu       $v0, $s3, $zero
.L80095D38:
/* 96938 80095D38 8FBF002C */  lw         $ra, 0x2C($sp)
/* 9693C 80095D3C 8FB60028 */  lw         $s6, 0x28($sp)
/* 96940 80095D40 8FB50024 */  lw         $s5, 0x24($sp)
/* 96944 80095D44 8FB40020 */  lw         $s4, 0x20($sp)
/* 96948 80095D48 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9694C 80095D4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 96950 80095D50 8FB10014 */  lw         $s1, 0x14($sp)
/* 96954 80095D54 8FB00010 */  lw         $s0, 0x10($sp)
/* 96958 80095D58 03E00008 */  jr         $ra
/* 9695C 80095D5C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80095D60
/* 96960 80095D60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 96964 80095D64 AFBF0010 */  sw         $ra, 0x10($sp)
/* 96968 80095D68 24020004 */  addiu      $v0, $zero, 0x4
/* 9696C 80095D6C 10A20051 */  beq        $a1, $v0, .L80095EB4
/* 96970 80095D70 00803821 */   addu      $a3, $a0, $zero
/* 96974 80095D74 24020005 */  addiu      $v0, $zero, 0x5
/* 96978 80095D78 14A20061 */  bne        $a1, $v0, .L80095F00
/* 9697C 80095D7C 00000000 */   nop
/* 96980 80095D80 ACE60028 */  sw         $a2, 0x28($a3)
/* 96984 80095D84 8CC20000 */  lw         $v0, 0x0($a2)
/* 96988 80095D88 8CE30028 */  lw         $v1, 0x28($a3)
/* 9698C 80095D8C ACE00038 */  sw         $zero, 0x38($a3)
/* 96990 80095D90 ACE20044 */  sw         $v0, 0x44($a3)
/* 96994 80095D94 90630008 */  lbu        $v1, 0x8($v1)
/* 96998 80095D98 10600005 */  beqz       $v1, .L80095DB0
/* 9699C 80095D9C 24020001 */   addiu     $v0, $zero, 0x1
/* 969A0 80095DA0 10620030 */  beq        $v1, $v0, .L80095E64
/* 969A4 80095DA4 00000000 */   nop
/* 969A8 80095DA8 080257C0 */  j          .L80095F00
/* 969AC 80095DAC 00000000 */   nop
.L80095DB0:
/* 969B0 80095DB0 8CE40028 */  lw         $a0, 0x28($a3)
/* 969B4 80095DB4 3C028009 */  lui        $v0, %hi(func_80095580)
/* 969B8 80095DB8 24425580 */  addiu      $v0, $v0, %lo(func_80095580)
/* 969BC 80095DBC ACE20004 */  sw         $v0, 0x4($a3)
/* 969C0 80095DC0 8C820004 */  lw         $v0, 0x4($a0)
/* 969C4 80095DC4 3C0338E3 */  lui        $v1, (0x38E38E39 >> 16)
/* 969C8 80095DC8 34638E39 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
/* 969CC 80095DCC 00430018 */  mult       $v0, $v1
/* 969D0 80095DD0 000217C3 */  sra        $v0, $v0, 31
/* 969D4 80095DD4 00004010 */  mfhi       $t0
/* 969D8 80095DD8 00081843 */  sra        $v1, $t0, 1
/* 969DC 80095DDC 00621823 */  subu       $v1, $v1, $v0
/* 969E0 80095DE0 000310C0 */  sll        $v0, $v1, 3
/* 969E4 80095DE4 00431021 */  addu       $v0, $v0, $v1
/* 969E8 80095DE8 AC820004 */  sw         $v0, 0x4($a0)
/* 969EC 80095DEC 8CE20028 */  lw         $v0, 0x28($a3)
/* 969F0 80095DF0 8C430010 */  lw         $v1, 0x10($v0)
/* 969F4 80095DF4 8C620004 */  lw         $v0, 0x4($v1)
/* 969F8 80095DF8 8C630000 */  lw         $v1, 0x0($v1)
/* 969FC 80095DFC 00021040 */  sll        $v0, $v0, 1
/* 96A00 80095E00 00620018 */  mult       $v1, $v0
/* 96A04 80095E04 00001812 */  mflo       $v1
/* 96A08 80095E08 8CE20028 */  lw         $v0, 0x28($a3)
/* 96A0C 80095E0C 000318C0 */  sll        $v1, $v1, 3
/* 96A10 80095E10 ACE3002C */  sw         $v1, 0x2C($a3)
/* 96A14 80095E14 8C42000C */  lw         $v0, 0xC($v0)
/* 96A18 80095E18 10400022 */  beqz       $v0, .L80095EA4
/* 96A1C 80095E1C 24060020 */   addiu     $a2, $zero, 0x20
/* 96A20 80095E20 8C420000 */  lw         $v0, 0x0($v0)
/* 96A24 80095E24 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A28 80095E28 ACE2001C */  sw         $v0, 0x1C($a3)
/* 96A2C 80095E2C 8C62000C */  lw         $v0, 0xC($v1)
/* 96A30 80095E30 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A34 80095E34 8C420004 */  lw         $v0, 0x4($v0)
/* 96A38 80095E38 ACE20020 */  sw         $v0, 0x20($a3)
/* 96A3C 80095E3C 8C62000C */  lw         $v0, 0xC($v1)
/* 96A40 80095E40 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A44 80095E44 8C420008 */  lw         $v0, 0x8($v0)
/* 96A48 80095E48 ACE20024 */  sw         $v0, 0x24($a3)
/* 96A4C 80095E4C 8C64000C */  lw         $a0, 0xC($v1)
/* 96A50 80095E50 8CE50018 */  lw         $a1, 0x18($a3)
/* 96A54 80095E54 0C026008 */  jal        func_80098020
/* 96A58 80095E58 2484000C */   addiu     $a0, $a0, 0xC
/* 96A5C 80095E5C 080257C0 */  j          .L80095F00
/* 96A60 80095E60 00000000 */   nop
.L80095E64:
/* 96A64 80095E64 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A68 80095E68 3C028009 */  lui        $v0, %hi(func_800959C4)
/* 96A6C 80095E6C 244259C4 */  addiu      $v0, $v0, %lo(func_800959C4)
/* 96A70 80095E70 ACE20004 */  sw         $v0, 0x4($a3)
/* 96A74 80095E74 8C62000C */  lw         $v0, 0xC($v1)
/* 96A78 80095E78 5040000B */  beql       $v0, $zero, .L80095EA8
/* 96A7C 80095E7C ACE00024 */   sw        $zero, 0x24($a3)
/* 96A80 80095E80 8C420000 */  lw         $v0, 0x0($v0)
/* 96A84 80095E84 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A88 80095E88 ACE2001C */  sw         $v0, 0x1C($a3)
/* 96A8C 80095E8C 8C62000C */  lw         $v0, 0xC($v1)
/* 96A90 80095E90 8CE30028 */  lw         $v1, 0x28($a3)
/* 96A94 80095E94 8C420004 */  lw         $v0, 0x4($v0)
/* 96A98 80095E98 ACE20020 */  sw         $v0, 0x20($a3)
/* 96A9C 80095E9C 080257BE */  j          .L80095EF8
/* 96AA0 80095EA0 8C62000C */   lw        $v0, 0xC($v1)
.L80095EA4:
/* 96AA4 80095EA4 ACE00024 */  sw         $zero, 0x24($a3)
.L80095EA8:
/* 96AA8 80095EA8 ACE00020 */  sw         $zero, 0x20($a3)
/* 96AAC 80095EAC 080257C0 */  j          .L80095F00
/* 96AB0 80095EB0 ACE0001C */   sw        $zero, 0x1C($a3)
.L80095EB4:
/* 96AB4 80095EB4 8CE20028 */  lw         $v0, 0x28($a3)
/* 96AB8 80095EB8 24040001 */  addiu      $a0, $zero, 0x1
/* 96ABC 80095EBC ACE0003C */  sw         $zero, 0x3C($a3)
/* 96AC0 80095EC0 ACE40040 */  sw         $a0, 0x40($a3)
/* 96AC4 80095EC4 1040000E */  beqz       $v0, .L80095F00
/* 96AC8 80095EC8 ACE00038 */   sw        $zero, 0x38($a3)
/* 96ACC 80095ECC 8C420000 */  lw         $v0, 0x0($v0)
/* 96AD0 80095ED0 8CE30028 */  lw         $v1, 0x28($a3)
/* 96AD4 80095ED4 ACE20044 */  sw         $v0, 0x44($a3)
/* 96AD8 80095ED8 90620008 */  lbu        $v0, 0x8($v1)
/* 96ADC 80095EDC 10400003 */  beqz       $v0, .L80095EEC
/* 96AE0 80095EE0 00000000 */   nop
/* 96AE4 80095EE4 14440006 */  bne        $v0, $a0, .L80095F00
/* 96AE8 80095EE8 00000000 */   nop
.L80095EEC:
/* 96AEC 80095EEC 8C62000C */  lw         $v0, 0xC($v1)
/* 96AF0 80095EF0 10400003 */  beqz       $v0, .L80095F00
/* 96AF4 80095EF4 00000000 */   nop
.L80095EF8:
/* 96AF8 80095EF8 8C420008 */  lw         $v0, 0x8($v0)
/* 96AFC 80095EFC ACE20024 */  sw         $v0, 0x24($a3)
.L80095F00:
/* 96B00 80095F00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 96B04 80095F04 03E00008 */  jr         $ra
/* 96B08 80095F08 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80095F0C
/* 96B0C 80095F0C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 96B10 80095F10 AFB3001C */  sw         $s3, 0x1C($sp)
/* 96B14 80095F14 8FB3004C */  lw         $s3, 0x4C($sp)
/* 96B18 80095F18 AFB7002C */  sw         $s7, 0x2C($sp)
/* 96B1C 80095F1C 8FB70050 */  lw         $s7, 0x50($sp)
/* 96B20 80095F20 AFB50024 */  sw         $s5, 0x24($sp)
/* 96B24 80095F24 97B5004A */  lhu        $s5, 0x4A($sp)
/* 96B28 80095F28 AFB00010 */  sw         $s0, 0x10($sp)
/* 96B2C 80095F2C 00808021 */  addu       $s0, $a0, $zero
/* 96B30 80095F30 AFB20018 */  sw         $s2, 0x18($sp)
/* 96B34 80095F34 00A09021 */  addu       $s2, $a1, $zero
/* 96B38 80095F38 AFB60028 */  sw         $s6, 0x28($sp)
/* 96B3C 80095F3C 00C0B021 */  addu       $s6, $a2, $zero
/* 96B40 80095F40 AFB10014 */  sw         $s1, 0x14($sp)
/* 96B44 80095F44 00E08821 */  addu       $s1, $a3, $zero
/* 96B48 80095F48 AFBF0030 */  sw         $ra, 0x30($sp)
/* 96B4C 80095F4C AFB40020 */  sw         $s4, 0x20($sp)
/* 96B50 80095F50 1A20001A */  blez       $s1, .L80095FBC
/* 96B54 80095F54 0260A021 */   addu      $s4, $s3, $zero
/* 96B58 80095F58 8E420030 */  lw         $v0, 0x30($s2)
/* 96B5C 80095F5C 8E440044 */  lw         $a0, 0x44($s2)
/* 96B60 80095F60 8E460034 */  lw         $a2, 0x34($s2)
/* 96B64 80095F64 0040F809 */  jalr       $v0
/* 96B68 80095F68 02202821 */   addu      $a1, $s1, $zero
/* 96B6C 80095F6C 30470007 */  andi       $a3, $v0, 0x7
/* 96B70 80095F70 02278821 */  addu       $s1, $s1, $a3
/* 96B74 80095F74 02002821 */  addu       $a1, $s0, $zero
/* 96B78 80095F78 26100008 */  addiu      $s0, $s0, 0x8
/* 96B7C 80095F7C 02003021 */  addu       $a2, $s0, $zero
/* 96B80 80095F80 26100008 */  addiu      $s0, $s0, 0x8
/* 96B84 80095F84 3263FFFF */  andi       $v1, $s3, 0xFFFF
/* 96B88 80095F88 3C040800 */  lui        $a0, (0x8000000 >> 16)
/* 96B8C 80095F8C 00641825 */  or         $v1, $v1, $a0
/* 96B90 80095F90 ACA30000 */  sw         $v1, 0x0($a1)
/* 96B94 80095F94 32230007 */  andi       $v1, $s1, 0x7
/* 96B98 80095F98 2463FFF8 */  addiu      $v1, $v1, -0x8
/* 96B9C 80095F9C 02231823 */  subu       $v1, $s1, $v1
/* 96BA0 80095FA0 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 96BA4 80095FA4 ACA30004 */  sw         $v1, 0x4($a1)
/* 96BA8 80095FA8 3C030400 */  lui        $v1, (0x4000000 >> 16)
/* 96BAC 80095FAC 00471023 */  subu       $v0, $v0, $a3
/* 96BB0 80095FB0 ACC30000 */  sw         $v1, 0x0($a2)
/* 96BB4 80095FB4 080257F0 */  j          .L80095FC0
/* 96BB8 80095FB8 ACC20004 */   sw        $v0, 0x4($a2)
.L80095FBC:
/* 96BBC 80095FBC 00003821 */  addu       $a3, $zero, $zero
.L80095FC0:
/* 96BC0 80095FC0 32E20002 */  andi       $v0, $s7, 0x2
/* 96BC4 80095FC4 10400009 */  beqz       $v0, .L80095FEC
/* 96BC8 80095FC8 02002021 */   addu      $a0, $s0, $zero
/* 96BCC 80095FCC 26100008 */  addiu      $s0, $s0, 0x8
/* 96BD0 80095FD0 3C020F00 */  lui        $v0, (0xF000000 >> 16)
/* 96BD4 80095FD4 AC820000 */  sw         $v0, 0x0($a0)
/* 96BD8 80095FD8 8E420018 */  lw         $v0, 0x18($s2)
/* 96BDC 80095FDC 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 96BE0 80095FE0 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 96BE4 80095FE4 00431024 */  and        $v0, $v0, $v1
/* 96BE8 80095FE8 AC820004 */  sw         $v0, 0x4($a0)
.L80095FEC:
/* 96BEC 80095FEC 02002021 */  addu       $a0, $s0, $zero
/* 96BF0 80095FF0 26100008 */  addiu      $s0, $s0, 0x8
/* 96BF4 80095FF4 3C051FFF */  lui        $a1, (0x1FFFFFFF >> 16)
/* 96BF8 80095FF8 00141400 */  sll        $v0, $s4, 16
/* 96BFC 80095FFC 00021403 */  sra        $v0, $v0, 16
/* 96C00 80096000 00471021 */  addu       $v0, $v0, $a3
/* 96C04 80096004 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 96C08 80096008 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 96C0C 8009600C 00431025 */  or         $v0, $v0, $v1
/* 96C10 80096010 00151C00 */  sll        $v1, $s5, 16
/* 96C14 80096014 AC820000 */  sw         $v0, 0x0($a0)
/* 96C18 80096018 00161040 */  sll        $v0, $s6, 1
/* 96C1C 8009601C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 96C20 80096020 00621825 */  or         $v1, $v1, $v0
/* 96C24 80096024 AC830004 */  sw         $v1, 0x4($a0)
/* 96C28 80096028 02002021 */  addu       $a0, $s0, $zero
/* 96C2C 8009602C 32E200FF */  andi       $v0, $s7, 0xFF
/* 96C30 80096030 00021400 */  sll        $v0, $v0, 16
/* 96C34 80096034 3C030100 */  lui        $v1, (0x1000000 >> 16)
/* 96C38 80096038 00431025 */  or         $v0, $v0, $v1
/* 96C3C 8009603C AC820000 */  sw         $v0, 0x0($a0)
/* 96C40 80096040 8E430014 */  lw         $v1, 0x14($s2)
/* 96C44 80096044 34A5FFFF */  ori        $a1, $a1, (0x1FFFFFFF & 0xFFFF)
/* 96C48 80096048 24820008 */  addiu      $v0, $a0, 0x8
/* 96C4C 8009604C 00651824 */  and        $v1, $v1, $a1
/* 96C50 80096050 AC830004 */  sw         $v1, 0x4($a0)
/* 96C54 80096054 AE400040 */  sw         $zero, 0x40($s2)
/* 96C58 80096058 8FBF0030 */  lw         $ra, 0x30($sp)
/* 96C5C 8009605C 8FB7002C */  lw         $s7, 0x2C($sp)
/* 96C60 80096060 8FB60028 */  lw         $s6, 0x28($sp)
/* 96C64 80096064 8FB50024 */  lw         $s5, 0x24($sp)
/* 96C68 80096068 8FB40020 */  lw         $s4, 0x20($sp)
/* 96C6C 8009606C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 96C70 80096070 8FB20018 */  lw         $s2, 0x18($sp)
/* 96C74 80096074 8FB10014 */  lw         $s1, 0x14($sp)
/* 96C78 80096078 8FB00010 */  lw         $s0, 0x10($sp)
/* 96C7C 8009607C 03E00008 */  jr         $ra
/* 96C80 80096080 27BD0038 */   addiu     $sp, $sp, 0x38
/* 96C84 80096084 00000000 */  nop
/* 96C88 80096088 00000000 */  nop
/* 96C8C 8009608C 00000000 */  nop

glabel func_80096090
/* 96C90 80096090 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 96C94 80096094 AFB40030 */  sw         $s4, 0x30($sp)
/* 96C98 80096098 00A0A021 */  addu       $s4, $a1, $zero
/* 96C9C 8009609C AFB3002C */  sw         $s3, 0x2C($sp)
/* 96CA0 800960A0 00C09821 */  addu       $s3, $a2, $zero
/* 96CA4 800960A4 AFB50034 */  sw         $s5, 0x34($sp)
/* 96CA8 800960A8 00E0A821 */  addu       $s5, $a3, $zero
/* 96CAC 800960AC 8FA60050 */  lw         $a2, 0x50($sp)
/* 96CB0 800960B0 3C030200 */  lui        $v1, (0x20006C0 >> 16)
/* 96CB4 800960B4 346306C0 */  ori        $v1, $v1, (0x20006C0 & 0xFFFF)
/* 96CB8 800960B8 3C050200 */  lui        $a1, (0x2000800 >> 16)
/* 96CBC 800960BC 34A50800 */  ori        $a1, $a1, (0x2000800 & 0xFFFF)
/* 96CC0 800960C0 AFB20028 */  sw         $s2, 0x28($sp)
/* 96CC4 800960C4 00809021 */  addu       $s2, $a0, $zero
/* 96CC8 800960C8 AFBF0038 */  sw         $ra, 0x38($sp)
/* 96CCC 800960CC AFB10024 */  sw         $s1, 0x24($sp)
/* 96CD0 800960D0 AFB00020 */  sw         $s0, 0x20($sp)
/* 96CD4 800960D4 8E44001C */  lw         $a0, 0x1C($s2)
/* 96CD8 800960D8 00C01021 */  addu       $v0, $a2, $zero
/* 96CDC 800960DC 24C60008 */  addiu      $a2, $a2, 0x8
/* 96CE0 800960E0 AC430000 */  sw         $v1, 0x0($v0)
/* 96CE4 800960E4 00131840 */  sll        $v1, $s3, 1
/* 96CE8 800960E8 AC430004 */  sw         $v1, 0x4($v0)
/* 96CEC 800960EC 00C01021 */  addu       $v0, $a2, $zero
/* 96CF0 800960F0 AC450000 */  sw         $a1, 0x0($v0)
/* 96CF4 800960F4 AC430004 */  sw         $v1, 0x4($v0)
/* 96CF8 800960F8 8E420014 */  lw         $v0, 0x14($s2)
/* 96CFC 800960FC 00008821 */  addu       $s1, $zero, $zero
/* 96D00 80096100 18400010 */  blez       $v0, .L80096144
/* 96D04 80096104 24C60008 */   addiu     $a2, $a2, 0x8
/* 96D08 80096108 00808021 */  addu       $s0, $a0, $zero
.L8009610C:
/* 96D0C 8009610C 8E020000 */  lw         $v0, 0x0($s0)
/* 96D10 80096110 AFA60010 */  sw         $a2, 0x10($sp)
/* 96D14 80096114 8E040000 */  lw         $a0, 0x0($s0)
/* 96D18 80096118 26100004 */  addiu      $s0, $s0, 0x4
/* 96D1C 8009611C 02802821 */  addu       $a1, $s4, $zero
/* 96D20 80096120 8C420004 */  lw         $v0, 0x4($v0)
/* 96D24 80096124 02603021 */  addu       $a2, $s3, $zero
/* 96D28 80096128 0040F809 */  jalr       $v0
/* 96D2C 8009612C 02A03821 */   addu      $a3, $s5, $zero
/* 96D30 80096130 8E430014 */  lw         $v1, 0x14($s2)
/* 96D34 80096134 26310001 */  addiu      $s1, $s1, 0x1
/* 96D38 80096138 0223182A */  slt        $v1, $s1, $v1
/* 96D3C 8009613C 1460FFF3 */  bnez       $v1, .L8009610C
/* 96D40 80096140 00403021 */   addu      $a2, $v0, $zero
.L80096144:
/* 96D44 80096144 00C01021 */  addu       $v0, $a2, $zero
/* 96D48 80096148 8FBF0038 */  lw         $ra, 0x38($sp)
/* 96D4C 8009614C 8FB50034 */  lw         $s5, 0x34($sp)
/* 96D50 80096150 8FB40030 */  lw         $s4, 0x30($sp)
/* 96D54 80096154 8FB3002C */  lw         $s3, 0x2C($sp)
/* 96D58 80096158 8FB20028 */  lw         $s2, 0x28($sp)
/* 96D5C 8009615C 8FB10024 */  lw         $s1, 0x24($sp)
/* 96D60 80096160 8FB00020 */  lw         $s0, 0x20($sp)
/* 96D64 80096164 03E00008 */  jr         $ra
/* 96D68 80096168 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8009616C
/* 96D6C 8009616C 8C87001C */  lw         $a3, 0x1C($a0)
/* 96D70 80096170 24020002 */  addiu      $v0, $zero, 0x2
/* 96D74 80096174 14A20007 */  bne        $a1, $v0, .L80096194
/* 96D78 80096178 00000000 */   nop
/* 96D7C 8009617C 8C820014 */  lw         $v0, 0x14($a0)
/* 96D80 80096180 24430001 */  addiu      $v1, $v0, 0x1
/* 96D84 80096184 00021080 */  sll        $v0, $v0, 2
/* 96D88 80096188 00471021 */  addu       $v0, $v0, $a3
/* 96D8C 8009618C AC830014 */  sw         $v1, 0x14($a0)
/* 96D90 80096190 AC460000 */  sw         $a2, 0x0($v0)
.L80096194:
/* 96D94 80096194 03E00008 */  jr         $ra
/* 96D98 80096198 00001021 */   addu      $v0, $zero, $zero
/* 96D9C 8009619C 00000000 */  nop

glabel func_800961A0
/* 96DA0 800961A0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 96DA4 800961A4 AFB30034 */  sw         $s3, 0x34($sp)
/* 96DA8 800961A8 8FB30060 */  lw         $s3, 0x60($sp)
/* 96DAC 800961AC AFB00028 */  sw         $s0, 0x28($sp)
/* 96DB0 800961B0 00808021 */  addu       $s0, $a0, $zero
/* 96DB4 800961B4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 96DB8 800961B8 AFBE0048 */  sw         $fp, 0x48($sp)
/* 96DBC 800961BC AFB70044 */  sw         $s7, 0x44($sp)
/* 96DC0 800961C0 AFB60040 */  sw         $s6, 0x40($sp)
/* 96DC4 800961C4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 96DC8 800961C8 AFB40038 */  sw         $s4, 0x38($sp)
/* 96DCC 800961CC AFB20030 */  sw         $s2, 0x30($sp)
/* 96DD0 800961D0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 96DD4 800961D4 8E02003C */  lw         $v0, 0x3C($s0)
/* 96DD8 800961D8 00C0B821 */  addu       $s7, $a2, $zero
/* 96DDC 800961DC 00E0B021 */  addu       $s6, $a3, $zero
/* 96DE0 800961E0 AFB60024 */  sw         $s6, 0x24($sp)
/* 96DE4 800961E4 A7A0001A */  sh         $zero, 0x1A($sp)
/* 96DE8 800961E8 10400126 */  beqz       $v0, .L80096684
/* 96DEC 800961EC A7A00018 */   sh        $zero, 0x18($sp)
/* 96DF0 800961F0 241E0001 */  addiu      $fp, $zero, 0x1
/* 96DF4 800961F4 3C15800D */  lui        $s5, %hi(D_800CB0E0)
/* 96DF8 800961F8 26B5B0E0 */  addiu      $s5, $s5, %lo(D_800CB0E0)
.L800961FC:
/* 96DFC 800961FC 8E02003C */  lw         $v0, 0x3C($s0)
/* 96E00 80096200 8FA30024 */  lw         $v1, 0x24($sp)
/* 96E04 80096204 8C420004 */  lw         $v0, 0x4($v0)
/* 96E08 80096208 00439023 */  subu       $s2, $v0, $v1
/* 96E0C 8009620C AFA20024 */  sw         $v0, 0x24($sp)
/* 96E10 80096210 02F2102A */  slt        $v0, $s7, $s2
/* 96E14 80096214 1440011C */  bnez       $v0, .L80096688
/* 96E18 80096218 02002021 */   addu      $a0, $s0, $zero
/* 96E1C 8009621C 06410008 */  bgez       $s2, .L80096240
/* 96E20 80096220 2A4200A1 */   slti      $v0, $s2, 0xA1
/* 96E24 80096224 3C04800D */  lui        $a0, %hi(D_800D6C90)
/* 96E28 80096228 24846C90 */  addiu      $a0, $a0, %lo(D_800D6C90)
/* 96E2C 8009622C 3C05800D */  lui        $a1, %hi(D_800D6C94)
/* 96E30 80096230 24A56C94 */  addiu      $a1, $a1, %lo(D_800D6C94)
/* 96E34 80096234 0C0006E0 */  jal        func_80001B80
/* 96E38 80096238 24060068 */   addiu     $a2, $zero, 0x68
/* 96E3C 8009623C 2A4200A1 */  slti       $v0, $s2, 0xA1
.L80096240:
/* 96E40 80096240 14400007 */  bnez       $v0, .L80096260
/* 96E44 80096244 00000000 */   nop
/* 96E48 80096248 3C04800D */  lui        $a0, %hi(D_800D6C90)
/* 96E4C 8009624C 24846C90 */  addiu      $a0, $a0, %lo(D_800D6C90)
/* 96E50 80096250 3C05800D */  lui        $a1, %hi(D_800D6C94)
/* 96E54 80096254 24A56C94 */  addiu      $a1, $a1, %lo(D_800D6C94)
/* 96E58 80096258 0C0006E0 */  jal        func_80001B80
/* 96E5C 8009625C 24060069 */   addiu     $a2, $zero, 0x69
.L80096260:
/* 96E60 80096260 8E02003C */  lw         $v0, 0x3C($s0)
/* 96E64 80096264 84430008 */  lh         $v1, 0x8($v0)
/* 96E68 80096268 2C620011 */  sltiu      $v0, $v1, 0x11
/* 96E6C 8009626C 104000E8 */  beqz       $v0, L80096610
/* 96E70 80096270 00031080 */   sll       $v0, $v1, 2
/* 96E74 80096274 3C01800D */  lui        $at, %hi(jtbl_800D6CA0_main)
/* 96E78 80096278 00220821 */  addu       $at, $at, $v0
/* 96E7C 8009627C 8C226CA0 */  lw         $v0, %lo(jtbl_800D6CA0_main)($at)
/* 96E80 80096280 00400008 */  jr         $v0
/* 96E84 80096284 00000000 */   nop
glabel L80096288
/* 96E88 80096288 8E11003C */  lw         $s1, 0x3C($s0)
/* 96E8C 8009628C 8622000A */  lh         $v0, 0xA($s1)
/* 96E90 80096290 10400006 */  beqz       $v0, .L800962AC
/* 96E94 80096294 0200A021 */   addu      $s4, $s0, $zero
/* 96E98 80096298 02002021 */  addu       $a0, $s0, $zero
/* 96E9C 8009629C 8E020008 */  lw         $v0, 0x8($s0)
/* 96EA0 800962A0 24050008 */  addiu      $a1, $zero, 0x8
/* 96EA4 800962A4 0040F809 */  jalr       $v0
/* 96EA8 800962A8 00003021 */   addu      $a2, $zero, $zero
.L800962AC:
/* 96EAC 800962AC 8E260018 */  lw         $a2, 0x18($s1)
/* 96EB0 800962B0 8E020008 */  lw         $v0, 0x8($s0)
/* 96EB4 800962B4 02002021 */  addu       $a0, $s0, $zero
/* 96EB8 800962B8 0040F809 */  jalr       $v0
/* 96EBC 800962BC 24050005 */   addiu     $a1, $zero, 0x5
/* 96EC0 800962C0 02002021 */  addu       $a0, $s0, $zero
/* 96EC4 800962C4 8E020008 */  lw         $v0, 0x8($s0)
/* 96EC8 800962C8 24050009 */  addiu      $a1, $zero, 0x9
/* 96ECC 800962CC 0040F809 */  jalr       $v0
/* 96ED0 800962D0 00003021 */   addu      $a2, $zero, $zero
/* 96ED4 800962D4 AE1E0038 */  sw         $fp, 0x38($s0)
/* 96ED8 800962D8 AE000030 */  sw         $zero, 0x30($s0)
/* 96EDC 800962DC 8E220014 */  lw         $v0, 0x14($s1)
/* 96EE0 800962E0 AE020034 */  sw         $v0, 0x34($s0)
/* 96EE4 800962E4 86220010 */  lh         $v0, 0x10($s1)
/* 96EE8 800962E8 00420018 */  mult       $v0, $v0
/* 96EEC 800962EC 00001012 */  mflo       $v0
/* 96EF0 800962F0 000213C3 */  sra        $v0, $v0, 15
/* 96EF4 800962F4 A602001A */  sh         $v0, 0x1A($s0)
/* 96EF8 800962F8 92220012 */  lbu        $v0, 0x12($s1)
/* 96EFC 800962FC A6020018 */  sh         $v0, 0x18($s0)
/* 96F00 80096300 92220013 */  lbu        $v0, 0x13($s1)
/* 96F04 80096304 00021040 */  sll        $v0, $v0, 1
/* 96F08 80096308 00551021 */  addu       $v0, $v0, $s5
/* 96F0C 8009630C 94420000 */  lhu        $v0, 0x0($v0)
/* 96F10 80096310 A6020020 */  sh         $v0, 0x20($s0)
/* 96F14 80096314 92220013 */  lbu        $v0, 0x13($s1)
/* 96F18 80096318 2408007F */  addiu      $t0, $zero, 0x7F
/* 96F1C 8009631C 01021023 */  subu       $v0, $t0, $v0
/* 96F20 80096320 00021040 */  sll        $v0, $v0, 1
/* 96F24 80096324 00551021 */  addu       $v0, $v0, $s5
/* 96F28 80096328 94420000 */  lhu        $v0, 0x0($v0)
/* 96F2C 8009632C A6020022 */  sh         $v0, 0x22($s0)
/* 96F30 80096330 8E220014 */  lw         $v0, 0x14($s1)
/* 96F34 80096334 10400004 */  beqz       $v0, .L80096348
/* 96F38 80096338 00000000 */   nop
/* 96F3C 8009633C A61E001C */  sh         $fp, 0x1C($s0)
/* 96F40 80096340 080258E5 */  j          .L80096394
/* 96F44 80096344 A61E001E */   sh        $fp, 0x1E($s0)
.L80096348:
/* 96F48 80096348 86020018 */  lh         $v0, 0x18($s0)
/* 96F4C 8009634C 8603001A */  lh         $v1, 0x1A($s0)
/* 96F50 80096350 00021040 */  sll        $v0, $v0, 1
/* 96F54 80096354 00551021 */  addu       $v0, $v0, $s5
/* 96F58 80096358 84420000 */  lh         $v0, 0x0($v0)
/* 96F5C 8009635C 00620018 */  mult       $v1, $v0
/* 96F60 80096360 00001812 */  mflo       $v1
/* 96F64 80096364 86020018 */  lh         $v0, 0x18($s0)
/* 96F68 80096368 01021023 */  subu       $v0, $t0, $v0
/* 96F6C 8009636C 00021040 */  sll        $v0, $v0, 1
/* 96F70 80096370 00551021 */  addu       $v0, $v0, $s5
/* 96F74 80096374 00031BC3 */  sra        $v1, $v1, 15
/* 96F78 80096378 A603001C */  sh         $v1, 0x1C($s0)
/* 96F7C 8009637C 8603001A */  lh         $v1, 0x1A($s0)
/* 96F80 80096380 84420000 */  lh         $v0, 0x0($v0)
/* 96F84 80096384 00620018 */  mult       $v1, $v0
/* 96F88 80096388 00001812 */  mflo       $v1
/* 96F8C 8009638C 00031BC3 */  sra        $v1, $v1, 15
/* 96F90 80096390 A603001E */  sh         $v1, 0x1E($s0)
.L80096394:
/* 96F94 80096394 8E840000 */  lw         $a0, 0x0($s4)
/* 96F98 80096398 108000AB */  beqz       $a0, .L80096648
/* 96F9C 8009639C 00000000 */   nop
/* 96FA0 800963A0 8E26000C */  lw         $a2, 0xC($s1)
/* 96FA4 800963A4 8C820008 */  lw         $v0, 0x8($a0)
/* 96FA8 800963A8 0040F809 */  jalr       $v0
/* 96FAC 800963AC 24050007 */   addiu     $a1, $zero, 0x7
/* 96FB0 800963B0 08025992 */  j          .L80096648
/* 96FB4 800963B4 00000000 */   nop
glabel L800963B8
/* 96FB8 800963B8 02002021 */  addu       $a0, $s0, $zero
/* 96FBC 800963BC 27A50018 */  addiu      $a1, $sp, 0x18
/* 96FC0 800963C0 27A6001A */  addiu      $a2, $sp, 0x1A
/* 96FC4 800963C4 02403821 */  addu       $a3, $s2, $zero
/* 96FC8 800963C8 AFB60010 */  sw         $s6, 0x10($sp)
/* 96FCC 800963CC 0C0259F0 */  jal        func_800967C0
/* 96FD0 800963D0 AFB30014 */   sw        $s3, 0x14($sp)
/* 96FD4 800963D4 8E050030 */  lw         $a1, 0x30($s0)
/* 96FD8 800963D8 8E030034 */  lw         $v1, 0x34($s0)
/* 96FDC 800963DC 00A3182A */  slt        $v1, $a1, $v1
/* 96FE0 800963E0 1460001C */  bnez       $v1, .L80096454
/* 96FE4 800963E4 00409821 */   addu      $s3, $v0, $zero
/* 96FE8 800963E8 86020018 */  lh         $v0, 0x18($s0)
/* 96FEC 800963EC 8603001A */  lh         $v1, 0x1A($s0)
/* 96FF0 800963F0 00021040 */  sll        $v0, $v0, 1
/* 96FF4 800963F4 00551021 */  addu       $v0, $v0, $s5
/* 96FF8 800963F8 84420000 */  lh         $v0, 0x0($v0)
/* 96FFC 800963FC 00620018 */  mult       $v1, $v0
/* 97000 80096400 00001812 */  mflo       $v1
/* 97004 80096404 86020018 */  lh         $v0, 0x18($s0)
/* 97008 80096408 2408007F */  addiu      $t0, $zero, 0x7F
/* 9700C 8009640C 01021023 */  subu       $v0, $t0, $v0
/* 97010 80096410 00021040 */  sll        $v0, $v0, 1
/* 97014 80096414 00551021 */  addu       $v0, $v0, $s5
/* 97018 80096418 00031BC3 */  sra        $v1, $v1, 15
/* 9701C 8009641C A6030028 */  sh         $v1, 0x28($s0)
/* 97020 80096420 8603001A */  lh         $v1, 0x1A($s0)
/* 97024 80096424 84420000 */  lh         $v0, 0x0($v0)
/* 97028 80096428 00620018 */  mult       $v1, $v0
/* 9702C 8009642C 00001812 */  mflo       $v1
/* 97030 80096430 8E020034 */  lw         $v0, 0x34($s0)
/* 97034 80096434 00031BC3 */  sra        $v1, $v1, 15
/* 97038 80096438 A603002E */  sh         $v1, 0x2E($s0)
/* 9703C 8009643C 96030028 */  lhu        $v1, 0x28($s0)
/* 97040 80096440 9604002E */  lhu        $a0, 0x2E($s0)
/* 97044 80096444 AE020030 */  sw         $v0, 0x30($s0)
/* 97048 80096448 A603001C */  sh         $v1, 0x1C($s0)
/* 9704C 8009644C 0802592B */  j          .L800964AC
/* 97050 80096450 A604001E */   sh        $a0, 0x1E($s0)
.L80096454:
/* 97054 80096454 86060026 */  lh         $a2, 0x26($s0)
/* 97058 80096458 8602001C */  lh         $v0, 0x1C($s0)
/* 9705C 8009645C 96070024 */  lhu        $a3, 0x24($s0)
/* 97060 80096460 44826000 */  mtc1       $v0, $f12
/* 97064 80096464 00000000 */  nop
/* 97068 80096468 0C025B91 */  jal        func_80096E44
/* 9706C 8009646C 46806320 */   cvt.s.w   $f12, $f12
/* 97070 80096470 8E050030 */  lw         $a1, 0x30($s0)
/* 97074 80096474 8606002C */  lh         $a2, 0x2C($s0)
/* 97078 80096478 9607002A */  lhu        $a3, 0x2A($s0)
/* 9707C 8009647C 8603001E */  lh         $v1, 0x1E($s0)
/* 97080 80096480 4600008D */  trunc.w.s  $f2, $f0
/* 97084 80096484 44021000 */  mfc1       $v0, $f2
/* 97088 80096488 44836000 */  mtc1       $v1, $f12
/* 9708C 8009648C 00000000 */  nop
/* 97090 80096490 46806320 */  cvt.s.w    $f12, $f12
/* 97094 80096494 0C025B91 */  jal        func_80096E44
/* 97098 80096498 A602001C */   sh        $v0, 0x1C($s0)
/* 9709C 8009649C 4600008D */  trunc.w.s  $f2, $f0
/* 970A0 800964A0 44021000 */  mfc1       $v0, $f2
/* 970A4 800964A4 00000000 */  nop
/* 970A8 800964A8 A602001E */  sh         $v0, 0x1E($s0)
.L800964AC:
/* 970AC 800964AC 8602001C */  lh         $v0, 0x1C($s0)
/* 970B0 800964B0 50400001 */  beql       $v0, $zero, .L800964B8
/* 970B4 800964B4 A61E001C */   sh        $fp, 0x1C($s0)
.L800964B8:
/* 970B8 800964B8 8602001E */  lh         $v0, 0x1E($s0)
/* 970BC 800964BC 50400001 */  beql       $v0, $zero, .L800964C4
/* 970C0 800964C0 A61E001E */   sh        $fp, 0x1E($s0)
.L800964C4:
/* 970C4 800964C4 8E04003C */  lw         $a0, 0x3C($s0)
/* 970C8 800964C8 84830008 */  lh         $v1, 0x8($a0)
/* 970CC 800964CC 2402000C */  addiu      $v0, $zero, 0xC
/* 970D0 800964D0 14620003 */  bne        $v1, $v0, .L800964E0
/* 970D4 800964D4 00000000 */   nop
/* 970D8 800964D8 8C82000C */  lw         $v0, 0xC($a0)
/* 970DC 800964DC A6020018 */  sh         $v0, 0x18($s0)
.L800964E0:
/* 970E0 800964E0 8E02003C */  lw         $v0, 0x3C($s0)
/* 970E4 800964E4 84430008 */  lh         $v1, 0x8($v0)
/* 970E8 800964E8 2402000B */  addiu      $v0, $zero, 0xB
/* 970EC 800964EC 1462000B */  bne        $v1, $v0, .L8009651C
/* 970F0 800964F0 00000000 */   nop
/* 970F4 800964F4 8E02003C */  lw         $v0, 0x3C($s0)
/* 970F8 800964F8 AE000030 */  sw         $zero, 0x30($s0)
/* 970FC 800964FC 8C42000C */  lw         $v0, 0xC($v0)
/* 97100 80096500 00420018 */  mult       $v0, $v0
/* 97104 80096504 00001012 */  mflo       $v0
/* 97108 80096508 8E03003C */  lw         $v1, 0x3C($s0)
/* 9710C 8009650C 000213C3 */  sra        $v0, $v0, 15
/* 97110 80096510 A602001A */  sh         $v0, 0x1A($s0)
/* 97114 80096514 8C620010 */  lw         $v0, 0x10($v1)
/* 97118 80096518 AE020034 */  sw         $v0, 0x34($s0)
.L8009651C:
/* 9711C 8009651C 8E04003C */  lw         $a0, 0x3C($s0)
/* 97120 80096520 84830008 */  lh         $v1, 0x8($a0)
/* 97124 80096524 24020010 */  addiu      $v0, $zero, 0x10
/* 97128 80096528 54620047 */  bnel       $v1, $v0, .L80096648
/* 9712C 8009652C AE1E0038 */   sw        $fp, 0x38($s0)
/* 97130 80096530 8C82000C */  lw         $v0, 0xC($a0)
/* 97134 80096534 8E03003C */  lw         $v1, 0x3C($s0)
/* 97138 80096538 00021040 */  sll        $v0, $v0, 1
/* 9713C 8009653C 00551021 */  addu       $v0, $v0, $s5
/* 97140 80096540 94420000 */  lhu        $v0, 0x0($v0)
/* 97144 80096544 A6020020 */  sh         $v0, 0x20($s0)
/* 97148 80096548 8C62000C */  lw         $v0, 0xC($v1)
/* 9714C 8009654C 2408007F */  addiu      $t0, $zero, 0x7F
/* 97150 80096550 01021023 */  subu       $v0, $t0, $v0
/* 97154 80096554 00021040 */  sll        $v0, $v0, 1
/* 97158 80096558 00551021 */  addu       $v0, $v0, $s5
/* 9715C 8009655C 94420000 */  lhu        $v0, 0x0($v0)
/* 97160 80096560 A6020022 */  sh         $v0, 0x22($s0)
/* 97164 80096564 08025992 */  j          .L80096648
/* 97168 80096568 AE1E0038 */   sw        $fp, 0x38($s0)
glabel L8009656C
/* 9716C 8009656C 8E11003C */  lw         $s1, 0x3C($s0)
/* 97170 80096570 8622000A */  lh         $v0, 0xA($s1)
/* 97174 80096574 10400005 */  beqz       $v0, .L8009658C
/* 97178 80096578 02002021 */   addu      $a0, $s0, $zero
/* 9717C 8009657C 8E020008 */  lw         $v0, 0x8($s0)
/* 97180 80096580 24050008 */  addiu      $a1, $zero, 0x8
/* 97184 80096584 0040F809 */  jalr       $v0
/* 97188 80096588 00003021 */   addu      $a2, $zero, $zero
.L8009658C:
/* 9718C 8009658C 8E26000C */  lw         $a2, 0xC($s1)
/* 97190 80096590 8E020008 */  lw         $v0, 0x8($s0)
/* 97194 80096594 02002021 */  addu       $a0, $s0, $zero
/* 97198 80096598 0040F809 */  jalr       $v0
/* 9719C 8009659C 24050005 */   addiu     $a1, $zero, 0x5
/* 971A0 800965A0 02002021 */  addu       $a0, $s0, $zero
/* 971A4 800965A4 8E020008 */  lw         $v0, 0x8($s0)
/* 971A8 800965A8 08025977 */  j          .L800965DC
/* 971AC 800965AC 24050009 */   addiu     $a1, $zero, 0x9
glabel L800965B0
/* 971B0 800965B0 02002021 */  addu       $a0, $s0, $zero
/* 971B4 800965B4 27A50018 */  addiu      $a1, $sp, 0x18
/* 971B8 800965B8 27A6001A */  addiu      $a2, $sp, 0x1A
/* 971BC 800965BC 02403821 */  addu       $a3, $s2, $zero
/* 971C0 800965C0 AFB60010 */  sw         $s6, 0x10($sp)
/* 971C4 800965C4 0C0259F0 */  jal        func_800967C0
/* 971C8 800965C8 AFB30014 */   sw        $s3, 0x14($sp)
/* 971CC 800965CC 00409821 */  addu       $s3, $v0, $zero
/* 971D0 800965D0 02002021 */  addu       $a0, $s0, $zero
/* 971D4 800965D4 8E020008 */  lw         $v0, 0x8($s0)
/* 971D8 800965D8 24050004 */  addiu      $a1, $zero, 0x4
.L800965DC:
/* 971DC 800965DC 0040F809 */  jalr       $v0
/* 971E0 800965E0 00003021 */   addu      $a2, $zero, $zero
/* 971E4 800965E4 08025992 */  j          .L80096648
/* 971E8 800965E8 00000000 */   nop
glabel L800965EC
/* 971EC 800965EC 8E02003C */  lw         $v0, 0x3C($s0)
/* 971F0 800965F0 3C04800D */  lui        $a0, %hi(D_800C9D80)
/* 971F4 800965F4 8C849D80 */  lw         $a0, %lo(D_800C9D80)($a0)
/* 971F8 800965F8 8C43000C */  lw         $v1, 0xC($v0)
/* 971FC 800965FC AC6000D8 */  sw         $zero, 0xD8($v1)
/* 97200 80096600 0C0242AD */  jal        func_80090AB4
/* 97204 80096604 8C45000C */   lw        $a1, 0xC($v0)
/* 97208 80096608 08025992 */  j          .L80096648
/* 9720C 8009660C 00000000 */   nop
glabel L80096610
/* 97210 80096610 02002021 */  addu       $a0, $s0, $zero
/* 97214 80096614 27A50018 */  addiu      $a1, $sp, 0x18
/* 97218 80096618 27A6001A */  addiu      $a2, $sp, 0x1A
/* 9721C 8009661C 02403821 */  addu       $a3, $s2, $zero
/* 97220 80096620 AFB60010 */  sw         $s6, 0x10($sp)
/* 97224 80096624 0C0259F0 */  jal        func_800967C0
/* 97228 80096628 AFB30014 */   sw        $s3, 0x14($sp)
/* 9722C 8009662C 8E03003C */  lw         $v1, 0x3C($s0)
/* 97230 80096630 84650008 */  lh         $a1, 0x8($v1)
/* 97234 80096634 8C66000C */  lw         $a2, 0xC($v1)
/* 97238 80096638 8E030008 */  lw         $v1, 0x8($s0)
/* 9723C 8009663C 00409821 */  addu       $s3, $v0, $zero
/* 97240 80096640 0060F809 */  jalr       $v1
/* 97244 80096644 02002021 */   addu      $a0, $s0, $zero
.L80096648:
/* 97248 80096648 8E05003C */  lw         $a1, 0x3C($s0)
/* 9724C 8009664C 02F2B823 */  subu       $s7, $s7, $s2
/* 97250 80096650 97A2001A */  lhu        $v0, 0x1A($sp)
/* 97254 80096654 8CA40000 */  lw         $a0, 0x0($a1)
/* 97258 80096658 00121840 */  sll        $v1, $s2, 1
/* 9725C 8009665C 00431021 */  addu       $v0, $v0, $v1
/* 97260 80096660 A7A2001A */  sh         $v0, 0x1A($sp)
/* 97264 80096664 14800002 */  bnez       $a0, .L80096670
/* 97268 80096668 AE04003C */   sw        $a0, 0x3C($s0)
/* 9726C 8009666C AE000040 */  sw         $zero, 0x40($s0)
.L80096670:
/* 97270 80096670 0C024292 */  jal        func_80090A48
/* 97274 80096674 00A02021 */   addu      $a0, $a1, $zero
/* 97278 80096678 8E02003C */  lw         $v0, 0x3C($s0)
/* 9727C 8009667C 1440FEDF */  bnez       $v0, .L800961FC
/* 97280 80096680 00000000 */   nop
.L80096684:
/* 97284 80096684 02002021 */  addu       $a0, $s0, $zero
.L80096688:
/* 97288 80096688 27A50018 */  addiu      $a1, $sp, 0x18
/* 9728C 8009668C 27A6001A */  addiu      $a2, $sp, 0x1A
/* 97290 80096690 02E03821 */  addu       $a3, $s7, $zero
/* 97294 80096694 AFB60010 */  sw         $s6, 0x10($sp)
/* 97298 80096698 0C0259F0 */  jal        func_800967C0
/* 9729C 8009669C AFB30014 */   sw        $s3, 0x14($sp)
/* 972A0 800966A0 8E030030 */  lw         $v1, 0x30($s0)
/* 972A4 800966A4 8E040034 */  lw         $a0, 0x34($s0)
/* 972A8 800966A8 0083182A */  slt        $v1, $a0, $v1
/* 972AC 800966AC 10600002 */  beqz       $v1, .L800966B8
/* 972B0 800966B0 00409821 */   addu      $s3, $v0, $zero
/* 972B4 800966B4 AE040030 */  sw         $a0, 0x30($s0)
.L800966B8:
/* 972B8 800966B8 02601021 */  addu       $v0, $s3, $zero
/* 972BC 800966BC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 972C0 800966C0 8FBE0048 */  lw         $fp, 0x48($sp)
/* 972C4 800966C4 8FB70044 */  lw         $s7, 0x44($sp)
/* 972C8 800966C8 8FB60040 */  lw         $s6, 0x40($sp)
/* 972CC 800966CC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 972D0 800966D0 8FB40038 */  lw         $s4, 0x38($sp)
/* 972D4 800966D4 8FB30034 */  lw         $s3, 0x34($sp)
/* 972D8 800966D8 8FB20030 */  lw         $s2, 0x30($sp)
/* 972DC 800966DC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 972E0 800966E0 8FB00028 */  lw         $s0, 0x28($sp)
/* 972E4 800966E4 03E00008 */  jr         $ra
/* 972E8 800966E8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800966EC
/* 972EC 800966EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 972F0 800966F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 972F4 800966F4 24020003 */  addiu      $v0, $zero, 0x3
/* 972F8 800966F8 10A2000F */  beq        $a1, $v0, .L80096738
/* 972FC 800966FC 00801821 */   addu      $v1, $a0, $zero
/* 97300 80096700 28A20004 */  slti       $v0, $a1, 0x4
/* 97304 80096704 10400005 */  beqz       $v0, .L8009671C
/* 97308 80096708 24020001 */   addiu     $v0, $zero, 0x1
/* 9730C 8009670C 50A20028 */  beql       $a1, $v0, .L800967B0
/* 97310 80096710 AC860000 */   sw        $a2, 0x0($a0)
/* 97314 80096714 080259E6 */  j          .L80096798
/* 97318 80096718 00000000 */   nop
.L8009671C:
/* 9731C 8009671C 24020004 */  addiu      $v0, $zero, 0x4
/* 97320 80096720 10A2000B */  beq        $a1, $v0, .L80096750
/* 97324 80096724 24020009 */   addiu     $v0, $zero, 0x9
/* 97328 80096728 10A20014 */  beq        $a1, $v0, .L8009677C
/* 9732C 8009672C 24020001 */   addiu     $v0, $zero, 0x1
/* 97330 80096730 080259E6 */  j          .L80096798
/* 97334 80096734 00000000 */   nop
.L80096738:
/* 97338 80096738 8C820040 */  lw         $v0, 0x40($a0)
/* 9733C 8009673C 50400002 */  beql       $v0, $zero, .L80096748
/* 97340 80096740 AC86003C */   sw        $a2, 0x3C($a0)
/* 97344 80096744 AC460000 */  sw         $a2, 0x0($v0)
.L80096748:
/* 97348 80096748 080259EC */  j          .L800967B0
/* 9734C 8009674C AC660040 */   sw        $a2, 0x40($v1)
.L80096750:
/* 97350 80096750 8C830000 */  lw         $v1, 0x0($a0)
/* 97354 80096754 24020001 */  addiu      $v0, $zero, 0x1
/* 97358 80096758 AC820038 */  sw         $v0, 0x38($a0)
/* 9735C 8009675C 24020001 */  addiu      $v0, $zero, 0x1
/* 97360 80096760 AC800048 */  sw         $zero, 0x48($a0)
/* 97364 80096764 10600012 */  beqz       $v1, .L800967B0
/* 97368 80096768 A482001A */   sh        $v0, 0x1A($a0)
/* 9736C 8009676C 00602021 */  addu       $a0, $v1, $zero
/* 97370 80096770 8C820008 */  lw         $v0, 0x8($a0)
/* 97374 80096774 080259EA */  j          .L800967A8
/* 97378 80096778 24050004 */   addiu     $a1, $zero, 0x4
.L8009677C:
/* 9737C 8009677C 8C830000 */  lw         $v1, 0x0($a0)
/* 97380 80096780 1060000B */  beqz       $v1, .L800967B0
/* 97384 80096784 AC820048 */   sw        $v0, 0x48($a0)
/* 97388 80096788 00602021 */  addu       $a0, $v1, $zero
/* 9738C 8009678C 8C820008 */  lw         $v0, 0x8($a0)
/* 97390 80096790 080259EA */  j          .L800967A8
/* 97394 80096794 24050009 */   addiu     $a1, $zero, 0x9
.L80096798:
/* 97398 80096798 8C840000 */  lw         $a0, 0x0($a0)
/* 9739C 8009679C 10800004 */  beqz       $a0, .L800967B0
/* 973A0 800967A0 00000000 */   nop
/* 973A4 800967A4 8C820008 */  lw         $v0, 0x8($a0)
.L800967A8:
/* 973A8 800967A8 0040F809 */  jalr       $v0
/* 973AC 800967AC 00000000 */   nop
.L800967B0:
/* 973B0 800967B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 973B4 800967B4 00001021 */  addu       $v0, $zero, $zero
/* 973B8 800967B8 03E00008 */  jr         $ra
/* 973BC 800967BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800967C0
/* 973C0 800967C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 973C4 800967C4 AFB20028 */  sw         $s2, 0x28($sp)
/* 973C8 800967C8 8FB20054 */  lw         $s2, 0x54($sp)
/* 973CC 800967CC AFB50034 */  sw         $s5, 0x34($sp)
/* 973D0 800967D0 00A0A821 */  addu       $s5, $a1, $zero
/* 973D4 800967D4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 973D8 800967D8 AFB40030 */  sw         $s4, 0x30($sp)
/* 973DC 800967DC 00E0A021 */  addu       $s4, $a3, $zero
/* 973E0 800967E0 AFB10024 */  sw         $s1, 0x24($sp)
/* 973E4 800967E4 00808821 */  addu       $s1, $a0, $zero
/* 973E8 800967E8 AFBF0038 */  sw         $ra, 0x38($sp)
/* 973EC 800967EC AFB00020 */  sw         $s0, 0x20($sp)
/* 973F0 800967F0 8E220048 */  lw         $v0, 0x48($s1)
/* 973F4 800967F4 8E300000 */  lw         $s0, 0x0($s1)
/* 973F8 800967F8 2E830001 */  sltiu      $v1, $s4, 0x1
/* 973FC 800967FC 38420001 */  xori       $v0, $v0, 0x1
/* 97400 80096800 0002102B */  sltu       $v0, $zero, $v0
/* 97404 80096804 00431025 */  or         $v0, $v0, $v1
/* 97408 80096808 10400003 */  beqz       $v0, .L80096818
/* 9740C 8009680C 00C09821 */   addu      $s3, $a2, $zero
/* 97410 80096810 08025AA7 */  j          .L80096A9C
/* 97414 80096814 02401021 */   addu      $v0, $s2, $zero
.L80096818:
/* 97418 80096818 16000008 */  bnez       $s0, .L8009683C
/* 9741C 8009681C 02002021 */   addu      $a0, $s0, $zero
/* 97420 80096820 3C04800D */  lui        $a0, %hi(D_800D6C90)
/* 97424 80096824 24846C90 */  addiu      $a0, $a0, %lo(D_800D6C90)
/* 97428 80096828 3C05800D */  lui        $a1, %hi(D_800D6C94)
/* 9742C 8009682C 24A56C94 */  addiu      $a1, $a1, %lo(D_800D6C94)
/* 97430 80096830 0C0006E0 */  jal        func_80001B80
/* 97434 80096834 2406016F */   addiu     $a2, $zero, 0x16F
/* 97438 80096838 02002021 */  addu       $a0, $s0, $zero
.L8009683C:
/* 9743C 8009683C AFB20010 */  sw         $s2, 0x10($sp)
/* 97440 80096840 8C820004 */  lw         $v0, 0x4($a0)
/* 97444 80096844 8FA70050 */  lw         $a3, 0x50($sp)
/* 97448 80096848 02A02821 */  addu       $a1, $s5, $zero
/* 9744C 8009684C 0040F809 */  jalr       $v0
/* 97450 80096850 02803021 */   addu      $a2, $s4, $zero
/* 97454 80096854 00409021 */  addu       $s2, $v0, $zero
/* 97458 80096858 96A20000 */  lhu        $v0, 0x0($s5)
/* 9745C 8009685C 02402021 */  addu       $a0, $s2, $zero
/* 97460 80096860 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 97464 80096864 26520008 */  addiu      $s2, $s2, 0x8
/* 97468 80096868 00431025 */  or         $v0, $v0, $v1
/* 9746C 8009686C AC820000 */  sw         $v0, 0x0($a0)
/* 97470 80096870 86620000 */  lh         $v0, 0x0($s3)
/* 97474 80096874 00141840 */  sll        $v1, $s4, 1
/* 97478 80096878 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 9747C 8009687C 24420440 */  addiu      $v0, $v0, 0x440
/* 97480 80096880 00021400 */  sll        $v0, $v0, 16
/* 97484 80096884 00431025 */  or         $v0, $v0, $v1
/* 97488 80096888 AC820004 */  sw         $v0, 0x4($a0)
/* 9748C 8009688C 86620000 */  lh         $v0, 0x0($s3)
/* 97490 80096890 02402021 */  addu       $a0, $s2, $zero
/* 97494 80096894 3C030808 */  lui        $v1, (0x8080000 >> 16)
/* 97498 80096898 24420580 */  addiu      $v0, $v0, 0x580
/* 9749C 8009689C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 974A0 800968A0 00431025 */  or         $v0, $v0, $v1
/* 974A4 800968A4 AC820000 */  sw         $v0, 0x0($a0)
/* 974A8 800968A8 86620000 */  lh         $v0, 0x0($s3)
/* 974AC 800968AC 244306C0 */  addiu      $v1, $v0, 0x6C0
/* 974B0 800968B0 00031C00 */  sll        $v1, $v1, 16
/* 974B4 800968B4 24420800 */  addiu      $v0, $v0, 0x800
/* 974B8 800968B8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 974BC 800968BC 00621825 */  or         $v1, $v1, $v0
/* 974C0 800968C0 AC830004 */  sw         $v1, 0x4($a0)
/* 974C4 800968C4 8E220038 */  lw         $v0, 0x38($s1)
/* 974C8 800968C8 10400065 */  beqz       $v0, .L80096A60
/* 974CC 800968CC 26520008 */   addiu     $s2, $s2, 0x8
/* 974D0 800968D0 86220018 */  lh         $v0, 0x18($s1)
/* 974D4 800968D4 8623001A */  lh         $v1, 0x1A($s1)
/* 974D8 800968D8 AE200038 */  sw         $zero, 0x38($s1)
/* 974DC 800968DC 00021040 */  sll        $v0, $v0, 1
/* 974E0 800968E0 3C01800D */  lui        $at, %hi(D_800CB0E0)
/* 974E4 800968E4 00220821 */  addu       $at, $at, $v0
/* 974E8 800968E8 8422B0E0 */  lh         $v0, %lo(D_800CB0E0)($at)
/* 974EC 800968EC 00620018 */  mult       $v1, $v0
/* 974F0 800968F0 00001812 */  mflo       $v1
/* 974F4 800968F4 8622001C */  lh         $v0, 0x1C($s1)
/* 974F8 800968F8 8E240034 */  lw         $a0, 0x34($s1)
/* 974FC 800968FC 44826000 */  mtc1       $v0, $f12
/* 97500 80096900 00000000 */  nop
/* 97504 80096904 46806321 */  cvt.d.w    $f12, $f12
/* 97508 80096908 00031BC3 */  sra        $v1, $v1, 15
/* 9750C 8009690C 00031400 */  sll        $v0, $v1, 16
/* 97510 80096910 00021403 */  sra        $v0, $v0, 16
/* 97514 80096914 44827000 */  mtc1       $v0, $f14
/* 97518 80096918 00000000 */  nop
/* 9751C 8009691C 468073A1 */  cvt.d.w    $f14, $f14
/* 97520 80096920 26220024 */  addiu      $v0, $s1, 0x24
/* 97524 80096924 A6230028 */  sh         $v1, 0x28($s1)
/* 97528 80096928 AFA40010 */  sw         $a0, 0x10($sp)
/* 9752C 8009692C 0C025AF1 */  jal        func_80096BC4
/* 97530 80096930 AFA20014 */   sw        $v0, 0x14($sp)
/* 97534 80096934 86240018 */  lh         $a0, 0x18($s1)
/* 97538 80096938 8623001A */  lh         $v1, 0x1A($s1)
/* 9753C 8009693C A6220026 */  sh         $v0, 0x26($s1)
/* 97540 80096940 2402007F */  addiu      $v0, $zero, 0x7F
/* 97544 80096944 00441023 */  subu       $v0, $v0, $a0
/* 97548 80096948 00021040 */  sll        $v0, $v0, 1
/* 9754C 8009694C 3C01800D */  lui        $at, %hi(D_800CB0E0)
/* 97550 80096950 00220821 */  addu       $at, $at, $v0
/* 97554 80096954 8422B0E0 */  lh         $v0, %lo(D_800CB0E0)($at)
/* 97558 80096958 00620018 */  mult       $v1, $v0
/* 9755C 8009695C 00001812 */  mflo       $v1
/* 97560 80096960 8622001E */  lh         $v0, 0x1E($s1)
/* 97564 80096964 8E240034 */  lw         $a0, 0x34($s1)
/* 97568 80096968 44826000 */  mtc1       $v0, $f12
/* 9756C 8009696C 00000000 */  nop
/* 97570 80096970 46806321 */  cvt.d.w    $f12, $f12
/* 97574 80096974 00031BC3 */  sra        $v1, $v1, 15
/* 97578 80096978 00031400 */  sll        $v0, $v1, 16
/* 9757C 8009697C 00021403 */  sra        $v0, $v0, 16
/* 97580 80096980 44827000 */  mtc1       $v0, $f14
/* 97584 80096984 00000000 */  nop
/* 97588 80096988 468073A1 */  cvt.d.w    $f14, $f14
/* 9758C 8009698C 2622002A */  addiu      $v0, $s1, 0x2A
/* 97590 80096990 A623002E */  sh         $v1, 0x2E($s1)
/* 97594 80096994 AFA40010 */  sw         $a0, 0x10($sp)
/* 97598 80096998 0C025AF1 */  jal        func_80096BC4
/* 9759C 8009699C AFA20014 */   sw        $v0, 0x14($sp)
/* 975A0 800969A0 9623001C */  lhu        $v1, 0x1C($s1)
/* 975A4 800969A4 02402021 */  addu       $a0, $s2, $zero
/* 975A8 800969A8 26520008 */  addiu      $s2, $s2, 0x8
/* 975AC 800969AC A622002C */  sh         $v0, 0x2C($s1)
/* 975B0 800969B0 3C020906 */  lui        $v0, (0x9060000 >> 16)
/* 975B4 800969B4 AC800004 */  sw         $zero, 0x4($a0)
/* 975B8 800969B8 00621825 */  or         $v1, $v1, $v0
/* 975BC 800969BC AC830000 */  sw         $v1, 0x0($a0)
/* 975C0 800969C0 9623001E */  lhu        $v1, 0x1E($s1)
/* 975C4 800969C4 02402021 */  addu       $a0, $s2, $zero
/* 975C8 800969C8 26520008 */  addiu      $s2, $s2, 0x8
/* 975CC 800969CC 3C020904 */  lui        $v0, (0x9040000 >> 16)
/* 975D0 800969D0 AC800004 */  sw         $zero, 0x4($a0)
/* 975D4 800969D4 00621825 */  or         $v1, $v1, $v0
/* 975D8 800969D8 AC830000 */  sw         $v1, 0x0($a0)
/* 975DC 800969DC 96220028 */  lhu        $v0, 0x28($s1)
/* 975E0 800969E0 02402021 */  addu       $a0, $s2, $zero
/* 975E4 800969E4 3C030902 */  lui        $v1, (0x9020000 >> 16)
/* 975E8 800969E8 00431025 */  or         $v0, $v0, $v1
/* 975EC 800969EC AC820000 */  sw         $v0, 0x0($a0)
/* 975F0 800969F0 96220026 */  lhu        $v0, 0x26($s1)
/* 975F4 800969F4 96230024 */  lhu        $v1, 0x24($s1)
/* 975F8 800969F8 26520008 */  addiu      $s2, $s2, 0x8
/* 975FC 800969FC 00021400 */  sll        $v0, $v0, 16
/* 97600 80096A00 00431025 */  or         $v0, $v0, $v1
/* 97604 80096A04 AC820004 */  sw         $v0, 0x4($a0)
/* 97608 80096A08 9622002E */  lhu        $v0, 0x2E($s1)
/* 9760C 80096A0C 02402021 */  addu       $a0, $s2, $zero
/* 97610 80096A10 3C030900 */  lui        $v1, (0x9000000 >> 16)
/* 97614 80096A14 00431025 */  or         $v0, $v0, $v1
/* 97618 80096A18 AC820000 */  sw         $v0, 0x0($a0)
/* 9761C 80096A1C 9622002C */  lhu        $v0, 0x2C($s1)
/* 97620 80096A20 9623002A */  lhu        $v1, 0x2A($s1)
/* 97624 80096A24 26520008 */  addiu      $s2, $s2, 0x8
/* 97628 80096A28 00021400 */  sll        $v0, $v0, 16
/* 9762C 80096A2C 00431025 */  or         $v0, $v0, $v1
/* 97630 80096A30 AC820004 */  sw         $v0, 0x4($a0)
/* 97634 80096A34 96220020 */  lhu        $v0, 0x20($s1)
/* 97638 80096A38 02402021 */  addu       $a0, $s2, $zero
/* 9763C 80096A3C 3C030908 */  lui        $v1, (0x9080000 >> 16)
/* 97640 80096A40 00431025 */  or         $v0, $v0, $v1
/* 97644 80096A44 AC820000 */  sw         $v0, 0x0($a0)
/* 97648 80096A48 96220022 */  lhu        $v0, 0x22($s1)
/* 9764C 80096A4C 26520008 */  addiu      $s2, $s2, 0x8
/* 97650 80096A50 02408021 */  addu       $s0, $s2, $zero
/* 97654 80096A54 AC820004 */  sw         $v0, 0x4($a0)
/* 97658 80096A58 08025A9A */  j          .L80096A68
/* 9765C 80096A5C 3C020309 */   lui       $v0, (0x3090000 >> 16)
.L80096A60:
/* 97660 80096A60 02408021 */  addu       $s0, $s2, $zero
/* 97664 80096A64 3C020308 */  lui        $v0, (0x3080000 >> 16)
.L80096A68:
/* 97668 80096A68 AE020000 */  sw         $v0, 0x0($s0)
/* 9766C 80096A6C 8E240014 */  lw         $a0, 0x14($s1)
/* 97670 80096A70 0C0006C8 */  jal        osVirtualToPhysical
/* 97674 80096A74 26520008 */   addiu     $s2, $s2, 0x8
/* 97678 80096A78 AE020004 */  sw         $v0, 0x4($s0)
/* 9767C 80096A7C 96A20000 */  lhu        $v0, 0x0($s5)
/* 97680 80096A80 00141840 */  sll        $v1, $s4, 1
/* 97684 80096A84 00431021 */  addu       $v0, $v0, $v1
/* 97688 80096A88 A6A20000 */  sh         $v0, 0x0($s5)
/* 9768C 80096A8C 8E230030 */  lw         $v1, 0x30($s1)
/* 97690 80096A90 02401021 */  addu       $v0, $s2, $zero
/* 97694 80096A94 00741821 */  addu       $v1, $v1, $s4
/* 97698 80096A98 AE230030 */  sw         $v1, 0x30($s1)
.L80096A9C:
/* 9769C 80096A9C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 976A0 80096AA0 8FB50034 */  lw         $s5, 0x34($sp)
/* 976A4 80096AA4 8FB40030 */  lw         $s4, 0x30($sp)
/* 976A8 80096AA8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 976AC 80096AAC 8FB20028 */  lw         $s2, 0x28($sp)
/* 976B0 80096AB0 8FB10024 */  lw         $s1, 0x24($sp)
/* 976B4 80096AB4 8FB00020 */  lw         $s0, 0x20($sp)
/* 976B8 80096AB8 03E00008 */  jr         $ra
/* 976BC 80096ABC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80096AC0
/* 976C0 80096AC0 44800000 */  mtc1       $zero, $f0
/* 976C4 80096AC4 44800800 */  mtc1       $zero, $f1
/* 976C8 80096AC8 00000000 */  nop
/* 976CC 80096ACC 46206032 */  c.eq.d     $f12, $f0
/* 976D0 80096AD0 00000000 */  nop
/* 976D4 80096AD4 00000000 */  nop
/* 976D8 80096AD8 45000003 */  bc1f       .L80096AE8
/* 976DC 80096ADC ACC00000 */   sw        $zero, 0x0($a2)
/* 976E0 80096AE0 08025AE6 */  j          .L80096B98
/* 976E4 80096AE4 46206006 */   mov.d     $f0, $f12
.L80096AE8:
/* 976E8 80096AE8 462C003C */  c.lt.d     $f0, $f12
/* 976EC 80096AEC 00000000 */  nop
/* 976F0 80096AF0 00000000 */  nop
/* 976F4 80096AF4 45010002 */  bc1t       .L80096B00
/* 976F8 80096AF8 46206086 */   mov.d     $f2, $f12
/* 976FC 80096AFC 46206087 */  neg.d      $f2, $f12
.L80096B00:
/* 97700 80096B00 3C01800D */  lui        $at, %hi(D_800D6CE8)
/* 97704 80096B04 D4206CE8 */  ldc1       $f0, %lo(D_800D6CE8)($at)
/* 97708 80096B08 4622003E */  c.le.d     $f0, $f2
/* 9770C 80096B0C 00000000 */  nop
/* 97710 80096B10 4500000B */  bc1f       .L80096B40
/* 97714 80096B14 00000000 */   nop
/* 97718 80096B18 3C01800D */  lui        $at, %hi(D_800D6CF0)
/* 9771C 80096B1C D4246CF0 */  ldc1       $f4, %lo(D_800D6CF0)($at)
.L80096B20:
/* 97720 80096B20 00000000 */  nop
/* 97724 80096B24 46241082 */  mul.d      $f2, $f2, $f4
/* 97728 80096B28 8CC20000 */  lw         $v0, 0x0($a2)
/* 9772C 80096B2C 4622003E */  c.le.d     $f0, $f2
/* 97730 80096B30 24420001 */  addiu      $v0, $v0, 0x1
/* 97734 80096B34 00000000 */  nop
/* 97738 80096B38 4501FFF9 */  bc1t       .L80096B20
/* 9773C 80096B3C ACC20000 */   sw        $v0, 0x0($a2)
.L80096B40:
/* 97740 80096B40 3C01800D */  lui        $at, %hi(D_800D6CF8)
/* 97744 80096B44 D4206CF8 */  ldc1       $f0, %lo(D_800D6CF8)($at)
/* 97748 80096B48 4620103C */  c.lt.d     $f2, $f0
/* 9774C 80096B4C 00000000 */  nop
/* 97750 80096B50 45000008 */  bc1f       .L80096B74
/* 97754 80096B54 00000000 */   nop
.L80096B58:
/* 97758 80096B58 46221080 */  add.d      $f2, $f2, $f2
/* 9775C 80096B5C 8CC20000 */  lw         $v0, 0x0($a2)
/* 97760 80096B60 4620103C */  c.lt.d     $f2, $f0
/* 97764 80096B64 2442FFFF */  addiu      $v0, $v0, -0x1
/* 97768 80096B68 00000000 */  nop
/* 9776C 80096B6C 4501FFFA */  bc1t       .L80096B58
/* 97770 80096B70 ACC20000 */   sw        $v0, 0x0($a2)
.L80096B74:
/* 97774 80096B74 44800000 */  mtc1       $zero, $f0
/* 97778 80096B78 44800800 */  mtc1       $zero, $f1
/* 9777C 80096B7C 00000000 */  nop
/* 97780 80096B80 462C003C */  c.lt.d     $f0, $f12
/* 97784 80096B84 00000000 */  nop
/* 97788 80096B88 00000000 */  nop
/* 9778C 80096B8C 45010002 */  bc1t       .L80096B98
/* 97790 80096B90 46201006 */   mov.d     $f0, $f2
/* 97794 80096B94 46200007 */  neg.d      $f0, $f0
.L80096B98:
/* 97798 80096B98 03E00008 */  jr         $ra
/* 9779C 80096B9C 00000000 */   nop

glabel func_80096BA0
/* 977A0 80096BA0 10C00006 */  beqz       $a2, .L80096BBC
/* 977A4 80096BA4 24020001 */   addiu     $v0, $zero, 0x1
/* 977A8 80096BA8 00C21004 */  sllv       $v0, $v0, $a2
/* 977AC 80096BAC 44820000 */  mtc1       $v0, $f0
/* 977B0 80096BB0 00000000 */  nop
/* 977B4 80096BB4 46800021 */  cvt.d.w    $f0, $f0
/* 977B8 80096BB8 46206302 */  mul.d      $f12, $f12, $f0
.L80096BBC:
/* 977BC 80096BBC 03E00008 */  jr         $ra
/* 977C0 80096BC0 46206006 */   mov.d     $f0, $f12

glabel func_80096BC4
/* 977C4 80096BC4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 977C8 80096BC8 8FA20058 */  lw         $v0, 0x58($sp)
/* 977CC 80096BCC 3C01800D */  lui        $at, %hi(D_800D6D40)
/* 977D0 80096BD0 D4226D40 */  ldc1       $f2, %lo(D_800D6D40)($at)
/* 977D4 80096BD4 8FA9005C */  lw         $t1, 0x5C($sp)
/* 977D8 80096BD8 44820000 */  mtc1       $v0, $f0
/* 977DC 80096BDC 00000000 */  nop
/* 977E0 80096BE0 46800021 */  cvt.d.w    $f0, $f0
/* 977E4 80096BE4 1440000C */  bnez       $v0, .L80096C18
/* 977E8 80096BE8 46201103 */   div.d     $f4, $f2, $f0
/* 977EC 80096BEC 462E603E */  c.le.d     $f12, $f14
/* 977F0 80096BF0 00000000 */  nop
/* 977F4 80096BF4 00000000 */  nop
/* 977F8 80096BF8 45000004 */  bc1f       .L80096C0C
/* 977FC 80096BFC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 97800 80096C00 A5220000 */  sh         $v0, 0x0($t1)
/* 97804 80096C04 08025B8F */  j          .L80096E3C
/* 97808 80096C08 24027FFF */   addiu     $v0, $zero, 0x7FFF
.L80096C0C:
/* 9780C 80096C0C A5200000 */  sh         $zero, 0x0($t1)
/* 97810 80096C10 08025B8F */  j          .L80096E3C
/* 97814 80096C14 00001021 */   addu      $v0, $zero, $zero
.L80096C18:
/* 97818 80096C18 4622703C */  c.lt.d     $f14, $f2
/* 9781C 80096C1C 00000000 */  nop
/* 97820 80096C20 00000000 */  nop
/* 97824 80096C24 45030001 */  bc1tl      .L80096C2C
/* 97828 80096C28 46201386 */   mov.d     $f14, $f2
.L80096C2C:
/* 9782C 80096C2C 44800000 */  mtc1       $zero, $f0
/* 97830 80096C30 44800800 */  mtc1       $zero, $f1
/* 97834 80096C34 00000000 */  nop
/* 97838 80096C38 4620603E */  c.le.d     $f12, $f0
/* 9783C 80096C3C 00000000 */  nop
/* 97840 80096C40 00000000 */  nop
/* 97844 80096C44 45030001 */  bc1tl      .L80096C4C
/* 97848 80096C48 46201306 */   mov.d     $f12, $f2
.L80096C4C:
/* 9784C 80096C4C 03A03821 */  addu       $a3, $sp, $zero
/* 97850 80096C50 3C06800D */  lui        $a2, %hi(D_800D6D00)
/* 97854 80096C54 24C66D00 */  addiu      $a2, $a2, %lo(D_800D6D00)
/* 97858 80096C58 24C80040 */  addiu      $t0, $a2, 0x40
.L80096C5C:
/* 9785C 80096C5C 8CC20000 */  lw         $v0, 0x0($a2)
/* 97860 80096C60 8CC30004 */  lw         $v1, 0x4($a2)
/* 97864 80096C64 8CC40008 */  lw         $a0, 0x8($a2)
/* 97868 80096C68 8CC5000C */  lw         $a1, 0xC($a2)
/* 9786C 80096C6C ACE20000 */  sw         $v0, 0x0($a3)
/* 97870 80096C70 ACE30004 */  sw         $v1, 0x4($a3)
/* 97874 80096C74 ACE40008 */  sw         $a0, 0x8($a3)
/* 97878 80096C78 ACE5000C */  sw         $a1, 0xC($a3)
/* 9787C 80096C7C 24C60010 */  addiu      $a2, $a2, 0x10
/* 97880 80096C80 14C8FFF6 */  bne        $a2, $t0, .L80096C5C
/* 97884 80096C84 24E70010 */   addiu     $a3, $a3, 0x10
/* 97888 80096C88 462C7303 */  div.d      $f12, $f14, $f12
/* 9788C 80096C8C 3C01800D */  lui        $at, %hi(D_800D6D48)
/* 97890 80096C90 D4206D48 */  ldc1       $f0, %lo(D_800D6D48)($at)
/* 97894 80096C94 46202002 */  mul.d      $f0, $f4, $f0
/* 97898 80096C98 44802000 */  mtc1       $zero, $f4
/* 9789C 80096C9C 44802800 */  mtc1       $zero, $f5
/* 978A0 80096CA0 00000000 */  nop
/* 978A4 80096CA4 46246032 */  c.eq.d     $f12, $f4
/* 978A8 80096CA8 4620008D */  trunc.w.d  $f2, $f0
/* 978AC 80096CAC 44041000 */  mfc1       $a0, $f2
/* 978B0 80096CB0 00000000 */  nop
/* 978B4 80096CB4 4501002E */  bc1t       .L80096D70
/* 978B8 80096CB8 AFA00040 */   sw        $zero, 0x40($sp)
/* 978BC 80096CBC 462C203C */  c.lt.d     $f4, $f12
/* 978C0 80096CC0 00000000 */  nop
/* 978C4 80096CC4 00000000 */  nop
/* 978C8 80096CC8 45010002 */  bc1t       .L80096CD4
/* 978CC 80096CCC 46206086 */   mov.d     $f2, $f12
/* 978D0 80096CD0 46206087 */  neg.d      $f2, $f12
.L80096CD4:
/* 978D4 80096CD4 3C01800D */  lui        $at, %hi(D_800D6D50)
/* 978D8 80096CD8 D4206D50 */  ldc1       $f0, %lo(D_800D6D50)($at)
/* 978DC 80096CDC 4622003E */  c.le.d     $f0, $f2
/* 978E0 80096CE0 00000000 */  nop
/* 978E4 80096CE4 4500000B */  bc1f       .L80096D14
/* 978E8 80096CE8 00000000 */   nop
/* 978EC 80096CEC 3C01800D */  lui        $at, %hi(D_800D6D58)
/* 978F0 80096CF0 D4246D58 */  ldc1       $f4, %lo(D_800D6D58)($at)
.L80096CF4:
/* 978F4 80096CF4 00000000 */  nop
/* 978F8 80096CF8 46241082 */  mul.d      $f2, $f2, $f4
/* 978FC 80096CFC 8FA20040 */  lw         $v0, 0x40($sp)
/* 97900 80096D00 4622003E */  c.le.d     $f0, $f2
/* 97904 80096D04 24420001 */  addiu      $v0, $v0, 0x1
/* 97908 80096D08 00000000 */  nop
/* 9790C 80096D0C 4501FFF9 */  bc1t       .L80096CF4
/* 97910 80096D10 AFA20040 */   sw        $v0, 0x40($sp)
.L80096D14:
/* 97914 80096D14 3C01800D */  lui        $at, %hi(D_800D6D60)
/* 97918 80096D18 D4206D60 */  ldc1       $f0, %lo(D_800D6D60)($at)
/* 9791C 80096D1C 4620103C */  c.lt.d     $f2, $f0
/* 97920 80096D20 00000000 */  nop
/* 97924 80096D24 45000008 */  bc1f       .L80096D48
/* 97928 80096D28 00000000 */   nop
.L80096D2C:
/* 9792C 80096D2C 46221080 */  add.d      $f2, $f2, $f2
/* 97930 80096D30 8FA20040 */  lw         $v0, 0x40($sp)
/* 97934 80096D34 4620103C */  c.lt.d     $f2, $f0
/* 97938 80096D38 2442FFFF */  addiu      $v0, $v0, -0x1
/* 9793C 80096D3C 00000000 */  nop
/* 97940 80096D40 4501FFFA */  bc1t       .L80096D2C
/* 97944 80096D44 AFA20040 */   sw        $v0, 0x40($sp)
.L80096D48:
/* 97948 80096D48 44800000 */  mtc1       $zero, $f0
/* 9794C 80096D4C 44800800 */  mtc1       $zero, $f1
/* 97950 80096D50 00000000 */  nop
/* 97954 80096D54 462C003C */  c.lt.d     $f0, $f12
/* 97958 80096D58 00000000 */  nop
/* 9795C 80096D5C 00000000 */  nop
/* 97960 80096D60 45010002 */  bc1t       .L80096D6C
/* 97964 80096D64 46201006 */   mov.d     $f0, $f2
/* 97968 80096D68 46200007 */  neg.d      $f0, $f0
.L80096D6C:
/* 9796C 80096D6C 46200306 */  mov.d      $f12, $f0
.L80096D70:
/* 97970 80096D70 3C01800D */  lui        $at, %hi(D_800D6D68)
/* 97974 80096D74 D4206D68 */  ldc1       $f0, %lo(D_800D6D68)($at)
/* 97978 80096D78 46206002 */  mul.d      $f0, $f12, $f0
/* 9797C 80096D7C 4620008D */  trunc.w.d  $f2, $f0
/* 97980 80096D80 44021000 */  mfc1       $v0, $f2
/* 97984 80096D84 00000000 */  nop
/* 97988 80096D88 000210C0 */  sll        $v0, $v0, 3
/* 9798C 80096D8C 005D1021 */  addu       $v0, $v0, $sp
/* 97990 80096D90 D440FFC0 */  ldc1       $f0, -0x40($v0)
/* 97994 80096D94 C7A20040 */  lwc1       $f2, 0x40($sp)
/* 97998 80096D98 468010A1 */  cvt.d.w    $f2, $f2
/* 9799C 80096D9C 46220000 */  add.d      $f0, $f0, $f2
/* 979A0 80096DA0 3C01800D */  lui        $at, %hi(D_800D6D70)
/* 979A4 80096DA4 D4226D70 */  ldc1       $f2, %lo(D_800D6D70)($at)
/* 979A8 80096DA8 46220002 */  mul.d      $f0, $f0, $f2
/* 979AC 80096DAC 3C01800D */  lui        $at, %hi(D_800D6D78)
/* 979B0 80096DB0 D4226D78 */  ldc1       $f2, %lo(D_800D6D78)($at)
/* 979B4 80096DB4 46220003 */  div.d      $f0, $f0, $f2
/* 979B8 80096DB8 3C01800D */  lui        $at, %hi(D_800D6D80)
/* 979BC 80096DBC D4226D80 */  ldc1       $f2, %lo(D_800D6D80)($at)
/* 979C0 80096DC0 10800007 */  beqz       $a0, .L80096DE0
/* 979C4 80096DC4 46220000 */   add.d     $f0, $f0, $f2
.L80096DC8:
/* 979C8 80096DC8 30820001 */  andi       $v0, $a0, 0x1
/* 979CC 80096DCC 54400001 */  bnel       $v0, $zero, .L80096DD4
/* 979D0 80096DD0 46201082 */   mul.d     $f2, $f2, $f0
.L80096DD4:
/* 979D4 80096DD4 00042043 */  sra        $a0, $a0, 1
/* 979D8 80096DD8 1480FFFB */  bnez       $a0, .L80096DC8
/* 979DC 80096DDC 46200002 */   mul.d     $f0, $f0, $f0
.L80096DE0:
/* 979E0 80096DE0 00000000 */  nop
/* 979E4 80096DE4 46221082 */  mul.d      $f2, $f2, $f2
/* 979E8 80096DE8 00000000 */  nop
/* 979EC 80096DEC 46221082 */  mul.d      $f2, $f2, $f2
/* 979F0 80096DF0 00000000 */  nop
/* 979F4 80096DF4 46221082 */  mul.d      $f2, $f2, $f2
/* 979F8 80096DF8 4620100D */  trunc.w.d  $f0, $f2
/* 979FC 80096DFC 44020000 */  mfc1       $v0, $f0
/* 97A00 80096E00 00000000 */  nop
/* 97A04 80096E04 00021400 */  sll        $v0, $v0, 16
/* 97A08 80096E08 00021403 */  sra        $v0, $v0, 16
/* 97A0C 80096E0C 44820000 */  mtc1       $v0, $f0
/* 97A10 80096E10 00000000 */  nop
/* 97A14 80096E14 46800020 */  cvt.s.w    $f0, $f0
/* 97A18 80096E18 46000021 */  cvt.d.s    $f0, $f0
/* 97A1C 80096E1C 46201001 */  sub.d      $f0, $f2, $f0
/* 97A20 80096E20 3C01800D */  lui        $at, %hi(D_800D6D88)
/* 97A24 80096E24 D4226D88 */  ldc1       $f2, %lo(D_800D6D88)($at)
/* 97A28 80096E28 46220002 */  mul.d      $f0, $f0, $f2
/* 97A2C 80096E2C 4620008D */  trunc.w.d  $f2, $f0
/* 97A30 80096E30 44031000 */  mfc1       $v1, $f2
/* 97A34 80096E34 00000000 */  nop
/* 97A38 80096E38 A5230000 */  sh         $v1, 0x0($t1)
.L80096E3C:
/* 97A3C 80096E3C 03E00008 */  jr         $ra
/* 97A40 80096E40 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80096E44
/* 97A44 80096E44 000528C3 */  sra        $a1, $a1, 3
/* 97A48 80096E48 14A00003 */  bnez       $a1, .L80096E58
/* 97A4C 80096E4C 00061400 */   sll       $v0, $a2, 16
/* 97A50 80096E50 08025BB0 */  j          .L80096EC0
/* 97A54 80096E54 46006006 */   mov.s     $f0, $f12
.L80096E58:
/* 97A58 80096E58 44821000 */  mtc1       $v0, $f2
/* 97A5C 80096E5C 00000000 */  nop
/* 97A60 80096E60 468010A0 */  cvt.s.w    $f2, $f2
/* 97A64 80096E64 30E2FFFF */  andi       $v0, $a3, 0xFFFF
/* 97A68 80096E68 44820000 */  mtc1       $v0, $f0
/* 97A6C 80096E6C 00000000 */  nop
/* 97A70 80096E70 46800020 */  cvt.s.w    $f0, $f0
/* 97A74 80096E74 46001080 */  add.s      $f2, $f2, $f0
/* 97A78 80096E78 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 97A7C 80096E7C 44810000 */  mtc1       $at, $f0
/* 97A80 80096E80 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 97A84 80096E84 44812000 */  mtc1       $at, $f4
/* 97A88 80096E88 00001821 */  addu       $v1, $zero, $zero
/* 97A8C 80096E8C 46001083 */  div.s      $f2, $f2, $f0
.L80096E90:
/* 97A90 80096E90 30A20001 */  andi       $v0, $a1, 0x1
/* 97A94 80096E94 54400001 */  bnel       $v0, $zero, .L80096E9C
/* 97A98 80096E98 46022102 */   mul.s     $f4, $f4, $f2
.L80096E9C:
/* 97A9C 80096E9C 00052843 */  sra        $a1, $a1, 1
/* 97AA0 80096EA0 50A00007 */  beql       $a1, $zero, .L80096EC0
/* 97AA4 80096EA4 46046002 */   mul.s     $f0, $f12, $f4
/* 97AA8 80096EA8 24630001 */  addiu      $v1, $v1, 0x1
/* 97AAC 80096EAC 28620020 */  slti       $v0, $v1, 0x20
/* 97AB0 80096EB0 1440FFF7 */  bnez       $v0, .L80096E90
/* 97AB4 80096EB4 46021082 */   mul.s     $f2, $f2, $f2
/* 97AB8 80096EB8 00000000 */  nop
/* 97ABC 80096EBC 46046002 */  mul.s      $f0, $f12, $f4
.L80096EC0:
/* 97AC0 80096EC0 03E00008 */  jr         $ra
/* 97AC4 80096EC4 00000000 */   nop
/* 97AC8 80096EC8 00000000 */  nop
/* 97ACC 80096ECC 00000000 */  nop

glabel func_80096ED0
/* 97AD0 80096ED0 AC800000 */  sw         $zero, 0x0($a0)
/* 97AD4 80096ED4 AC850004 */  sw         $a1, 0x4($a0)
/* 97AD8 80096ED8 AC860008 */  sw         $a2, 0x8($a0)
/* 97ADC 80096EDC A480000C */  sh         $zero, 0xC($a0)
/* 97AE0 80096EE0 A480000E */  sh         $zero, 0xE($a0)
/* 97AE4 80096EE4 03E00008 */  jr         $ra
/* 97AE8 80096EE8 AC870010 */   sw        $a3, 0x10($a0)
/* 97AEC 80096EEC 00000000 */  nop

glabel func_80096EF0
/* 97AF0 80096EF0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 97AF4 80096EF4 AFBE0048 */  sw         $fp, 0x48($sp)
/* 97AF8 80096EF8 00A0F021 */  addu       $fp, $a1, $zero
/* 97AFC 80096EFC AFB40038 */  sw         $s4, 0x38($sp)
/* 97B00 80096F00 00C0A021 */  addu       $s4, $a2, $zero
/* 97B04 80096F04 8FA60060 */  lw         $a2, 0x60($sp)
/* 97B08 80096F08 3C030200 */  lui        $v1, (0x2000440 >> 16)
/* 97B0C 80096F0C 34630440 */  ori        $v1, $v1, (0x2000440 & 0xFFFF)
/* 97B10 80096F10 3C050200 */  lui        $a1, (0x2000580 >> 16)
/* 97B14 80096F14 34A50580 */  ori        $a1, $a1, (0x2000580 & 0xFFFF)
/* 97B18 80096F18 AFB30034 */  sw         $s3, 0x34($sp)
/* 97B1C 80096F1C 00809821 */  addu       $s3, $a0, $zero
/* 97B20 80096F20 AFBF004C */  sw         $ra, 0x4C($sp)
/* 97B24 80096F24 AFB70044 */  sw         $s7, 0x44($sp)
/* 97B28 80096F28 AFB60040 */  sw         $s6, 0x40($sp)
/* 97B2C 80096F2C AFB5003C */  sw         $s5, 0x3C($sp)
/* 97B30 80096F30 AFB20030 */  sw         $s2, 0x30($sp)
/* 97B34 80096F34 AFB1002C */  sw         $s1, 0x2C($sp)
/* 97B38 80096F38 AFB00028 */  sw         $s0, 0x28($sp)
/* 97B3C 80096F3C AFA7001C */  sw         $a3, 0x1C($sp)
/* 97B40 80096F40 8E64001C */  lw         $a0, 0x1C($s3)
/* 97B44 80096F44 00C01021 */  addu       $v0, $a2, $zero
/* 97B48 80096F48 24C60008 */  addiu      $a2, $a2, 0x8
/* 97B4C 80096F4C AC430000 */  sw         $v1, 0x0($v0)
/* 97B50 80096F50 00141840 */  sll        $v1, $s4, 1
/* 97B54 80096F54 AC430004 */  sw         $v1, 0x4($v0)
/* 97B58 80096F58 00C01021 */  addu       $v0, $a2, $zero
/* 97B5C 80096F5C AC450000 */  sw         $a1, 0x0($v0)
/* 97B60 80096F60 AC430004 */  sw         $v1, 0x4($v0)
/* 97B64 80096F64 8E620014 */  lw         $v0, 0x14($s3)
/* 97B68 80096F68 00008821 */  addu       $s1, $zero, $zero
/* 97B6C 80096F6C 18400023 */  blez       $v0, .L80096FFC
/* 97B70 80096F70 24C60008 */   addiu     $a2, $a2, 0x8
/* 97B74 80096F74 3077FFFF */  andi       $s7, $v1, 0xFFFF
/* 97B78 80096F78 3C120C00 */  lui        $s2, (0xC007FFF >> 16)
/* 97B7C 80096F7C 36527FFF */  ori        $s2, $s2, (0xC007FFF & 0xFFFF)
/* 97B80 80096F80 3C1606C0 */  lui        $s6, (0x6C00440 >> 16)
/* 97B84 80096F84 36D60440 */  ori        $s6, $s6, (0x6C00440 & 0xFFFF)
/* 97B88 80096F88 3C150800 */  lui        $s5, (0x8000580 >> 16)
/* 97B8C 80096F8C 36B50580 */  ori        $s5, $s5, (0x8000580 & 0xFFFF)
/* 97B90 80096F90 00808021 */  addu       $s0, $a0, $zero
.L80096F94:
/* 97B94 80096F94 8E020000 */  lw         $v0, 0x0($s0)
/* 97B98 80096F98 AFA60010 */  sw         $a2, 0x10($sp)
/* 97B9C 80096F9C 8E040000 */  lw         $a0, 0x0($s0)
/* 97BA0 80096FA0 26100004 */  addiu      $s0, $s0, 0x4
/* 97BA4 80096FA4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 97BA8 80096FA8 8C420004 */  lw         $v0, 0x4($v0)
/* 97BAC 80096FAC 03C02821 */  addu       $a1, $fp, $zero
/* 97BB0 80096FB0 0040F809 */  jalr       $v0
/* 97BB4 80096FB4 02803021 */   addu      $a2, $s4, $zero
/* 97BB8 80096FB8 00403021 */  addu       $a2, $v0, $zero
/* 97BBC 80096FBC 24C60008 */  addiu      $a2, $a2, 0x8
/* 97BC0 80096FC0 00C01821 */  addu       $v1, $a2, $zero
/* 97BC4 80096FC4 24C60008 */  addiu      $a2, $a2, 0x8
/* 97BC8 80096FC8 3C080800 */  lui        $t0, (0x8000000 >> 16)
/* 97BCC 80096FCC AC480000 */  sw         $t0, 0x0($v0)
/* 97BD0 80096FD0 AC570004 */  sw         $s7, 0x4($v0)
/* 97BD4 80096FD4 00C01021 */  addu       $v0, $a2, $zero
/* 97BD8 80096FD8 AC720000 */  sw         $s2, 0x0($v1)
/* 97BDC 80096FDC AC760004 */  sw         $s6, 0x4($v1)
/* 97BE0 80096FE0 AC520000 */  sw         $s2, 0x0($v0)
/* 97BE4 80096FE4 AC550004 */  sw         $s5, 0x4($v0)
/* 97BE8 80096FE8 8E620014 */  lw         $v0, 0x14($s3)
/* 97BEC 80096FEC 26310001 */  addiu      $s1, $s1, 0x1
/* 97BF0 80096FF0 0222102A */  slt        $v0, $s1, $v0
/* 97BF4 80096FF4 1440FFE7 */  bnez       $v0, .L80096F94
/* 97BF8 80096FF8 24C60008 */   addiu     $a2, $a2, 0x8
.L80096FFC:
/* 97BFC 80096FFC 00C01021 */  addu       $v0, $a2, $zero
/* 97C00 80097000 8FBF004C */  lw         $ra, 0x4C($sp)
/* 97C04 80097004 8FBE0048 */  lw         $fp, 0x48($sp)
/* 97C08 80097008 8FB70044 */  lw         $s7, 0x44($sp)
/* 97C0C 8009700C 8FB60040 */  lw         $s6, 0x40($sp)
/* 97C10 80097010 8FB5003C */  lw         $s5, 0x3C($sp)
/* 97C14 80097014 8FB40038 */  lw         $s4, 0x38($sp)
/* 97C18 80097018 8FB30034 */  lw         $s3, 0x34($sp)
/* 97C1C 8009701C 8FB20030 */  lw         $s2, 0x30($sp)
/* 97C20 80097020 8FB1002C */  lw         $s1, 0x2C($sp)
/* 97C24 80097024 8FB00028 */  lw         $s0, 0x28($sp)
/* 97C28 80097028 03E00008 */  jr         $ra
/* 97C2C 8009702C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80097030
/* 97C30 80097030 8C87001C */  lw         $a3, 0x1C($a0)
/* 97C34 80097034 24020002 */  addiu      $v0, $zero, 0x2
/* 97C38 80097038 14A20007 */  bne        $a1, $v0, .L80097058
/* 97C3C 8009703C 00000000 */   nop
/* 97C40 80097040 8C820014 */  lw         $v0, 0x14($a0)
/* 97C44 80097044 24430001 */  addiu      $v1, $v0, 0x1
/* 97C48 80097048 00021080 */  sll        $v0, $v0, 2
/* 97C4C 8009704C 00471021 */  addu       $v0, $v0, $a3
/* 97C50 80097050 AC830014 */  sw         $v1, 0x14($a0)
/* 97C54 80097054 AC460000 */  sw         $a2, 0x0($v0)
.L80097058:
/* 97C58 80097058 03E00008 */  jr         $ra
/* 97C5C 8009705C 00001021 */   addu      $v0, $zero, $zero

glabel func_80097060
/* 97C60 80097060 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 97C64 80097064 AFB10024 */  sw         $s1, 0x24($sp)
/* 97C68 80097068 8FB10050 */  lw         $s1, 0x50($sp)
/* 97C6C 8009706C AFB20028 */  sw         $s2, 0x28($sp)
/* 97C70 80097070 00809021 */  addu       $s2, $a0, $zero
/* 97C74 80097074 AFB3002C */  sw         $s3, 0x2C($sp)
/* 97C78 80097078 AFB00020 */  sw         $s0, 0x20($sp)
/* 97C7C 8009707C 00C08021 */  addu       $s0, $a2, $zero
/* 97C80 80097080 24020140 */  addiu      $v0, $zero, 0x140
/* 97C84 80097084 AFBF0030 */  sw         $ra, 0x30($sp)
/* 97C88 80097088 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 97C8C 8009708C A7A20018 */  sh         $v0, 0x18($sp)
/* 97C90 80097090 8E440000 */  lw         $a0, 0x0($s2)
/* 97C94 80097094 12000064 */  beqz       $s0, .L80097228
/* 97C98 80097098 00A09821 */   addu      $s3, $a1, $zero
/* 97C9C 8009709C 8E42001C */  lw         $v0, 0x1C($s2)
/* 97CA0 800970A0 10400016 */  beqz       $v0, .L800970FC
/* 97CA4 800970A4 27A50018 */   addiu     $a1, $sp, 0x18
/* 97CA8 800970A8 AFB10010 */  sw         $s1, 0x10($sp)
/* 97CAC 800970AC 8C820004 */  lw         $v0, 0x4($a0)
/* 97CB0 800970B0 0040F809 */  jalr       $v0
/* 97CB4 800970B4 02003021 */   addu      $a2, $s0, $zero
/* 97CB8 800970B8 00408821 */  addu       $s1, $v0, $zero
/* 97CBC 800970BC 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 97CC0 800970C0 87A20018 */  lh         $v0, 0x18($sp)
/* 97CC4 800970C4 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 97CC8 800970C8 02202021 */  addu       $a0, $s1, $zero
/* 97CCC 800970CC 26310008 */  addiu      $s1, $s1, 0x8
/* 97CD0 800970D0 00431024 */  and        $v0, $v0, $v1
/* 97CD4 800970D4 3C030A00 */  lui        $v1, (0xA000000 >> 16)
/* 97CD8 800970D8 00431025 */  or         $v0, $v0, $v1
/* 97CDC 800970DC AC820000 */  sw         $v0, 0x0($a0)
/* 97CE0 800970E0 96630000 */  lhu        $v1, 0x0($s3)
/* 97CE4 800970E4 00101040 */  sll        $v0, $s0, 1
/* 97CE8 800970E8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 97CEC 800970EC 00031C00 */  sll        $v1, $v1, 16
/* 97CF0 800970F0 00621825 */  or         $v1, $v1, $v0
/* 97CF4 800970F4 08025C8A */  j          .L80097228
/* 97CF8 800970F8 AC830004 */   sw        $v1, 0x4($a0)
.L800970FC:
/* 97CFC 800970FC C6400018 */  lwc1       $f0, 0x18($s2)
/* 97D00 80097100 3C01800D */  lui        $at, %hi(D_800D6D90)
/* 97D04 80097104 D4226D90 */  ldc1       $f2, %lo(D_800D6D90)($at)
/* 97D08 80097108 46000021 */  cvt.d.s    $f0, $f0
/* 97D0C 8009710C 4620103C */  c.lt.d     $f2, $f0
/* 97D10 80097110 00000000 */  nop
/* 97D14 80097114 45000006 */  bc1f       .L80097130
/* 97D18 80097118 00000000 */   nop
/* 97D1C 8009711C 3C013FFF */  lui        $at, (0x3FFFFEB0 >> 16)
/* 97D20 80097120 3421FEB0 */  ori        $at, $at, (0x3FFFFEB0 & 0xFFFF)
/* 97D24 80097124 44810000 */  mtc1       $at, $f0
/* 97D28 80097128 00000000 */  nop
/* 97D2C 8009712C E6400018 */  swc1       $f0, 0x18($s2)
.L80097130:
/* 97D30 80097130 C6400018 */  lwc1       $f0, 0x18($s2)
/* 97D34 80097134 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 97D38 80097138 4481A000 */  mtc1       $at, $f20
/* 97D3C 8009713C 00000000 */  nop
/* 97D40 80097140 46140002 */  mul.s      $f0, $f0, $f20
/* 97D44 80097144 4600008D */  trunc.w.s  $f2, $f0
/* 97D48 80097148 44021000 */  mfc1       $v0, $f2
/* 97D4C 8009714C 00000000 */  nop
/* 97D50 80097150 44822000 */  mtc1       $v0, $f4
/* 97D54 80097154 00000000 */  nop
/* 97D58 80097158 46802120 */  cvt.s.w    $f4, $f4
/* 97D5C 8009715C 46142103 */  div.s      $f4, $f4, $f20
/* 97D60 80097160 44900000 */  mtc1       $s0, $f0
/* 97D64 80097164 00000000 */  nop
/* 97D68 80097168 46800020 */  cvt.s.w    $f0, $f0
/* 97D6C 8009716C 46002002 */  mul.s      $f0, $f4, $f0
/* 97D70 80097170 C6420020 */  lwc1       $f2, 0x20($s2)
/* 97D74 80097174 46001080 */  add.s      $f2, $f2, $f0
/* 97D78 80097178 4600100D */  trunc.w.s  $f0, $f2
/* 97D7C 8009717C 44060000 */  mfc1       $a2, $f0
/* 97D80 80097180 00000000 */  nop
/* 97D84 80097184 44860000 */  mtc1       $a2, $f0
/* 97D88 80097188 00000000 */  nop
/* 97D8C 8009718C 46800020 */  cvt.s.w    $f0, $f0
/* 97D90 80097190 46001081 */  sub.s      $f2, $f2, $f0
/* 97D94 80097194 E6440018 */  swc1       $f4, 0x18($s2)
/* 97D98 80097198 E6420020 */  swc1       $f2, 0x20($s2)
/* 97D9C 8009719C AFB10010 */  sw         $s1, 0x10($sp)
/* 97DA0 800971A0 8C820004 */  lw         $v0, 0x4($a0)
/* 97DA4 800971A4 0040F809 */  jalr       $v0
/* 97DA8 800971A8 27A50018 */   addiu     $a1, $sp, 0x18
/* 97DAC 800971AC 00408821 */  addu       $s1, $v0, $zero
/* 97DB0 800971B0 C6400018 */  lwc1       $f0, 0x18($s2)
/* 97DB4 800971B4 97A20018 */  lhu        $v0, 0x18($sp)
/* 97DB8 800971B8 02202021 */  addu       $a0, $s1, $zero
/* 97DBC 800971BC 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 97DC0 800971C0 00431025 */  or         $v0, $v0, $v1
/* 97DC4 800971C4 AC820000 */  sw         $v0, 0x0($a0)
/* 97DC8 800971C8 96630000 */  lhu        $v1, 0x0($s3)
/* 97DCC 800971CC 00101040 */  sll        $v0, $s0, 1
/* 97DD0 800971D0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 97DD4 800971D4 46140002 */  mul.s      $f0, $f0, $f20
/* 97DD8 800971D8 00031C00 */  sll        $v1, $v1, 16
/* 97DDC 800971DC 00621825 */  or         $v1, $v1, $v0
/* 97DE0 800971E0 AC830004 */  sw         $v1, 0x4($a0)
/* 97DE4 800971E4 92440027 */  lbu        $a0, 0x27($s2)
/* 97DE8 800971E8 26310008 */  addiu      $s1, $s1, 0x8
/* 97DEC 800971EC 02208021 */  addu       $s0, $s1, $zero
/* 97DF0 800971F0 00042400 */  sll        $a0, $a0, 16
/* 97DF4 800971F4 4600008D */  trunc.w.s  $f2, $f0
/* 97DF8 800971F8 44021000 */  mfc1       $v0, $f2
/* 97DFC 800971FC 00000000 */  nop
/* 97E00 80097200 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 97E04 80097204 3C030500 */  lui        $v1, (0x5000000 >> 16)
/* 97E08 80097208 00431025 */  or         $v0, $v0, $v1
/* 97E0C 8009720C 00822025 */  or         $a0, $a0, $v0
/* 97E10 80097210 AE040000 */  sw         $a0, 0x0($s0)
/* 97E14 80097214 8E440014 */  lw         $a0, 0x14($s2)
/* 97E18 80097218 0C0006C8 */  jal        osVirtualToPhysical
/* 97E1C 8009721C 26310008 */   addiu     $s1, $s1, 0x8
/* 97E20 80097220 AE020004 */  sw         $v0, 0x4($s0)
/* 97E24 80097224 AE400024 */  sw         $zero, 0x24($s2)
.L80097228:
/* 97E28 80097228 02201021 */  addu       $v0, $s1, $zero
/* 97E2C 8009722C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 97E30 80097230 8FB3002C */  lw         $s3, 0x2C($sp)
/* 97E34 80097234 8FB20028 */  lw         $s2, 0x28($sp)
/* 97E38 80097238 8FB10024 */  lw         $s1, 0x24($sp)
/* 97E3C 8009723C 8FB00020 */  lw         $s0, 0x20($sp)
/* 97E40 80097240 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 97E44 80097244 03E00008 */  jr         $ra
/* 97E48 80097248 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8009724C
/* 97E4C 8009724C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97E50 80097250 AFBF0010 */  sw         $ra, 0x10($sp)
/* 97E54 80097254 24A7FFFF */  addiu      $a3, $a1, -0x1
/* 97E58 80097258 2CE20009 */  sltiu      $v0, $a3, 0x9
/* 97E5C 8009725C 10400021 */  beqz       $v0, L800972E4
/* 97E60 80097260 00801821 */   addu      $v1, $a0, $zero
/* 97E64 80097264 00071080 */  sll        $v0, $a3, 2
/* 97E68 80097268 3C01800D */  lui        $at, %hi(jtbl_800D6D98_main)
/* 97E6C 8009726C 00220821 */  addu       $at, $at, $v0
/* 97E70 80097270 8C226D98 */  lw         $v0, %lo(jtbl_800D6D98_main)($at)
/* 97E74 80097274 00400008 */  jr         $v0
/* 97E78 80097278 00000000 */   nop
glabel L8009727C
/* 97E7C 8009727C 08025CBF */  j          .L800972FC
/* 97E80 80097280 AC860000 */   sw        $a2, 0x0($a0)
glabel L80097284
/* 97E84 80097284 24020001 */  addiu      $v0, $zero, 0x1
/* 97E88 80097288 AC600020 */  sw         $zero, 0x20($v1)
/* 97E8C 8009728C AC620024 */  sw         $v0, 0x24($v1)
/* 97E90 80097290 AC600030 */  sw         $zero, 0x30($v1)
/* 97E94 80097294 AC60001C */  sw         $zero, 0x1C($v1)
/* 97E98 80097298 8C840000 */  lw         $a0, 0x0($a0)
/* 97E9C 8009729C 10800017 */  beqz       $a0, .L800972FC
/* 97EA0 800972A0 24050004 */   addiu     $a1, $zero, 0x4
/* 97EA4 800972A4 8C820008 */  lw         $v0, 0x8($a0)
/* 97EA8 800972A8 08025CBD */  j          .L800972F4
/* 97EAC 800972AC 00003021 */   addu      $a2, $zero, $zero
glabel L800972B0
/* 97EB0 800972B0 24020001 */  addiu      $v0, $zero, 0x1
/* 97EB4 800972B4 AC620030 */  sw         $v0, 0x30($v1)
/* 97EB8 800972B8 8C840000 */  lw         $a0, 0x0($a0)
/* 97EBC 800972BC 1080000F */  beqz       $a0, .L800972FC
/* 97EC0 800972C0 24050009 */   addiu     $a1, $zero, 0x9
/* 97EC4 800972C4 8C820008 */  lw         $v0, 0x8($a0)
/* 97EC8 800972C8 08025CBD */  j          .L800972F4
/* 97ECC 800972CC 00003021 */   addu      $a2, $zero, $zero
glabel L800972D0
/* 97ED0 800972D0 08025CBF */  j          .L800972FC
/* 97ED4 800972D4 AC660018 */   sw        $a2, 0x18($v1)
glabel L800972D8
/* 97ED8 800972D8 24020001 */  addiu      $v0, $zero, 0x1
/* 97EDC 800972DC 08025CBF */  j          .L800972FC
/* 97EE0 800972E0 AC62001C */   sw        $v0, 0x1C($v1)
glabel L800972E4
/* 97EE4 800972E4 8C840000 */  lw         $a0, 0x0($a0)
/* 97EE8 800972E8 10800004 */  beqz       $a0, .L800972FC
/* 97EEC 800972EC 00000000 */   nop
/* 97EF0 800972F0 8C820008 */  lw         $v0, 0x8($a0)
.L800972F4:
/* 97EF4 800972F4 0040F809 */  jalr       $v0
/* 97EF8 800972F8 00000000 */   nop
.L800972FC:
/* 97EFC 800972FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 97F00 80097300 00001021 */  addu       $v0, $zero, $zero
/* 97F04 80097304 03E00008 */  jr         $ra
/* 97F08 80097308 27BD0018 */   addiu     $sp, $sp, 0x18
/* 97F0C 8009730C 00000000 */  nop

glabel func_80097310
/* 97F10 80097310 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 97F14 80097314 AFB20048 */  sw         $s2, 0x48($sp)
/* 97F18 80097318 00A09021 */  addu       $s2, $a1, $zero
/* 97F1C 8009731C AFB50054 */  sw         $s5, 0x54($sp)
/* 97F20 80097320 00C0A821 */  addu       $s5, $a2, $zero
/* 97F24 80097324 AFB40050 */  sw         $s4, 0x50($sp)
/* 97F28 80097328 00E0A021 */  addu       $s4, $a3, $zero
/* 97F2C 8009732C AFB3004C */  sw         $s3, 0x4C($sp)
/* 97F30 80097330 00809821 */  addu       $s3, $a0, $zero
/* 97F34 80097334 AFBF0064 */  sw         $ra, 0x64($sp)
/* 97F38 80097338 AFBE0060 */  sw         $fp, 0x60($sp)
/* 97F3C 8009733C AFB7005C */  sw         $s7, 0x5C($sp)
/* 97F40 80097340 AFB60058 */  sw         $s6, 0x58($sp)
/* 97F44 80097344 AFB10044 */  sw         $s1, 0x44($sp)
/* 97F48 80097348 AFB00040 */  sw         $s0, 0x40($sp)
/* 97F4C 8009734C 8E700000 */  lw         $s0, 0x0($s3)
/* 97F50 80097350 8FB10078 */  lw         $s1, 0x78($sp)
/* 97F54 80097354 16000007 */  bnez       $s0, .L80097374
/* 97F58 80097358 0000F021 */   addu      $fp, $zero, $zero
/* 97F5C 8009735C 3C04800D */  lui        $a0, %hi(D_800D6DC0)
/* 97F60 80097360 24846DC0 */  addiu      $a0, $a0, %lo(D_800D6DC0)
/* 97F64 80097364 3C05800D */  lui        $a1, %hi(D_800D6DC4)
/* 97F68 80097368 24A56DC4 */  addiu      $a1, $a1, %lo(D_800D6DC4)
/* 97F6C 8009736C 0C0006E0 */  jal        func_80001B80
/* 97F70 80097370 2406004B */   addiu     $a2, $zero, 0x4B
.L80097374:
/* 97F74 80097374 02002021 */  addu       $a0, $s0, $zero
/* 97F78 80097378 02402821 */  addu       $a1, $s2, $zero
/* 97F7C 8009737C 02A03021 */  addu       $a2, $s5, $zero
/* 97F80 80097380 AFB10010 */  sw         $s1, 0x10($sp)
/* 97F84 80097384 8C820004 */  lw         $v0, 0x4($a0)
/* 97F88 80097388 02803821 */  addu       $a3, $s4, $zero
/* 97F8C 8009738C 0000B821 */  addu       $s7, $zero, $zero
/* 97F90 80097390 0040F809 */  jalr       $v0
/* 97F94 80097394 A7A0001E */   sh        $zero, 0x1E($sp)
/* 97F98 80097398 00408821 */  addu       $s1, $v0, $zero
/* 97F9C 8009739C 02203821 */  addu       $a3, $s1, $zero
/* 97FA0 800973A0 26310008 */  addiu      $s1, $s1, 0x8
/* 97FA4 800973A4 02204021 */  addu       $t0, $s1, $zero
/* 97FA8 800973A8 26310008 */  addiu      $s1, $s1, 0x8
/* 97FAC 800973AC 3C0A0C00 */  lui        $t2, (0xC00DA83 >> 16)
/* 97FB0 800973B0 354ADA83 */  ori        $t2, $t2, (0xC00DA83 & 0xFFFF)
/* 97FB4 800973B4 3C0906C0 */  lui        $t1, (0x6C006C0 >> 16)
/* 97FB8 800973B8 352906C0 */  ori        $t1, $t1, (0x6C006C0 & 0xFFFF)
/* 97FBC 800973BC 02201821 */  addu       $v1, $s1, $zero
/* 97FC0 800973C0 26310008 */  addiu      $s1, $s1, 0x8
/* 97FC4 800973C4 3C060C00 */  lui        $a2, (0xC005A82 >> 16)
/* 97FC8 800973C8 34C65A82 */  ori        $a2, $a2, (0xC005A82 & 0xFFFF)
/* 97FCC 800973CC 3C050800 */  lui        $a1, (0x80006C0 >> 16)
/* 97FD0 800973D0 34A506C0 */  ori        $a1, $a1, (0x80006C0 & 0xFFFF)
/* 97FD4 800973D4 02602021 */  addu       $a0, $s3, $zero
/* 97FD8 800973D8 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* 97FDC 800973DC 00158040 */  sll        $s0, $s5, 1
/* 97FE0 800973E0 ACE20000 */  sw         $v0, 0x0($a3)
/* 97FE4 800973E4 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 97FE8 800973E8 ACE20004 */  sw         $v0, 0x4($a3)
/* 97FEC 800973EC AD0A0000 */  sw         $t2, 0x0($t0)
/* 97FF0 800973F0 AD090004 */  sw         $t1, 0x4($t0)
/* 97FF4 800973F4 AC660000 */  sw         $a2, 0x0($v1)
/* 97FF8 800973F8 AC650004 */  sw         $a1, 0x4($v1)
/* 97FFC 800973FC AFB10010 */  sw         $s1, 0x10($sp)
/* 98000 80097400 8E650018 */  lw         $a1, 0x18($s3)
/* 98004 80097404 240606C0 */  addiu      $a2, $zero, 0x6C0
/* 98008 80097408 0C025F13 */  jal        func_80097C4C
/* 9800C 8009740C 02A03821 */   addu      $a3, $s5, $zero
/* 98010 80097410 00408821 */  addu       $s1, $v0, $zero
/* 98014 80097414 3C030200 */  lui        $v1, (0x2000800 >> 16)
/* 98018 80097418 34630800 */  ori        $v1, $v1, (0x2000800 & 0xFFFF)
/* 9801C 8009741C AC430000 */  sw         $v1, 0x0($v0)
/* 98020 80097420 AC500004 */  sw         $s0, 0x4($v0)
/* 98024 80097424 92620024 */  lbu        $v0, 0x24($s3)
/* 98028 80097428 24160140 */  addiu      $s6, $zero, 0x140
/* 9802C 8009742C 03C2102A */  slt        $v0, $fp, $v0
/* 98030 80097430 1040007F */  beqz       $v0, .L80097630
/* 98034 80097434 26310008 */   addiu     $s1, $s1, 0x8
.L80097438:
/* 98038 80097438 97AB001E */  lhu        $t3, 0x1E($sp)
/* 9803C 8009743C 8E640020 */  lw         $a0, 0x20($s3)
/* 98040 80097440 000B1C00 */  sll        $v1, $t3, 16
/* 98044 80097444 00031C03 */  sra        $v1, $v1, 16
/* 98048 80097448 00031080 */  sll        $v0, $v1, 2
/* 9804C 8009744C 00431021 */  addu       $v0, $v0, $v1
/* 98050 80097450 000210C0 */  sll        $v0, $v0, 3
/* 98054 80097454 00829021 */  addu       $s2, $a0, $v0
/* 98058 80097458 8E420000 */  lw         $v0, 0x0($s2)
/* 9805C 8009745C 8E640018 */  lw         $a0, 0x18($s3)
/* 98060 80097460 8E430004 */  lw         $v1, 0x4($s2)
/* 98064 80097464 00021040 */  sll        $v0, $v0, 1
/* 98068 80097468 0082A023 */  subu       $s4, $a0, $v0
/* 9806C 8009746C 00031840 */  sll        $v1, $v1, 1
/* 98070 80097470 00832023 */  subu       $a0, $a0, $v1
/* 98074 80097474 169E0005 */  bne        $s4, $fp, .L8009748C
/* 98078 80097478 AFA40024 */   sw        $a0, 0x24($sp)
/* 9807C 8009747C 02C01021 */  addu       $v0, $s6, $zero
/* 98080 80097480 02E0B021 */  addu       $s6, $s7, $zero
/* 98084 80097484 08025D2B */  j          .L800974AC
/* 98088 80097488 0040B821 */   addu      $s7, $v0, $zero
.L8009748C:
/* 9808C 8009748C AFB10010 */  sw         $s1, 0x10($sp)
/* 98090 80097490 02602021 */  addu       $a0, $s3, $zero
/* 98094 80097494 02802821 */  addu       $a1, $s4, $zero
/* 98098 80097498 00173400 */  sll        $a2, $s7, 16
/* 9809C 8009749C 00063403 */  sra        $a2, $a2, 16
/* 980A0 800974A0 0C025EB7 */  jal        func_80097ADC
/* 980A4 800974A4 02A03821 */   addu      $a3, $s5, $zero
/* 980A8 800974A8 00408821 */  addu       $s1, $v0, $zero
.L800974AC:
/* 980AC 800974AC 02602021 */  addu       $a0, $s3, $zero
/* 980B0 800974B0 02402821 */  addu       $a1, $s2, $zero
/* 980B4 800974B4 00161400 */  sll        $v0, $s6, 16
/* 980B8 800974B8 00028403 */  sra        $s0, $v0, 16
/* 980BC 800974BC 02003021 */  addu       $a2, $s0, $zero
/* 980C0 800974C0 02A03821 */  addu       $a3, $s5, $zero
/* 980C4 800974C4 0C025E31 */  jal        func_800978C4
/* 980C8 800974C8 AFB10010 */   sw        $s1, 0x10($sp)
/* 980CC 800974CC 86430008 */  lh         $v1, 0x8($s2)
/* 980D0 800974D0 00408821 */  addu       $s1, $v0, $zero
/* 980D4 800974D4 10600016 */  beqz       $v1, .L80097530
/* 980D8 800974D8 00601021 */   addu      $v0, $v1, $zero
/* 980DC 800974DC 02202021 */  addu       $a0, $s1, $zero
/* 980E0 800974E0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 980E4 800974E4 3C0B0C00 */  lui        $t3, (0xC000000 >> 16)
/* 980E8 800974E8 004B1025 */  or         $v0, $v0, $t3
/* 980EC 800974EC AC820000 */  sw         $v0, 0x0($a0)
/* 980F0 800974F0 00171400 */  sll        $v0, $s7, 16
/* 980F4 800974F4 3203FFFF */  andi       $v1, $s0, 0xFFFF
/* 980F8 800974F8 00431025 */  or         $v0, $v0, $v1
/* 980FC 800974FC AC820004 */  sw         $v0, 0x4($a0)
/* 98100 80097500 8E420024 */  lw         $v0, 0x24($s2)
/* 98104 80097504 1440000A */  bnez       $v0, .L80097530
/* 98108 80097508 26310008 */   addiu     $s1, $s1, 0x8
/* 9810C 8009750C 8E420020 */  lw         $v0, 0x20($s2)
/* 98110 80097510 14400007 */  bnez       $v0, .L80097530
/* 98114 80097514 02602021 */   addu      $a0, $s3, $zero
/* 98118 80097518 8FA50024 */  lw         $a1, 0x24($sp)
/* 9811C 8009751C 02003021 */  addu       $a2, $s0, $zero
/* 98120 80097520 02A03821 */  addu       $a3, $s5, $zero
/* 98124 80097524 0C025F13 */  jal        func_80097C4C
/* 98128 80097528 AFB10010 */   sw        $s1, 0x10($sp)
/* 9812C 8009752C 00408821 */  addu       $s1, $v0, $zero
.L80097530:
/* 98130 80097530 8642000A */  lh         $v0, 0xA($s2)
/* 98134 80097534 10400013 */  beqz       $v0, .L80097584
/* 98138 80097538 00401821 */   addu      $v1, $v0, $zero
/* 9813C 8009753C 02204021 */  addu       $t0, $s1, $zero
/* 98140 80097540 26310008 */  addiu      $s1, $s1, 0x8
/* 98144 80097544 02602021 */  addu       $a0, $s3, $zero
/* 98148 80097548 02802821 */  addu       $a1, $s4, $zero
/* 9814C 8009754C 00173400 */  sll        $a2, $s7, 16
/* 98150 80097550 00063403 */  sra        $a2, $a2, 16
/* 98154 80097554 02A03821 */  addu       $a3, $s5, $zero
/* 98158 80097558 3062FFFF */  andi       $v0, $v1, 0xFFFF
/* 9815C 8009755C 3C0B0C00 */  lui        $t3, (0xC000000 >> 16)
/* 98160 80097560 004B1025 */  or         $v0, $v0, $t3
/* 98164 80097564 AD020000 */  sw         $v0, 0x0($t0)
/* 98168 80097568 00161400 */  sll        $v0, $s6, 16
/* 9816C 8009756C 30C3FFFF */  andi       $v1, $a2, 0xFFFF
/* 98170 80097570 00431025 */  or         $v0, $v0, $v1
/* 98174 80097574 AD020004 */  sw         $v0, 0x4($t0)
/* 98178 80097578 0C025F13 */  jal        func_80097C4C
/* 9817C 8009757C AFB10010 */   sw        $s1, 0x10($sp)
/* 98180 80097580 00408821 */  addu       $s1, $v0, $zero
.L80097584:
/* 98184 80097584 8E440020 */  lw         $a0, 0x20($s2)
/* 98188 80097588 10800006 */  beqz       $a0, .L800975A4
/* 9818C 8009758C 00162C00 */   sll       $a1, $s6, 16
/* 98190 80097590 00052C03 */  sra        $a1, $a1, 16
/* 98194 80097594 02A03021 */  addu       $a2, $s5, $zero
/* 98198 80097598 0C025F6F */  jal        func_80097DBC
/* 9819C 8009759C 02203821 */   addu      $a3, $s1, $zero
/* 981A0 800975A0 00408821 */  addu       $s1, $v0, $zero
.L800975A4:
/* 981A4 800975A4 8E420024 */  lw         $v0, 0x24($s2)
/* 981A8 800975A8 14400008 */  bnez       $v0, .L800975CC
/* 981AC 800975AC 02602021 */   addu      $a0, $s3, $zero
/* 981B0 800975B0 8FA50024 */  lw         $a1, 0x24($sp)
/* 981B4 800975B4 00163400 */  sll        $a2, $s6, 16
/* 981B8 800975B8 00063403 */  sra        $a2, $a2, 16
/* 981BC 800975BC 02A03821 */  addu       $a3, $s5, $zero
/* 981C0 800975C0 0C025F13 */  jal        func_80097C4C
/* 981C4 800975C4 AFB10010 */   sw        $s1, 0x10($sp)
/* 981C8 800975C8 00408821 */  addu       $s1, $v0, $zero
.L800975CC:
/* 981CC 800975CC 8642000C */  lh         $v0, 0xC($s2)
/* 981D0 800975D0 1040000A */  beqz       $v0, .L800975FC
/* 981D4 800975D4 00401821 */   addu      $v1, $v0, $zero
/* 981D8 800975D8 02201021 */  addu       $v0, $s1, $zero
/* 981DC 800975DC 26310008 */  addiu      $s1, $s1, 0x8
/* 981E0 800975E0 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 981E4 800975E4 3C0B0C00 */  lui        $t3, (0xC000000 >> 16)
/* 981E8 800975E8 006B1825 */  or         $v1, $v1, $t3
/* 981EC 800975EC AC430000 */  sw         $v1, 0x0($v0)
/* 981F0 800975F0 00161C00 */  sll        $v1, $s6, 16
/* 981F4 800975F4 34630800 */  ori        $v1, $v1, 0x800
/* 981F8 800975F8 AC430004 */  sw         $v1, 0x4($v0)
.L800975FC:
/* 981FC 800975FC 97AB001E */  lhu        $t3, 0x1E($sp)
/* 98200 80097600 8E430004 */  lw         $v1, 0x4($s2)
/* 98204 80097604 8E640018 */  lw         $a0, 0x18($s3)
/* 98208 80097608 25620001 */  addiu      $v0, $t3, 0x1
/* 9820C 8009760C 00031840 */  sll        $v1, $v1, 1
/* 98210 80097610 0083F021 */  addu       $fp, $a0, $v1
/* 98214 80097614 A7A2001E */  sh         $v0, 0x1E($sp)
/* 98218 80097618 92630024 */  lbu        $v1, 0x24($s3)
/* 9821C 8009761C 00021400 */  sll        $v0, $v0, 16
/* 98220 80097620 00021403 */  sra        $v0, $v0, 16
/* 98224 80097624 0043102A */  slt        $v0, $v0, $v1
/* 98228 80097628 1440FF83 */  bnez       $v0, .L80097438
/* 9822C 8009762C 00000000 */   nop
.L80097630:
/* 98230 80097630 8E620018 */  lw         $v0, 0x18($s3)
/* 98234 80097634 8E64001C */  lw         $a0, 0x1C($s3)
/* 98238 80097638 8E630014 */  lw         $v1, 0x14($s3)
/* 9823C 8009763C 00153040 */  sll        $a2, $s5, 1
/* 98240 80097640 00461021 */  addu       $v0, $v0, $a2
/* 98244 80097644 00042040 */  sll        $a0, $a0, 1
/* 98248 80097648 00641821 */  addu       $v1, $v1, $a0
/* 9824C 8009764C 0062182B */  sltu       $v1, $v1, $v0
/* 98250 80097650 10600003 */  beqz       $v1, .L80097660
/* 98254 80097654 AE620018 */   sw        $v0, 0x18($s3)
/* 98258 80097658 00441023 */  subu       $v0, $v0, $a0
/* 9825C 8009765C AE620018 */  sw         $v0, 0x18($s3)
.L80097660:
/* 98260 80097660 26220008 */  addiu      $v0, $s1, 0x8
/* 98264 80097664 02202821 */  addu       $a1, $s1, $zero
/* 98268 80097668 240B0800 */  addiu      $t3, $zero, 0x800
/* 9826C 8009766C 000B1C00 */  sll        $v1, $t3, 16
/* 98270 80097670 00031C02 */  srl        $v1, $v1, 16
/* 98274 80097674 3C040A00 */  lui        $a0, (0xA000000 >> 16)
/* 98278 80097678 00641825 */  or         $v1, $v1, $a0
/* 9827C 8009767C ACA30000 */  sw         $v1, 0x0($a1)
/* 98280 80097680 30C3FFFF */  andi       $v1, $a2, 0xFFFF
/* 98284 80097684 3C0406C0 */  lui        $a0, (0x6C00000 >> 16)
/* 98288 80097688 00641825 */  or         $v1, $v1, $a0
/* 9828C 8009768C ACA30004 */  sw         $v1, 0x4($a1)
/* 98290 80097690 8FBF0064 */  lw         $ra, 0x64($sp)
/* 98294 80097694 8FBE0060 */  lw         $fp, 0x60($sp)
/* 98298 80097698 8FB7005C */  lw         $s7, 0x5C($sp)
/* 9829C 8009769C 8FB60058 */  lw         $s6, 0x58($sp)
/* 982A0 800976A0 8FB50054 */  lw         $s5, 0x54($sp)
/* 982A4 800976A4 8FB40050 */  lw         $s4, 0x50($sp)
/* 982A8 800976A8 8FB3004C */  lw         $s3, 0x4C($sp)
/* 982AC 800976AC 8FB20048 */  lw         $s2, 0x48($sp)
/* 982B0 800976B0 8FB10044 */  lw         $s1, 0x44($sp)
/* 982B4 800976B4 8FB00040 */  lw         $s0, 0x40($sp)
/* 982B8 800976B8 03E00008 */  jr         $ra
/* 982BC 800976BC 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800976C0
/* 982C0 800976C0 24020001 */  addiu      $v0, $zero, 0x1
/* 982C4 800976C4 50A20001 */  beql       $a1, $v0, .L800976CC
/* 982C8 800976C8 AC860000 */   sw        $a2, 0x0($a0)
.L800976CC:
/* 982CC 800976CC 03E00008 */  jr         $ra
/* 982D0 800976D0 00001021 */   addu      $v0, $zero, $zero

glabel func_800976D4
/* 982D4 800976D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 982D8 800976D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 982DC 800976DC 24A3FFFE */  addiu      $v1, $a1, -0x2
/* 982E0 800976E0 04610002 */  bgez       $v1, .L800976EC
/* 982E4 800976E4 00601021 */   addu      $v0, $v1, $zero
/* 982E8 800976E8 24A20005 */  addiu      $v0, $a1, 0x5
.L800976EC:
/* 982EC 800976EC 000238C3 */  sra        $a3, $v0, 3
/* 982F0 800976F0 00E02821 */  addu       $a1, $a3, $zero
/* 982F4 800976F4 000510C0 */  sll        $v0, $a1, 3
/* 982F8 800976F8 00623823 */  subu       $a3, $v1, $v0
/* 982FC 800976FC 8CC60000 */  lw         $a2, 0x0($a2)
/* 98300 80097700 2CE20008 */  sltiu      $v0, $a3, 0x8
/* 98304 80097704 1040006B */  beqz       $v0, .L800978B4
/* 98308 80097708 00000000 */   nop
/* 9830C 8009770C 00071080 */  sll        $v0, $a3, 2
/* 98310 80097710 3C01800D */  lui        $at, %hi(jtbl_800D6DD0_main)
/* 98314 80097714 00220821 */  addu       $at, $at, $v0
/* 98318 80097718 8C226DD0 */  lw         $v0, %lo(jtbl_800D6DD0_main)($at)
/* 9831C 8009771C 00400008 */  jr         $v0
/* 98320 80097720 00000000 */   nop
glabel L80097724
/* 98324 80097724 8C820020 */  lw         $v0, 0x20($a0)
/* 98328 80097728 00051880 */  sll        $v1, $a1, 2
/* 9832C 8009772C 00651821 */  addu       $v1, $v1, $a1
/* 98330 80097730 000318C0 */  sll        $v1, $v1, 3
/* 98334 80097734 00621821 */  addu       $v1, $v1, $v0
/* 98338 80097738 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 9833C 8009773C 00C21024 */  and        $v0, $a2, $v0
/* 98340 80097740 08025E2D */  j          .L800978B4
/* 98344 80097744 AC620000 */   sw        $v0, 0x0($v1)
glabel L80097748
/* 98348 80097748 8C820020 */  lw         $v0, 0x20($a0)
/* 9834C 8009774C 00051880 */  sll        $v1, $a1, 2
/* 98350 80097750 00651821 */  addu       $v1, $v1, $a1
/* 98354 80097754 000318C0 */  sll        $v1, $v1, 3
/* 98358 80097758 00621821 */  addu       $v1, $v1, $v0
/* 9835C 8009775C 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 98360 80097760 00C21024 */  and        $v0, $a2, $v0
/* 98364 80097764 08025E2D */  j          .L800978B4
/* 98368 80097768 AC620004 */   sw        $v0, 0x4($v1)
glabel L8009776C
/* 9836C 8009776C 8C830020 */  lw         $v1, 0x20($a0)
/* 98370 80097770 00051080 */  sll        $v0, $a1, 2
/* 98374 80097774 00451021 */  addu       $v0, $v0, $a1
/* 98378 80097778 000210C0 */  sll        $v0, $v0, 3
/* 9837C 8009777C 00431021 */  addu       $v0, $v0, $v1
/* 98380 80097780 08025E2D */  j          .L800978B4
/* 98384 80097784 A4460008 */   sh        $a2, 0x8($v0)
glabel L80097788
/* 98388 80097788 8C830020 */  lw         $v1, 0x20($a0)
/* 9838C 8009778C 00051080 */  sll        $v0, $a1, 2
/* 98390 80097790 00451021 */  addu       $v0, $v0, $a1
/* 98394 80097794 000210C0 */  sll        $v0, $v0, 3
/* 98398 80097798 00431021 */  addu       $v0, $v0, $v1
/* 9839C 8009779C 08025E2D */  j          .L800978B4
/* 983A0 800977A0 A446000A */   sh        $a2, 0xA($v0)
glabel L800977A4
/* 983A4 800977A4 8C830020 */  lw         $v1, 0x20($a0)
/* 983A8 800977A8 00051080 */  sll        $v0, $a1, 2
/* 983AC 800977AC 00451021 */  addu       $v0, $v0, $a1
/* 983B0 800977B0 000210C0 */  sll        $v0, $v0, 3
/* 983B4 800977B4 00431021 */  addu       $v0, $v0, $v1
/* 983B8 800977B8 08025E2D */  j          .L800978B4
/* 983BC 800977BC A446000C */   sh        $a2, 0xC($v0)
glabel L800977C0
/* 983C0 800977C0 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 983C4 800977C4 44811000 */  mtc1       $at, $f2
/* 983C8 800977C8 44860000 */  mtc1       $a2, $f0
/* 983CC 800977CC 00000000 */  nop
/* 983D0 800977D0 46800020 */  cvt.s.w    $f0, $f0
/* 983D4 800977D4 46020003 */  div.s      $f0, $f0, $f2
/* 983D8 800977D8 3C02800D */  lui        $v0, %hi(D_800C9D80)
/* 983DC 800977DC 8C429D80 */  lw         $v0, %lo(D_800C9D80)($v0)
/* 983E0 800977E0 46000021 */  cvt.d.s    $f0, $f0
/* 983E4 800977E4 46200000 */  add.d      $f0, $f0, $f0
/* 983E8 800977E8 C4420044 */  lwc1       $f2, 0x44($v0)
/* 983EC 800977EC 468010A1 */  cvt.d.w    $f2, $f2
/* 983F0 800977F0 46220003 */  div.d      $f0, $f0, $f2
/* 983F4 800977F4 8C830020 */  lw         $v1, 0x20($a0)
/* 983F8 800977F8 00051080 */  sll        $v0, $a1, 2
/* 983FC 800977FC 00451021 */  addu       $v0, $v0, $a1
/* 98400 80097800 000210C0 */  sll        $v0, $v0, 3
/* 98404 80097804 00431021 */  addu       $v0, $v0, $v1
/* 98408 80097808 46200020 */  cvt.s.d    $f0, $f0
/* 9840C 8009780C 08025E2D */  j          .L800978B4
/* 98410 80097810 E4400010 */   swc1      $f0, 0x10($v0)
glabel L80097814
/* 98414 80097814 8C830020 */  lw         $v1, 0x20($a0)
/* 98418 80097818 00051080 */  sll        $v0, $a1, 2
/* 9841C 8009781C 00451021 */  addu       $v0, $v0, $a1
/* 98420 80097820 000210C0 */  sll        $v0, $v0, 3
/* 98424 80097824 3C01800D */  lui        $at, %hi(D_800D6DF0)
/* 98428 80097828 D4226DF0 */  ldc1       $f2, %lo(D_800D6DF0)($at)
/* 9842C 8009782C 44860000 */  mtc1       $a2, $f0
/* 98430 80097830 00000000 */  nop
/* 98434 80097834 46800020 */  cvt.s.w    $f0, $f0
/* 98438 80097838 00432021 */  addu       $a0, $v0, $v1
/* 9843C 8009783C 8C830004 */  lw         $v1, 0x4($a0)
/* 98440 80097840 8C820000 */  lw         $v0, 0x0($a0)
/* 98444 80097844 46000021 */  cvt.d.s    $f0, $f0
/* 98448 80097848 00621823 */  subu       $v1, $v1, $v0
/* 9844C 8009784C 44832000 */  mtc1       $v1, $f4
/* 98450 80097850 00000000 */  nop
/* 98454 80097854 46802121 */  cvt.d.w    $f4, $f4
/* 98458 80097858 04610004 */  bgez       $v1, .L8009786C
/* 9845C 8009785C 46220083 */   div.d     $f2, $f0, $f2
/* 98460 80097860 3C01800D */  lui        $at, %hi(D_800D6DF8)
/* 98464 80097864 D4206DF8 */  ldc1       $f0, %lo(D_800D6DF8)($at)
/* 98468 80097868 46202100 */  add.d      $f4, $f4, $f0
.L8009786C:
/* 9846C 8009786C 00000000 */  nop
/* 98470 80097870 46241002 */  mul.d      $f0, $f2, $f4
/* 98474 80097874 46200020 */  cvt.s.d    $f0, $f0
/* 98478 80097878 08025E2D */  j          .L800978B4
/* 9847C 8009787C E480001C */   swc1      $f0, 0x1C($a0)
glabel L80097880
/* 98480 80097880 8C830020 */  lw         $v1, 0x20($a0)
/* 98484 80097884 00051080 */  sll        $v0, $a1, 2
/* 98488 80097888 00451021 */  addu       $v0, $v0, $a1
/* 9848C 8009788C 000228C0 */  sll        $a1, $v0, 3
/* 98490 80097890 00A31821 */  addu       $v1, $a1, $v1
/* 98494 80097894 8C620020 */  lw         $v0, 0x20($v1)
/* 98498 80097898 10400006 */  beqz       $v0, .L800978B4
/* 9849C 8009789C 00000000 */   nop
/* 984A0 800978A0 A4460000 */  sh         $a2, 0x0($v0)
/* 984A4 800978A4 8C820020 */  lw         $v0, 0x20($a0)
/* 984A8 800978A8 00A21021 */  addu       $v0, $a1, $v0
/* 984AC 800978AC 0C025354 */  jal        func_80094D50
/* 984B0 800978B0 8C440020 */   lw        $a0, 0x20($v0)
.L800978B4:
/* 984B4 800978B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 984B8 800978B8 00001021 */  addu       $v0, $zero, $zero
/* 984BC 800978BC 03E00008 */  jr         $ra
/* 984C0 800978C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800978C4
/* 984C4 800978C4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 984C8 800978C8 AFB40028 */  sw         $s4, 0x28($sp)
/* 984CC 800978CC 0080A021 */  addu       $s4, $a0, $zero
/* 984D0 800978D0 AFB20020 */  sw         $s2, 0x20($sp)
/* 984D4 800978D4 00A09021 */  addu       $s2, $a1, $zero
/* 984D8 800978D8 AFB60030 */  sw         $s6, 0x30($sp)
/* 984DC 800978DC 00C0B021 */  addu       $s6, $a2, $zero
/* 984E0 800978E0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 984E4 800978E4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 984E8 800978E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 984EC 800978EC AFB1001C */  sw         $s1, 0x1C($sp)
/* 984F0 800978F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 984F4 800978F4 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 984F8 800978F8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 984FC 800978FC 8E420024 */  lw         $v0, 0x24($s2)
/* 98500 80097900 8FB30058 */  lw         $s3, 0x58($sp)
/* 98504 80097904 1040005E */  beqz       $v0, .L80097A80
/* 98508 80097908 00E0A821 */   addu      $s5, $a3, $zero
/* 9850C 8009790C 8E500004 */  lw         $s0, 0x4($s2)
/* 98510 80097910 8E420000 */  lw         $v0, 0x0($s2)
/* 98514 80097914 02402021 */  addu       $a0, $s2, $zero
/* 98518 80097918 02A02821 */  addu       $a1, $s5, $zero
/* 9851C 8009791C 0C025F96 */  jal        func_80097E58
/* 98520 80097920 02028023 */   subu      $s0, $s0, $v0
/* 98524 80097924 44901000 */  mtc1       $s0, $f2
/* 98528 80097928 00000000 */  nop
/* 9852C 8009792C 468010A0 */  cvt.s.w    $f2, $f2
/* 98530 80097930 46020003 */  div.s      $f0, $f0, $f2
/* 98534 80097934 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 98538 80097938 4481B000 */  mtc1       $at, $f22
/* 9853C 8009793C 00000000 */  nop
/* 98540 80097940 46160002 */  mul.s      $f0, $f0, $f22
/* 98544 80097944 4600008D */  trunc.w.s  $f2, $f0
/* 98548 80097948 44021000 */  mfc1       $v0, $f2
/* 9854C 8009794C 00000000 */  nop
/* 98550 80097950 44820000 */  mtc1       $v0, $f0
/* 98554 80097954 00000000 */  nop
/* 98558 80097958 46800020 */  cvt.s.w    $f0, $f0
/* 9855C 8009795C 46160003 */  div.s      $f0, $f0, $f22
/* 98560 80097960 3C01800D */  lui        $at, %hi(D_800D6E00)
/* 98564 80097964 D4346E00 */  ldc1       $f20, %lo(D_800D6E00)($at)
/* 98568 80097968 46000021 */  cvt.d.s    $f0, $f0
/* 9856C 8009796C 4620A501 */  sub.d      $f20, $f20, $f0
/* 98570 80097970 44951000 */  mtc1       $s5, $f2
/* 98574 80097974 00000000 */  nop
/* 98578 80097978 468010A0 */  cvt.s.w    $f2, $f2
/* 9857C 8009797C 4620A520 */  cvt.s.d    $f20, $f20
/* 98580 80097980 4602A082 */  mul.s      $f2, $f20, $f2
/* 98584 80097984 8E420024 */  lw         $v0, 0x24($s2)
/* 98588 80097988 C4400020 */  lwc1       $f0, 0x20($v0)
/* 9858C 8009798C 46020000 */  add.s      $f0, $f0, $f2
/* 98590 80097990 4600008D */  trunc.w.s  $f2, $f0
/* 98594 80097994 44111000 */  mfc1       $s1, $f2
/* 98598 80097998 00000000 */  nop
/* 9859C 8009799C 44911000 */  mtc1       $s1, $f2
/* 985A0 800979A0 00000000 */  nop
/* 985A4 800979A4 468010A0 */  cvt.s.w    $f2, $f2
/* 985A8 800979A8 46020001 */  sub.s      $f0, $f0, $f2
/* 985AC 800979AC E4400020 */  swc1       $f0, 0x20($v0)
/* 985B0 800979B0 8E420018 */  lw         $v0, 0x18($s2)
/* 985B4 800979B4 8E430004 */  lw         $v1, 0x4($s2)
/* 985B8 800979B8 8E850018 */  lw         $a1, 0x18($s4)
/* 985BC 800979BC 02802021 */  addu       $a0, $s4, $zero
/* 985C0 800979C0 24060280 */  addiu      $a2, $zero, 0x280
/* 985C4 800979C4 AFB30010 */  sw         $s3, 0x10($sp)
/* 985C8 800979C8 00431023 */  subu       $v0, $v0, $v1
/* 985CC 800979CC 00021040 */  sll        $v0, $v0, 1
/* 985D0 800979D0 00A22821 */  addu       $a1, $a1, $v0
/* 985D4 800979D4 30A70007 */  andi       $a3, $a1, 0x7
/* 985D8 800979D8 00073843 */  sra        $a3, $a3, 1
/* 985DC 800979DC 00078040 */  sll        $s0, $a3, 1
/* 985E0 800979E0 00B02823 */  subu       $a1, $a1, $s0
/* 985E4 800979E4 0C025EB7 */  jal        func_80097ADC
/* 985E8 800979E8 02273821 */   addu      $a3, $s1, $a3
/* 985EC 800979EC 00409821 */  addu       $s3, $v0, $zero
/* 985F0 800979F0 3C020800 */  lui        $v0, (0x8000280 >> 16)
/* 985F4 800979F4 34420280 */  ori        $v0, $v0, (0x8000280 & 0xFFFF)
/* 985F8 800979F8 02602021 */  addu       $a0, $s3, $zero
/* 985FC 800979FC 02028025 */  or         $s0, $s0, $v0
/* 98600 80097A00 00161C00 */  sll        $v1, $s6, 16
/* 98604 80097A04 00151040 */  sll        $v0, $s5, 1
/* 98608 80097A08 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 9860C 80097A0C 00621825 */  or         $v1, $v1, $v0
/* 98610 80097A10 AC900000 */  sw         $s0, 0x0($a0)
/* 98614 80097A14 AC830004 */  sw         $v1, 0x4($a0)
/* 98618 80097A18 8E420024 */  lw         $v0, 0x24($s2)
/* 9861C 80097A1C 4616A502 */  mul.s      $f20, $f20, $f22
/* 98620 80097A20 90440027 */  lbu        $a0, 0x27($v0)
/* 98624 80097A24 26730008 */  addiu      $s3, $s3, 0x8
/* 98628 80097A28 02608021 */  addu       $s0, $s3, $zero
/* 9862C 80097A2C 00042400 */  sll        $a0, $a0, 16
/* 98630 80097A30 4600A00D */  trunc.w.s  $f0, $f20
/* 98634 80097A34 44020000 */  mfc1       $v0, $f0
/* 98638 80097A38 00000000 */  nop
/* 9863C 80097A3C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 98640 80097A40 3C030500 */  lui        $v1, (0x5000000 >> 16)
/* 98644 80097A44 00431025 */  or         $v0, $v0, $v1
/* 98648 80097A48 00822025 */  or         $a0, $a0, $v0
/* 9864C 80097A4C AE040000 */  sw         $a0, 0x0($s0)
/* 98650 80097A50 8E420024 */  lw         $v0, 0x24($s2)
/* 98654 80097A54 8C440014 */  lw         $a0, 0x14($v0)
/* 98658 80097A58 0C0006C8 */  jal        osVirtualToPhysical
/* 9865C 80097A5C 26730008 */   addiu     $s3, $s3, 0x8
/* 98660 80097A60 AE020004 */  sw         $v0, 0x4($s0)
/* 98664 80097A64 8E420024 */  lw         $v0, 0x24($s2)
/* 98668 80097A68 AC400024 */  sw         $zero, 0x24($v0)
/* 9866C 80097A6C 8E420018 */  lw         $v0, 0x18($s2)
/* 98670 80097A70 02358823 */  subu       $s1, $s1, $s5
/* 98674 80097A74 00511021 */  addu       $v0, $v0, $s1
/* 98678 80097A78 08025EAA */  j          .L80097AA8
/* 9867C 80097A7C AE420018 */   sw        $v0, 0x18($s2)
.L80097A80:
/* 98680 80097A80 02802021 */  addu       $a0, $s4, $zero
/* 98684 80097A84 8E450004 */  lw         $a1, 0x4($s2)
/* 98688 80097A88 8C820018 */  lw         $v0, 0x18($a0)
/* 9868C 80097A8C 02C03021 */  addu       $a2, $s6, $zero
/* 98690 80097A90 02A03821 */  addu       $a3, $s5, $zero
/* 98694 80097A94 AFB30010 */  sw         $s3, 0x10($sp)
/* 98698 80097A98 00052840 */  sll        $a1, $a1, 1
/* 9869C 80097A9C 0C025EB7 */  jal        func_80097ADC
/* 986A0 80097AA0 00452823 */   subu      $a1, $v0, $a1
/* 986A4 80097AA4 00409821 */  addu       $s3, $v0, $zero
.L80097AA8:
/* 986A8 80097AA8 02601021 */  addu       $v0, $s3, $zero
/* 986AC 80097AAC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 986B0 80097AB0 8FB60030 */  lw         $s6, 0x30($sp)
/* 986B4 80097AB4 8FB5002C */  lw         $s5, 0x2C($sp)
/* 986B8 80097AB8 8FB40028 */  lw         $s4, 0x28($sp)
/* 986BC 80097ABC 8FB30024 */  lw         $s3, 0x24($sp)
/* 986C0 80097AC0 8FB20020 */  lw         $s2, 0x20($sp)
/* 986C4 80097AC4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 986C8 80097AC8 8FB00018 */  lw         $s0, 0x18($sp)
/* 986CC 80097ACC D7B60040 */  ldc1       $f22, 0x40($sp)
/* 986D0 80097AD0 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 986D4 80097AD4 03E00008 */  jr         $ra
/* 986D8 80097AD8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80097ADC
/* 986DC 80097ADC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 986E0 80097AE0 AFB50024 */  sw         $s5, 0x24($sp)
/* 986E4 80097AE4 8FB50048 */  lw         $s5, 0x48($sp)
/* 986E8 80097AE8 AFB7002C */  sw         $s7, 0x2C($sp)
/* 986EC 80097AEC 0080B821 */  addu       $s7, $a0, $zero
/* 986F0 80097AF0 00A02021 */  addu       $a0, $a1, $zero
/* 986F4 80097AF4 AFB60028 */  sw         $s6, 0x28($sp)
/* 986F8 80097AF8 00C0B021 */  addu       $s6, $a2, $zero
/* 986FC 80097AFC AFBE0030 */  sw         $fp, 0x30($sp)
/* 98700 80097B00 00E0F021 */  addu       $fp, $a3, $zero
/* 98704 80097B04 AFBF0034 */  sw         $ra, 0x34($sp)
/* 98708 80097B08 AFB40020 */  sw         $s4, 0x20($sp)
/* 9870C 80097B0C AFB3001C */  sw         $s3, 0x1C($sp)
/* 98710 80097B10 AFB20018 */  sw         $s2, 0x18($sp)
/* 98714 80097B14 AFB10014 */  sw         $s1, 0x14($sp)
/* 98718 80097B18 AFB00010 */  sw         $s0, 0x10($sp)
/* 9871C 80097B1C 8EE3001C */  lw         $v1, 0x1C($s7)
/* 98720 80097B20 8EE20014 */  lw         $v0, 0x14($s7)
/* 98724 80097B24 00031840 */  sll        $v1, $v1, 1
/* 98728 80097B28 00432821 */  addu       $a1, $v0, $v1
/* 9872C 80097B2C 0082102B */  sltu       $v0, $a0, $v0
/* 98730 80097B30 10400002 */  beqz       $v0, .L80097B3C
/* 98734 80097B34 02A03021 */   addu      $a2, $s5, $zero
/* 98738 80097B38 00832021 */  addu       $a0, $a0, $v1
.L80097B3C:
/* 9873C 80097B3C 001E3840 */  sll        $a3, $fp, 1
/* 98740 80097B40 00878821 */  addu       $s1, $a0, $a3
/* 98744 80097B44 00B1102B */  sltu       $v0, $a1, $s1
/* 98748 80097B48 10400020 */  beqz       $v0, .L80097BCC
/* 9874C 80097B4C 32C2FFFF */   andi      $v0, $s6, 0xFFFF
/* 98750 80097B50 26B50008 */  addiu      $s5, $s5, 0x8
/* 98754 80097B54 02A0A021 */  addu       $s4, $s5, $zero
/* 98758 80097B58 26B50008 */  addiu      $s5, $s5, 0x8
/* 9875C 80097B5C 3C130800 */  lui        $s3, (0x8000000 >> 16)
/* 98760 80097B60 00531025 */  or         $v0, $v0, $s3
/* 98764 80097B64 00A48023 */  subu       $s0, $a1, $a0
/* 98768 80097B68 00108043 */  sra        $s0, $s0, 1
/* 9876C 80097B6C 00108040 */  sll        $s0, $s0, 1
/* 98770 80097B70 ACC20000 */  sw         $v0, 0x0($a2)
/* 98774 80097B74 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 98778 80097B78 3C120400 */  lui        $s2, (0x4000000 >> 16)
/* 9877C 80097B7C 02258823 */  subu       $s1, $s1, $a1
/* 98780 80097B80 00118843 */  sra        $s1, $s1, 1
/* 98784 80097B84 ACC20004 */  sw         $v0, 0x4($a2)
/* 98788 80097B88 0C0006C8 */  jal        osVirtualToPhysical
/* 9878C 80097B8C AE920000 */   sw        $s2, 0x0($s4)
/* 98790 80097B90 02A01821 */  addu       $v1, $s5, $zero
/* 98794 80097B94 26B50008 */  addiu      $s5, $s5, 0x8
/* 98798 80097B98 02D08021 */  addu       $s0, $s6, $s0
/* 9879C 80097B9C 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 987A0 80097BA0 02138025 */  or         $s0, $s0, $s3
/* 987A4 80097BA4 00118840 */  sll        $s1, $s1, 1
/* 987A8 80097BA8 3231FFFF */  andi       $s1, $s1, 0xFFFF
/* 987AC 80097BAC AE820004 */  sw         $v0, 0x4($s4)
/* 987B0 80097BB0 AC700000 */  sw         $s0, 0x0($v1)
/* 987B4 80097BB4 02A08021 */  addu       $s0, $s5, $zero
/* 987B8 80097BB8 AC710004 */  sw         $s1, 0x4($v1)
/* 987BC 80097BBC AE120000 */  sw         $s2, 0x0($s0)
/* 987C0 80097BC0 8EE40014 */  lw         $a0, 0x14($s7)
/* 987C4 80097BC4 08025EFD */  j          .L80097BF4
/* 987C8 80097BC8 26B50008 */   addiu     $s5, $s5, 0x8
.L80097BCC:
/* 987CC 80097BCC 26B50008 */  addiu      $s5, $s5, 0x8
/* 987D0 80097BD0 02A08021 */  addu       $s0, $s5, $zero
/* 987D4 80097BD4 26B50008 */  addiu      $s5, $s5, 0x8
/* 987D8 80097BD8 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 987DC 80097BDC 00431025 */  or         $v0, $v0, $v1
/* 987E0 80097BE0 ACC20000 */  sw         $v0, 0x0($a2)
/* 987E4 80097BE4 30E2FFFF */  andi       $v0, $a3, 0xFFFF
/* 987E8 80097BE8 ACC20004 */  sw         $v0, 0x4($a2)
/* 987EC 80097BEC 3C020400 */  lui        $v0, (0x4000000 >> 16)
/* 987F0 80097BF0 AE020000 */  sw         $v0, 0x0($s0)
.L80097BF4:
/* 987F4 80097BF4 0C0006C8 */  jal        osVirtualToPhysical
/* 987F8 80097BF8 00000000 */   nop
/* 987FC 80097BFC AE020004 */  sw         $v0, 0x4($s0)
/* 98800 80097C00 26A20008 */  addiu      $v0, $s5, 0x8
/* 98804 80097C04 02A02021 */  addu       $a0, $s5, $zero
/* 98808 80097C08 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 9880C 80097C0C AC830000 */  sw         $v1, 0x0($a0)
/* 98810 80097C10 001E1840 */  sll        $v1, $fp, 1
/* 98814 80097C14 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 98818 80097C18 AC830004 */  sw         $v1, 0x4($a0)
/* 9881C 80097C1C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 98820 80097C20 8FBE0030 */  lw         $fp, 0x30($sp)
/* 98824 80097C24 8FB7002C */  lw         $s7, 0x2C($sp)
/* 98828 80097C28 8FB60028 */  lw         $s6, 0x28($sp)
/* 9882C 80097C2C 8FB50024 */  lw         $s5, 0x24($sp)
/* 98830 80097C30 8FB40020 */  lw         $s4, 0x20($sp)
/* 98834 80097C34 8FB3001C */  lw         $s3, 0x1C($sp)
/* 98838 80097C38 8FB20018 */  lw         $s2, 0x18($sp)
/* 9883C 80097C3C 8FB10014 */  lw         $s1, 0x14($sp)
/* 98840 80097C40 8FB00010 */  lw         $s0, 0x10($sp)
/* 98844 80097C44 03E00008 */  jr         $ra
/* 98848 80097C48 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80097C4C
/* 9884C 80097C4C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 98850 80097C50 AFB50024 */  sw         $s5, 0x24($sp)
/* 98854 80097C54 8FB50048 */  lw         $s5, 0x48($sp)
/* 98858 80097C58 AFB7002C */  sw         $s7, 0x2C($sp)
/* 9885C 80097C5C 0080B821 */  addu       $s7, $a0, $zero
/* 98860 80097C60 00A02021 */  addu       $a0, $a1, $zero
/* 98864 80097C64 AFB60028 */  sw         $s6, 0x28($sp)
/* 98868 80097C68 00C0B021 */  addu       $s6, $a2, $zero
/* 9886C 80097C6C AFBF0034 */  sw         $ra, 0x34($sp)
/* 98870 80097C70 AFBE0030 */  sw         $fp, 0x30($sp)
/* 98874 80097C74 AFB40020 */  sw         $s4, 0x20($sp)
/* 98878 80097C78 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9887C 80097C7C AFB20018 */  sw         $s2, 0x18($sp)
/* 98880 80097C80 AFB10014 */  sw         $s1, 0x14($sp)
/* 98884 80097C84 AFB00010 */  sw         $s0, 0x10($sp)
/* 98888 80097C88 8EE3001C */  lw         $v1, 0x1C($s7)
/* 9888C 80097C8C 8EE20014 */  lw         $v0, 0x14($s7)
/* 98890 80097C90 00031840 */  sll        $v1, $v1, 1
/* 98894 80097C94 00432821 */  addu       $a1, $v0, $v1
/* 98898 80097C98 0082102B */  sltu       $v0, $a0, $v0
/* 9889C 80097C9C 10400002 */  beqz       $v0, .L80097CA8
/* 988A0 80097CA0 02A03021 */   addu      $a2, $s5, $zero
/* 988A4 80097CA4 00832021 */  addu       $a0, $a0, $v1
.L80097CA8:
/* 988A8 80097CA8 0007F040 */  sll        $fp, $a3, 1
/* 988AC 80097CAC 009E8021 */  addu       $s0, $a0, $fp
/* 988B0 80097CB0 00B0102B */  sltu       $v0, $a1, $s0
/* 988B4 80097CB4 10400027 */  beqz       $v0, .L80097D54
/* 988B8 80097CB8 3C120800 */   lui       $s2, (0x8000000 >> 16)
/* 988BC 80097CBC 26B50008 */  addiu      $s5, $s5, 0x8
/* 988C0 80097CC0 02A0A021 */  addu       $s4, $s5, $zero
/* 988C4 80097CC4 26B50008 */  addiu      $s5, $s5, 0x8
/* 988C8 80097CC8 00A48823 */  subu       $s1, $a1, $a0
/* 988CC 80097CCC 00118843 */  sra        $s1, $s1, 1
/* 988D0 80097CD0 00161400 */  sll        $v0, $s6, 16
/* 988D4 80097CD4 00118840 */  sll        $s1, $s1, 1
/* 988D8 80097CD8 3223FFFF */  andi       $v1, $s1, 0xFFFF
/* 988DC 80097CDC 00431025 */  or         $v0, $v0, $v1
/* 988E0 80097CE0 3C130600 */  lui        $s3, (0x6000000 >> 16)
/* 988E4 80097CE4 02058023 */  subu       $s0, $s0, $a1
/* 988E8 80097CE8 00108043 */  sra        $s0, $s0, 1
/* 988EC 80097CEC ACD20000 */  sw         $s2, 0x0($a2)
/* 988F0 80097CF0 ACC20004 */  sw         $v0, 0x4($a2)
/* 988F4 80097CF4 0C0006C8 */  jal        osVirtualToPhysical
/* 988F8 80097CF8 AE930000 */   sw        $s3, 0x0($s4)
/* 988FC 80097CFC 02A01821 */  addu       $v1, $s5, $zero
/* 98900 80097D00 26B50008 */  addiu      $s5, $s5, 0x8
/* 98904 80097D04 02D18821 */  addu       $s1, $s6, $s1
/* 98908 80097D08 00118C00 */  sll        $s1, $s1, 16
/* 9890C 80097D0C 00108040 */  sll        $s0, $s0, 1
/* 98910 80097D10 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 98914 80097D14 02308825 */  or         $s1, $s1, $s0
/* 98918 80097D18 02A08021 */  addu       $s0, $s5, $zero
/* 9891C 80097D1C AE820004 */  sw         $v0, 0x4($s4)
/* 98920 80097D20 AC720000 */  sw         $s2, 0x0($v1)
/* 98924 80097D24 AC710004 */  sw         $s1, 0x4($v1)
/* 98928 80097D28 AE130000 */  sw         $s3, 0x0($s0)
/* 9892C 80097D2C 8EE40014 */  lw         $a0, 0x14($s7)
/* 98930 80097D30 0C0006C8 */  jal        osVirtualToPhysical
/* 98934 80097D34 26B50008 */   addiu     $s5, $s5, 0x8
/* 98938 80097D38 02A01821 */  addu       $v1, $s5, $zero
/* 9893C 80097D3C 26B50008 */  addiu      $s5, $s5, 0x8
/* 98940 80097D40 AE020004 */  sw         $v0, 0x4($s0)
/* 98944 80097D44 33C2FFFF */  andi       $v0, $fp, 0xFFFF
/* 98948 80097D48 AC720000 */  sw         $s2, 0x0($v1)
/* 9894C 80097D4C 08025F62 */  j          .L80097D88
/* 98950 80097D50 AC620004 */   sw        $v0, 0x4($v1)
.L80097D54:
/* 98954 80097D54 26B50008 */  addiu      $s5, $s5, 0x8
/* 98958 80097D58 02A08021 */  addu       $s0, $s5, $zero
/* 9895C 80097D5C 26B50008 */  addiu      $s5, $s5, 0x8
/* 98960 80097D60 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* 98964 80097D64 ACC20000 */  sw         $v0, 0x0($a2)
/* 98968 80097D68 00161400 */  sll        $v0, $s6, 16
/* 9896C 80097D6C 33C3FFFF */  andi       $v1, $fp, 0xFFFF
/* 98970 80097D70 00431025 */  or         $v0, $v0, $v1
/* 98974 80097D74 ACC20004 */  sw         $v0, 0x4($a2)
/* 98978 80097D78 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* 9897C 80097D7C 0C0006C8 */  jal        osVirtualToPhysical
/* 98980 80097D80 AE020000 */   sw        $v0, 0x0($s0)
/* 98984 80097D84 AE020004 */  sw         $v0, 0x4($s0)
.L80097D88:
/* 98988 80097D88 02A01021 */  addu       $v0, $s5, $zero
/* 9898C 80097D8C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 98990 80097D90 8FBE0030 */  lw         $fp, 0x30($sp)
/* 98994 80097D94 8FB7002C */  lw         $s7, 0x2C($sp)
/* 98998 80097D98 8FB60028 */  lw         $s6, 0x28($sp)
/* 9899C 80097D9C 8FB50024 */  lw         $s5, 0x24($sp)
/* 989A0 80097DA0 8FB40020 */  lw         $s4, 0x20($sp)
/* 989A4 80097DA4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 989A8 80097DA8 8FB20018 */  lw         $s2, 0x18($sp)
/* 989AC 80097DAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 989B0 80097DB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 989B4 80097DB4 03E00008 */  jr         $ra
/* 989B8 80097DB8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80097DBC
/* 989BC 80097DBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 989C0 80097DC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 989C4 80097DC4 00808821 */  addu       $s1, $a0, $zero
/* 989C8 80097DC8 3C030B00 */  lui        $v1, (0xB000020 >> 16)
/* 989CC 80097DCC 34630020 */  ori        $v1, $v1, (0xB000020 & 0xFFFF)
/* 989D0 80097DD0 26240008 */  addiu      $a0, $s1, 0x8
/* 989D4 80097DD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 989D8 80097DD8 00E08021 */  addu       $s0, $a3, $zero
/* 989DC 80097DDC 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 989E0 80097DE0 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* 989E4 80097DE4 00A21025 */  or         $v0, $a1, $v0
/* 989E8 80097DE8 00052C00 */  sll        $a1, $a1, 16
/* 989EC 80097DEC 00063040 */  sll        $a2, $a2, 1
/* 989F0 80097DF0 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 989F4 80097DF4 00A62825 */  or         $a1, $a1, $a2
/* 989F8 80097DF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 989FC 80097DFC AE020000 */  sw         $v0, 0x0($s0)
/* 98A00 80097E00 AE050004 */  sw         $a1, 0x4($s0)
/* 98A04 80097E04 0C0006C8 */  jal        osVirtualToPhysical
/* 98A08 80097E08 AE030008 */   sw        $v1, 0x8($s0)
/* 98A0C 80097E0C AE02000C */  sw         $v0, 0xC($s0)
/* 98A10 80097E10 9222002F */  lbu        $v0, 0x2F($s1)
/* 98A14 80097E14 96230002 */  lhu        $v1, 0x2($s1)
/* 98A18 80097E18 3C040E00 */  lui        $a0, (0xE000000 >> 16)
/* 98A1C 80097E1C 00021400 */  sll        $v0, $v0, 16
/* 98A20 80097E20 00641825 */  or         $v1, $v1, $a0
/* 98A24 80097E24 00431025 */  or         $v0, $v0, $v1
/* 98A28 80097E28 AE020010 */  sw         $v0, 0x10($s0)
/* 98A2C 80097E2C 0C0006C8 */  jal        osVirtualToPhysical
/* 98A30 80097E30 8E240028 */   lw        $a0, 0x28($s1)
/* 98A34 80097E34 AE020014 */  sw         $v0, 0x14($s0)
/* 98A38 80097E38 26100018 */  addiu      $s0, $s0, 0x18
/* 98A3C 80097E3C 02001021 */  addu       $v0, $s0, $zero
/* 98A40 80097E40 AE20002C */  sw         $zero, 0x2C($s1)
/* 98A44 80097E44 8FBF0018 */  lw         $ra, 0x18($sp)
/* 98A48 80097E48 8FB10014 */  lw         $s1, 0x14($sp)
/* 98A4C 80097E4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 98A50 80097E50 03E00008 */  jr         $ra
/* 98A54 80097E54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80097E58
/* 98A58 80097E58 C4800010 */  lwc1       $f0, 0x10($a0)
/* 98A5C 80097E5C 44851000 */  mtc1       $a1, $f2
/* 98A60 80097E60 00000000 */  nop
/* 98A64 80097E64 468010A0 */  cvt.s.w    $f2, $f2
/* 98A68 80097E68 46020002 */  mul.s      $f0, $f0, $f2
/* 98A6C 80097E6C C4820014 */  lwc1       $f2, 0x14($a0)
/* 98A70 80097E70 46001080 */  add.s      $f2, $f2, $f0
/* 98A74 80097E74 3C01800D */  lui        $at, %hi(D_800D6E08)
/* 98A78 80097E78 D4206E08 */  ldc1       $f0, %lo(D_800D6E08)($at)
/* 98A7C 80097E7C 46001121 */  cvt.d.s    $f4, $f2
/* 98A80 80097E80 4624003C */  c.lt.d     $f0, $f4
/* 98A84 80097E84 00000000 */  nop
/* 98A88 80097E88 00000000 */  nop
/* 98A8C 80097E8C 45000005 */  bc1f       .L80097EA4
/* 98A90 80097E90 E4820014 */   swc1      $f2, 0x14($a0)
/* 98A94 80097E94 3C01800D */  lui        $at, %hi(D_800D6E10)
/* 98A98 80097E98 D4206E10 */  ldc1       $f0, %lo(D_800D6E10)($at)
/* 98A9C 80097E9C 46202001 */  sub.d      $f0, $f4, $f0
/* 98AA0 80097EA0 462000A0 */  cvt.s.d    $f2, $f0
.L80097EA4:
/* 98AA4 80097EA4 44800000 */  mtc1       $zero, $f0
/* 98AA8 80097EA8 00000000 */  nop
/* 98AAC 80097EAC 4600103C */  c.lt.s     $f2, $f0
/* 98AB0 80097EB0 46001106 */  mov.s      $f4, $f2
/* 98AB4 80097EB4 00000000 */  nop
/* 98AB8 80097EB8 45000002 */  bc1f       .L80097EC4
/* 98ABC 80097EBC E4820014 */   swc1      $f2, 0x14($a0)
/* 98AC0 80097EC0 46001107 */  neg.s      $f4, $f2
.L80097EC4:
/* 98AC4 80097EC4 3C01800D */  lui        $at, %hi(D_800D6E18)
/* 98AC8 80097EC8 D4206E18 */  ldc1       $f0, %lo(D_800D6E18)($at)
/* 98ACC 80097ECC 460020A1 */  cvt.d.s    $f2, $f4
/* 98AD0 80097ED0 46201081 */  sub.d      $f2, $f2, $f0
/* 98AD4 80097ED4 C480001C */  lwc1       $f0, 0x1C($a0)
/* 98AD8 80097ED8 462010A0 */  cvt.s.d    $f2, $f2
/* 98ADC 80097EDC 03E00008 */  jr         $ra
/* 98AE0 80097EE0 46020002 */   mul.s     $f0, $f0, $f2
/* 98AE4 80097EE4 00000000 */  nop
/* 98AE8 80097EE8 00000000 */  nop
/* 98AEC 80097EEC 00000000 */  nop

glabel func_80097EF0
/* 98AF0 80097EF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 98AF4 80097EF4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 98AF8 80097EF8 0080A821 */  addu       $s5, $a0, $zero
/* 98AFC 80097EFC AFB30024 */  sw         $s3, 0x24($sp)
/* 98B00 80097F00 00A09821 */  addu       $s3, $a1, $zero
/* 98B04 80097F04 AFB20020 */  sw         $s2, 0x20($sp)
/* 98B08 80097F08 00C09021 */  addu       $s2, $a2, $zero
/* 98B0C 80097F0C AFBF0030 */  sw         $ra, 0x30($sp)
/* 98B10 80097F10 AFB40028 */  sw         $s4, 0x28($sp)
/* 98B14 80097F14 AFB1001C */  sw         $s1, 0x1C($sp)
/* 98B18 80097F18 AFB00018 */  sw         $s0, 0x18($sp)
/* 98B1C 80097F1C 8EB10000 */  lw         $s1, 0x0($s5)
/* 98B20 80097F20 8FB00048 */  lw         $s0, 0x48($sp)
/* 98B24 80097F24 16200007 */  bnez       $s1, .L80097F44
/* 98B28 80097F28 00E0A021 */   addu      $s4, $a3, $zero
/* 98B2C 80097F2C 3C04800D */  lui        $a0, %hi(D_800D6E20)
/* 98B30 80097F30 24846E20 */  addiu      $a0, $a0, %lo(D_800D6E20)
/* 98B34 80097F34 3C05800D */  lui        $a1, %hi(D_800D6E24)
/* 98B38 80097F38 24A56E24 */  addiu      $a1, $a1, %lo(D_800D6E24)
/* 98B3C 80097F3C 0C0006E0 */  jal        func_80001B80
/* 98B40 80097F40 24060022 */   addiu     $a2, $zero, 0x22
.L80097F44:
/* 98B44 80097F44 02202021 */  addu       $a0, $s1, $zero
/* 98B48 80097F48 02602821 */  addu       $a1, $s3, $zero
/* 98B4C 80097F4C AFB00010 */  sw         $s0, 0x10($sp)
/* 98B50 80097F50 8C820004 */  lw         $v0, 0x4($a0)
/* 98B54 80097F54 02403021 */  addu       $a2, $s2, $zero
/* 98B58 80097F58 0040F809 */  jalr       $v0
/* 98B5C 80097F5C 02803821 */   addu      $a3, $s4, $zero
/* 98B60 80097F60 00408021 */  addu       $s0, $v0, $zero
/* 98B64 80097F64 02002021 */  addu       $a0, $s0, $zero
/* 98B68 80097F68 26100008 */  addiu      $s0, $s0, 0x8
/* 98B6C 80097F6C 02002821 */  addu       $a1, $s0, $zero
/* 98B70 80097F70 26100008 */  addiu      $s0, $s0, 0x8
/* 98B74 80097F74 3C070440 */  lui        $a3, (0x4400580 >> 16)
/* 98B78 80097F78 34E70580 */  ori        $a3, $a3, (0x4400580 & 0xFFFF)
/* 98B7C 80097F7C 02003021 */  addu       $a2, $s0, $zero
/* 98B80 80097F80 26100008 */  addiu      $s0, $s0, 0x8
/* 98B84 80097F84 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 98B88 80097F88 00121040 */  sll        $v0, $s2, 1
/* 98B8C 80097F8C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 98B90 80097F90 AC820004 */  sw         $v0, 0x4($a0)
/* 98B94 80097F94 3C020D00 */  lui        $v0, (0xD000000 >> 16)
/* 98B98 80097F98 AC830000 */  sw         $v1, 0x0($a0)
/* 98B9C 80097F9C ACA20000 */  sw         $v0, 0x0($a1)
/* 98BA0 80097FA0 00121080 */  sll        $v0, $s2, 2
/* 98BA4 80097FA4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 98BA8 80097FA8 ACA70004 */  sw         $a3, 0x4($a1)
/* 98BAC 80097FAC ACC30000 */  sw         $v1, 0x0($a2)
/* 98BB0 80097FB0 02001821 */  addu       $v1, $s0, $zero
/* 98BB4 80097FB4 ACC20004 */  sw         $v0, 0x4($a2)
/* 98BB8 80097FB8 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* 98BBC 80097FBC AC620000 */  sw         $v0, 0x0($v1)
/* 98BC0 80097FC0 8EA40014 */  lw         $a0, 0x14($s5)
/* 98BC4 80097FC4 24620008 */  addiu      $v0, $v1, 0x8
/* 98BC8 80097FC8 AC640004 */  sw         $a0, 0x4($v1)
/* 98BCC 80097FCC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 98BD0 80097FD0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 98BD4 80097FD4 8FB40028 */  lw         $s4, 0x28($sp)
/* 98BD8 80097FD8 8FB30024 */  lw         $s3, 0x24($sp)
/* 98BDC 80097FDC 8FB20020 */  lw         $s2, 0x20($sp)
/* 98BE0 80097FE0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 98BE4 80097FE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 98BE8 80097FE8 03E00008 */  jr         $ra
/* 98BEC 80097FEC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80097FF0
/* 98BF0 80097FF0 24020001 */  addiu      $v0, $zero, 0x1
/* 98BF4 80097FF4 10A20005 */  beq        $a1, $v0, .L8009800C
/* 98BF8 80097FF8 24020006 */   addiu     $v0, $zero, 0x6
/* 98BFC 80097FFC 50A20004 */  beql       $a1, $v0, .L80098010
/* 98C00 80098000 AC860014 */   sw        $a2, 0x14($a0)
/* 98C04 80098004 08026004 */  j          .L80098010
/* 98C08 80098008 00000000 */   nop
.L8009800C:
/* 98C0C 8009800C AC860000 */  sw         $a2, 0x0($a0)
.L80098010:
/* 98C10 80098010 03E00008 */  jr         $ra
/* 98C14 80098014 00001021 */   addu      $v0, $zero, $zero
/* 98C18 80098018 00000000 */  nop
/* 98C1C 8009801C 00000000 */  nop

glabel func_80098020
/* 98C20 80098020 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 98C24 80098024 18C00008 */  blez       $a2, .L80098048
/* 98C28 80098028 00001821 */   addu      $v1, $zero, $zero
.L8009802C:
/* 98C2C 8009802C 90820000 */  lbu        $v0, 0x0($a0)
/* 98C30 80098030 24840001 */  addiu      $a0, $a0, 0x1
/* 98C34 80098034 24630001 */  addiu      $v1, $v1, 0x1
/* 98C38 80098038 A0A20000 */  sb         $v0, 0x0($a1)
/* 98C3C 8009803C 0066102A */  slt        $v0, $v1, $a2
/* 98C40 80098040 1440FFFA */  bnez       $v0, .L8009802C
/* 98C44 80098044 24A50001 */   addiu     $a1, $a1, 0x1
.L80098048:
/* 98C48 80098048 27BD0008 */  addiu      $sp, $sp, 0x8
/* 98C4C 8009804C 03E00008 */  jr         $ra
/* 98C50 80098050 00000000 */   nop
/* 98C54 80098054 00000000 */  nop
/* 98C58 80098058 00000000 */  nop
/* 98C5C 8009805C 00000000 */  nop

glabel func_80098060
/* 98C60 80098060 3C02A450 */  lui        $v0, (0xA450000C >> 16)
/* 98C64 80098064 3442000C */  ori        $v0, $v0, (0xA450000C & 0xFFFF)
/* 98C68 80098068 8C420000 */  lw         $v0, 0x0($v0)
/* 98C6C 8009806C 03E00008 */  jr         $ra
/* 98C70 80098070 28420000 */   slti      $v0, $v0, 0x0
/* 98C74 80098074 00000000 */  nop
/* 98C78 80098078 00000000 */  nop
/* 98C7C 8009807C 00000000 */  nop

glabel func_80098080
/* 98C80 80098080 3C02A410 */  lui        $v0, (0xA410000C >> 16)
/* 98C84 80098084 3442000C */  ori        $v0, $v0, (0xA410000C & 0xFFFF)
/* 98C88 80098088 8C420000 */  lw         $v0, 0x0($v0)
/* 98C8C 8009808C 30420100 */  andi       $v0, $v0, 0x100
/* 98C90 80098090 03E00008 */  jr         $ra
/* 98C94 80098094 0002102B */   sltu      $v0, $zero, $v0
/* 98C98 80098098 00000000 */  nop
/* 98C9C 8009809C 00000000 */  nop

glabel func_800980A0
/* 98CA0 800980A0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CA4 800980A4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CA8 800980A8 8C420000 */  lw         $v0, 0x0($v0)
/* 98CAC 800980AC 3042001C */  andi       $v0, $v0, 0x1C
/* 98CB0 800980B0 03E00008 */  jr         $ra
/* 98CB4 800980B4 0002102B */   sltu      $v0, $zero, $v0
/* 98CB8 800980B8 00000000 */  nop
/* 98CBC 800980BC 00000000 */  nop

glabel func_800980C0
/* 98CC0 800980C0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CC4 800980C4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CC8 800980C8 03E00008 */  jr         $ra
/* 98CCC 800980CC 8C420000 */   lw        $v0, 0x0($v0)

glabel func_800980D0
/* 98CD0 800980D0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CD4 800980D4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CD8 800980D8 03E00008 */  jr         $ra
/* 98CDC 800980DC AC440000 */   sw        $a0, 0x0($v0)

glabel func_800980E0
/* 98CE0 800980E0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CE4 800980E4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CE8 800980E8 8C420000 */  lw         $v0, 0x0($v0)
/* 98CEC 800980EC 30420001 */  andi       $v0, $v0, 0x1
/* 98CF0 800980F0 10400004 */  beqz       $v0, .L80098104
/* 98CF4 800980F4 3C02A408 */   lui       $v0, %hi(D_A4080000)
/* 98CF8 800980F8 AC440000 */  sw         $a0, %lo(D_A4080000)($v0)
/* 98CFC 800980FC 08026042 */  j          .L80098108
/* 98D00 80098100 00001021 */   addu      $v0, $zero, $zero
.L80098104:
/* 98D04 80098104 2402FFFF */  addiu      $v0, $zero, -0x1
.L80098108:
/* 98D08 80098108 03E00008 */  jr         $ra
/* 98D0C 8009810C 00000000 */   nop

glabel func_80098110
/* 98D10 80098110 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 98D14 80098114 AFB3001C */  sw         $s3, 0x1C($sp)
/* 98D18 80098118 00809821 */  addu       $s3, $a0, $zero
/* 98D1C 8009811C AFB20018 */  sw         $s2, 0x18($sp)
/* 98D20 80098120 00A09021 */  addu       $s2, $a1, $zero
/* 98D24 80098124 AFB10014 */  sw         $s1, 0x14($sp)
/* 98D28 80098128 00C08821 */  addu       $s1, $a2, $zero
/* 98D2C 8009812C AFB00010 */  sw         $s0, 0x10($sp)
/* 98D30 80098130 00E08021 */  addu       $s0, $a3, $zero
/* 98D34 80098134 32420007 */  andi       $v0, $s2, 0x7
/* 98D38 80098138 10400007 */  beqz       $v0, .L80098158
/* 98D3C 8009813C AFBF0020 */   sw        $ra, 0x20($sp)
/* 98D40 80098140 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D44 80098144 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D48 80098148 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D4C 8009814C 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D50 80098150 0C0006E0 */  jal        func_80001B80
/* 98D54 80098154 2406003A */   addiu     $a2, $zero, 0x3A
.L80098158:
/* 98D58 80098158 32220007 */  andi       $v0, $s1, 0x7
/* 98D5C 8009815C 10400008 */  beqz       $v0, .L80098180
/* 98D60 80098160 32020007 */   andi      $v0, $s0, 0x7
/* 98D64 80098164 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D68 80098168 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D6C 8009816C 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D70 80098170 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D74 80098174 0C0006E0 */  jal        func_80001B80
/* 98D78 80098178 2406003B */   addiu     $a2, $zero, 0x3B
/* 98D7C 8009817C 32020007 */  andi       $v0, $s0, 0x7
.L80098180:
/* 98D80 80098180 10400007 */  beqz       $v0, .L800981A0
/* 98D84 80098184 00000000 */   nop
/* 98D88 80098188 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D8C 8009818C 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D90 80098190 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D94 80098194 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D98 80098198 0C0006E0 */  jal        func_80001B80
/* 98D9C 8009819C 2406003C */   addiu     $a2, $zero, 0x3C
.L800981A0:
/* 98DA0 800981A0 0C026028 */  jal        func_800980A0
/* 98DA4 800981A4 00000000 */   nop
/* 98DA8 800981A8 14400010 */  bnez       $v0, .L800981EC
/* 98DAC 800981AC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 98DB0 800981B0 02202021 */  addu       $a0, $s1, $zero
/* 98DB4 800981B4 3C02A404 */  lui        $v0, %hi(D_A4040000)
/* 98DB8 800981B8 0C0006C8 */  jal        osVirtualToPhysical
/* 98DBC 800981BC AC520000 */   sw        $s2, %lo(D_A4040000)($v0)
/* 98DC0 800981C0 3C03A404 */  lui        $v1, (0xA4040004 >> 16)
/* 98DC4 800981C4 34630004 */  ori        $v1, $v1, (0xA4040004 & 0xFFFF)
/* 98DC8 800981C8 AC620000 */  sw         $v0, 0x0($v1)
/* 98DCC 800981CC 16600003 */  bnez       $s3, .L800981DC
/* 98DD0 800981D0 3C03A404 */   lui       $v1, (0xA4040008 >> 16)
/* 98DD4 800981D4 08026078 */  j          .L800981E0
/* 98DD8 800981D8 3463000C */   ori       $v1, $v1, (0xA404000C & 0xFFFF)
.L800981DC:
/* 98DDC 800981DC 34630008 */  ori        $v1, $v1, (0xA4040008 & 0xFFFF)
.L800981E0:
/* 98DE0 800981E0 2602FFFF */  addiu      $v0, $s0, -0x1
/* 98DE4 800981E4 AC620000 */  sw         $v0, 0x0($v1)
/* 98DE8 800981E8 00001021 */  addu       $v0, $zero, $zero
.L800981EC:
/* 98DEC 800981EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 98DF0 800981F0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 98DF4 800981F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 98DF8 800981F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 98DFC 800981FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 98E00 80098200 03E00008 */  jr         $ra
/* 98E04 80098204 27BD0028 */   addiu     $sp, $sp, 0x28
/* 98E08 80098208 00000000 */  nop
/* 98E0C 8009820C 00000000 */  nop

glabel func_80098210
/* 98E10 80098210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98E14 80098214 AFB00010 */  sw         $s0, 0x10($sp)
/* 98E18 80098218 3C10800D */  lui        $s0, %hi(D_800CB200)
/* 98E1C 8009821C 2610B200 */  addiu      $s0, $s0, %lo(D_800CB200)
/* 98E20 80098220 02002021 */  addu       $a0, $s0, $zero
/* 98E24 80098224 AFBF0014 */  sw         $ra, 0x14($sp)
/* 98E28 80098228 0C00034C */  jal        _bzero
/* 98E2C 8009822C 24050060 */   addiu     $a1, $zero, 0x60
/* 98E30 80098230 3C038000 */  lui        $v1, %hi(osTvType)
/* 98E34 80098234 8C630300 */  lw         $v1, %lo(osTvType)($v1)
/* 98E38 80098238 3C01800D */  lui        $at, %hi(D_800CB260)
/* 98E3C 8009823C AC30B260 */  sw         $s0, %lo(D_800CB260)($at)
/* 98E40 80098240 26100030 */  addiu      $s0, $s0, 0x30
/* 98E44 80098244 24020001 */  addiu      $v0, $zero, 0x1
/* 98E48 80098248 3C01800D */  lui        $at, %hi(D_800CB232)
/* 98E4C 8009824C A422B232 */  sh         $v0, %lo(D_800CB232)($at)
/* 98E50 80098250 3C01800D */  lui        $at, %hi(D_800CB202)
/* 98E54 80098254 A422B202 */  sh         $v0, %lo(D_800CB202)($at)
/* 98E58 80098258 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 98E5C 8009825C 3C01800D */  lui        $at, %hi(D_800CB264)
/* 98E60 80098260 AC30B264 */  sw         $s0, %lo(D_800CB264)($at)
/* 98E64 80098264 3C01800D */  lui        $at, %hi(D_800CB234)
/* 98E68 80098268 AC22B234 */  sw         $v0, %lo(D_800CB234)($at)
/* 98E6C 8009826C 3C01800D */  lui        $at, %hi(D_800CB204)
/* 98E70 80098270 AC22B204 */  sw         $v0, %lo(D_800CB204)($at)
/* 98E74 80098274 14600004 */  bnez       $v1, .L80098288
/* 98E78 80098278 24020002 */   addiu     $v0, $zero, 0x2
/* 98E7C 8009827C 3C02800D */  lui        $v0, %hi(D_800CB2D0)
/* 98E80 80098280 080260A9 */  j          .L800982A4
/* 98E84 80098284 2442B2D0 */   addiu     $v0, $v0, %lo(D_800CB2D0)
.L80098288:
/* 98E88 80098288 14620004 */  bne        $v1, $v0, .L8009829C
/* 98E8C 8009828C 00000000 */   nop
/* 98E90 80098290 3C02800D */  lui        $v0, %hi(D_800CB320)
/* 98E94 80098294 080260A9 */  j          .L800982A4
/* 98E98 80098298 2442B320 */   addiu     $v0, $v0, %lo(D_800CB320)
.L8009829C:
/* 98E9C 8009829C 3C02800D */  lui        $v0, %hi(D_800CB280)
/* 98EA0 800982A0 2442B280 */  addiu      $v0, $v0, %lo(D_800CB280)
.L800982A4:
/* 98EA4 800982A4 3C01800D */  lui        $at, %hi(D_800CB238)
/* 98EA8 800982A8 AC22B238 */  sw         $v0, %lo(D_800CB238)($at)
/* 98EAC 800982AC 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 98EB0 800982B0 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 98EB4 800982B4 8C640008 */  lw         $a0, 0x8($v1)
/* 98EB8 800982B8 24020020 */  addiu      $v0, $zero, 0x20
/* 98EBC 800982BC A4620000 */  sh         $v0, 0x0($v1)
/* 98EC0 800982C0 8C820004 */  lw         $v0, 0x4($a0)
/* 98EC4 800982C4 3C04A440 */  lui        $a0, (0xA4400010 >> 16)
/* 98EC8 800982C8 34840010 */  ori        $a0, $a0, (0xA4400010 & 0xFFFF)
/* 98ECC 800982CC AC62000C */  sw         $v0, 0xC($v1)
/* 98ED0 800982D0 8C820000 */  lw         $v0, 0x0($a0)
/* 98ED4 800982D4 2C42000B */  sltiu      $v0, $v0, 0xB
/* 98ED8 800982D8 14400007 */  bnez       $v0, .L800982F8
/* 98EDC 800982DC 3C02A440 */   lui       $v0, %hi(D_A4400000)
/* 98EE0 800982E0 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 98EE4 800982E4 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
.L800982E8:
/* 98EE8 800982E8 8C620000 */  lw         $v0, 0x0($v1)
/* 98EEC 800982EC 2C42000B */  sltiu      $v0, $v0, 0xB
/* 98EF0 800982F0 1040FFFD */  beqz       $v0, .L800982E8
/* 98EF4 800982F4 3C02A440 */   lui       $v0, %hi(D_A4400000)
.L800982F8:
/* 98EF8 800982F8 AC400000 */  sw         $zero, %lo(D_A4400000)($v0)
/* 98EFC 800982FC 0C025210 */  jal        func_80094840
/* 98F00 80098300 00000000 */   nop
/* 98F04 80098304 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98F08 80098308 8FB00010 */  lw         $s0, 0x10($sp)
/* 98F0C 8009830C 03E00008 */  jr         $ra
/* 98F10 80098310 27BD0018 */   addiu     $sp, $sp, 0x18
/* 98F14 80098314 00000000 */  nop
/* 98F18 80098318 00000000 */  nop
/* 98F1C 8009831C 00000000 */  nop

glabel func_80098320
/* 98F20 80098320 3C02800D */  lui        $v0, %hi(D_800CB260)
/* 98F24 80098324 03E00008 */  jr         $ra
/* 98F28 80098328 8C42B260 */   lw        $v0, %lo(D_800CB260)($v0)
/* 98F2C 8009832C 00000000 */  nop

glabel func_80098330
/* 98F30 80098330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98F34 80098334 24020001 */  addiu      $v0, $zero, 0x1
/* 98F38 80098338 AFB00010 */  sw         $s0, 0x10($sp)
/* 98F3C 8009833C 3C10803F */  lui        $s0, %hi(D_803F6B50)
/* 98F40 80098340 26106B50 */  addiu      $s0, $s0, %lo(D_803F6B50)
/* 98F44 80098344 02002021 */  addu       $a0, $s0, $zero
/* 98F48 80098348 3C05802C */  lui        $a1, %hi(D_802C57C0)
/* 98F4C 8009834C 24A557C0 */  addiu      $a1, $a1, %lo(D_802C57C0)
/* 98F50 80098350 AFBF0014 */  sw         $ra, 0x14($sp)
/* 98F54 80098354 3C01800D */  lui        $at, %hi(D_800CB270)
/* 98F58 80098358 AC22B270 */  sw         $v0, %lo(D_800CB270)($at)
/* 98F5C 8009835C 0C0009FC */  jal        func_800027F0
/* 98F60 80098360 24060001 */   addiu     $a2, $zero, 0x1
/* 98F64 80098364 02002021 */  addu       $a0, $s0, $zero
/* 98F68 80098368 00002821 */  addu       $a1, $zero, $zero
/* 98F6C 8009836C 0C000B9C */  jal        osSendMesg
/* 98F70 80098370 00003021 */   addu      $a2, $zero, $zero
/* 98F74 80098374 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98F78 80098378 8FB00010 */  lw         $s0, 0x10($sp)
/* 98F7C 8009837C 03E00008 */  jr         $ra
/* 98F80 80098380 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80098384
/* 98F84 80098384 3C02800D */  lui        $v0, %hi(D_800CB270)
/* 98F88 80098388 8C42B270 */  lw         $v0, %lo(D_800CB270)($v0)
/* 98F8C 8009838C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 98F90 80098390 1440000F */  bnez       $v0, .L800983D0
/* 98F94 80098394 AFBF0018 */   sw        $ra, 0x18($sp)
/* 98F98 80098398 24020001 */  addiu      $v0, $zero, 0x1
/* 98F9C 8009839C 3C01800D */  lui        $at, %hi(D_800CB270)
/* 98FA0 800983A0 AC22B270 */  sw         $v0, %lo(D_800CB270)($at)
/* 98FA4 800983A4 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FA8 800983A8 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FAC 800983AC 3C05802C */  lui        $a1, %hi(D_802C57C0)
/* 98FB0 800983B0 24A557C0 */  addiu      $a1, $a1, %lo(D_802C57C0)
/* 98FB4 800983B4 0C0009FC */  jal        func_800027F0
/* 98FB8 800983B8 24060001 */   addiu     $a2, $zero, 0x1
/* 98FBC 800983BC 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FC0 800983C0 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FC4 800983C4 00002821 */  addu       $a1, $zero, $zero
/* 98FC8 800983C8 0C000B9C */  jal        osSendMesg
/* 98FCC 800983CC 00003021 */   addu      $a2, $zero, $zero
.L800983D0:
/* 98FD0 800983D0 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FD4 800983D4 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FD8 800983D8 27A50010 */  addiu      $a1, $sp, 0x10
/* 98FDC 800983DC 0C000B3C */  jal        osRecvMesg
/* 98FE0 800983E0 24060001 */   addiu     $a2, $zero, 0x1
/* 98FE4 800983E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 98FE8 800983E8 03E00008 */  jr         $ra
/* 98FEC 800983EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800983F0
/* 98FF0 800983F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98FF4 800983F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 98FF8 800983F8 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FFC 800983FC 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 99000 80098400 00002821 */  addu       $a1, $zero, $zero
/* 99004 80098404 0C000B9C */  jal        osSendMesg
/* 99008 80098408 00003021 */   addu      $a2, $zero, $zero
/* 9900C 8009840C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 99010 80098410 03E00008 */  jr         $ra
/* 99014 80098414 27BD0018 */   addiu     $sp, $sp, 0x18
/* 99018 80098418 00000000 */  nop
/* 9901C 8009841C 00000000 */  nop

glabel func_80098420
/* 99020 80098420 3C03800A */  lui        $v1, %hi(D_800A06F0)
/* 99024 80098424 8C6306F0 */  lw         $v1, %lo(D_800A06F0)($v1)
/* 99028 80098428 10600003 */  beqz       $v1, .L80098438
/* 9902C 8009842C 00001021 */   addu      $v0, $zero, $zero
/* 99030 80098430 3C02800A */  lui        $v0, %hi(D_800A06F8)
/* 99034 80098434 8C4206F8 */  lw         $v0, %lo(D_800A06F8)($v0)
.L80098438:
/* 99038 80098438 03E00008 */  jr         $ra
/* 9903C 8009843C 00000000 */   nop

glabel func_80098440
/* 99040 80098440 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 99044 80098444 AFB40078 */  sw         $s4, 0x78($sp)
/* 99048 80098448 0080A021 */  addu       $s4, $a0, $zero
/* 9904C 8009844C AFB30074 */  sw         $s3, 0x74($sp)
/* 99050 80098450 00A09821 */  addu       $s3, $a1, $zero
/* 99054 80098454 00C02821 */  addu       $a1, $a2, $zero
/* 99058 80098458 AFB5007C */  sw         $s5, 0x7C($sp)
/* 9905C 8009845C 3C15800D */  lui        $s5, %hi(D_800D6E40)
/* 99060 80098460 26B56E40 */  addiu      $s5, $s5, %lo(D_800D6E40)
/* 99064 80098464 AFBF0080 */  sw         $ra, 0x80($sp)
/* 99068 80098468 AFB20070 */  sw         $s2, 0x70($sp)
/* 9906C 8009846C AFB1006C */  sw         $s1, 0x6C($sp)
/* 99070 80098470 AFB00068 */  sw         $s0, 0x68($sp)
/* 99074 80098474 AFA70094 */  sw         $a3, 0x94($sp)
/* 99078 80098478 AFA0003C */  sw         $zero, 0x3C($sp)
.L8009847C:
/* 9907C 8009847C 90B10000 */  lbu        $s1, 0x0($a1)
/* 99080 80098480 08026123 */  j          .L8009848C
/* 99084 80098484 00A09021 */   addu      $s2, $a1, $zero
.L80098488:
/* 99088 80098488 92510000 */  lbu        $s1, 0x0($s2)
.L8009848C:
/* 9908C 8009848C 322200FF */  andi       $v0, $s1, 0xFF
/* 99090 80098490 0002182B */  sltu       $v1, $zero, $v0
/* 99094 80098494 38420025 */  xori       $v0, $v0, 0x25
/* 99098 80098498 0002102B */  sltu       $v0, $zero, $v0
/* 9909C 8009849C 00621824 */  and        $v1, $v1, $v0
/* 990A0 800984A0 5460FFF9 */  bnel       $v1, $zero, .L80098488
/* 990A4 800984A4 26520001 */   addiu     $s2, $s2, 0x1
/* 990A8 800984A8 02458023 */  subu       $s0, $s2, $a1
/* 990AC 800984AC 1A000009 */  blez       $s0, .L800984D4
/* 990B0 800984B0 02602021 */   addu      $a0, $s3, $zero
/* 990B4 800984B4 0280F809 */  jalr       $s4
/* 990B8 800984B8 02003021 */   addu      $a2, $s0, $zero
/* 990BC 800984BC 00409821 */  addu       $s3, $v0, $zero
/* 990C0 800984C0 12600131 */  beqz       $s3, .L80098988
/* 990C4 800984C4 00000000 */   nop
/* 990C8 800984C8 8FA2003C */  lw         $v0, 0x3C($sp)
/* 990CC 800984CC 00501021 */  addu       $v0, $v0, $s0
/* 990D0 800984D0 AFA2003C */  sw         $v0, 0x3C($sp)
.L800984D4:
/* 990D4 800984D4 1220012C */  beqz       $s1, .L80098988
/* 990D8 800984D8 26520001 */   addiu     $s2, $s2, 0x1
/* 990DC 800984DC AFA00040 */  sw         $zero, 0x40($sp)
/* 990E0 800984E0 3C10800D */  lui        $s0, %hi(D_800D6E48)
/* 990E4 800984E4 26106E48 */  addiu      $s0, $s0, %lo(D_800D6E48)
.L800984E8:
/* 990E8 800984E8 92450000 */  lbu        $a1, 0x0($s2)
/* 990EC 800984EC 0C02491C */  jal        func_80092470
/* 990F0 800984F0 02A02021 */   addu      $a0, $s5, $zero
/* 990F4 800984F4 10400009 */  beqz       $v0, .L8009851C
/* 990F8 800984F8 00551023 */   subu      $v0, $v0, $s5
/* 990FC 800984FC 00021080 */  sll        $v0, $v0, 2
/* 99100 80098500 00501021 */  addu       $v0, $v0, $s0
/* 99104 80098504 8FA30040 */  lw         $v1, 0x40($sp)
/* 99108 80098508 8C420000 */  lw         $v0, 0x0($v0)
/* 9910C 8009850C 26520001 */  addiu      $s2, $s2, 0x1
/* 99110 80098510 00621825 */  or         $v1, $v1, $v0
/* 99114 80098514 0802613A */  j          .L800984E8
/* 99118 80098518 AFA30040 */   sw        $v1, 0x40($sp)
.L8009851C:
/* 9911C 8009851C 92440000 */  lbu        $a0, 0x0($s2)
/* 99120 80098520 2402002A */  addiu      $v0, $zero, 0x2A
/* 99124 80098524 308300FF */  andi       $v1, $a0, 0xFF
/* 99128 80098528 14620011 */  bne        $v1, $v0, .L80098570
/* 9912C 8009852C 2482FFD0 */   addiu     $v0, $a0, -0x30
/* 99130 80098530 8FA20094 */  lw         $v0, 0x94($sp)
/* 99134 80098534 2403FFFC */  addiu      $v1, $zero, -0x4
/* 99138 80098538 24420003 */  addiu      $v0, $v0, 0x3
/* 9913C 8009853C 00431024 */  and        $v0, $v0, $v1
/* 99140 80098540 24430004 */  addiu      $v1, $v0, 0x4
/* 99144 80098544 AFA30094 */  sw         $v1, 0x94($sp)
/* 99148 80098548 8C420000 */  lw         $v0, 0x0($v0)
/* 9914C 8009854C 04410006 */  bgez       $v0, .L80098568
/* 99150 80098550 AFA20038 */   sw        $v0, 0x38($sp)
/* 99154 80098554 8FA30040 */  lw         $v1, 0x40($sp)
/* 99158 80098558 00021023 */  negu       $v0, $v0
/* 9915C 8009855C AFA20038 */  sw         $v0, 0x38($sp)
/* 99160 80098560 34630004 */  ori        $v1, $v1, 0x4
/* 99164 80098564 AFA30040 */  sw         $v1, 0x40($sp)
.L80098568:
/* 99168 80098568 08026170 */  j          .L800985C0
/* 9916C 8009856C 26520001 */   addiu     $s2, $s2, 0x1
.L80098570:
/* 99170 80098570 2C42000A */  sltiu      $v0, $v0, 0xA
/* 99174 80098574 10400012 */  beqz       $v0, .L800985C0
/* 99178 80098578 AFA00038 */   sw        $zero, 0x38($sp)
.L8009857C:
/* 9917C 8009857C 8FA40038 */  lw         $a0, 0x38($sp)
/* 99180 80098580 288203E7 */  slti       $v0, $a0, 0x3E7
/* 99184 80098584 50400009 */  beql       $v0, $zero, .L800985AC
/* 99188 80098588 26520001 */   addiu     $s2, $s2, 0x1
/* 9918C 8009858C 00041080 */  sll        $v0, $a0, 2
/* 99190 80098590 92430000 */  lbu        $v1, 0x0($s2)
/* 99194 80098594 00441021 */  addu       $v0, $v0, $a0
/* 99198 80098598 00021040 */  sll        $v0, $v0, 1
/* 9919C 8009859C 00431021 */  addu       $v0, $v0, $v1
/* 991A0 800985A0 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 991A4 800985A4 AFA20038 */  sw         $v0, 0x38($sp)
/* 991A8 800985A8 26520001 */  addiu      $s2, $s2, 0x1
.L800985AC:
/* 991AC 800985AC 92420000 */  lbu        $v0, 0x0($s2)
/* 991B0 800985B0 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 991B4 800985B4 2C42000A */  sltiu      $v0, $v0, 0xA
/* 991B8 800985B8 1440FFF0 */  bnez       $v0, .L8009857C
/* 991BC 800985BC 00000000 */   nop
.L800985C0:
/* 991C0 800985C0 92430000 */  lbu        $v1, 0x0($s2)
/* 991C4 800985C4 2402002E */  addiu      $v0, $zero, 0x2E
/* 991C8 800985C8 10620003 */  beq        $v1, $v0, .L800985D8
/* 991CC 800985CC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 991D0 800985D0 0802619A */  j          .L80098668
/* 991D4 800985D4 AFA20034 */   sw        $v0, 0x34($sp)
.L800985D8:
/* 991D8 800985D8 26520001 */  addiu      $s2, $s2, 0x1
/* 991DC 800985DC 92440000 */  lbu        $a0, 0x0($s2)
/* 991E0 800985E0 2402002A */  addiu      $v0, $zero, 0x2A
/* 991E4 800985E4 308300FF */  andi       $v1, $a0, 0xFF
/* 991E8 800985E8 1462000B */  bne        $v1, $v0, .L80098618
/* 991EC 800985EC 2482FFD0 */   addiu     $v0, $a0, -0x30
/* 991F0 800985F0 8FA30094 */  lw         $v1, 0x94($sp)
/* 991F4 800985F4 2402FFFC */  addiu      $v0, $zero, -0x4
/* 991F8 800985F8 24630003 */  addiu      $v1, $v1, 0x3
/* 991FC 800985FC 00621824 */  and        $v1, $v1, $v0
/* 99200 80098600 24620004 */  addiu      $v0, $v1, 0x4
/* 99204 80098604 AFA20094 */  sw         $v0, 0x94($sp)
/* 99208 80098608 8C620000 */  lw         $v0, 0x0($v1)
/* 9920C 8009860C 26520001 */  addiu      $s2, $s2, 0x1
/* 99210 80098610 0802619A */  j          .L80098668
/* 99214 80098614 AFA20034 */   sw        $v0, 0x34($sp)
.L80098618:
/* 99218 80098618 2C42000A */  sltiu      $v0, $v0, 0xA
/* 9921C 8009861C 10400012 */  beqz       $v0, .L80098668
/* 99220 80098620 AFA00034 */   sw        $zero, 0x34($sp)
.L80098624:
/* 99224 80098624 8FA40034 */  lw         $a0, 0x34($sp)
/* 99228 80098628 288203E7 */  slti       $v0, $a0, 0x3E7
/* 9922C 8009862C 50400009 */  beql       $v0, $zero, .L80098654
/* 99230 80098630 26520001 */   addiu     $s2, $s2, 0x1
/* 99234 80098634 00041080 */  sll        $v0, $a0, 2
/* 99238 80098638 92430000 */  lbu        $v1, 0x0($s2)
/* 9923C 8009863C 00441021 */  addu       $v0, $v0, $a0
/* 99240 80098640 00021040 */  sll        $v0, $v0, 1
/* 99244 80098644 00431021 */  addu       $v0, $v0, $v1
/* 99248 80098648 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 9924C 8009864C AFA20034 */  sw         $v0, 0x34($sp)
/* 99250 80098650 26520001 */  addiu      $s2, $s2, 0x1
.L80098654:
/* 99254 80098654 92420000 */  lbu        $v0, 0x0($s2)
/* 99258 80098658 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 9925C 8009865C 2C42000A */  sltiu      $v0, $v0, 0xA
/* 99260 80098660 1440FFF0 */  bnez       $v0, .L80098624
/* 99264 80098664 00000000 */   nop
.L80098668:
/* 99268 80098668 92500000 */  lbu        $s0, 0x0($s2)
/* 9926C 8009866C 3C04800D */  lui        $a0, %hi(D_800D6E60)
/* 99270 80098670 24846E60 */  addiu      $a0, $a0, %lo(D_800D6E60)
/* 99274 80098674 0C02491C */  jal        func_80092470
/* 99278 80098678 02002821 */   addu      $a1, $s0, $zero
/* 9927C 8009867C 10400003 */  beqz       $v0, .L8009868C
/* 99280 80098680 02002821 */   addu      $a1, $s0, $zero
/* 99284 80098684 080261A4 */  j          .L80098690
/* 99288 80098688 26520001 */   addiu     $s2, $s2, 0x1
.L8009868C:
/* 9928C 8009868C 00002821 */  addu       $a1, $zero, $zero
.L80098690:
/* 99290 80098690 A3A50044 */  sb         $a1, 0x44($sp)
/* 99294 80098694 30A500FF */  andi       $a1, $a1, 0xFF
/* 99298 80098698 2402006C */  addiu      $v0, $zero, 0x6C
/* 9929C 8009869C 14A20007 */  bne        $a1, $v0, .L800986BC
/* 992A0 800986A0 27A40010 */   addiu     $a0, $sp, 0x10
/* 992A4 800986A4 92420000 */  lbu        $v0, 0x0($s2)
/* 992A8 800986A8 14450004 */  bne        $v0, $a1, .L800986BC
/* 992AC 800986AC 2402004C */   addiu     $v0, $zero, 0x4C
/* 992B0 800986B0 A3A20044 */  sb         $v0, 0x44($sp)
/* 992B4 800986B4 26520001 */  addiu      $s2, $s2, 0x1
/* 992B8 800986B8 27A40010 */  addiu      $a0, $sp, 0x10
.L800986BC:
/* 992BC 800986BC 92460000 */  lbu        $a2, 0x0($s2)
/* 992C0 800986C0 27A50094 */  addiu      $a1, $sp, 0x94
/* 992C4 800986C4 0C02626C */  jal        func_800989B0
/* 992C8 800986C8 27A70048 */   addiu     $a3, $sp, 0x48
/* 992CC 800986CC 8FA3001C */  lw         $v1, 0x1C($sp)
/* 992D0 800986D0 8FA20020 */  lw         $v0, 0x20($sp)
/* 992D4 800986D4 00621821 */  addu       $v1, $v1, $v0
/* 992D8 800986D8 8FA20024 */  lw         $v0, 0x24($sp)
/* 992DC 800986DC 8FA40028 */  lw         $a0, 0x28($sp)
/* 992E0 800986E0 8FA5002C */  lw         $a1, 0x2C($sp)
/* 992E4 800986E4 00621821 */  addu       $v1, $v1, $v0
/* 992E8 800986E8 00641821 */  addu       $v1, $v1, $a0
/* 992EC 800986EC 00651821 */  addu       $v1, $v1, $a1
/* 992F0 800986F0 8FA40030 */  lw         $a0, 0x30($sp)
/* 992F4 800986F4 8FA50038 */  lw         $a1, 0x38($sp)
/* 992F8 800986F8 8FA20040 */  lw         $v0, 0x40($sp)
/* 992FC 800986FC 00641821 */  addu       $v1, $v1, $a0
/* 99300 80098700 00A32823 */  subu       $a1, $a1, $v1
/* 99304 80098704 30420004 */  andi       $v0, $v0, 0x4
/* 99308 80098708 14400017 */  bnez       $v0, .L80098768
/* 9930C 8009870C AFA50038 */   sw        $a1, 0x38($sp)
/* 99310 80098710 18A00015 */  blez       $a1, .L80098768
/* 99314 80098714 00000000 */   nop
/* 99318 80098718 00A08821 */  addu       $s1, $a1, $zero
/* 9931C 8009871C 2E220021 */  sltiu      $v0, $s1, 0x21
.L80098720:
/* 99320 80098720 10400002 */  beqz       $v0, .L8009872C
/* 99324 80098724 24100020 */   addiu     $s0, $zero, 0x20
/* 99328 80098728 02208021 */  addu       $s0, $s1, $zero
.L8009872C:
/* 9932C 8009872C 5A00000C */  blezl      $s0, .L80098760
/* 99330 80098730 02308823 */   subu      $s1, $s1, $s0
/* 99334 80098734 02602021 */  addu       $a0, $s3, $zero
/* 99338 80098738 3C05800D */  lui        $a1, %hi(D_800CB370)
/* 9933C 8009873C 24A5B370 */  addiu      $a1, $a1, %lo(D_800CB370)
/* 99340 80098740 0280F809 */  jalr       $s4
/* 99344 80098744 02003021 */   addu      $a2, $s0, $zero
/* 99348 80098748 00409821 */  addu       $s3, $v0, $zero
/* 9934C 8009874C 1260008E */  beqz       $s3, .L80098988
/* 99350 80098750 02308823 */   subu      $s1, $s1, $s0
/* 99354 80098754 8FA2003C */  lw         $v0, 0x3C($sp)
/* 99358 80098758 00501021 */  addu       $v0, $v0, $s0
/* 9935C 8009875C AFA2003C */  sw         $v0, 0x3C($sp)
.L80098760:
/* 99360 80098760 1E20FFEF */  bgtz       $s1, .L80098720
/* 99364 80098764 2E220021 */   sltiu     $v0, $s1, 0x21
.L80098768:
/* 99368 80098768 8FA6001C */  lw         $a2, 0x1C($sp)
/* 9936C 8009876C 18C0000A */  blez       $a2, .L80098798
/* 99370 80098770 02602021 */   addu      $a0, $s3, $zero
/* 99374 80098774 0280F809 */  jalr       $s4
/* 99378 80098778 27A50048 */   addiu     $a1, $sp, 0x48
/* 9937C 8009877C 00409821 */  addu       $s3, $v0, $zero
/* 99380 80098780 12600081 */  beqz       $s3, .L80098988
/* 99384 80098784 00000000 */   nop
/* 99388 80098788 8FA2003C */  lw         $v0, 0x3C($sp)
/* 9938C 8009878C 8FA3001C */  lw         $v1, 0x1C($sp)
/* 99390 80098790 00431021 */  addu       $v0, $v0, $v1
/* 99394 80098794 AFA2003C */  sw         $v0, 0x3C($sp)
.L80098798:
/* 99398 80098798 8FA20020 */  lw         $v0, 0x20($sp)
/* 9939C 8009879C 18400015 */  blez       $v0, .L800987F4
/* 993A0 800987A0 00000000 */   nop
/* 993A4 800987A4 00408821 */  addu       $s1, $v0, $zero
/* 993A8 800987A8 2E220021 */  sltiu      $v0, $s1, 0x21
.L800987AC:
/* 993AC 800987AC 10400002 */  beqz       $v0, .L800987B8
/* 993B0 800987B0 24100020 */   addiu     $s0, $zero, 0x20
/* 993B4 800987B4 02208021 */  addu       $s0, $s1, $zero
.L800987B8:
/* 993B8 800987B8 5A00000C */  blezl      $s0, .L800987EC
/* 993BC 800987BC 02308823 */   subu      $s1, $s1, $s0
/* 993C0 800987C0 02602021 */  addu       $a0, $s3, $zero
/* 993C4 800987C4 3C05800D */  lui        $a1, %hi(D_800CB394)
/* 993C8 800987C8 24A5B394 */  addiu      $a1, $a1, %lo(D_800CB394)
/* 993CC 800987CC 0280F809 */  jalr       $s4
/* 993D0 800987D0 02003021 */   addu      $a2, $s0, $zero
/* 993D4 800987D4 00409821 */  addu       $s3, $v0, $zero
/* 993D8 800987D8 1260006B */  beqz       $s3, .L80098988
/* 993DC 800987DC 02308823 */   subu      $s1, $s1, $s0
/* 993E0 800987E0 8FA2003C */  lw         $v0, 0x3C($sp)
/* 993E4 800987E4 00501021 */  addu       $v0, $v0, $s0
/* 993E8 800987E8 AFA2003C */  sw         $v0, 0x3C($sp)
.L800987EC:
/* 993EC 800987EC 1E20FFEF */  bgtz       $s1, .L800987AC
/* 993F0 800987F0 2E220021 */   sltiu     $v0, $s1, 0x21
.L800987F4:
/* 993F4 800987F4 8FA60024 */  lw         $a2, 0x24($sp)
/* 993F8 800987F8 18C0000B */  blez       $a2, .L80098828
/* 993FC 800987FC 00000000 */   nop
/* 99400 80098800 8FA50018 */  lw         $a1, 0x18($sp)
/* 99404 80098804 0280F809 */  jalr       $s4
/* 99408 80098808 02602021 */   addu      $a0, $s3, $zero
/* 9940C 8009880C 00409821 */  addu       $s3, $v0, $zero
/* 99410 80098810 1260005D */  beqz       $s3, .L80098988
/* 99414 80098814 00000000 */   nop
/* 99418 80098818 8FA2003C */  lw         $v0, 0x3C($sp)
/* 9941C 8009881C 8FA30024 */  lw         $v1, 0x24($sp)
/* 99420 80098820 00431021 */  addu       $v0, $v0, $v1
/* 99424 80098824 AFA2003C */  sw         $v0, 0x3C($sp)
.L80098828:
/* 99428 80098828 8FA20028 */  lw         $v0, 0x28($sp)
/* 9942C 8009882C 18400015 */  blez       $v0, .L80098884
/* 99430 80098830 00000000 */   nop
/* 99434 80098834 00408821 */  addu       $s1, $v0, $zero
/* 99438 80098838 2E220021 */  sltiu      $v0, $s1, 0x21
.L8009883C:
/* 9943C 8009883C 10400002 */  beqz       $v0, .L80098848
/* 99440 80098840 24100020 */   addiu     $s0, $zero, 0x20
/* 99444 80098844 02208021 */  addu       $s0, $s1, $zero
.L80098848:
/* 99448 80098848 5A00000C */  blezl      $s0, .L8009887C
/* 9944C 8009884C 02308823 */   subu      $s1, $s1, $s0
/* 99450 80098850 02602021 */  addu       $a0, $s3, $zero
/* 99454 80098854 3C05800D */  lui        $a1, %hi(D_800CB394)
/* 99458 80098858 24A5B394 */  addiu      $a1, $a1, %lo(D_800CB394)
/* 9945C 8009885C 0280F809 */  jalr       $s4
/* 99460 80098860 02003021 */   addu      $a2, $s0, $zero
/* 99464 80098864 00409821 */  addu       $s3, $v0, $zero
/* 99468 80098868 12600047 */  beqz       $s3, .L80098988
/* 9946C 8009886C 02308823 */   subu      $s1, $s1, $s0
/* 99470 80098870 8FA2003C */  lw         $v0, 0x3C($sp)
/* 99474 80098874 00501021 */  addu       $v0, $v0, $s0
/* 99478 80098878 AFA2003C */  sw         $v0, 0x3C($sp)
.L8009887C:
/* 9947C 8009887C 1E20FFEF */  bgtz       $s1, .L8009883C
/* 99480 80098880 2E220021 */   sltiu     $v0, $s1, 0x21
.L80098884:
/* 99484 80098884 8FA6002C */  lw         $a2, 0x2C($sp)
/* 99488 80098888 18C0000C */  blez       $a2, .L800988BC
/* 9948C 8009888C 02602021 */   addu      $a0, $s3, $zero
/* 99490 80098890 8FA20018 */  lw         $v0, 0x18($sp)
/* 99494 80098894 8FA50024 */  lw         $a1, 0x24($sp)
/* 99498 80098898 0280F809 */  jalr       $s4
/* 9949C 8009889C 00452821 */   addu      $a1, $v0, $a1
/* 994A0 800988A0 00409821 */  addu       $s3, $v0, $zero
/* 994A4 800988A4 12600038 */  beqz       $s3, .L80098988
/* 994A8 800988A8 00000000 */   nop
/* 994AC 800988AC 8FA2003C */  lw         $v0, 0x3C($sp)
/* 994B0 800988B0 8FA3002C */  lw         $v1, 0x2C($sp)
/* 994B4 800988B4 00431021 */  addu       $v0, $v0, $v1
/* 994B8 800988B8 AFA2003C */  sw         $v0, 0x3C($sp)
.L800988BC:
/* 994BC 800988BC 8FA20030 */  lw         $v0, 0x30($sp)
/* 994C0 800988C0 18400015 */  blez       $v0, .L80098918
/* 994C4 800988C4 00000000 */   nop
/* 994C8 800988C8 00408821 */  addu       $s1, $v0, $zero
/* 994CC 800988CC 2E220021 */  sltiu      $v0, $s1, 0x21
.L800988D0:
/* 994D0 800988D0 10400002 */  beqz       $v0, .L800988DC
/* 994D4 800988D4 24100020 */   addiu     $s0, $zero, 0x20
/* 994D8 800988D8 02208021 */  addu       $s0, $s1, $zero
.L800988DC:
/* 994DC 800988DC 5A00000C */  blezl      $s0, .L80098910
/* 994E0 800988E0 02308823 */   subu      $s1, $s1, $s0
/* 994E4 800988E4 02602021 */  addu       $a0, $s3, $zero
/* 994E8 800988E8 3C05800D */  lui        $a1, %hi(D_800CB394)
/* 994EC 800988EC 24A5B394 */  addiu      $a1, $a1, %lo(D_800CB394)
/* 994F0 800988F0 0280F809 */  jalr       $s4
/* 994F4 800988F4 02003021 */   addu      $a2, $s0, $zero
/* 994F8 800988F8 00409821 */  addu       $s3, $v0, $zero
/* 994FC 800988FC 12600022 */  beqz       $s3, .L80098988
/* 99500 80098900 02308823 */   subu      $s1, $s1, $s0
/* 99504 80098904 8FA2003C */  lw         $v0, 0x3C($sp)
/* 99508 80098908 00501021 */  addu       $v0, $v0, $s0
/* 9950C 8009890C AFA2003C */  sw         $v0, 0x3C($sp)
.L80098910:
/* 99510 80098910 1E20FFEF */  bgtz       $s1, .L800988D0
/* 99514 80098914 2E220021 */   sltiu     $v0, $s1, 0x21
.L80098918:
/* 99518 80098918 8FA20040 */  lw         $v0, 0x40($sp)
/* 9951C 8009891C 30420004 */  andi       $v0, $v0, 0x4
/* 99520 80098920 1040FED6 */  beqz       $v0, .L8009847C
/* 99524 80098924 26450001 */   addiu     $a1, $s2, 0x1
/* 99528 80098928 8FA20038 */  lw         $v0, 0x38($sp)
/* 9952C 8009892C 1840FED3 */  blez       $v0, .L8009847C
/* 99530 80098930 00408821 */   addu      $s1, $v0, $zero
/* 99534 80098934 2E220021 */  sltiu      $v0, $s1, 0x21
.L80098938:
/* 99538 80098938 10400002 */  beqz       $v0, .L80098944
/* 9953C 8009893C 24100020 */   addiu     $s0, $zero, 0x20
/* 99540 80098940 02208021 */  addu       $s0, $s1, $zero
.L80098944:
/* 99544 80098944 5A00000C */  blezl      $s0, .L80098978
/* 99548 80098948 02308823 */   subu      $s1, $s1, $s0
/* 9954C 8009894C 02602021 */  addu       $a0, $s3, $zero
/* 99550 80098950 3C05800D */  lui        $a1, %hi(D_800CB370)
/* 99554 80098954 24A5B370 */  addiu      $a1, $a1, %lo(D_800CB370)
/* 99558 80098958 0280F809 */  jalr       $s4
/* 9955C 8009895C 02003021 */   addu      $a2, $s0, $zero
/* 99560 80098960 00409821 */  addu       $s3, $v0, $zero
/* 99564 80098964 12600008 */  beqz       $s3, .L80098988
/* 99568 80098968 02308823 */   subu      $s1, $s1, $s0
/* 9956C 8009896C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 99570 80098970 00501021 */  addu       $v0, $v0, $s0
/* 99574 80098974 AFA2003C */  sw         $v0, 0x3C($sp)
.L80098978:
/* 99578 80098978 1E20FFEF */  bgtz       $s1, .L80098938
/* 9957C 8009897C 2E220021 */   sltiu     $v0, $s1, 0x21
/* 99580 80098980 0802611F */  j          .L8009847C
/* 99584 80098984 26450001 */   addiu     $a1, $s2, 0x1
.L80098988:
/* 99588 80098988 8FA2003C */  lw         $v0, 0x3C($sp)
/* 9958C 8009898C 8FBF0080 */  lw         $ra, 0x80($sp)
/* 99590 80098990 8FB5007C */  lw         $s5, 0x7C($sp)
/* 99594 80098994 8FB40078 */  lw         $s4, 0x78($sp)
/* 99598 80098998 8FB30074 */  lw         $s3, 0x74($sp)
/* 9959C 8009899C 8FB20070 */  lw         $s2, 0x70($sp)
/* 995A0 800989A0 8FB1006C */  lw         $s1, 0x6C($sp)
/* 995A4 800989A4 8FB00068 */  lw         $s0, 0x68($sp)
/* 995A8 800989A8 03E00008 */  jr         $ra
/* 995AC 800989AC 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800989B0
/* 995B0 800989B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 995B4 800989B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 995B8 800989B8 00808021 */  addu       $s0, $a0, $zero
/* 995BC 800989BC 00A04021 */  addu       $t0, $a1, $zero
/* 995C0 800989C0 00E04821 */  addu       $t1, $a3, $zero
/* 995C4 800989C4 30C200FF */  andi       $v0, $a2, 0xFF
/* 995C8 800989C8 2443FFDB */  addiu      $v1, $v0, -0x25
/* 995CC 800989CC 2C620054 */  sltiu      $v0, $v1, 0x54
/* 995D0 800989D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 995D4 800989D4 AE000020 */  sw         $zero, 0x20($s0)
/* 995D8 800989D8 AE00001C */  sw         $zero, 0x1C($s0)
/* 995DC 800989DC AE000018 */  sw         $zero, 0x18($s0)
/* 995E0 800989E0 AE000014 */  sw         $zero, 0x14($s0)
/* 995E4 800989E4 AE000010 */  sw         $zero, 0x10($s0)
/* 995E8 800989E8 10400117 */  beqz       $v0, L80098E48
/* 995EC 800989EC AE00000C */   sw        $zero, 0xC($s0)
/* 995F0 800989F0 00031080 */  sll        $v0, $v1, 2
/* 995F4 800989F4 3C01800D */  lui        $at, %hi(jtbl_800D6E68_main)
/* 995F8 800989F8 00220821 */  addu       $at, $at, $v0
/* 995FC 800989FC 8C226E68 */  lw         $v0, %lo(jtbl_800D6E68_main)($at)
/* 99600 80098A00 00400008 */  jr         $v0
/* 99604 80098A04 00000000 */   nop
glabel L80098A08
/* 99608 80098A08 8E04000C */  lw         $a0, 0xC($s0)
/* 9960C 80098A0C 24820001 */  addiu      $v0, $a0, 0x1
/* 99610 80098A10 AE02000C */  sw         $v0, 0xC($s0)
/* 99614 80098A14 8D020000 */  lw         $v0, 0x0($t0)
/* 99618 80098A18 2403FFFC */  addiu      $v1, $zero, -0x4
/* 9961C 80098A1C 24420003 */  addiu      $v0, $v0, 0x3
/* 99620 80098A20 00431024 */  and        $v0, $v0, $v1
/* 99624 80098A24 24430004 */  addiu      $v1, $v0, 0x4
/* 99628 80098A28 AD030000 */  sw         $v1, 0x0($t0)
/* 9962C 80098A2C 8C420000 */  lw         $v0, 0x0($v0)
/* 99630 80098A30 01242021 */  addu       $a0, $t1, $a0
/* 99634 80098A34 08026397 */  j          .L80098E5C
/* 99638 80098A38 A0820000 */   sb        $v0, 0x0($a0)
glabel L80098A3C
/* 9963C 80098A3C 92030034 */  lbu        $v1, 0x34($s0)
/* 99640 80098A40 2402006C */  addiu      $v0, $zero, 0x6C
/* 99644 80098A44 1062000B */  beq        $v1, $v0, .L80098A74
/* 99648 80098A48 2402004C */   addiu     $v0, $zero, 0x4C
/* 9964C 80098A4C 14620009 */  bne        $v1, $v0, .L80098A74
/* 99650 80098A50 2403FFF8 */   addiu     $v1, $zero, -0x8
/* 99654 80098A54 8D020000 */  lw         $v0, 0x0($t0)
/* 99658 80098A58 24420007 */  addiu      $v0, $v0, 0x7
/* 9965C 80098A5C 00431024 */  and        $v0, $v0, $v1
/* 99660 80098A60 24430008 */  addiu      $v1, $v0, 0x8
/* 99664 80098A64 AD030000 */  sw         $v1, 0x0($t0)
/* 99668 80098A68 8C430004 */  lw         $v1, 0x4($v0)
/* 9966C 80098A6C 080262A6 */  j          .L80098A98
/* 99670 80098A70 8C420000 */   lw        $v0, 0x0($v0)
.L80098A74:
/* 99674 80098A74 8D020000 */  lw         $v0, 0x0($t0)
/* 99678 80098A78 2403FFFC */  addiu      $v1, $zero, -0x4
/* 9967C 80098A7C 24420003 */  addiu      $v0, $v0, 0x3
/* 99680 80098A80 00431024 */  and        $v0, $v0, $v1
/* 99684 80098A84 24430004 */  addiu      $v1, $v0, 0x4
/* 99688 80098A88 AD030000 */  sw         $v1, 0x0($t0)
/* 9968C 80098A8C 8C420000 */  lw         $v0, 0x0($v0)
/* 99690 80098A90 00401821 */  addu       $v1, $v0, $zero
/* 99694 80098A94 000217C3 */  sra        $v0, $v0, 31
.L80098A98:
/* 99698 80098A98 AE020000 */  sw         $v0, 0x0($s0)
/* 9969C 80098A9C AE030004 */  sw         $v1, 0x4($s0)
/* 996A0 80098AA0 92030034 */  lbu        $v1, 0x34($s0)
/* 996A4 80098AA4 24020068 */  addiu      $v0, $zero, 0x68
/* 996A8 80098AA8 14620008 */  bne        $v1, $v0, .L80098ACC
/* 996AC 80098AAC 00000000 */   nop
/* 996B0 80098AB0 8E020000 */  lw         $v0, 0x0($s0)
/* 996B4 80098AB4 8E030004 */  lw         $v1, 0x4($s0)
/* 996B8 80098AB8 00031400 */  sll        $v0, $v1, 16
/* 996BC 80098ABC 00022C03 */  sra        $a1, $v0, 16
/* 996C0 80098AC0 000227C3 */  sra        $a0, $v0, 31
/* 996C4 80098AC4 AE040000 */  sw         $a0, 0x0($s0)
/* 996C8 80098AC8 AE050004 */  sw         $a1, 0x4($s0)
.L80098ACC:
/* 996CC 80098ACC 8E020000 */  lw         $v0, 0x0($s0)
/* 996D0 80098AD0 04410007 */  bgez       $v0, .L80098AF0
/* 996D4 80098AD4 00000000 */   nop
/* 996D8 80098AD8 8E02000C */  lw         $v0, 0xC($s0)
/* 996DC 80098ADC 24430001 */  addiu      $v1, $v0, 0x1
/* 996E0 80098AE0 01221021 */  addu       $v0, $t1, $v0
/* 996E4 80098AE4 AE03000C */  sw         $v1, 0xC($s0)
/* 996E8 80098AE8 080262CD */  j          .L80098B34
/* 996EC 80098AEC 2403002D */   addiu     $v1, $zero, 0x2D
.L80098AF0:
/* 996F0 80098AF0 8E030030 */  lw         $v1, 0x30($s0)
/* 996F4 80098AF4 30620002 */  andi       $v0, $v1, 0x2
/* 996F8 80098AF8 10400007 */  beqz       $v0, .L80098B18
/* 996FC 80098AFC 30620001 */   andi      $v0, $v1, 0x1
/* 99700 80098B00 8E02000C */  lw         $v0, 0xC($s0)
/* 99704 80098B04 24430001 */  addiu      $v1, $v0, 0x1
/* 99708 80098B08 01221021 */  addu       $v0, $t1, $v0
/* 9970C 80098B0C AE03000C */  sw         $v1, 0xC($s0)
/* 99710 80098B10 080262CD */  j          .L80098B34
/* 99714 80098B14 2403002B */   addiu     $v1, $zero, 0x2B
.L80098B18:
/* 99718 80098B18 10400044 */  beqz       $v0, .L80098C2C
/* 9971C 80098B1C 00000000 */   nop
/* 99720 80098B20 8E02000C */  lw         $v0, 0xC($s0)
/* 99724 80098B24 24430001 */  addiu      $v1, $v0, 0x1
/* 99728 80098B28 01221021 */  addu       $v0, $t1, $v0
/* 9972C 80098B2C AE03000C */  sw         $v1, 0xC($s0)
/* 99730 80098B30 24030020 */  addiu      $v1, $zero, 0x20
.L80098B34:
/* 99734 80098B34 0802630B */  j          .L80098C2C
/* 99738 80098B38 A0430000 */   sb        $v1, 0x0($v0)
glabel L80098B3C
/* 9973C 80098B3C 92030034 */  lbu        $v1, 0x34($s0)
/* 99740 80098B40 2402006C */  addiu      $v0, $zero, 0x6C
/* 99744 80098B44 1062000B */  beq        $v1, $v0, .L80098B74
/* 99748 80098B48 2402004C */   addiu     $v0, $zero, 0x4C
/* 9974C 80098B4C 14620009 */  bne        $v1, $v0, .L80098B74
/* 99750 80098B50 2403FFF8 */   addiu     $v1, $zero, -0x8
/* 99754 80098B54 8D020000 */  lw         $v0, 0x0($t0)
/* 99758 80098B58 24420007 */  addiu      $v0, $v0, 0x7
/* 9975C 80098B5C 00431024 */  and        $v0, $v0, $v1
/* 99760 80098B60 24430008 */  addiu      $v1, $v0, 0x8
/* 99764 80098B64 AD030000 */  sw         $v1, 0x0($t0)
/* 99768 80098B68 8C430004 */  lw         $v1, 0x4($v0)
/* 9976C 80098B6C 080262E6 */  j          .L80098B98
/* 99770 80098B70 8C420000 */   lw        $v0, 0x0($v0)
.L80098B74:
/* 99774 80098B74 8D020000 */  lw         $v0, 0x0($t0)
/* 99778 80098B78 2403FFFC */  addiu      $v1, $zero, -0x4
/* 9977C 80098B7C 24420003 */  addiu      $v0, $v0, 0x3
/* 99780 80098B80 00431024 */  and        $v0, $v0, $v1
/* 99784 80098B84 24430004 */  addiu      $v1, $v0, 0x4
/* 99788 80098B88 AD030000 */  sw         $v1, 0x0($t0)
/* 9978C 80098B8C 8C420000 */  lw         $v0, 0x0($v0)
/* 99790 80098B90 00401821 */  addu       $v1, $v0, $zero
/* 99794 80098B94 000217C3 */  sra        $v0, $v0, 31
.L80098B98:
/* 99798 80098B98 AE020000 */  sw         $v0, 0x0($s0)
/* 9979C 80098B9C AE030004 */  sw         $v1, 0x4($s0)
/* 997A0 80098BA0 92030034 */  lbu        $v1, 0x34($s0)
/* 997A4 80098BA4 24020068 */  addiu      $v0, $zero, 0x68
/* 997A8 80098BA8 14620004 */  bne        $v1, $v0, .L80098BBC
/* 997AC 80098BAC 00001021 */   addu      $v0, $zero, $zero
/* 997B0 80098BB0 96030006 */  lhu        $v1, 0x6($s0)
/* 997B4 80098BB4 080262F2 */  j          .L80098BC8
/* 997B8 80098BB8 00000000 */   nop
.L80098BBC:
/* 997BC 80098BBC 14600004 */  bnez       $v1, .L80098BD0
/* 997C0 80098BC0 00000000 */   nop
/* 997C4 80098BC4 8E030004 */  lw         $v1, 0x4($s0)
.L80098BC8:
/* 997C8 80098BC8 AE020000 */  sw         $v0, 0x0($s0)
/* 997CC 80098BCC AE030004 */  sw         $v1, 0x4($s0)
.L80098BD0:
/* 997D0 80098BD0 8E020030 */  lw         $v0, 0x30($s0)
/* 997D4 80098BD4 30420008 */  andi       $v0, $v0, 0x8
/* 997D8 80098BD8 10400014 */  beqz       $v0, .L80098C2C
/* 997DC 80098BDC 00000000 */   nop
/* 997E0 80098BE0 8E02000C */  lw         $v0, 0xC($s0)
/* 997E4 80098BE4 24430001 */  addiu      $v1, $v0, 0x1
/* 997E8 80098BE8 01221021 */  addu       $v0, $t1, $v0
/* 997EC 80098BEC AE03000C */  sw         $v1, 0xC($s0)
/* 997F0 80098BF0 24030030 */  addiu      $v1, $zero, 0x30
/* 997F4 80098BF4 A0430000 */  sb         $v1, 0x0($v0)
/* 997F8 80098BF8 30C200FF */  andi       $v0, $a2, 0xFF
/* 997FC 80098BFC 38430078 */  xori       $v1, $v0, 0x78
/* 99800 80098C00 2C630001 */  sltiu      $v1, $v1, 0x1
/* 99804 80098C04 38420058 */  xori       $v0, $v0, 0x58
/* 99808 80098C08 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9980C 80098C0C 00621825 */  or         $v1, $v1, $v0
/* 99810 80098C10 10600006 */  beqz       $v1, .L80098C2C
/* 99814 80098C14 00000000 */   nop
/* 99818 80098C18 8E02000C */  lw         $v0, 0xC($s0)
/* 9981C 80098C1C 24430001 */  addiu      $v1, $v0, 0x1
/* 99820 80098C20 01221021 */  addu       $v0, $t1, $v0
/* 99824 80098C24 AE03000C */  sw         $v1, 0xC($s0)
/* 99828 80098C28 A0460000 */  sb         $a2, 0x0($v0)
.L80098C2C:
/* 9982C 80098C2C 8E02000C */  lw         $v0, 0xC($s0)
/* 99830 80098C30 02002021 */  addu       $a0, $s0, $zero
/* 99834 80098C34 30C500FF */  andi       $a1, $a2, 0xFF
/* 99838 80098C38 01221021 */  addu       $v0, $t1, $v0
/* 9983C 80098C3C 0C0268F0 */  jal        func_8009A3C0
/* 99840 80098C40 AC820008 */   sw        $v0, 0x8($a0)
/* 99844 80098C44 08026397 */  j          .L80098E5C
/* 99848 80098C48 00000000 */   nop
glabel L80098C4C
/* 9984C 80098C4C 8D020000 */  lw         $v0, 0x0($t0)
/* 99850 80098C50 2403FFF8 */  addiu      $v1, $zero, -0x8
/* 99854 80098C54 24420007 */  addiu      $v0, $v0, 0x7
/* 99858 80098C58 00431024 */  and        $v0, $v0, $v1
/* 9985C 80098C5C 24430008 */  addiu      $v1, $v0, 0x8
/* 99860 80098C60 AD030000 */  sw         $v1, 0x0($t0)
/* 99864 80098C64 D4400000 */  ldc1       $f0, 0x0($v0)
/* 99868 80098C68 F6000000 */  sdc1       $f0, 0x0($s0)
/* 9986C 80098C6C 96020000 */  lhu        $v0, 0x0($s0)
/* 99870 80098C70 30428000 */  andi       $v0, $v0, 0x8000
/* 99874 80098C74 10400007 */  beqz       $v0, .L80098C94
/* 99878 80098C78 00000000 */   nop
/* 9987C 80098C7C 8E02000C */  lw         $v0, 0xC($s0)
/* 99880 80098C80 24430001 */  addiu      $v1, $v0, 0x1
/* 99884 80098C84 01221021 */  addu       $v0, $t1, $v0
/* 99888 80098C88 AE03000C */  sw         $v1, 0xC($s0)
/* 9988C 80098C8C 08026336 */  j          .L80098CD8
/* 99890 80098C90 2403002D */   addiu     $v1, $zero, 0x2D
.L80098C94:
/* 99894 80098C94 8E030030 */  lw         $v1, 0x30($s0)
/* 99898 80098C98 30620002 */  andi       $v0, $v1, 0x2
/* 9989C 80098C9C 10400007 */  beqz       $v0, .L80098CBC
/* 998A0 80098CA0 30620001 */   andi      $v0, $v1, 0x1
/* 998A4 80098CA4 8E02000C */  lw         $v0, 0xC($s0)
/* 998A8 80098CA8 24430001 */  addiu      $v1, $v0, 0x1
/* 998AC 80098CAC 01221021 */  addu       $v0, $t1, $v0
/* 998B0 80098CB0 AE03000C */  sw         $v1, 0xC($s0)
/* 998B4 80098CB4 08026336 */  j          .L80098CD8
/* 998B8 80098CB8 2403002B */   addiu     $v1, $zero, 0x2B
.L80098CBC:
/* 998BC 80098CBC 10400007 */  beqz       $v0, .L80098CDC
/* 998C0 80098CC0 00000000 */   nop
/* 998C4 80098CC4 8E02000C */  lw         $v0, 0xC($s0)
/* 998C8 80098CC8 24430001 */  addiu      $v1, $v0, 0x1
/* 998CC 80098CCC 01221021 */  addu       $v0, $t1, $v0
/* 998D0 80098CD0 AE03000C */  sw         $v1, 0xC($s0)
/* 998D4 80098CD4 24030020 */  addiu      $v1, $zero, 0x20
.L80098CD8:
/* 998D8 80098CD8 A0430000 */  sb         $v1, 0x0($v0)
.L80098CDC:
/* 998DC 80098CDC 8E02000C */  lw         $v0, 0xC($s0)
/* 998E0 80098CE0 02002021 */  addu       $a0, $s0, $zero
/* 998E4 80098CE4 30C500FF */  andi       $a1, $a2, 0xFF
/* 998E8 80098CE8 01221021 */  addu       $v0, $t1, $v0
/* 998EC 80098CEC 0C026984 */  jal        func_8009A610
/* 998F0 80098CF0 AC820008 */   sw        $v0, 0x8($a0)
/* 998F4 80098CF4 08026397 */  j          .L80098E5C
/* 998F8 80098CF8 00000000 */   nop
glabel L80098CFC
/* 998FC 80098CFC 92030034 */  lbu        $v1, 0x34($s0)
/* 99900 80098D00 24020068 */  addiu      $v0, $zero, 0x68
/* 99904 80098D04 1462000B */  bne        $v1, $v0, .L80098D34
/* 99908 80098D08 2402006C */   addiu     $v0, $zero, 0x6C
/* 9990C 80098D0C 8D020000 */  lw         $v0, 0x0($t0)
/* 99910 80098D10 2403FFFC */  addiu      $v1, $zero, -0x4
/* 99914 80098D14 24420003 */  addiu      $v0, $v0, 0x3
/* 99918 80098D18 00431024 */  and        $v0, $v0, $v1
/* 9991C 80098D1C 24430004 */  addiu      $v1, $v0, 0x4
/* 99920 80098D20 AD030000 */  sw         $v1, 0x0($t0)
/* 99924 80098D24 8C430000 */  lw         $v1, 0x0($v0)
/* 99928 80098D28 8E02002C */  lw         $v0, 0x2C($s0)
/* 9992C 80098D2C 08026397 */  j          .L80098E5C
/* 99930 80098D30 A4620000 */   sh        $v0, 0x0($v1)
.L80098D34:
/* 99934 80098D34 1062000F */  beq        $v1, $v0, .L80098D74
/* 99938 80098D38 2402004C */   addiu     $v0, $zero, 0x4C
/* 9993C 80098D3C 1462000D */  bne        $v1, $v0, .L80098D74
/* 99940 80098D40 2402FFFC */   addiu     $v0, $zero, -0x4
/* 99944 80098D44 8D040000 */  lw         $a0, 0x0($t0)
/* 99948 80098D48 24840003 */  addiu      $a0, $a0, 0x3
/* 9994C 80098D4C 00822024 */  and        $a0, $a0, $v0
/* 99950 80098D50 24820004 */  addiu      $v0, $a0, 0x4
/* 99954 80098D54 AD020000 */  sw         $v0, 0x0($t0)
/* 99958 80098D58 8E02002C */  lw         $v0, 0x2C($s0)
/* 9995C 80098D5C 8C840000 */  lw         $a0, 0x0($a0)
/* 99960 80098D60 00401821 */  addu       $v1, $v0, $zero
/* 99964 80098D64 00001021 */  addu       $v0, $zero, $zero
/* 99968 80098D68 AC820000 */  sw         $v0, 0x0($a0)
/* 9996C 80098D6C 08026397 */  j          .L80098E5C
/* 99970 80098D70 AC830004 */   sw        $v1, 0x4($a0)
.L80098D74:
/* 99974 80098D74 8D020000 */  lw         $v0, 0x0($t0)
/* 99978 80098D78 2403FFFC */  addiu      $v1, $zero, -0x4
/* 9997C 80098D7C 24420003 */  addiu      $v0, $v0, 0x3
/* 99980 80098D80 00431024 */  and        $v0, $v0, $v1
/* 99984 80098D84 24430004 */  addiu      $v1, $v0, 0x4
/* 99988 80098D88 AD030000 */  sw         $v1, 0x0($t0)
/* 9998C 80098D8C 8C430000 */  lw         $v1, 0x0($v0)
/* 99990 80098D90 8E02002C */  lw         $v0, 0x2C($s0)
/* 99994 80098D94 08026397 */  j          .L80098E5C
/* 99998 80098D98 AC620000 */   sw        $v0, 0x0($v1)
glabel L80098D9C
/* 9999C 80098D9C 8D040000 */  lw         $a0, 0x0($t0)
/* 999A0 80098DA0 2405FFFC */  addiu      $a1, $zero, -0x4
/* 999A4 80098DA4 24840003 */  addiu      $a0, $a0, 0x3
/* 999A8 80098DA8 00852024 */  and        $a0, $a0, $a1
/* 999AC 80098DAC 24850004 */  addiu      $a1, $a0, 0x4
/* 999B0 80098DB0 AD050000 */  sw         $a1, 0x0($t0)
/* 999B4 80098DB4 8C870000 */  lw         $a3, 0x0($a0)
/* 999B8 80098DB8 02002021 */  addu       $a0, $s0, $zero
/* 999BC 80098DBC 24050078 */  addiu      $a1, $zero, 0x78
/* 999C0 80098DC0 8C86000C */  lw         $a2, 0xC($a0)
/* 999C4 80098DC4 00E01821 */  addu       $v1, $a3, $zero
/* 999C8 80098DC8 000717C3 */  sra        $v0, $a3, 31
/* 999CC 80098DCC 01263021 */  addu       $a2, $t1, $a2
/* 999D0 80098DD0 AC820000 */  sw         $v0, 0x0($a0)
/* 999D4 80098DD4 AC830004 */  sw         $v1, 0x4($a0)
/* 999D8 80098DD8 0C0268F0 */  jal        func_8009A3C0
/* 999DC 80098DDC AC860008 */   sw        $a2, 0x8($a0)
/* 999E0 80098DE0 08026397 */  j          .L80098E5C
/* 999E4 80098DE4 00000000 */   nop
glabel L80098DE8
/* 999E8 80098DE8 8D020000 */  lw         $v0, 0x0($t0)
/* 999EC 80098DEC 2403FFFC */  addiu      $v1, $zero, -0x4
/* 999F0 80098DF0 24420003 */  addiu      $v0, $v0, 0x3
/* 999F4 80098DF4 00431024 */  and        $v0, $v0, $v1
/* 999F8 80098DF8 24430004 */  addiu      $v1, $v0, 0x4
/* 999FC 80098DFC AD030000 */  sw         $v1, 0x0($t0)
/* 99A00 80098E00 8C440000 */  lw         $a0, 0x0($v0)
/* 99A04 80098E04 0C02492A */  jal        func_800924A8
/* 99A08 80098E08 AE040008 */   sw        $a0, 0x8($s0)
/* 99A0C 80098E0C 8E030024 */  lw         $v1, 0x24($s0)
/* 99A10 80098E10 04600012 */  bltz       $v1, .L80098E5C
/* 99A14 80098E14 AE020014 */   sw        $v0, 0x14($s0)
/* 99A18 80098E18 0062102A */  slt        $v0, $v1, $v0
/* 99A1C 80098E1C 5440000F */  bnel       $v0, $zero, .L80098E5C
/* 99A20 80098E20 AE030014 */   sw        $v1, 0x14($s0)
/* 99A24 80098E24 08026397 */  j          .L80098E5C
/* 99A28 80098E28 00000000 */   nop
glabel L80098E2C
/* 99A2C 80098E2C 8E02000C */  lw         $v0, 0xC($s0)
/* 99A30 80098E30 24430001 */  addiu      $v1, $v0, 0x1
/* 99A34 80098E34 01221021 */  addu       $v0, $t1, $v0
/* 99A38 80098E38 AE03000C */  sw         $v1, 0xC($s0)
/* 99A3C 80098E3C 24030025 */  addiu      $v1, $zero, 0x25
/* 99A40 80098E40 08026397 */  j          .L80098E5C
/* 99A44 80098E44 A0430000 */   sb        $v1, 0x0($v0)
glabel L80098E48
/* 99A48 80098E48 8E02000C */  lw         $v0, 0xC($s0)
/* 99A4C 80098E4C 24430001 */  addiu      $v1, $v0, 0x1
/* 99A50 80098E50 01221021 */  addu       $v0, $t1, $v0
/* 99A54 80098E54 AE03000C */  sw         $v1, 0xC($s0)
/* 99A58 80098E58 A0460000 */  sb         $a2, 0x0($v0)
.L80098E5C:
/* 99A5C 80098E5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 99A60 80098E60 8FB00010 */  lw         $s0, 0x10($sp)
/* 99A64 80098E64 03E00008 */  jr         $ra
/* 99A68 80098E68 27BD0018 */   addiu     $sp, $sp, 0x18
/* 99A6C 80098E6C 00000000 */  nop

glabel func_80098E70
/* 99A70 80098E70 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 99A74 80098E74 00001821 */  addu       $v1, $zero, $zero
/* 99A78 80098E78 18A00007 */  blez       $a1, .L80098E98
/* 99A7C 80098E7C 00003021 */   addu      $a2, $zero, $zero
.L80098E80:
/* 99A80 80098E80 90820000 */  lbu        $v0, 0x0($a0)
/* 99A84 80098E84 24630001 */  addiu      $v1, $v1, 0x1
/* 99A88 80098E88 00C23021 */  addu       $a2, $a2, $v0
/* 99A8C 80098E8C 0065102A */  slt        $v0, $v1, $a1
/* 99A90 80098E90 1440FFFB */  bnez       $v0, .L80098E80
/* 99A94 80098E94 24840001 */   addiu     $a0, $a0, 0x1
.L80098E98:
/* 99A98 80098E98 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 99A9C 80098E9C 03E00008 */  jr         $ra
/* 99AA0 80098EA0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_80098EA4
/* 99AA4 80098EA4 2487001C */  addiu      $a3, $a0, 0x1C
/* 99AA8 80098EA8 A4C00000 */  sh         $zero, 0x0($a2)
/* 99AAC 80098EAC A4A00000 */  sh         $zero, 0x0($a1)
.L80098EB0:
/* 99AB0 80098EB0 94830000 */  lhu        $v1, 0x0($a0)
/* 99AB4 80098EB4 94A20000 */  lhu        $v0, 0x0($a1)
/* 99AB8 80098EB8 00431021 */  addu       $v0, $v0, $v1
/* 99ABC 80098EBC A4A20000 */  sh         $v0, 0x0($a1)
/* 99AC0 80098EC0 94C20000 */  lhu        $v0, 0x0($a2)
/* 99AC4 80098EC4 24840002 */  addiu      $a0, $a0, 0x2
/* 99AC8 80098EC8 00031827 */  nor        $v1, $zero, $v1
/* 99ACC 80098ECC 00431021 */  addu       $v0, $v0, $v1
/* 99AD0 80098ED0 A4C20000 */  sh         $v0, 0x0($a2)
/* 99AD4 80098ED4 0087102B */  sltu       $v0, $a0, $a3
/* 99AD8 80098ED8 1440FFF5 */  bnez       $v0, .L80098EB0
/* 99ADC 80098EDC 00000000 */   nop
/* 99AE0 80098EE0 03E00008 */  jr         $ra
/* 99AE4 80098EE4 00001021 */   addu      $v0, $zero, $zero

glabel func_80098EE8
/* 99AE8 80098EE8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 99AEC 80098EEC AFB10064 */  sw         $s1, 0x64($sp)
/* 99AF0 80098EF0 00808821 */  addu       $s1, $a0, $zero
/* 99AF4 80098EF4 AFB50074 */  sw         $s5, 0x74($sp)
/* 99AF8 80098EF8 00A0A821 */  addu       $s5, $a1, $zero
/* 99AFC 80098EFC AFB3006C */  sw         $s3, 0x6C($sp)
/* 99B00 80098F00 00C09821 */  addu       $s3, $a2, $zero
/* 99B04 80098F04 2402FFFF */  addiu      $v0, $zero, -0x1
/* 99B08 80098F08 AFBF007C */  sw         $ra, 0x7C($sp)
/* 99B0C 80098F0C AFB60078 */  sw         $s6, 0x78($sp)
/* 99B10 80098F10 AFB40070 */  sw         $s4, 0x70($sp)
/* 99B14 80098F14 AFB20068 */  sw         $s2, 0x68($sp)
/* 99B18 80098F18 AFB00060 */  sw         $s0, 0x60($sp)
/* 99B1C 80098F1C 0C0252D4 */  jal        func_80094B50
/* 99B20 80098F20 AE620000 */   sw        $v0, 0x0($s3)
/* 99B24 80098F24 AE620004 */  sw         $v0, 0x4($s3)
/* 99B28 80098F28 8EA20008 */  lw         $v0, 0x8($s5)
/* 99B2C 80098F2C 8EA3000C */  lw         $v1, 0xC($s5)
/* 99B30 80098F30 AE620008 */  sw         $v0, 0x8($s3)
/* 99B34 80098F34 AE63000C */  sw         $v1, 0xC($s3)
/* 99B38 80098F38 8EA20010 */  lw         $v0, 0x10($s5)
/* 99B3C 80098F3C 8EA30014 */  lw         $v1, 0x14($s5)
/* 99B40 80098F40 AE620010 */  sw         $v0, 0x10($s3)
/* 99B44 80098F44 AE630014 */  sw         $v1, 0x14($s3)
/* 99B48 80098F48 92220065 */  lbu        $v0, 0x65($s1)
/* 99B4C 80098F4C 10400006 */  beqz       $v0, .L80098F68
/* 99B50 80098F50 00009021 */   addu      $s2, $zero, $zero
/* 99B54 80098F54 02202021 */  addu       $a0, $s1, $zero
/* 99B58 80098F58 0C0250F8 */  jal        func_800943E0
/* 99B5C 80098F5C 00002821 */   addu      $a1, $zero, $zero
/* 99B60 80098F60 14400092 */  bnez       $v0, .L800991AC
/* 99B64 80098F64 00000000 */   nop
.L80098F68:
/* 99B68 80098F68 27B40018 */  addiu      $s4, $sp, 0x18
/* 99B6C 80098F6C 27B60038 */  addiu      $s6, $sp, 0x38
/* 99B70 80098F70 02202021 */  addu       $a0, $s1, $zero
.L80098F74:
/* 99B74 80098F74 0C0250F8 */  jal        func_800943E0
/* 99B78 80098F78 324500FF */   andi      $a1, $s2, 0xFF
/* 99B7C 80098F7C 1440008B */  bnez       $v0, .L800991AC
/* 99B80 80098F80 00003021 */   addu      $a2, $zero, $zero
/* 99B84 80098F84 8E240004 */  lw         $a0, 0x4($s1)
/* 99B88 80098F88 8E250008 */  lw         $a1, 0x8($s1)
/* 99B8C 80098F8C 0C026640 */  jal        func_80099900
/* 99B90 80098F90 27A70018 */   addiu     $a3, $sp, 0x18
/* 99B94 80098F94 14400085 */  bnez       $v0, .L800991AC
/* 99B98 80098F98 26830001 */   addiu     $v1, $s4, 0x1
/* 99B9C 80098F9C 36420080 */  ori        $v0, $s2, 0x80
/* 99BA0 80098FA0 A3A20018 */  sb         $v0, 0x18($sp)
/* 99BA4 80098FA4 26840020 */  addiu      $a0, $s4, 0x20
.L80098FA8:
/* 99BA8 80098FA8 90620000 */  lbu        $v0, 0x0($v1)
/* 99BAC 80098FAC 00021027 */  nor        $v0, $zero, $v0
/* 99BB0 80098FB0 A0620000 */  sb         $v0, 0x0($v1)
/* 99BB4 80098FB4 24630001 */  addiu      $v1, $v1, 0x1
/* 99BB8 80098FB8 0064102A */  slt        $v0, $v1, $a0
/* 99BBC 80098FBC 1440FFFA */  bnez       $v0, .L80098FA8
/* 99BC0 80098FC0 00003021 */   addu      $a2, $zero, $zero
/* 99BC4 80098FC4 AFA00010 */  sw         $zero, 0x10($sp)
/* 99BC8 80098FC8 8E240004 */  lw         $a0, 0x4($s1)
/* 99BCC 80098FCC 8E250008 */  lw         $a1, 0x8($s1)
/* 99BD0 80098FD0 0C0266B8 */  jal        func_80099AE0
/* 99BD4 80098FD4 27A70018 */   addiu     $a3, $sp, 0x18
/* 99BD8 80098FD8 14400074 */  bnez       $v0, .L800991AC
/* 99BDC 80098FDC 00003021 */   addu      $a2, $zero, $zero
/* 99BE0 80098FE0 8E240004 */  lw         $a0, 0x4($s1)
/* 99BE4 80098FE4 8E250008 */  lw         $a1, 0x8($s1)
/* 99BE8 80098FE8 0C026640 */  jal        func_80099900
/* 99BEC 80098FEC 27A70038 */   addiu     $a3, $sp, 0x38
/* 99BF0 80098FF0 1440006E */  bnez       $v0, .L800991AC
/* 99BF4 80098FF4 00008021 */   addu      $s0, $zero, $zero
/* 99BF8 80098FF8 02802821 */  addu       $a1, $s4, $zero
/* 99BFC 80098FFC 02C02021 */  addu       $a0, $s6, $zero
.L80099000:
/* 99C00 80099000 90830000 */  lbu        $v1, 0x0($a0)
/* 99C04 80099004 90A20000 */  lbu        $v0, 0x0($a1)
/* 99C08 80099008 14620007 */  bne        $v1, $v0, .L80099028
/* 99C0C 8009900C 24020020 */   addiu     $v0, $zero, 0x20
/* 99C10 80099010 24A50001 */  addiu      $a1, $a1, 0x1
/* 99C14 80099014 26100001 */  addiu      $s0, $s0, 0x1
/* 99C18 80099018 2A020020 */  slti       $v0, $s0, 0x20
/* 99C1C 8009901C 1440FFF8 */  bnez       $v0, .L80099000
/* 99C20 80099020 24840001 */   addiu     $a0, $a0, 0x1
/* 99C24 80099024 24020020 */  addiu      $v0, $zero, 0x20
.L80099028:
/* 99C28 80099028 16020015 */  bne        $s0, $v0, .L80099080
/* 99C2C 8009902C 00000000 */   nop
/* 99C30 80099030 1A40000F */  blez       $s2, .L80099070
/* 99C34 80099034 02202021 */   addu      $a0, $s1, $zero
/* 99C38 80099038 0C0250F8 */  jal        func_800943E0
/* 99C3C 8009903C 00002821 */   addu      $a1, $zero, $zero
/* 99C40 80099040 1440005A */  bnez       $v0, .L800991AC
/* 99C44 80099044 00003021 */   addu      $a2, $zero, $zero
/* 99C48 80099048 8E240004 */  lw         $a0, 0x4($s1)
/* 99C4C 8009904C 8E250008 */  lw         $a1, 0x8($s1)
/* 99C50 80099050 0C026640 */  jal        func_80099900
/* 99C54 80099054 02803821 */   addu      $a3, $s4, $zero
/* 99C58 80099058 14400054 */  bnez       $v0, .L800991AC
/* 99C5C 8009905C 00000000 */   nop
/* 99C60 80099060 93A30018 */  lbu        $v1, 0x18($sp)
/* 99C64 80099064 24020080 */  addiu      $v0, $zero, 0x80
/* 99C68 80099068 14620005 */  bne        $v1, $v0, .L80099080
/* 99C6C 8009906C 00000000 */   nop
.L80099070:
/* 99C70 80099070 26520001 */  addiu      $s2, $s2, 0x1
/* 99C74 80099074 2A42003E */  slti       $v0, $s2, 0x3E
/* 99C78 80099078 1440FFBE */  bnez       $v0, .L80098F74
/* 99C7C 8009907C 02202021 */   addu      $a0, $s1, $zero
.L80099080:
/* 99C80 80099080 92220065 */  lbu        $v0, 0x65($s1)
/* 99C84 80099084 10400005 */  beqz       $v0, .L8009909C
/* 99C88 80099088 02202021 */   addu      $a0, $s1, $zero
/* 99C8C 8009908C 0C0250F8 */  jal        func_800943E0
/* 99C90 80099090 00002821 */   addu      $a1, $zero, $zero
/* 99C94 80099094 14400045 */  bnez       $v0, .L800991AC
/* 99C98 80099098 00000000 */   nop
.L8009909C:
/* 99C9C 8009909C 96A20018 */  lhu        $v0, 0x18($s5)
/* 99CA0 800990A0 2666001E */  addiu      $a2, $s3, 0x1E
/* 99CA4 800990A4 02602021 */  addu       $a0, $s3, $zero
/* 99CA8 800990A8 0012182A */  slt        $v1, $zero, $s2
/* 99CAC 800990AC A272001A */  sb         $s2, 0x1A($s3)
/* 99CB0 800990B0 3042FFFE */  andi       $v0, $v0, 0xFFFE
/* 99CB4 800990B4 00621825 */  or         $v1, $v1, $v0
/* 99CB8 800990B8 A6630018 */  sh         $v1, 0x18($s3)
/* 99CBC 800990BC 92A2001B */  lbu        $v0, 0x1B($s5)
/* 99CC0 800990C0 2665001C */  addiu      $a1, $s3, 0x1C
/* 99CC4 800990C4 00A03821 */  addu       $a3, $a1, $zero
/* 99CC8 800990C8 A660001E */  sh         $zero, 0x1E($s3)
/* 99CCC 800990CC A660001C */  sh         $zero, 0x1C($s3)
/* 99CD0 800990D0 A262001B */  sb         $v0, 0x1B($s3)
.L800990D4:
/* 99CD4 800990D4 94830000 */  lhu        $v1, 0x0($a0)
/* 99CD8 800990D8 94A20000 */  lhu        $v0, 0x0($a1)
/* 99CDC 800990DC 00431021 */  addu       $v0, $v0, $v1
/* 99CE0 800990E0 A4A20000 */  sh         $v0, 0x0($a1)
/* 99CE4 800990E4 94C20000 */  lhu        $v0, 0x0($a2)
/* 99CE8 800990E8 24840002 */  addiu      $a0, $a0, 0x2
/* 99CEC 800990EC 00031827 */  nor        $v1, $zero, $v1
/* 99CF0 800990F0 00431021 */  addu       $v0, $v0, $v1
/* 99CF4 800990F4 A4C20000 */  sh         $v0, 0x0($a2)
/* 99CF8 800990F8 0087102B */  sltu       $v0, $a0, $a3
/* 99CFC 800990FC 1440FFF5 */  bnez       $v0, .L800990D4
/* 99D00 80099100 00008021 */   addu      $s0, $zero, $zero
/* 99D04 80099104 24140001 */  addiu      $s4, $zero, 0x1
/* 99D08 80099108 27B20018 */  addiu      $s2, $sp, 0x18
/* 99D0C 8009910C 24020001 */  addiu      $v0, $zero, 0x1
/* 99D10 80099110 A7A20058 */  sh         $v0, 0x58($sp)
/* 99D14 80099114 24020003 */  addiu      $v0, $zero, 0x3
/* 99D18 80099118 A7A2005A */  sh         $v0, 0x5A($sp)
/* 99D1C 8009911C 24020004 */  addiu      $v0, $zero, 0x4
/* 99D20 80099120 A7A2005C */  sh         $v0, 0x5C($sp)
/* 99D24 80099124 24020006 */  addiu      $v0, $zero, 0x6
/* 99D28 80099128 A7A2005E */  sh         $v0, 0x5E($sp)
.L8009912C:
/* 99D2C 8009912C 96460040 */  lhu        $a2, 0x40($s2)
/* 99D30 80099130 AFB40010 */  sw         $s4, 0x10($sp)
/* 99D34 80099134 8E240004 */  lw         $a0, 0x4($s1)
/* 99D38 80099138 8E250008 */  lw         $a1, 0x8($s1)
/* 99D3C 8009913C 0C0266B8 */  jal        func_80099AE0
/* 99D40 80099140 02603821 */   addu      $a3, $s3, $zero
/* 99D44 80099144 14400019 */  bnez       $v0, .L800991AC
/* 99D48 80099148 26100001 */   addiu     $s0, $s0, 0x1
/* 99D4C 8009914C 2A020004 */  slti       $v0, $s0, 0x4
/* 99D50 80099150 1440FFF6 */  bnez       $v0, .L8009912C
/* 99D54 80099154 26520002 */   addiu     $s2, $s2, 0x2
/* 99D58 80099158 8E240004 */  lw         $a0, 0x4($s1)
/* 99D5C 8009915C 8E250008 */  lw         $a1, 0x8($s1)
/* 99D60 80099160 24060001 */  addiu      $a2, $zero, 0x1
/* 99D64 80099164 0C026640 */  jal        func_80099900
/* 99D68 80099168 27A70018 */   addiu     $a3, $sp, 0x18
/* 99D6C 8009916C 10400005 */  beqz       $v0, .L80099184
/* 99D70 80099170 02603021 */   addu      $a2, $s3, $zero
/* 99D74 80099174 0802646B */  j          .L800991AC
/* 99D78 80099178 00000000 */   nop
.L8009917C:
/* 99D7C 8009917C 0802646B */  j          .L800991AC
/* 99D80 80099180 2402000A */   addiu     $v0, $zero, 0xA
.L80099184:
/* 99D84 80099184 27A40018 */  addiu      $a0, $sp, 0x18
/* 99D88 80099188 24C50020 */  addiu      $a1, $a2, 0x20
.L8009918C:
/* 99D8C 8009918C 90830000 */  lbu        $v1, 0x0($a0)
/* 99D90 80099190 90C20000 */  lbu        $v0, 0x0($a2)
/* 99D94 80099194 1462FFF9 */  bne        $v1, $v0, .L8009917C
/* 99D98 80099198 24C60001 */   addiu     $a2, $a2, 0x1
/* 99D9C 8009919C 00C5102A */  slt        $v0, $a2, $a1
/* 99DA0 800991A0 1440FFFA */  bnez       $v0, .L8009918C
/* 99DA4 800991A4 24840001 */   addiu     $a0, $a0, 0x1
/* 99DA8 800991A8 00001021 */  addu       $v0, $zero, $zero
.L800991AC:
/* 99DAC 800991AC 8FBF007C */  lw         $ra, 0x7C($sp)
/* 99DB0 800991B0 8FB60078 */  lw         $s6, 0x78($sp)
/* 99DB4 800991B4 8FB50074 */  lw         $s5, 0x74($sp)
/* 99DB8 800991B8 8FB40070 */  lw         $s4, 0x70($sp)
/* 99DBC 800991BC 8FB3006C */  lw         $s3, 0x6C($sp)
/* 99DC0 800991C0 8FB20068 */  lw         $s2, 0x68($sp)
/* 99DC4 800991C4 8FB10064 */  lw         $s1, 0x64($sp)
/* 99DC8 800991C8 8FB00060 */  lw         $s0, 0x60($sp)
/* 99DCC 800991CC 03E00008 */  jr         $ra
/* 99DD0 800991D0 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_800991D4
/* 99DD4 800991D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 99DD8 800991D8 AFB40038 */  sw         $s4, 0x38($sp)
/* 99DDC 800991DC 0080A021 */  addu       $s4, $a0, $zero
/* 99DE0 800991E0 AFBF0040 */  sw         $ra, 0x40($sp)
/* 99DE4 800991E4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 99DE8 800991E8 AFB30034 */  sw         $s3, 0x34($sp)
/* 99DEC 800991EC AFB20030 */  sw         $s2, 0x30($sp)
/* 99DF0 800991F0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 99DF4 800991F4 AFB00028 */  sw         $s0, 0x28($sp)
/* 99DF8 800991F8 92820065 */  lbu        $v0, 0x65($s4)
/* 99DFC 800991FC 10400005 */  beqz       $v0, .L80099214
/* 99E00 80099200 00A09021 */   addu      $s2, $a1, $zero
/* 99E04 80099204 0C0250F8 */  jal        func_800943E0
/* 99E08 80099208 00002821 */   addu      $a1, $zero, $zero
/* 99E0C 8009920C 14400041 */  bnez       $v0, .L80099314
/* 99E10 80099210 00000000 */   nop
.L80099214:
/* 99E14 80099214 24130001 */  addiu      $s3, $zero, 0x1
/* 99E18 80099218 27B0001A */  addiu      $s0, $sp, 0x1A
/* 99E1C 8009921C 24020001 */  addiu      $v0, $zero, 0x1
/* 99E20 80099220 A7A20018 */  sh         $v0, 0x18($sp)
/* 99E24 80099224 24020003 */  addiu      $v0, $zero, 0x3
/* 99E28 80099228 A7A2001A */  sh         $v0, 0x1A($sp)
/* 99E2C 8009922C 24020004 */  addiu      $v0, $zero, 0x4
/* 99E30 80099230 A7A2001C */  sh         $v0, 0x1C($sp)
/* 99E34 80099234 24020006 */  addiu      $v0, $zero, 0x6
/* 99E38 80099238 A7A2001E */  sh         $v0, 0x1E($sp)
.L8009923C:
/* 99E3C 8009923C 8E840004 */  lw         $a0, 0x4($s4)
/* 99E40 80099240 8E850008 */  lw         $a1, 0x8($s4)
/* 99E44 80099244 96060000 */  lhu        $a2, 0x0($s0)
/* 99E48 80099248 0C026640 */  jal        func_80099900
/* 99E4C 8009924C 02403821 */   addu      $a3, $s2, $zero
/* 99E50 80099250 14400030 */  bnez       $v0, .L80099314
/* 99E54 80099254 02402821 */   addu      $a1, $s2, $zero
/* 99E58 80099258 2647001C */  addiu      $a3, $s2, 0x1C
/* 99E5C 8009925C A7A00022 */  sh         $zero, 0x22($sp)
/* 99E60 80099260 A7A00020 */  sh         $zero, 0x20($sp)
.L80099264:
/* 99E64 80099264 94A20000 */  lhu        $v0, 0x0($a1)
/* 99E68 80099268 97A30020 */  lhu        $v1, 0x20($sp)
/* 99E6C 8009926C 97A40022 */  lhu        $a0, 0x22($sp)
/* 99E70 80099270 24A50002 */  addiu      $a1, $a1, 0x2
/* 99E74 80099274 00623021 */  addu       $a2, $v1, $v0
/* 99E78 80099278 00021027 */  nor        $v0, $zero, $v0
/* 99E7C 8009927C 00822021 */  addu       $a0, $a0, $v0
/* 99E80 80099280 00A7102B */  sltu       $v0, $a1, $a3
/* 99E84 80099284 A7A60020 */  sh         $a2, 0x20($sp)
/* 99E88 80099288 1440FFF6 */  bnez       $v0, .L80099264
/* 99E8C 8009928C A7A40022 */   sh        $a0, 0x22($sp)
/* 99E90 80099290 9643001C */  lhu        $v1, 0x1C($s2)
/* 99E94 80099294 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 99E98 80099298 54620006 */  bnel       $v1, $v0, .L800992B4
/* 99E9C 8009929C 26730001 */   addiu     $s3, $s3, 0x1
/* 99EA0 800992A0 9643001E */  lhu        $v1, 0x1E($s2)
/* 99EA4 800992A4 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 99EA8 800992A8 10620006 */  beq        $v1, $v0, .L800992C4
/* 99EAC 800992AC 24020004 */   addiu     $v0, $zero, 0x4
/* 99EB0 800992B0 26730001 */  addiu      $s3, $s3, 0x1
.L800992B4:
/* 99EB4 800992B4 2A620004 */  slti       $v0, $s3, 0x4
/* 99EB8 800992B8 1440FFE0 */  bnez       $v0, .L8009923C
/* 99EBC 800992BC 26100002 */   addiu     $s0, $s0, 0x2
/* 99EC0 800992C0 24020004 */  addiu      $v0, $zero, 0x4
.L800992C4:
/* 99EC4 800992C4 16620003 */  bne        $s3, $v0, .L800992D4
/* 99EC8 800992C8 00008021 */   addu      $s0, $zero, $zero
/* 99ECC 800992CC 080264C5 */  j          .L80099314
/* 99ED0 800992D0 2402000A */   addiu     $v0, $zero, 0xA
.L800992D4:
/* 99ED4 800992D4 24150001 */  addiu      $s5, $zero, 0x1
/* 99ED8 800992D8 27B10018 */  addiu      $s1, $sp, 0x18
.L800992DC:
/* 99EDC 800992DC 52130009 */  beql       $s0, $s3, .L80099304
/* 99EE0 800992E0 26100001 */   addiu     $s0, $s0, 0x1
/* 99EE4 800992E4 96260000 */  lhu        $a2, 0x0($s1)
/* 99EE8 800992E8 AFB50010 */  sw         $s5, 0x10($sp)
/* 99EEC 800992EC 8E840004 */  lw         $a0, 0x4($s4)
/* 99EF0 800992F0 8E850008 */  lw         $a1, 0x8($s4)
/* 99EF4 800992F4 0C0266B8 */  jal        func_80099AE0
/* 99EF8 800992F8 02403821 */   addu      $a3, $s2, $zero
/* 99EFC 800992FC 14400005 */  bnez       $v0, .L80099314
/* 99F00 80099300 26100001 */   addiu     $s0, $s0, 0x1
.L80099304:
/* 99F04 80099304 2A020004 */  slti       $v0, $s0, 0x4
/* 99F08 80099308 1440FFF4 */  bnez       $v0, .L800992DC
/* 99F0C 8009930C 26310002 */   addiu     $s1, $s1, 0x2
/* 99F10 80099310 00001021 */  addu       $v0, $zero, $zero
.L80099314:
/* 99F14 80099314 8FBF0040 */  lw         $ra, 0x40($sp)
/* 99F18 80099318 8FB5003C */  lw         $s5, 0x3C($sp)
/* 99F1C 8009931C 8FB40038 */  lw         $s4, 0x38($sp)
/* 99F20 80099320 8FB30034 */  lw         $s3, 0x34($sp)
/* 99F24 80099324 8FB20030 */  lw         $s2, 0x30($sp)
/* 99F28 80099328 8FB1002C */  lw         $s1, 0x2C($sp)
/* 99F2C 8009932C 8FB00028 */  lw         $s0, 0x28($sp)
/* 99F30 80099330 03E00008 */  jr         $ra
/* 99F34 80099334 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80099338
/* 99F38 80099338 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 99F3C 8009933C AFB00058 */  sw         $s0, 0x58($sp)
/* 99F40 80099340 00808021 */  addu       $s0, $a0, $zero
/* 99F44 80099344 AFBF0060 */  sw         $ra, 0x60($sp)
/* 99F48 80099348 AFB1005C */  sw         $s1, 0x5C($sp)
/* 99F4C 8009934C 92020065 */  lbu        $v0, 0x65($s0)
/* 99F50 80099350 10400006 */  beqz       $v0, .L8009936C
/* 99F54 80099354 00000000 */   nop
/* 99F58 80099358 0C0250F8 */  jal        func_800943E0
/* 99F5C 8009935C 00002821 */   addu      $a1, $zero, $zero
/* 99F60 80099360 00401821 */  addu       $v1, $v0, $zero
/* 99F64 80099364 14600062 */  bnez       $v1, .L800994F0
/* 99F68 80099368 00000000 */   nop
.L8009936C:
/* 99F6C 8009936C 8E040004 */  lw         $a0, 0x4($s0)
/* 99F70 80099370 8E050008 */  lw         $a1, 0x8($s0)
/* 99F74 80099374 24060001 */  addiu      $a2, $zero, 0x1
/* 99F78 80099378 0C026640 */  jal        func_80099900
/* 99F7C 8009937C 27A70010 */   addiu     $a3, $sp, 0x10
/* 99F80 80099380 00401821 */  addu       $v1, $v0, $zero
/* 99F84 80099384 1460005A */  bnez       $v1, .L800994F0
/* 99F88 80099388 27A50010 */   addiu     $a1, $sp, 0x10
/* 99F8C 8009938C 27A7002C */  addiu      $a3, $sp, 0x2C
/* 99F90 80099390 A7A00052 */  sh         $zero, 0x52($sp)
/* 99F94 80099394 A7A00050 */  sh         $zero, 0x50($sp)
.L80099398:
/* 99F98 80099398 94A20000 */  lhu        $v0, 0x0($a1)
/* 99F9C 8009939C 97A30050 */  lhu        $v1, 0x50($sp)
/* 99FA0 800993A0 97A40052 */  lhu        $a0, 0x52($sp)
/* 99FA4 800993A4 24A50002 */  addiu      $a1, $a1, 0x2
/* 99FA8 800993A8 00623021 */  addu       $a2, $v1, $v0
/* 99FAC 800993AC 00021027 */  nor        $v0, $zero, $v0
/* 99FB0 800993B0 00822021 */  addu       $a0, $a0, $v0
/* 99FB4 800993B4 00A7102B */  sltu       $v0, $a1, $a3
/* 99FB8 800993B8 A7A60050 */  sh         $a2, 0x50($sp)
/* 99FBC 800993BC 1440FFF6 */  bnez       $v0, .L80099398
/* 99FC0 800993C0 A7A40052 */   sh        $a0, 0x52($sp)
/* 99FC4 800993C4 97A3002C */  lhu        $v1, 0x2C($sp)
/* 99FC8 800993C8 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 99FCC 800993CC 14620005 */  bne        $v1, $v0, .L800993E4
/* 99FD0 800993D0 27B10010 */   addiu     $s1, $sp, 0x10
/* 99FD4 800993D4 97A3002E */  lhu        $v1, 0x2E($sp)
/* 99FD8 800993D8 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 99FDC 800993DC 10620013 */  beq        $v1, $v0, .L8009942C
/* 99FE0 800993E0 00000000 */   nop
.L800993E4:
/* 99FE4 800993E4 02002021 */  addu       $a0, $s0, $zero
/* 99FE8 800993E8 0C026475 */  jal        func_800991D4
/* 99FEC 800993EC 02202821 */   addu      $a1, $s1, $zero
/* 99FF0 800993F0 00401821 */  addu       $v1, $v0, $zero
/* 99FF4 800993F4 2402000A */  addiu      $v0, $zero, 0xA
/* 99FF8 800993F8 1462000A */  bne        $v1, $v0, .L80099424
/* 99FFC 800993FC 02002021 */   addu      $a0, $s0, $zero
/* 9A000 80099400 02202821 */  addu       $a1, $s1, $zero
/* 9A004 80099404 27B10030 */  addiu      $s1, $sp, 0x30
/* 9A008 80099408 0C0263BA */  jal        func_80098EE8
/* 9A00C 8009940C 02203021 */   addu      $a2, $s1, $zero
/* 9A010 80099410 00401821 */  addu       $v1, $v0, $zero
/* 9A014 80099414 10600005 */  beqz       $v1, .L8009942C
/* 9A018 80099418 00000000 */   nop
/* 9A01C 8009941C 0802653C */  j          .L800994F0
/* 9A020 80099420 00000000 */   nop
.L80099424:
/* 9A024 80099424 14600032 */  bnez       $v1, .L800994F0
/* 9A028 80099428 00601021 */   addu      $v0, $v1, $zero
.L8009942C:
/* 9A02C 8009942C 96220018 */  lhu        $v0, 0x18($s1)
/* 9A030 80099430 30420001 */  andi       $v0, $v0, 0x1
/* 9A034 80099434 1440000F */  bnez       $v0, .L80099474
/* 9A038 80099438 02202021 */   addu      $a0, $s1, $zero
/* 9A03C 8009943C 02002021 */  addu       $a0, $s0, $zero
/* 9A040 80099440 02202821 */  addu       $a1, $s1, $zero
/* 9A044 80099444 27B10030 */  addiu      $s1, $sp, 0x30
/* 9A048 80099448 0C0263BA */  jal        func_80098EE8
/* 9A04C 8009944C 02203021 */   addu      $a2, $s1, $zero
/* 9A050 80099450 00401821 */  addu       $v1, $v0, $zero
/* 9A054 80099454 14600026 */  bnez       $v1, .L800994F0
/* 9A058 80099458 00000000 */   nop
/* 9A05C 8009945C 97A20048 */  lhu        $v0, 0x48($sp)
/* 9A060 80099460 30420001 */  andi       $v0, $v0, 0x1
/* 9A064 80099464 14400003 */  bnez       $v0, .L80099474
/* 9A068 80099468 02202021 */   addu      $a0, $s1, $zero
/* 9A06C 8009946C 0802653C */  j          .L800994F0
/* 9A070 80099470 2402000B */   addiu     $v0, $zero, 0xB
.L80099474:
/* 9A074 80099474 2605000C */  addiu      $a1, $s0, 0xC
/* 9A078 80099478 0C024854 */  jal        func_80092150
/* 9A07C 8009947C 24060020 */   addiu     $a2, $zero, 0x20
/* 9A080 80099480 8E040004 */  lw         $a0, 0x4($s0)
/* 9A084 80099484 8E050008 */  lw         $a1, 0x8($s0)
/* 9A088 80099488 9222001B */  lbu        $v0, 0x1B($s1)
/* 9A08C 8009948C 24060007 */  addiu      $a2, $zero, 0x7
/* 9A090 80099490 AE02004C */  sw         $v0, 0x4C($s0)
/* 9A094 80099494 9223001A */  lbu        $v1, 0x1A($s1)
/* 9A098 80099498 2607002C */  addiu      $a3, $s0, 0x2C
/* 9A09C 8009949C 24020010 */  addiu      $v0, $zero, 0x10
/* 9A0A0 800994A0 AE020050 */  sw         $v0, 0x50($s0)
/* 9A0A4 800994A4 24020008 */  addiu      $v0, $zero, 0x8
/* 9A0A8 800994A8 AE020054 */  sw         $v0, 0x54($s0)
/* 9A0AC 800994AC A2030064 */  sb         $v1, 0x64($s0)
/* 9A0B0 800994B0 92020064 */  lbu        $v0, 0x64($s0)
/* 9A0B4 800994B4 00031840 */  sll        $v1, $v1, 1
/* 9A0B8 800994B8 24630003 */  addiu      $v1, $v1, 0x3
/* 9A0BC 800994BC AE030060 */  sw         $v1, 0x60($s0)
/* 9A0C0 800994C0 92030064 */  lbu        $v1, 0x64($s0)
/* 9A0C4 800994C4 24420001 */  addiu      $v0, $v0, 0x1
/* 9A0C8 800994C8 000210C0 */  sll        $v0, $v0, 3
/* 9A0CC 800994CC 000318C0 */  sll        $v1, $v1, 3
/* 9A0D0 800994D0 AE020058 */  sw         $v0, 0x58($s0)
/* 9A0D4 800994D4 00431021 */  addu       $v0, $v0, $v1
/* 9A0D8 800994D8 0C026640 */  jal        func_80099900
/* 9A0DC 800994DC AE02005C */   sw        $v0, 0x5C($s0)
/* 9A0E0 800994E0 00401821 */  addu       $v1, $v0, $zero
/* 9A0E4 800994E4 0003102B */  sltu       $v0, $zero, $v1
/* 9A0E8 800994E8 00021023 */  negu       $v0, $v0
/* 9A0EC 800994EC 00621024 */  and        $v0, $v1, $v0
.L800994F0:
/* 9A0F0 800994F0 8FBF0060 */  lw         $ra, 0x60($sp)
/* 9A0F4 800994F4 8FB1005C */  lw         $s1, 0x5C($sp)
/* 9A0F8 800994F8 8FB00058 */  lw         $s0, 0x58($sp)
/* 9A0FC 800994FC 03E00008 */  jr         $ra
/* 9A100 80099500 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_80099504
/* 9A104 80099504 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A108 80099508 AFB00030 */  sw         $s0, 0x30($sp)
/* 9A10C 8009950C 00808021 */  addu       $s0, $a0, $zero
/* 9A110 80099510 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9A114 80099514 92020065 */  lbu        $v0, 0x65($s0)
/* 9A118 80099518 1040000C */  beqz       $v0, .L8009954C
/* 9A11C 8009951C 00000000 */   nop
/* 9A120 80099520 0C0250F8 */  jal        func_800943E0
/* 9A124 80099524 00002821 */   addu      $a1, $zero, $zero
/* 9A128 80099528 00401821 */  addu       $v1, $v0, $zero
/* 9A12C 8009952C 24020002 */  addiu      $v0, $zero, 0x2
/* 9A130 80099530 14620004 */  bne        $v1, $v0, .L80099544
/* 9A134 80099534 02002021 */   addu      $a0, $s0, $zero
/* 9A138 80099538 0C0250F8 */  jal        func_800943E0
/* 9A13C 8009953C 00002821 */   addu      $a1, $zero, $zero
/* 9A140 80099540 00401821 */  addu       $v1, $v0, $zero
.L80099544:
/* 9A144 80099544 14600019 */  bnez       $v1, .L800995AC
/* 9A148 80099548 00601021 */   addu      $v0, $v1, $zero
.L8009954C:
/* 9A14C 8009954C 8E040004 */  lw         $a0, 0x4($s0)
/* 9A150 80099550 8E050008 */  lw         $a1, 0x8($s0)
/* 9A154 80099554 24060001 */  addiu      $a2, $zero, 0x1
/* 9A158 80099558 0C026640 */  jal        func_80099900
/* 9A15C 8009955C 27A70010 */   addiu     $a3, $sp, 0x10
/* 9A160 80099560 00401821 */  addu       $v1, $v0, $zero
/* 9A164 80099564 1060000B */  beqz       $v1, .L80099594
/* 9A168 80099568 24020002 */   addiu     $v0, $zero, 0x2
/* 9A16C 8009956C 1462000F */  bne        $v1, $v0, .L800995AC
/* 9A170 80099570 00601021 */   addu      $v0, $v1, $zero
/* 9A174 80099574 8E040004 */  lw         $a0, 0x4($s0)
/* 9A178 80099578 8E050008 */  lw         $a1, 0x8($s0)
/* 9A17C 8009957C 24060001 */  addiu      $a2, $zero, 0x1
/* 9A180 80099580 0C026640 */  jal        func_80099900
/* 9A184 80099584 27A70010 */   addiu     $a3, $sp, 0x10
/* 9A188 80099588 00401821 */  addu       $v1, $v0, $zero
/* 9A18C 8009958C 14600007 */  bnez       $v1, .L800995AC
/* 9A190 80099590 00000000 */   nop
.L80099594:
/* 9A194 80099594 2604000C */  addiu      $a0, $s0, 0xC
/* 9A198 80099598 27A50010 */  addiu      $a1, $sp, 0x10
/* 9A19C 8009959C 0C0268AC */  jal        func_8009A2B0
/* 9A1A0 800995A0 24060020 */   addiu     $a2, $zero, 0x20
/* 9A1A4 800995A4 0002102B */  sltu       $v0, $zero, $v0
/* 9A1A8 800995A8 00021040 */  sll        $v0, $v0, 1
.L800995AC:
/* 9A1AC 800995AC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9A1B0 800995B0 8FB00030 */  lw         $s0, 0x30($sp)
/* 9A1B4 800995B4 03E00008 */  jr         $ra
/* 9A1B8 800995B8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800995BC
/* 9A1BC 800995BC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9A1C0 800995C0 AFB20030 */  sw         $s2, 0x30($sp)
/* 9A1C4 800995C4 00809021 */  addu       $s2, $a0, $zero
/* 9A1C8 800995C8 AFB40038 */  sw         $s4, 0x38($sp)
/* 9A1CC 800995CC 00A0A021 */  addu       $s4, $a1, $zero
/* 9A1D0 800995D0 AFB60040 */  sw         $s6, 0x40($sp)
/* 9A1D4 800995D4 00C0B021 */  addu       $s6, $a2, $zero
/* 9A1D8 800995D8 AFB70044 */  sw         $s7, 0x44($sp)
/* 9A1DC 800995DC 00E0B821 */  addu       $s7, $a3, $zero
/* 9A1E0 800995E0 32C200FF */  andi       $v0, $s6, 0xFF
/* 9A1E4 800995E4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 9A1E8 800995E8 AFBE0048 */  sw         $fp, 0x48($sp)
/* 9A1EC 800995EC AFB5003C */  sw         $s5, 0x3C($sp)
/* 9A1F0 800995F0 AFB30034 */  sw         $s3, 0x34($sp)
/* 9A1F4 800995F4 AFB1002C */  sw         $s1, 0x2C($sp)
/* 9A1F8 800995F8 14400011 */  bnez       $v0, .L80099640
/* 9A1FC 800995FC AFB00028 */   sw        $s0, 0x28($sp)
/* 9A200 80099600 3C03800D */  lui        $v1, %hi(D_800CB3C4)
/* 9A204 80099604 9063B3C4 */  lbu        $v1, %lo(D_800CB3C4)($v1)
/* 9A208 80099608 32E200FF */  andi       $v0, $s7, 0xFF
/* 9A20C 8009960C 1443000C */  bne        $v0, $v1, .L80099640
/* 9A210 80099610 00000000 */   nop
/* 9A214 80099614 8E430008 */  lw         $v1, 0x8($s2)
/* 9A218 80099618 3C02800D */  lui        $v0, %hi(D_800CB3C0)
/* 9A21C 8009961C 8C42B3C0 */  lw         $v0, %lo(D_800CB3C0)($v0)
/* 9A220 80099620 14620007 */  bne        $v1, $v0, .L80099640
/* 9A224 80099624 00000000 */   nop
/* 9A228 80099628 3C04803F */  lui        $a0, %hi(D_803EF728)
/* 9A22C 8009962C 2484F728 */  addiu      $a0, $a0, %lo(D_803EF728)
/* 9A230 80099630 0C024854 */  jal        func_80092150
/* 9A234 80099634 24060100 */   addiu     $a2, $zero, 0x100
/* 9A238 80099638 08026631 */  j          .L800998C4
/* 9A23C 8009963C 00001021 */   addu      $v0, $zero, $zero
.L80099640:
/* 9A240 80099640 92420065 */  lbu        $v0, 0x65($s2)
/* 9A244 80099644 10400006 */  beqz       $v0, .L80099660
/* 9A248 80099648 02402021 */   addu      $a0, $s2, $zero
/* 9A24C 8009964C 0C0250F8 */  jal        func_800943E0
/* 9A250 80099650 00002821 */   addu      $a1, $zero, $zero
/* 9A254 80099654 00401821 */  addu       $v1, $v0, $zero
/* 9A258 80099658 1460009A */  bnez       $v1, .L800998C4
/* 9A25C 8009965C 00000000 */   nop
.L80099660:
/* 9A260 80099660 32E200FF */  andi       $v0, $s7, 0xFF
/* 9A264 80099664 14400002 */  bnez       $v0, .L80099670
/* 9A268 80099668 24150001 */   addiu     $s5, $zero, 0x1
/* 9A26C 8009966C 8E550060 */  lw         $s5, 0x60($s2)
.L80099670:
/* 9A270 80099670 32C300FF */  andi       $v1, $s6, 0xFF
/* 9A274 80099674 24020001 */  addiu      $v0, $zero, 0x1
/* 9A278 80099678 14620011 */  bne        $v1, $v0, .L800996C0
/* 9A27C 8009967C 00008021 */   addu      $s0, $zero, $zero
/* 9A280 80099680 00151040 */  sll        $v0, $s5, 1
/* 9A284 80099684 00542821 */  addu       $a1, $v0, $s4
/* 9A288 80099688 00002021 */  addu       $a0, $zero, $zero
/* 9A28C 8009968C 24020080 */  addiu      $v0, $zero, 0x80
/* 9A290 80099690 00551023 */  subu       $v0, $v0, $s5
/* 9A294 80099694 00023040 */  sll        $a2, $v0, 1
/* 9A298 80099698 18C00007 */  blez       $a2, .L800996B8
/* 9A29C 8009969C 00001821 */   addu      $v1, $zero, $zero
.L800996A0:
/* 9A2A0 800996A0 90A20000 */  lbu        $v0, 0x0($a1)
/* 9A2A4 800996A4 24840001 */  addiu      $a0, $a0, 0x1
/* 9A2A8 800996A8 00621821 */  addu       $v1, $v1, $v0
/* 9A2AC 800996AC 0086102A */  slt        $v0, $a0, $a2
/* 9A2B0 800996B0 1440FFFB */  bnez       $v0, .L800996A0
/* 9A2B4 800996B4 24A50001 */   addiu     $a1, $a1, 0x1
.L800996B8:
/* 9A2B8 800996B8 A2830001 */  sb         $v1, 0x1($s4)
/* 9A2BC 800996BC 00008021 */  addu       $s0, $zero, $zero
.L800996C0:
/* 9A2C0 800996C0 32DE00FF */  andi       $fp, $s6, 0xFF
/* 9A2C4 800996C4 32E200FF */  andi       $v0, $s7, 0xFF
/* 9A2C8 800996C8 000298C0 */  sll        $s3, $v0, 3
/* 9A2CC 800996CC 00101140 */  sll        $v0, $s0, 5
.L800996D0:
/* 9A2D0 800996D0 24080001 */  addiu      $t0, $zero, 0x1
/* 9A2D4 800996D4 17C80015 */  bne        $fp, $t0, .L8009972C
/* 9A2D8 800996D8 02828821 */   addu      $s1, $s4, $v0
/* 9A2DC 800996DC 8E460054 */  lw         $a2, 0x54($s2)
/* 9A2E0 800996E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 9A2E4 800996E4 8E440004 */  lw         $a0, 0x4($s2)
/* 9A2E8 800996E8 8E450008 */  lw         $a1, 0x8($s2)
/* 9A2EC 800996EC 02203821 */  addu       $a3, $s1, $zero
/* 9A2F0 800996F0 00D33021 */  addu       $a2, $a2, $s3
/* 9A2F4 800996F4 00D03021 */  addu       $a2, $a2, $s0
/* 9A2F8 800996F8 0C0266B8 */  jal        func_80099AE0
/* 9A2FC 800996FC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9A300 80099700 8E460058 */  lw         $a2, 0x58($s2)
/* 9A304 80099704 AFA00010 */  sw         $zero, 0x10($sp)
/* 9A308 80099708 8E440004 */  lw         $a0, 0x4($s2)
/* 9A30C 8009970C 8E450008 */  lw         $a1, 0x8($s2)
/* 9A310 80099710 02203821 */  addu       $a3, $s1, $zero
/* 9A314 80099714 00D33021 */  addu       $a2, $a2, $s3
/* 9A318 80099718 00D03021 */  addu       $a2, $a2, $s0
/* 9A31C 8009971C 0C0266B8 */  jal        func_80099AE0
/* 9A320 80099720 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9A324 80099724 080265D4 */  j          .L80099750
/* 9A328 80099728 00401821 */   addu      $v1, $v0, $zero
.L8009972C:
/* 9A32C 8009972C 8E440004 */  lw         $a0, 0x4($s2)
/* 9A330 80099730 8E460054 */  lw         $a2, 0x54($s2)
/* 9A334 80099734 8E450008 */  lw         $a1, 0x8($s2)
/* 9A338 80099738 02203821 */  addu       $a3, $s1, $zero
/* 9A33C 8009973C 00D33021 */  addu       $a2, $a2, $s3
/* 9A340 80099740 00D03021 */  addu       $a2, $a2, $s0
/* 9A344 80099744 0C026640 */  jal        func_80099900
/* 9A348 80099748 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9A34C 8009974C 00401821 */  addu       $v1, $v0, $zero
.L80099750:
/* 9A350 80099750 1460003D */  bnez       $v1, .L80099848
/* 9A354 80099754 26100001 */   addiu     $s0, $s0, 0x1
/* 9A358 80099758 2A020008 */  slti       $v0, $s0, 0x8
/* 9A35C 8009975C 1440FFDC */  bnez       $v0, .L800996D0
/* 9A360 80099760 00101140 */   sll       $v0, $s0, 5
/* 9A364 80099764 32C200FF */  andi       $v0, $s6, 0xFF
/* 9A368 80099768 5440004C */  bnel       $v0, $zero, .L8009989C
/* 9A36C 8009976C 02802021 */   addu      $a0, $s4, $zero
/* 9A370 80099770 00003821 */  addu       $a3, $zero, $zero
/* 9A374 80099774 00151040 */  sll        $v0, $s5, 1
/* 9A378 80099778 00542821 */  addu       $a1, $v0, $s4
/* 9A37C 8009977C 24020080 */  addiu      $v0, $zero, 0x80
/* 9A380 80099780 00551023 */  subu       $v0, $v0, $s5
/* 9A384 80099784 00023040 */  sll        $a2, $v0, 1
/* 9A388 80099788 0066102A */  slt        $v0, $v1, $a2
/* 9A38C 8009978C 10400007 */  beqz       $v0, .L800997AC
/* 9A390 80099790 00002021 */   addu      $a0, $zero, $zero
.L80099794:
/* 9A394 80099794 90A20000 */  lbu        $v0, 0x0($a1)
/* 9A398 80099798 24840001 */  addiu      $a0, $a0, 0x1
/* 9A39C 8009979C 00E23821 */  addu       $a3, $a3, $v0
/* 9A3A0 800997A0 0086102A */  slt        $v0, $a0, $a2
/* 9A3A4 800997A4 1440FFFB */  bnez       $v0, .L80099794
/* 9A3A8 800997A8 24A50001 */   addiu     $a1, $a1, 0x1
.L800997AC:
/* 9A3AC 800997AC 92830001 */  lbu        $v1, 0x1($s4)
/* 9A3B0 800997B0 30E200FF */  andi       $v0, $a3, 0xFF
/* 9A3B4 800997B4 10430038 */  beq        $v0, $v1, .L80099898
/* 9A3B8 800997B8 32E200FF */   andi      $v0, $s7, 0xFF
/* 9A3BC 800997BC 00008021 */  addu       $s0, $zero, $zero
/* 9A3C0 800997C0 000298C0 */  sll        $s3, $v0, 3
/* 9A3C4 800997C4 02808821 */  addu       $s1, $s4, $zero
.L800997C8:
/* 9A3C8 800997C8 8E440004 */  lw         $a0, 0x4($s2)
/* 9A3CC 800997CC 8E450008 */  lw         $a1, 0x8($s2)
/* 9A3D0 800997D0 8E460058 */  lw         $a2, 0x58($s2)
/* 9A3D4 800997D4 02203821 */  addu       $a3, $s1, $zero
/* 9A3D8 800997D8 26310020 */  addiu      $s1, $s1, 0x20
/* 9A3DC 800997DC 00D33021 */  addu       $a2, $a2, $s3
/* 9A3E0 800997E0 00D03021 */  addu       $a2, $a2, $s0
/* 9A3E4 800997E4 0C026640 */  jal        func_80099900
/* 9A3E8 800997E8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9A3EC 800997EC 26100001 */  addiu      $s0, $s0, 0x1
/* 9A3F0 800997F0 2A020008 */  slti       $v0, $s0, 0x8
/* 9A3F4 800997F4 1440FFF4 */  bnez       $v0, .L800997C8
/* 9A3F8 800997F8 24030080 */   addiu     $v1, $zero, 0x80
/* 9A3FC 800997FC 00151040 */  sll        $v0, $s5, 1
/* 9A400 80099800 00543021 */  addu       $a2, $v0, $s4
/* 9A404 80099804 00002021 */  addu       $a0, $zero, $zero
/* 9A408 80099808 00751823 */  subu       $v1, $v1, $s5
/* 9A40C 8009980C 00031840 */  sll        $v1, $v1, 1
/* 9A410 80099810 18600007 */  blez       $v1, .L80099830
/* 9A414 80099814 00002821 */   addu      $a1, $zero, $zero
.L80099818:
/* 9A418 80099818 90C20000 */  lbu        $v0, 0x0($a2)
/* 9A41C 8009981C 24840001 */  addiu      $a0, $a0, 0x1
/* 9A420 80099820 00A22821 */  addu       $a1, $a1, $v0
/* 9A424 80099824 0083102A */  slt        $v0, $a0, $v1
/* 9A428 80099828 1440FFFB */  bnez       $v0, .L80099818
/* 9A42C 8009982C 24C60001 */   addiu     $a2, $a2, 0x1
.L80099830:
/* 9A430 80099830 92830001 */  lbu        $v1, 0x1($s4)
/* 9A434 80099834 30A200FF */  andi       $v0, $a1, 0xFF
/* 9A438 80099838 10430005 */  beq        $v0, $v1, .L80099850
/* 9A43C 8009983C 24020003 */   addiu     $v0, $zero, 0x3
/* 9A440 80099840 08026631 */  j          .L800998C4
/* 9A444 80099844 00000000 */   nop
.L80099848:
/* 9A448 80099848 08026631 */  j          .L800998C4
/* 9A44C 8009984C 00601021 */   addu      $v0, $v1, $zero
.L80099850:
/* 9A450 80099850 00008021 */  addu       $s0, $zero, $zero
/* 9A454 80099854 32E200FF */  andi       $v0, $s7, 0xFF
/* 9A458 80099858 000298C0 */  sll        $s3, $v0, 3
/* 9A45C 8009985C 02808821 */  addu       $s1, $s4, $zero
.L80099860:
/* 9A460 80099860 8E460054 */  lw         $a2, 0x54($s2)
/* 9A464 80099864 AFA00010 */  sw         $zero, 0x10($sp)
/* 9A468 80099868 8E440004 */  lw         $a0, 0x4($s2)
/* 9A46C 8009986C 8E450008 */  lw         $a1, 0x8($s2)
/* 9A470 80099870 02203821 */  addu       $a3, $s1, $zero
/* 9A474 80099874 26310020 */  addiu      $s1, $s1, 0x20
/* 9A478 80099878 00D33021 */  addu       $a2, $a2, $s3
/* 9A47C 8009987C 00D03021 */  addu       $a2, $a2, $s0
/* 9A480 80099880 0C0266B8 */  jal        func_80099AE0
/* 9A484 80099884 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9A488 80099888 26100001 */  addiu      $s0, $s0, 0x1
/* 9A48C 8009988C 2A020008 */  slti       $v0, $s0, 0x8
/* 9A490 80099890 1440FFF3 */  bnez       $v0, .L80099860
/* 9A494 80099894 00000000 */   nop
.L80099898:
/* 9A498 80099898 02802021 */  addu       $a0, $s4, $zero
.L8009989C:
/* 9A49C 8009989C 3C05803F */  lui        $a1, %hi(D_803EF728)
/* 9A4A0 800998A0 24A5F728 */  addiu      $a1, $a1, %lo(D_803EF728)
/* 9A4A4 800998A4 3C01800D */  lui        $at, %hi(D_800CB3C4)
/* 9A4A8 800998A8 A037B3C4 */  sb         $s7, %lo(D_800CB3C4)($at)
/* 9A4AC 800998AC 0C024854 */  jal        func_80092150
/* 9A4B0 800998B0 24060100 */   addiu     $a2, $zero, 0x100
/* 9A4B4 800998B4 8E430008 */  lw         $v1, 0x8($s2)
/* 9A4B8 800998B8 00001021 */  addu       $v0, $zero, $zero
/* 9A4BC 800998BC 3C01800D */  lui        $at, %hi(D_800CB3C0)
/* 9A4C0 800998C0 AC23B3C0 */  sw         $v1, %lo(D_800CB3C0)($at)
.L800998C4:
/* 9A4C4 800998C4 8FBF004C */  lw         $ra, 0x4C($sp)
/* 9A4C8 800998C8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 9A4CC 800998CC 8FB70044 */  lw         $s7, 0x44($sp)
/* 9A4D0 800998D0 8FB60040 */  lw         $s6, 0x40($sp)
/* 9A4D4 800998D4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 9A4D8 800998D8 8FB40038 */  lw         $s4, 0x38($sp)
/* 9A4DC 800998DC 8FB30034 */  lw         $s3, 0x34($sp)
/* 9A4E0 800998E0 8FB20030 */  lw         $s2, 0x30($sp)
/* 9A4E4 800998E4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 9A4E8 800998E8 8FB00028 */  lw         $s0, 0x28($sp)
/* 9A4EC 800998EC 03E00008 */  jr         $ra
/* 9A4F0 800998F0 27BD0050 */   addiu     $sp, $sp, 0x50
/* 9A4F4 800998F4 00000000 */  nop
/* 9A4F8 800998F8 00000000 */  nop
/* 9A4FC 800998FC 00000000 */  nop

glabel func_80099900
/* 9A500 80099900 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A504 80099904 AFB50024 */  sw         $s5, 0x24($sp)
/* 9A508 80099908 0080A821 */  addu       $s5, $a0, $zero
/* 9A50C 8009990C AFB20018 */  sw         $s2, 0x18($sp)
/* 9A510 80099910 00A09021 */  addu       $s2, $a1, $zero
/* 9A514 80099914 AFB00010 */  sw         $s0, 0x10($sp)
/* 9A518 80099918 00008021 */  addu       $s0, $zero, $zero
/* 9A51C 8009991C AFB7002C */  sw         $s7, 0x2C($sp)
/* 9A520 80099920 00E0B821 */  addu       $s7, $a3, $zero
/* 9A524 80099924 AFB40020 */  sw         $s4, 0x20($sp)
/* 9A528 80099928 00C0A021 */  addu       $s4, $a2, $zero
/* 9A52C 8009992C AFBF0030 */  sw         $ra, 0x30($sp)
/* 9A530 80099930 AFB60028 */  sw         $s6, 0x28($sp)
/* 9A534 80099934 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9A538 80099938 0C0260E1 */  jal        func_80098384
/* 9A53C 8009993C AFB10014 */   sw        $s1, 0x14($sp)
/* 9A540 80099940 3C02802F */  lui        $v0, %hi(D_802F1C18)
/* 9A544 80099944 90421C18 */  lbu        $v0, %lo(D_802F1C18)($v0)
/* 9A548 80099948 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9A54C 8009994C 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9A550 80099950 24130002 */  addiu      $s3, $zero, 0x2
/* 9A554 80099954 14530005 */  bne        $v0, $s3, .L8009996C
/* 9A558 80099958 24020002 */   addiu     $v0, $zero, 0x2
/* 9A55C 8009995C 3C02800D */  lui        $v0, %hi(D_800CB3D0)
/* 9A560 80099960 8C42B3D0 */  lw         $v0, %lo(D_800CB3D0)($v0)
/* 9A564 80099964 1052001C */  beq        $v0, $s2, .L800999D8
/* 9A568 80099968 24020002 */   addiu     $v0, $zero, 0x2
.L8009996C:
/* 9A56C 8009996C 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9A570 80099970 A0221C18 */  sb         $v0, %lo(D_802F1C18)($at)
/* 9A574 80099974 0212102A */  slt        $v0, $s0, $s2
/* 9A578 80099978 3C01800D */  lui        $at, %hi(D_800CB3D0)
/* 9A57C 8009997C AC32B3D0 */  sw         $s2, %lo(D_800CB3D0)($at)
/* 9A580 80099980 10400006 */  beqz       $v0, .L8009999C
/* 9A584 80099984 00001821 */   addu      $v1, $zero, $zero
.L80099988:
/* 9A588 80099988 A2200000 */  sb         $zero, 0x0($s1)
/* 9A58C 8009998C 24630001 */  addiu      $v1, $v1, 0x1
/* 9A590 80099990 0072102A */  slt        $v0, $v1, $s2
/* 9A594 80099994 1440FFFC */  bnez       $v0, .L80099988
/* 9A598 80099998 26310001 */   addiu     $s1, $s1, 0x1
.L8009999C:
/* 9A59C 8009999C 24020001 */  addiu      $v0, $zero, 0x1
/* 9A5A0 800999A0 240300FF */  addiu      $v1, $zero, 0xFF
/* 9A5A4 800999A4 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9A5A8 800999A8 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9A5AC 800999AC 24020003 */  addiu      $v0, $zero, 0x3
/* 9A5B0 800999B0 A2220001 */  sb         $v0, 0x1($s1)
/* 9A5B4 800999B4 24020021 */  addiu      $v0, $zero, 0x21
/* 9A5B8 800999B8 A2220002 */  sb         $v0, 0x2($s1)
/* 9A5BC 800999BC 24020002 */  addiu      $v0, $zero, 0x2
/* 9A5C0 800999C0 A2220003 */  sb         $v0, 0x3($s1)
/* 9A5C4 800999C4 240200FE */  addiu      $v0, $zero, 0xFE
/* 9A5C8 800999C8 A2230000 */  sb         $v1, 0x0($s1)
/* 9A5CC 800999CC A2230026 */  sb         $v1, 0x26($s1)
/* 9A5D0 800999D0 08026677 */  j          .L800999DC
/* 9A5D4 800999D4 A2220027 */   sb        $v0, 0x27($s1)
.L800999D8:
/* 9A5D8 800999D8 02518821 */  addu       $s1, $s2, $s1
.L800999DC:
/* 9A5DC 800999DC 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 9A5E0 800999E0 000410C2 */  srl        $v0, $a0, 3
/* 9A5E4 800999E4 0C026738 */  jal        func_80099CE0
/* 9A5E8 800999E8 A2220004 */   sb        $v0, 0x4($s1)
/* 9A5EC 800999EC 24040001 */  addiu      $a0, $zero, 0x1
/* 9A5F0 800999F0 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A5F4 800999F4 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A5F8 800999F8 00141940 */  sll        $v1, $s4, 5
/* 9A5FC 800999FC 00431025 */  or         $v0, $v0, $v1
/* 9A600 80099A00 0C025114 */  jal        func_80094450
/* 9A604 80099A04 A2220005 */   sb        $v0, 0x5($s1)
/* 9A608 80099A08 02A02021 */  addu       $a0, $s5, $zero
/* 9A60C 80099A0C 00002821 */  addu       $a1, $zero, $zero
/* 9A610 80099A10 0C000B3C */  jal        osRecvMesg
/* 9A614 80099A14 24060001 */   addiu     $a2, $zero, 0x1
/* 9A618 80099A18 26340006 */  addiu      $s4, $s1, 0x6
/* 9A61C 80099A1C 24160004 */  addiu      $s6, $zero, 0x4
.L80099A20:
/* 9A620 80099A20 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A624 80099A24 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A628 80099A28 0C025114 */  jal        func_80094450
/* 9A62C 80099A2C 00002021 */   addu      $a0, $zero, $zero
/* 9A630 80099A30 02A02021 */  addu       $a0, $s5, $zero
/* 9A634 80099A34 00002821 */  addu       $a1, $zero, $zero
/* 9A638 80099A38 0C000B3C */  jal        osRecvMesg
/* 9A63C 80099A3C 24060001 */   addiu     $a2, $zero, 0x1
/* 9A640 80099A40 92220002 */  lbu        $v0, 0x2($s1)
/* 9A644 80099A44 304200C0 */  andi       $v0, $v0, 0xC0
/* 9A648 80099A48 00028102 */  srl        $s0, $v0, 4
/* 9A64C 80099A4C 56000012 */  bnel       $s0, $zero, .L80099A98
/* 9A650 80099A50 24100001 */   addiu     $s0, $zero, 0x1
/* 9A654 80099A54 0C026753 */  jal        func_80099D4C
/* 9A658 80099A58 02802021 */   addu      $a0, $s4, $zero
/* 9A65C 80099A5C 92230026 */  lbu        $v1, 0x26($s1)
/* 9A660 80099A60 304200FF */  andi       $v0, $v0, 0xFF
/* 9A664 80099A64 10430008 */  beq        $v0, $v1, .L80099A88
/* 9A668 80099A68 02A02021 */   addu      $a0, $s5, $zero
/* 9A66C 80099A6C 0C026774 */  jal        func_80099DD0
/* 9A670 80099A70 02402821 */   addu      $a1, $s2, $zero
/* 9A674 80099A74 00408021 */  addu       $s0, $v0, $zero
/* 9A678 80099A78 1600000B */  bnez       $s0, .L80099AA8
/* 9A67C 80099A7C 00000000 */   nop
/* 9A680 80099A80 080266A6 */  j          .L80099A98
/* 9A684 80099A84 24100004 */   addiu     $s0, $zero, 0x4
.L80099A88:
/* 9A688 80099A88 02802021 */  addu       $a0, $s4, $zero
/* 9A68C 80099A8C 02E02821 */  addu       $a1, $s7, $zero
/* 9A690 80099A90 0C024854 */  jal        func_80092150
/* 9A694 80099A94 24060020 */   addiu     $a2, $zero, 0x20
.L80099A98:
/* 9A698 80099A98 16160003 */  bne        $s0, $s6, .L80099AA8
/* 9A69C 80099A9C 02601021 */   addu      $v0, $s3, $zero
/* 9A6A0 80099AA0 0441FFDF */  bgez       $v0, .L80099A20
/* 9A6A4 80099AA4 2673FFFF */   addiu     $s3, $s3, -0x1
.L80099AA8:
/* 9A6A8 80099AA8 0C0260FC */  jal        func_800983F0
/* 9A6AC 80099AAC 00000000 */   nop
/* 9A6B0 80099AB0 02001021 */  addu       $v0, $s0, $zero
/* 9A6B4 80099AB4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9A6B8 80099AB8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 9A6BC 80099ABC 8FB60028 */  lw         $s6, 0x28($sp)
/* 9A6C0 80099AC0 8FB50024 */  lw         $s5, 0x24($sp)
/* 9A6C4 80099AC4 8FB40020 */  lw         $s4, 0x20($sp)
/* 9A6C8 80099AC8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9A6CC 80099ACC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9A6D0 80099AD0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9A6D4 80099AD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9A6D8 80099AD8 03E00008 */  jr         $ra
/* 9A6DC 80099ADC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80099AE0
/* 9A6E0 80099AE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A6E4 80099AE4 8FA20048 */  lw         $v0, 0x48($sp)
/* 9A6E8 80099AE8 AFB40028 */  sw         $s4, 0x28($sp)
/* 9A6EC 80099AEC 0080A021 */  addu       $s4, $a0, $zero
/* 9A6F0 80099AF0 AFB20020 */  sw         $s2, 0x20($sp)
/* 9A6F4 80099AF4 00A09021 */  addu       $s2, $a1, $zero
/* 9A6F8 80099AF8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 9A6FC 80099AFC 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9A700 80099B00 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9A704 80099B04 AFB30024 */  sw         $s3, 0x24($sp)
/* 9A708 80099B08 24130002 */  addiu      $s3, $zero, 0x2
/* 9A70C 80099B0C AFB5002C */  sw         $s5, 0x2C($sp)
/* 9A710 80099B10 00E0A821 */  addu       $s5, $a3, $zero
/* 9A714 80099B14 AFB00018 */  sw         $s0, 0x18($sp)
/* 9A718 80099B18 00C08021 */  addu       $s0, $a2, $zero
/* 9A71C 80099B1C 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* 9A720 80099B20 2C830007 */  sltiu      $v1, $a0, 0x7
/* 9A724 80099B24 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9A728 80099B28 38420001 */  xori       $v0, $v0, 0x1
/* 9A72C 80099B2C 0002102B */  sltu       $v0, $zero, $v0
/* 9A730 80099B30 00431024 */  and        $v0, $v0, $v1
/* 9A734 80099B34 10400003 */  beqz       $v0, .L80099B44
/* 9A738 80099B38 AFB60030 */   sw        $s6, 0x30($sp)
/* 9A73C 80099B3C 1480005C */  bnez       $a0, .L80099CB0
/* 9A740 80099B40 00001021 */   addu      $v0, $zero, $zero
.L80099B44:
/* 9A744 80099B44 0C0260E1 */  jal        func_80098384
/* 9A748 80099B48 00000000 */   nop
/* 9A74C 80099B4C 3C03802F */  lui        $v1, %hi(D_802F1C18)
/* 9A750 80099B50 90631C18 */  lbu        $v1, %lo(D_802F1C18)($v1)
/* 9A754 80099B54 24020003 */  addiu      $v0, $zero, 0x3
/* 9A758 80099B58 14620005 */  bne        $v1, $v0, .L80099B70
/* 9A75C 80099B5C 24020003 */   addiu     $v0, $zero, 0x3
/* 9A760 80099B60 3C02800D */  lui        $v0, %hi(D_800CB3D0)
/* 9A764 80099B64 8C42B3D0 */  lw         $v0, %lo(D_800CB3D0)($v0)
/* 9A768 80099B68 1052001B */  beq        $v0, $s2, .L80099BD8
/* 9A76C 80099B6C 24020003 */   addiu     $v0, $zero, 0x3
.L80099B70:
/* 9A770 80099B70 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9A774 80099B74 A0221C18 */  sb         $v0, %lo(D_802F1C18)($at)
/* 9A778 80099B78 3C01800D */  lui        $at, %hi(D_800CB3D0)
/* 9A77C 80099B7C AC32B3D0 */  sw         $s2, %lo(D_800CB3D0)($at)
/* 9A780 80099B80 1A400006 */  blez       $s2, .L80099B9C
/* 9A784 80099B84 00001821 */   addu      $v1, $zero, $zero
.L80099B88:
/* 9A788 80099B88 A2200000 */  sb         $zero, 0x0($s1)
/* 9A78C 80099B8C 24630001 */  addiu      $v1, $v1, 0x1
/* 9A790 80099B90 0072102A */  slt        $v0, $v1, $s2
/* 9A794 80099B94 1440FFFC */  bnez       $v0, .L80099B88
/* 9A798 80099B98 26310001 */   addiu     $s1, $s1, 0x1
.L80099B9C:
/* 9A79C 80099B9C 24020001 */  addiu      $v0, $zero, 0x1
/* 9A7A0 80099BA0 240300FF */  addiu      $v1, $zero, 0xFF
/* 9A7A4 80099BA4 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9A7A8 80099BA8 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9A7AC 80099BAC 24020023 */  addiu      $v0, $zero, 0x23
/* 9A7B0 80099BB0 A2220001 */  sb         $v0, 0x1($s1)
/* 9A7B4 80099BB4 24020001 */  addiu      $v0, $zero, 0x1
/* 9A7B8 80099BB8 A2220002 */  sb         $v0, 0x2($s1)
/* 9A7BC 80099BBC 24020003 */  addiu      $v0, $zero, 0x3
/* 9A7C0 80099BC0 A2220003 */  sb         $v0, 0x3($s1)
/* 9A7C4 80099BC4 240200FE */  addiu      $v0, $zero, 0xFE
/* 9A7C8 80099BC8 A2230000 */  sb         $v1, 0x0($s1)
/* 9A7CC 80099BCC A2230026 */  sb         $v1, 0x26($s1)
/* 9A7D0 80099BD0 080266F7 */  j          .L80099BDC
/* 9A7D4 80099BD4 A2220027 */   sb        $v0, 0x27($s1)
.L80099BD8:
/* 9A7D8 80099BD8 02328821 */  addu       $s1, $s1, $s2
.L80099BDC:
/* 9A7DC 80099BDC 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* 9A7E0 80099BE0 000410C2 */  srl        $v0, $a0, 3
/* 9A7E4 80099BE4 0C026738 */  jal        func_80099CE0
/* 9A7E8 80099BE8 A2220004 */   sb        $v0, 0x4($s1)
/* 9A7EC 80099BEC 02A02021 */  addu       $a0, $s5, $zero
/* 9A7F0 80099BF0 26250006 */  addiu      $a1, $s1, 0x6
/* 9A7F4 80099BF4 24060020 */  addiu      $a2, $zero, 0x20
/* 9A7F8 80099BF8 00101940 */  sll        $v1, $s0, 5
/* 9A7FC 80099BFC 00431025 */  or         $v0, $v0, $v1
/* 9A800 80099C00 0C024854 */  jal        func_80092150
/* 9A804 80099C04 A2220005 */   sb        $v0, 0x5($s1)
/* 9A808 80099C08 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A80C 80099C0C 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A810 80099C10 0C025114 */  jal        func_80094450
/* 9A814 80099C14 24040001 */   addiu     $a0, $zero, 0x1
/* 9A818 80099C18 0C026753 */  jal        func_80099D4C
/* 9A81C 80099C1C 02A02021 */   addu      $a0, $s5, $zero
/* 9A820 80099C20 02802021 */  addu       $a0, $s4, $zero
/* 9A824 80099C24 00002821 */  addu       $a1, $zero, $zero
/* 9A828 80099C28 24060001 */  addiu      $a2, $zero, 0x1
/* 9A82C 80099C2C 0C000B3C */  jal        osRecvMesg
/* 9A830 80099C30 00408021 */   addu      $s0, $v0, $zero
/* 9A834 80099C34 321500FF */  andi       $s5, $s0, 0xFF
/* 9A838 80099C38 24160004 */  addiu      $s6, $zero, 0x4
.L80099C3C:
/* 9A83C 80099C3C 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A840 80099C40 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A844 80099C44 0C025114 */  jal        func_80094450
/* 9A848 80099C48 00002021 */   addu      $a0, $zero, $zero
/* 9A84C 80099C4C 02802021 */  addu       $a0, $s4, $zero
/* 9A850 80099C50 00002821 */  addu       $a1, $zero, $zero
/* 9A854 80099C54 0C000B3C */  jal        osRecvMesg
/* 9A858 80099C58 24060001 */   addiu     $a2, $zero, 0x1
/* 9A85C 80099C5C 92220002 */  lbu        $v0, 0x2($s1)
/* 9A860 80099C60 304200C0 */  andi       $v0, $v0, 0xC0
/* 9A864 80099C64 00028102 */  srl        $s0, $v0, 4
/* 9A868 80099C68 5600000A */  bnel       $s0, $zero, .L80099C94
/* 9A86C 80099C6C 24100001 */   addiu     $s0, $zero, 0x1
/* 9A870 80099C70 92220026 */  lbu        $v0, 0x26($s1)
/* 9A874 80099C74 12A20007 */  beq        $s5, $v0, .L80099C94
/* 9A878 80099C78 02802021 */   addu      $a0, $s4, $zero
/* 9A87C 80099C7C 0C026774 */  jal        func_80099DD0
/* 9A880 80099C80 02402821 */   addu      $a1, $s2, $zero
/* 9A884 80099C84 00408021 */  addu       $s0, $v0, $zero
/* 9A888 80099C88 16000006 */  bnez       $s0, .L80099CA4
/* 9A88C 80099C8C 00000000 */   nop
/* 9A890 80099C90 24100004 */  addiu      $s0, $zero, 0x4
.L80099C94:
/* 9A894 80099C94 16160003 */  bne        $s0, $s6, .L80099CA4
/* 9A898 80099C98 02601021 */   addu      $v0, $s3, $zero
/* 9A89C 80099C9C 0441FFE7 */  bgez       $v0, .L80099C3C
/* 9A8A0 80099CA0 2673FFFF */   addiu     $s3, $s3, -0x1
.L80099CA4:
/* 9A8A4 80099CA4 0C0260FC */  jal        func_800983F0
/* 9A8A8 80099CA8 00000000 */   nop
/* 9A8AC 80099CAC 02001021 */  addu       $v0, $s0, $zero
.L80099CB0:
/* 9A8B0 80099CB0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9A8B4 80099CB4 8FB60030 */  lw         $s6, 0x30($sp)
/* 9A8B8 80099CB8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 9A8BC 80099CBC 8FB40028 */  lw         $s4, 0x28($sp)
/* 9A8C0 80099CC0 8FB30024 */  lw         $s3, 0x24($sp)
/* 9A8C4 80099CC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 9A8C8 80099CC8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9A8CC 80099CCC 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A8D0 80099CD0 03E00008 */  jr         $ra
/* 9A8D4 80099CD4 27BD0038 */   addiu     $sp, $sp, 0x38
/* 9A8D8 80099CD8 00000000 */  nop
/* 9A8DC 80099CDC 00000000 */  nop

glabel func_80099CE0
/* 9A8E0 80099CE0 00001821 */  addu       $v1, $zero, $zero
/* 9A8E4 80099CE4 24050400 */  addiu      $a1, $zero, 0x400
/* 9A8E8 80099CE8 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 9A8EC 80099CEC 00851024 */  and        $v0, $a0, $a1
.L80099CF0:
/* 9A8F0 80099CF0 10400006 */  beqz       $v0, .L80099D0C
/* 9A8F4 80099CF4 00031840 */   sll       $v1, $v1, 1
/* 9A8F8 80099CF8 30620020 */  andi       $v0, $v1, 0x20
/* 9A8FC 80099CFC 50400006 */  beql       $v0, $zero, .L80099D18
/* 9A900 80099D00 24630001 */   addiu     $v1, $v1, 0x1
/* 9A904 80099D04 08026746 */  j          .L80099D18
/* 9A908 80099D08 38630014 */   xori      $v1, $v1, 0x14
.L80099D0C:
/* 9A90C 80099D0C 30620020 */  andi       $v0, $v1, 0x20
/* 9A910 80099D10 54400001 */  bnel       $v0, $zero, .L80099D18
/* 9A914 80099D14 38630015 */   xori      $v1, $v1, 0x15
.L80099D18:
/* 9A918 80099D18 00052842 */  srl        $a1, $a1, 1
/* 9A91C 80099D1C 14A0FFF4 */  bnez       $a1, .L80099CF0
/* 9A920 80099D20 00851024 */   and       $v0, $a0, $a1
/* 9A924 80099D24 24050005 */  addiu      $a1, $zero, 0x5
/* 9A928 80099D28 00031840 */  sll        $v1, $v1, 1
.L80099D2C:
/* 9A92C 80099D2C 30620020 */  andi       $v0, $v1, 0x20
/* 9A930 80099D30 54400001 */  bnel       $v0, $zero, .L80099D38
/* 9A934 80099D34 38630015 */   xori      $v1, $v1, 0x15
.L80099D38:
/* 9A938 80099D38 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 9A93C 80099D3C 54A0FFFB */  bnel       $a1, $zero, .L80099D2C
/* 9A940 80099D40 00031840 */   sll       $v1, $v1, 1
/* 9A944 80099D44 03E00008 */  jr         $ra
/* 9A948 80099D48 3062001F */   andi      $v0, $v1, 0x1F

glabel func_80099D4C
/* 9A94C 80099D4C 00001821 */  addu       $v1, $zero, $zero
/* 9A950 80099D50 24060020 */  addiu      $a2, $zero, 0x20
.L80099D54:
/* 9A954 80099D54 24050080 */  addiu      $a1, $zero, 0x80
/* 9A958 80099D58 90870000 */  lbu        $a3, 0x0($a0)
/* 9A95C 80099D5C 00E51024 */  and        $v0, $a3, $a1
.L80099D60:
/* 9A960 80099D60 10400006 */  beqz       $v0, .L80099D7C
/* 9A964 80099D64 00031840 */   sll       $v1, $v1, 1
/* 9A968 80099D68 30620100 */  andi       $v0, $v1, 0x100
/* 9A96C 80099D6C 50400006 */  beql       $v0, $zero, .L80099D88
/* 9A970 80099D70 24630001 */   addiu     $v1, $v1, 0x1
/* 9A974 80099D74 08026762 */  j          .L80099D88
/* 9A978 80099D78 38630084 */   xori      $v1, $v1, 0x84
.L80099D7C:
/* 9A97C 80099D7C 30620100 */  andi       $v0, $v1, 0x100
/* 9A980 80099D80 54400001 */  bnel       $v0, $zero, .L80099D88
/* 9A984 80099D84 38630085 */   xori      $v1, $v1, 0x85
.L80099D88:
/* 9A988 80099D88 00052842 */  srl        $a1, $a1, 1
/* 9A98C 80099D8C 14A0FFF4 */  bnez       $a1, .L80099D60
/* 9A990 80099D90 00E51024 */   and       $v0, $a3, $a1
/* 9A994 80099D94 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 9A998 80099D98 14C0FFEE */  bnez       $a2, .L80099D54
/* 9A99C 80099D9C 24840001 */   addiu     $a0, $a0, 0x1
/* 9A9A0 80099DA0 00031840 */  sll        $v1, $v1, 1
.L80099DA4:
/* 9A9A4 80099DA4 30620100 */  andi       $v0, $v1, 0x100
/* 9A9A8 80099DA8 54400001 */  bnel       $v0, $zero, .L80099DB0
/* 9A9AC 80099DAC 38630085 */   xori      $v1, $v1, 0x85
.L80099DB0:
/* 9A9B0 80099DB0 24C60001 */  addiu      $a2, $a2, 0x1
/* 9A9B4 80099DB4 2CC20008 */  sltiu      $v0, $a2, 0x8
/* 9A9B8 80099DB8 5440FFFA */  bnel       $v0, $zero, .L80099DA4
/* 9A9BC 80099DBC 00031840 */   sll       $v1, $v1, 1
/* 9A9C0 80099DC0 03E00008 */  jr         $ra
/* 9A9C4 80099DC4 306200FF */   andi      $v0, $v1, 0xFF
/* 9A9C8 80099DC8 00000000 */  nop
/* 9A9CC 80099DCC 00000000 */  nop

glabel func_80099DD0
/* 9A9D0 80099DD0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A9D4 80099DD4 AFB20028 */  sw         $s2, 0x28($sp)
/* 9A9D8 80099DD8 00809021 */  addu       $s2, $a0, $zero
/* 9A9DC 80099DDC AFB3002C */  sw         $s3, 0x2C($sp)
/* 9A9E0 80099DE0 00A09821 */  addu       $s3, $a1, $zero
/* 9A9E4 80099DE4 240200FA */  addiu      $v0, $zero, 0xFA
/* 9A9E8 80099DE8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 9A9EC 80099DEC AFB10024 */  sw         $s1, 0x24($sp)
/* 9A9F0 80099DF0 AFB00020 */  sw         $s0, 0x20($sp)
/* 9A9F4 80099DF4 3C01800D */  lui        $at, %hi(D_800CB3C4)
/* 9A9F8 80099DF8 A022B3C4 */  sb         $v0, %lo(D_800CB3C4)($at)
/* 9A9FC 80099DFC 0C0267AF */  jal        func_80099EBC
/* 9AA00 80099E00 02602021 */   addu      $a0, $s3, $zero
/* 9AA04 80099E04 24040001 */  addiu      $a0, $zero, 0x1
/* 9AA08 80099E08 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9AA0C 80099E0C 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9AA10 80099E10 0C025114 */  jal        func_80094450
/* 9AA14 80099E14 02202821 */   addu      $a1, $s1, $zero
/* 9AA18 80099E18 02402021 */  addu       $a0, $s2, $zero
/* 9AA1C 80099E1C 27B00018 */  addiu      $s0, $sp, 0x18
/* 9AA20 80099E20 02002821 */  addu       $a1, $s0, $zero
/* 9AA24 80099E24 0C000B3C */  jal        osRecvMesg
/* 9AA28 80099E28 24060001 */   addiu     $a2, $zero, 0x1
/* 9AA2C 80099E2C 00002021 */  addu       $a0, $zero, $zero
/* 9AA30 80099E30 0C025114 */  jal        func_80094450
/* 9AA34 80099E34 02202821 */   addu      $a1, $s1, $zero
/* 9AA38 80099E38 02402021 */  addu       $a0, $s2, $zero
/* 9AA3C 80099E3C 02002821 */  addu       $a1, $s0, $zero
/* 9AA40 80099E40 24060001 */  addiu      $a2, $zero, 0x1
/* 9AA44 80099E44 0C000B3C */  jal        osRecvMesg
/* 9AA48 80099E48 00408021 */   addu      $s0, $v0, $zero
/* 9AA4C 80099E4C 02602021 */  addu       $a0, $s3, $zero
/* 9AA50 80099E50 0C0267D3 */  jal        func_80099F4C
/* 9AA54 80099E54 27A50010 */   addiu     $a1, $sp, 0x10
/* 9AA58 80099E58 93A30012 */  lbu        $v1, 0x12($sp)
/* 9AA5C 80099E5C 30620001 */  andi       $v0, $v1, 0x1
/* 9AA60 80099E60 10400003 */  beqz       $v0, .L80099E70
/* 9AA64 80099E64 30620002 */   andi      $v0, $v1, 0x2
/* 9AA68 80099E68 1440000D */  bnez       $v0, .L80099EA0
/* 9AA6C 80099E6C 24020002 */   addiu     $v0, $zero, 0x2
.L80099E70:
/* 9AA70 80099E70 97A20012 */  lhu        $v0, 0x12($sp)
/* 9AA74 80099E74 24030100 */  addiu      $v1, $zero, 0x100
/* 9AA78 80099E78 304201FF */  andi       $v0, $v0, 0x1FF
/* 9AA7C 80099E7C 10430003 */  beq        $v0, $v1, .L80099E8C
/* 9AA80 80099E80 00000000 */   nop
/* 9AA84 80099E84 080267A8 */  j          .L80099EA0
/* 9AA88 80099E88 24020001 */   addiu     $v0, $zero, 0x1
.L80099E8C:
/* 9AA8C 80099E8C 93A30012 */  lbu        $v1, 0x12($sp)
/* 9AA90 80099E90 30630004 */  andi       $v1, $v1, 0x4
/* 9AA94 80099E94 14600002 */  bnez       $v1, .L80099EA0
/* 9AA98 80099E98 24020004 */   addiu     $v0, $zero, 0x4
/* 9AA9C 80099E9C 02001021 */  addu       $v0, $s0, $zero
.L80099EA0:
/* 9AAA0 80099EA0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9AAA4 80099EA4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9AAA8 80099EA8 8FB20028 */  lw         $s2, 0x28($sp)
/* 9AAAC 80099EAC 8FB10024 */  lw         $s1, 0x24($sp)
/* 9AAB0 80099EB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 9AAB4 80099EB4 03E00008 */  jr         $ra
/* 9AAB8 80099EB8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80099EBC
/* 9AABC 80099EBC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AAC0 80099EC0 3C03803F */  lui        $v1, %hi(D_803F5B2C)
/* 9AAC4 80099EC4 24635B2C */  addiu      $v1, $v1, %lo(D_803F5B2C)
/* 9AAC8 80099EC8 2466FFC4 */  addiu      $a2, $v1, -0x3C
/* 9AACC 80099ECC 00002821 */  addu       $a1, $zero, $zero
/* 9AAD0 80099ED0 24020001 */  addiu      $v0, $zero, 0x1
/* 9AAD4 80099ED4 AC620000 */  sw         $v0, 0x0($v1)
/* 9AAD8 80099ED8 24020001 */  addiu      $v0, $zero, 0x1
/* 9AADC 80099EDC A3A20000 */  sb         $v0, 0x0($sp)
/* 9AAE0 80099EE0 24020003 */  addiu      $v0, $zero, 0x3
/* 9AAE4 80099EE4 A3A20001 */  sb         $v0, 0x1($sp)
/* 9AAE8 80099EE8 240200FF */  addiu      $v0, $zero, 0xFF
/* 9AAEC 80099EEC 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9AAF0 80099EF0 A0201C18 */  sb         $zero, %lo(D_802F1C18)($at)
/* 9AAF4 80099EF4 A3A00002 */  sb         $zero, 0x2($sp)
/* 9AAF8 80099EF8 A3A20003 */  sb         $v0, 0x3($sp)
/* 9AAFC 80099EFC A3A20004 */  sb         $v0, 0x4($sp)
/* 9AB00 80099F00 18800006 */  blez       $a0, .L80099F1C
/* 9AB04 80099F04 A3A20005 */   sb        $v0, 0x5($sp)
.L80099F08:
/* 9AB08 80099F08 A0C00000 */  sb         $zero, 0x0($a2)
/* 9AB0C 80099F0C 24A50001 */  addiu      $a1, $a1, 0x1
/* 9AB10 80099F10 00A4102A */  slt        $v0, $a1, $a0
/* 9AB14 80099F14 1440FFFC */  bnez       $v0, .L80099F08
/* 9AB18 80099F18 24C60001 */   addiu     $a2, $a2, 0x1
.L80099F1C:
/* 9AB1C 80099F1C 8BA20000 */  lwl        $v0, 0x0($sp)
/* 9AB20 80099F20 9BA20003 */  lwr        $v0, 0x3($sp)
/* 9AB24 80099F24 83A30004 */  lb         $v1, 0x4($sp)
/* 9AB28 80099F28 83A40005 */  lb         $a0, 0x5($sp)
/* 9AB2C 80099F2C A8C20000 */  swl        $v0, 0x0($a2)
/* 9AB30 80099F30 B8C20003 */  swr        $v0, 0x3($a2)
/* 9AB34 80099F34 A0C30004 */  sb         $v1, 0x4($a2)
/* 9AB38 80099F38 A0C40005 */  sb         $a0, 0x5($a2)
/* 9AB3C 80099F3C 240200FE */  addiu      $v0, $zero, 0xFE
/* 9AB40 80099F40 A0C20006 */  sb         $v0, 0x6($a2)
/* 9AB44 80099F44 03E00008 */  jr         $ra
/* 9AB48 80099F48 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80099F4C
/* 9AB4C 80099F4C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AB50 80099F50 00A03821 */  addu       $a3, $a1, $zero
/* 9AB54 80099F54 3C06803F */  lui        $a2, %hi(D_803F5AF0)
/* 9AB58 80099F58 24C65AF0 */  addiu      $a2, $a2, %lo(D_803F5AF0)
/* 9AB5C 80099F5C 18800005 */  blez       $a0, .L80099F74
/* 9AB60 80099F60 00001821 */   addu      $v1, $zero, $zero
.L80099F64:
/* 9AB64 80099F64 24630001 */  addiu      $v1, $v1, 0x1
/* 9AB68 80099F68 0064102A */  slt        $v0, $v1, $a0
/* 9AB6C 80099F6C 1440FFFD */  bnez       $v0, .L80099F64
/* 9AB70 80099F70 24C60001 */   addiu     $a2, $a2, 0x1
.L80099F74:
/* 9AB74 80099F74 88C20000 */  lwl        $v0, 0x0($a2)
/* 9AB78 80099F78 98C20003 */  lwr        $v0, 0x3($a2)
/* 9AB7C 80099F7C 80C30004 */  lb         $v1, 0x4($a2)
/* 9AB80 80099F80 80C40005 */  lb         $a0, 0x5($a2)
/* 9AB84 80099F84 ABA20000 */  swl        $v0, 0x0($sp)
/* 9AB88 80099F88 BBA20003 */  swr        $v0, 0x3($sp)
/* 9AB8C 80099F8C A3A30004 */  sb         $v1, 0x4($sp)
/* 9AB90 80099F90 A3A40005 */  sb         $a0, 0x5($sp)
/* 9AB94 80099F94 93A20001 */  lbu        $v0, 0x1($sp)
/* 9AB98 80099F98 304200C0 */  andi       $v0, $v0, 0xC0
/* 9AB9C 80099F9C 00021102 */  srl        $v0, $v0, 4
/* 9ABA0 80099FA0 14400008 */  bnez       $v0, .L80099FC4
/* 9ABA4 80099FA4 A0E20003 */   sb        $v0, 0x3($a3)
/* 9ABA8 80099FA8 93A20004 */  lbu        $v0, 0x4($sp)
/* 9ABAC 80099FAC 93A30003 */  lbu        $v1, 0x3($sp)
/* 9ABB0 80099FB0 00021200 */  sll        $v0, $v0, 8
/* 9ABB4 80099FB4 00621825 */  or         $v1, $v1, $v0
/* 9ABB8 80099FB8 A4E30000 */  sh         $v1, 0x0($a3)
/* 9ABBC 80099FBC 93A20005 */  lbu        $v0, 0x5($sp)
/* 9ABC0 80099FC0 A0E20002 */  sb         $v0, 0x2($a3)
.L80099FC4:
/* 9ABC4 80099FC4 03E00008 */  jr         $ra
/* 9ABC8 80099FC8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9ABCC 80099FCC 00000000 */  nop

glabel func_80099FD0
/* 9ABD0 80099FD0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9ABD4 80099FD4 AFB20040 */  sw         $s2, 0x40($sp)
/* 9ABD8 80099FD8 00809021 */  addu       $s2, $a0, $zero
/* 9ABDC 80099FDC AFB70054 */  sw         $s7, 0x54($sp)
/* 9ABE0 80099FE0 00A0B821 */  addu       $s7, $a1, $zero
/* 9ABE4 80099FE4 AFB30044 */  sw         $s3, 0x44($sp)
/* 9ABE8 80099FE8 00009821 */  addu       $s3, $zero, $zero
/* 9ABEC 80099FEC AFB00038 */  sw         $s0, 0x38($sp)
/* 9ABF0 80099FF0 24100003 */  addiu      $s0, $zero, 0x3
/* 9ABF4 80099FF4 AFBF0058 */  sw         $ra, 0x58($sp)
/* 9ABF8 80099FF8 AFB60050 */  sw         $s6, 0x50($sp)
/* 9ABFC 80099FFC AFB5004C */  sw         $s5, 0x4C($sp)
/* 9AC00 8009A000 AFB40048 */  sw         $s4, 0x48($sp)
/* 9AC04 8009A004 0C0260E1 */  jal        func_80098384
/* 9AC08 8009A008 AFB1003C */   sw        $s1, 0x3C($sp)
/* 9AC0C 8009A00C 3C14803F */  lui        $s4, %hi(D_803F5AF0)
/* 9AC10 8009A010 26945AF0 */  addiu      $s4, $s4, %lo(D_803F5AF0)
/* 9AC14 8009A014 27B10020 */  addiu      $s1, $sp, 0x20
/* 9AC18 8009A018 27B50010 */  addiu      $s5, $sp, 0x10
.L8009A01C:
/* 9AC1C 8009A01C 0C026853 */  jal        func_8009A14C
/* 9AC20 8009A020 00002021 */   addu      $a0, $zero, $zero
/* 9AC24 8009A024 24040001 */  addiu      $a0, $zero, 0x1
/* 9AC28 8009A028 0C025114 */  jal        func_80094450
/* 9AC2C 8009A02C 02802821 */   addu      $a1, $s4, $zero
/* 9AC30 8009A030 02402021 */  addu       $a0, $s2, $zero
/* 9AC34 8009A034 02202821 */  addu       $a1, $s1, $zero
/* 9AC38 8009A038 0C000B3C */  jal        osRecvMesg
/* 9AC3C 8009A03C 24060001 */   addiu     $a2, $zero, 0x1
/* 9AC40 8009A040 00002021 */  addu       $a0, $zero, $zero
/* 9AC44 8009A044 0C025114 */  jal        func_80094450
/* 9AC48 8009A048 02802821 */   addu      $a1, $s4, $zero
/* 9AC4C 8009A04C 02402021 */  addu       $a0, $s2, $zero
/* 9AC50 8009A050 02202821 */  addu       $a1, $s1, $zero
/* 9AC54 8009A054 24060001 */  addiu      $a2, $zero, 0x1
/* 9AC58 8009A058 0C000B3C */  jal        osRecvMesg
/* 9AC5C 8009A05C 0040B021 */   addu      $s6, $v0, $zero
/* 9AC60 8009A060 27A40024 */  addiu      $a0, $sp, 0x24
/* 9AC64 8009A064 0C02687C */  jal        func_8009A1F0
/* 9AC68 8009A068 27A50010 */   addiu     $a1, $sp, 0x10
/* 9AC6C 8009A06C 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AC70 8009A070 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AC74 8009A074 1840000C */  blez       $v0, .L8009A0A8
/* 9AC78 8009A078 00002021 */   addu      $a0, $zero, $zero
/* 9AC7C 8009A07C 00402821 */  addu       $a1, $v0, $zero
/* 9AC80 8009A080 02A01821 */  addu       $v1, $s5, $zero
.L8009A084:
/* 9AC84 8009A084 90620002 */  lbu        $v0, 0x2($v1)
/* 9AC88 8009A088 30420004 */  andi       $v0, $v0, 0x4
/* 9AC8C 8009A08C 54400003 */  bnel       $v0, $zero, .L8009A09C
/* 9AC90 8009A090 24840001 */   addiu     $a0, $a0, 0x1
/* 9AC94 8009A094 0802682A */  j          .L8009A0A8
/* 9AC98 8009A098 2610FFFF */   addiu     $s0, $s0, -0x1
.L8009A09C:
/* 9AC9C 8009A09C 0085102A */  slt        $v0, $a0, $a1
/* 9ACA0 8009A0A0 1440FFF8 */  bnez       $v0, .L8009A084
/* 9ACA4 8009A0A4 24630004 */   addiu     $v1, $v1, 0x4
.L8009A0A8:
/* 9ACA8 8009A0A8 3C03802D */  lui        $v1, %hi(D_802D2A54)
/* 9ACAC 8009A0AC 90632A54 */  lbu        $v1, %lo(D_802D2A54)($v1)
/* 9ACB0 8009A0B0 00831026 */  xor        $v0, $a0, $v1
/* 9ACB4 8009A0B4 0002102B */  sltu       $v0, $zero, $v0
/* 9ACB8 8009A0B8 00021023 */  negu       $v0, $v0
/* 9ACBC 8009A0BC 02028024 */  and        $s0, $s0, $v0
/* 9ACC0 8009A0C0 1E00FFD6 */  bgtz       $s0, .L8009A01C
/* 9ACC4 8009A0C4 00000000 */   nop
/* 9ACC8 8009A0C8 10600011 */  beqz       $v1, .L8009A110
/* 9ACCC 8009A0CC 00002021 */   addu      $a0, $zero, $zero
/* 9ACD0 8009A0D0 24060001 */  addiu      $a2, $zero, 0x1
/* 9ACD4 8009A0D4 00602821 */  addu       $a1, $v1, $zero
/* 9ACD8 8009A0D8 27A30010 */  addiu      $v1, $sp, 0x10
.L8009A0DC:
/* 9ACDC 8009A0DC 90620003 */  lbu        $v0, 0x3($v1)
/* 9ACE0 8009A0E0 54400008 */  bnel       $v0, $zero, .L8009A104
/* 9ACE4 8009A0E4 24840001 */   addiu     $a0, $a0, 0x1
/* 9ACE8 8009A0E8 90620002 */  lbu        $v0, 0x2($v1)
/* 9ACEC 8009A0EC 30420001 */  andi       $v0, $v0, 0x1
/* 9ACF0 8009A0F0 50400004 */  beql       $v0, $zero, .L8009A104
/* 9ACF4 8009A0F4 24840001 */   addiu     $a0, $a0, 0x1
/* 9ACF8 8009A0F8 00861004 */  sllv       $v0, $a2, $a0
/* 9ACFC 8009A0FC 02629825 */  or         $s3, $s3, $v0
/* 9AD00 8009A100 24840001 */  addiu      $a0, $a0, 0x1
.L8009A104:
/* 9AD04 8009A104 0085102A */  slt        $v0, $a0, $a1
/* 9AD08 8009A108 1440FFF4 */  bnez       $v0, .L8009A0DC
/* 9AD0C 8009A10C 24630004 */   addiu     $v1, $v1, 0x4
.L8009A110:
/* 9AD10 8009A110 0C0260FC */  jal        func_800983F0
/* 9AD14 8009A114 00000000 */   nop
/* 9AD18 8009A118 A2F30000 */  sb         $s3, 0x0($s7)
/* 9AD1C 8009A11C 02C01021 */  addu       $v0, $s6, $zero
/* 9AD20 8009A120 8FBF0058 */  lw         $ra, 0x58($sp)
/* 9AD24 8009A124 8FB70054 */  lw         $s7, 0x54($sp)
/* 9AD28 8009A128 8FB60050 */  lw         $s6, 0x50($sp)
/* 9AD2C 8009A12C 8FB5004C */  lw         $s5, 0x4C($sp)
/* 9AD30 8009A130 8FB40048 */  lw         $s4, 0x48($sp)
/* 9AD34 8009A134 8FB30044 */  lw         $s3, 0x44($sp)
/* 9AD38 8009A138 8FB20040 */  lw         $s2, 0x40($sp)
/* 9AD3C 8009A13C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 9AD40 8009A140 8FB00038 */  lw         $s0, 0x38($sp)
/* 9AD44 8009A144 03E00008 */  jr         $ra
/* 9AD48 8009A148 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8009A14C
/* 9AD4C 8009A14C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AD50 8009A150 3C05802D */  lui        $a1, %hi(D_802D2A54)
/* 9AD54 8009A154 90A52A54 */  lbu        $a1, %lo(D_802D2A54)($a1)
/* 9AD58 8009A158 3C07803F */  lui        $a3, %hi(D_803F5AF0)
/* 9AD5C 8009A15C 24E75AF0 */  addiu      $a3, $a3, %lo(D_803F5AF0)
/* 9AD60 8009A160 00003021 */  addu       $a2, $zero, $zero
/* 9AD64 8009A164 24020001 */  addiu      $v0, $zero, 0x1
/* 9AD68 8009A168 240300FF */  addiu      $v1, $zero, 0xFF
/* 9AD6C 8009A16C 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9AD70 8009A170 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9AD74 8009A174 24020001 */  addiu      $v0, $zero, 0x1
/* 9AD78 8009A178 A3A20001 */  sb         $v0, 0x1($sp)
/* 9AD7C 8009A17C 24020003 */  addiu      $v0, $zero, 0x3
/* 9AD80 8009A180 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9AD84 8009A184 A0241C18 */  sb         $a0, %lo(D_802F1C18)($at)
/* 9AD88 8009A188 A3A30000 */  sb         $v1, 0x0($sp)
/* 9AD8C 8009A18C A3A20002 */  sb         $v0, 0x2($sp)
/* 9AD90 8009A190 A3A40003 */  sb         $a0, 0x3($sp)
/* 9AD94 8009A194 A3A30004 */  sb         $v1, 0x4($sp)
/* 9AD98 8009A198 A3A30005 */  sb         $v1, 0x5($sp)
/* 9AD9C 8009A19C A3A30006 */  sb         $v1, 0x6($sp)
/* 9ADA0 8009A1A0 18A0000F */  blez       $a1, .L8009A1E0
/* 9ADA4 8009A1A4 A3A30007 */   sb        $v1, 0x7($sp)
.L8009A1A8:
/* 9ADA8 8009A1A8 8BA20000 */  lwl        $v0, 0x0($sp)
/* 9ADAC 8009A1AC 9BA20003 */  lwr        $v0, 0x3($sp)
/* 9ADB0 8009A1B0 8BA30004 */  lwl        $v1, 0x4($sp)
/* 9ADB4 8009A1B4 9BA30007 */  lwr        $v1, 0x7($sp)
/* 9ADB8 8009A1B8 A8E20000 */  swl        $v0, 0x0($a3)
/* 9ADBC 8009A1BC B8E20003 */  swr        $v0, 0x3($a3)
/* 9ADC0 8009A1C0 A8E30004 */  swl        $v1, 0x4($a3)
/* 9ADC4 8009A1C4 B8E30007 */  swr        $v1, 0x7($a3)
/* 9ADC8 8009A1C8 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9ADCC 8009A1CC 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9ADD0 8009A1D0 24C60001 */  addiu      $a2, $a2, 0x1
/* 9ADD4 8009A1D4 00C2102A */  slt        $v0, $a2, $v0
/* 9ADD8 8009A1D8 1440FFF3 */  bnez       $v0, .L8009A1A8
/* 9ADDC 8009A1DC 24E70008 */   addiu     $a3, $a3, 0x8
.L8009A1E0:
/* 9ADE0 8009A1E0 240200FE */  addiu      $v0, $zero, 0xFE
/* 9ADE4 8009A1E4 A0E20000 */  sb         $v0, 0x0($a3)
/* 9ADE8 8009A1E8 03E00008 */  jr         $ra
/* 9ADEC 8009A1EC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8009A1F0
/* 9ADF0 8009A1F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9ADF4 8009A1F4 00805821 */  addu       $t3, $a0, $zero
/* 9ADF8 8009A1F8 00A04821 */  addu       $t1, $a1, $zero
/* 9ADFC 8009A1FC 00005021 */  addu       $t2, $zero, $zero
/* 9AE00 8009A200 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AE04 8009A204 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AE08 8009A208 3C08803F */  lui        $t0, %hi(D_803F5AF0)
/* 9AE0C 8009A20C 25085AF0 */  addiu      $t0, $t0, %lo(D_803F5AF0)
/* 9AE10 8009A210 18400021 */  blez       $v0, .L8009A298
/* 9AE14 8009A214 00003821 */   addu      $a3, $zero, $zero
/* 9AE18 8009A218 240C0001 */  addiu      $t4, $zero, 0x1
/* 9AE1C 8009A21C 24A60002 */  addiu      $a2, $a1, 0x2
.L8009A220:
/* 9AE20 8009A220 89020000 */  lwl        $v0, 0x0($t0)
/* 9AE24 8009A224 99020003 */  lwr        $v0, 0x3($t0)
/* 9AE28 8009A228 89030004 */  lwl        $v1, 0x4($t0)
/* 9AE2C 8009A22C 99030007 */  lwr        $v1, 0x7($t0)
/* 9AE30 8009A230 ABA20000 */  swl        $v0, 0x0($sp)
/* 9AE34 8009A234 BBA20003 */  swr        $v0, 0x3($sp)
/* 9AE38 8009A238 ABA30004 */  swl        $v1, 0x4($sp)
/* 9AE3C 8009A23C BBA30007 */  swr        $v1, 0x7($sp)
/* 9AE40 8009A240 93A20002 */  lbu        $v0, 0x2($sp)
/* 9AE44 8009A244 304200C0 */  andi       $v0, $v0, 0xC0
/* 9AE48 8009A248 00021102 */  srl        $v0, $v0, 4
/* 9AE4C 8009A24C 1440000A */  bnez       $v0, .L8009A278
/* 9AE50 8009A250 A0C20001 */   sb        $v0, 0x1($a2)
/* 9AE54 8009A254 93A20005 */  lbu        $v0, 0x5($sp)
/* 9AE58 8009A258 93A30004 */  lbu        $v1, 0x4($sp)
/* 9AE5C 8009A25C 00021200 */  sll        $v0, $v0, 8
/* 9AE60 8009A260 00621825 */  or         $v1, $v1, $v0
/* 9AE64 8009A264 A5230000 */  sh         $v1, 0x0($t1)
/* 9AE68 8009A268 93A30006 */  lbu        $v1, 0x6($sp)
/* 9AE6C 8009A26C 00EC1004 */  sllv       $v0, $t4, $a3
/* 9AE70 8009A270 01425025 */  or         $t2, $t2, $v0
/* 9AE74 8009A274 A0C30000 */  sb         $v1, 0x0($a2)
.L8009A278:
/* 9AE78 8009A278 24E70001 */  addiu      $a3, $a3, 0x1
/* 9AE7C 8009A27C 25080008 */  addiu      $t0, $t0, 0x8
/* 9AE80 8009A280 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AE84 8009A284 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AE88 8009A288 24C60004 */  addiu      $a2, $a2, 0x4
/* 9AE8C 8009A28C 00E2102A */  slt        $v0, $a3, $v0
/* 9AE90 8009A290 1440FFE3 */  bnez       $v0, .L8009A220
/* 9AE94 8009A294 25290004 */   addiu     $t1, $t1, 0x4
.L8009A298:
/* 9AE98 8009A298 A16A0000 */  sb         $t2, 0x0($t3)
/* 9AE9C 8009A29C 03E00008 */  jr         $ra
/* 9AEA0 8009A2A0 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9AEA4 8009A2A4 00000000 */  nop
/* 9AEA8 8009A2A8 00000000 */  nop
/* 9AEAC 8009A2AC 00000000 */  nop

glabel func_8009A2B0
/* 9AEB0 8009A2B0 00851026 */  xor        $v0, $a0, $a1
/* 9AEB4 8009A2B4 28C10010 */  slti       $at, $a2, 0x10
/* 9AEB8 8009A2B8 14200034 */  bnez       $at, .L8009A38C
/* 9AEBC 8009A2BC 00000000 */   nop
/* 9AEC0 8009A2C0 30420003 */  andi       $v0, $v0, 0x3
/* 9AEC4 8009A2C4 14400018 */  bnez       $v0, .L8009A328
/* 9AEC8 8009A2C8 0004C023 */   negu      $t8, $a0
/* 9AECC 8009A2CC 33180003 */  andi       $t8, $t8, 0x3
/* 9AED0 8009A2D0 13000007 */  beqz       $t8, .L8009A2F0
/* 9AED4 8009A2D4 00D83023 */   subu      $a2, $a2, $t8
/* 9AED8 8009A2D8 00601021 */  addu       $v0, $v1, $zero
/* 9AEDC 8009A2DC 88820000 */  lwl        $v0, 0x0($a0)
/* 9AEE0 8009A2E0 88A30000 */  lwl        $v1, 0x0($a1)
/* 9AEE4 8009A2E4 00982021 */  addu       $a0, $a0, $t8
/* 9AEE8 8009A2E8 14430033 */  bne        $v0, $v1, .L8009A3B8
/* 9AEEC 8009A2EC 00B82821 */   addu      $a1, $a1, $t8
.L8009A2F0:
/* 9AEF0 8009A2F0 2401FFFC */  addiu      $at, $zero, -0x4
/* 9AEF4 8009A2F4 00C13824 */  and        $a3, $a2, $at
/* 9AEF8 8009A2F8 10E00024 */  beqz       $a3, .L8009A38C
/* 9AEFC 8009A2FC 00C73023 */   subu      $a2, $a2, $a3
/* 9AF00 8009A300 00E43821 */  addu       $a3, $a3, $a0
.L8009A304:
/* 9AF04 8009A304 8C820000 */  lw         $v0, 0x0($a0)
/* 9AF08 8009A308 8CA30000 */  lw         $v1, 0x0($a1)
/* 9AF0C 8009A30C 24840004 */  addiu      $a0, $a0, 0x4
/* 9AF10 8009A310 14430029 */  bne        $v0, $v1, .L8009A3B8
/* 9AF14 8009A314 24A50004 */   addiu     $a1, $a1, 0x4
/* 9AF18 8009A318 1487FFFA */  bne        $a0, $a3, .L8009A304
/* 9AF1C 8009A31C 00000000 */   nop
/* 9AF20 8009A320 1000001A */  b          .L8009A38C
/* 9AF24 8009A324 00000000 */   nop
.L8009A328:
/* 9AF28 8009A328 00053823 */  negu       $a3, $a1
/* 9AF2C 8009A32C 30E70003 */  andi       $a3, $a3, 0x3
/* 9AF30 8009A330 10E00009 */  beqz       $a3, .L8009A358
/* 9AF34 8009A334 00C73023 */   subu      $a2, $a2, $a3
/* 9AF38 8009A338 00E43821 */  addu       $a3, $a3, $a0
.L8009A33C:
/* 9AF3C 8009A33C 90820000 */  lbu        $v0, 0x0($a0)
/* 9AF40 8009A340 90A30000 */  lbu        $v1, 0x0($a1)
/* 9AF44 8009A344 24840001 */  addiu      $a0, $a0, 0x1
/* 9AF48 8009A348 1443001B */  bne        $v0, $v1, .L8009A3B8
/* 9AF4C 8009A34C 24A50001 */   addiu     $a1, $a1, 0x1
/* 9AF50 8009A350 1487FFFA */  bne        $a0, $a3, .L8009A33C
/* 9AF54 8009A354 00000000 */   nop
.L8009A358:
/* 9AF58 8009A358 2401FFFC */  addiu      $at, $zero, -0x4
/* 9AF5C 8009A35C 00C13824 */  and        $a3, $a2, $at
/* 9AF60 8009A360 10E0000A */  beqz       $a3, .L8009A38C
/* 9AF64 8009A364 00C73023 */   subu      $a2, $a2, $a3
/* 9AF68 8009A368 00E43821 */  addu       $a3, $a3, $a0
.L8009A36C:
/* 9AF6C 8009A36C 88820000 */  lwl        $v0, 0x0($a0)
/* 9AF70 8009A370 98820003 */  lwr        $v0, 0x3($a0)
/* 9AF74 8009A374 8CA30000 */  lw         $v1, 0x0($a1)
/* 9AF78 8009A378 24840004 */  addiu      $a0, $a0, 0x4
/* 9AF7C 8009A37C 1443000E */  bne        $v0, $v1, .L8009A3B8
/* 9AF80 8009A380 24A50004 */   addiu     $a1, $a1, 0x4
/* 9AF84 8009A384 1487FFF9 */  bne        $a0, $a3, .L8009A36C
/* 9AF88 8009A388 00000000 */   nop
.L8009A38C:
/* 9AF8C 8009A38C 18C00008 */  blez       $a2, .L8009A3B0
/* 9AF90 8009A390 00C43821 */   addu      $a3, $a2, $a0
.L8009A394:
/* 9AF94 8009A394 90820000 */  lbu        $v0, 0x0($a0)
/* 9AF98 8009A398 90A30000 */  lbu        $v1, 0x0($a1)
/* 9AF9C 8009A39C 24840001 */  addiu      $a0, $a0, 0x1
/* 9AFA0 8009A3A0 14430005 */  bne        $v0, $v1, .L8009A3B8
/* 9AFA4 8009A3A4 24A50001 */   addiu     $a1, $a1, 0x1
/* 9AFA8 8009A3A8 1487FFFA */  bne        $a0, $a3, .L8009A394
/* 9AFAC 8009A3AC 00000000 */   nop
.L8009A3B0:
/* 9AFB0 8009A3B0 03E00008 */  jr         $ra
/* 9AFB4 8009A3B4 00001021 */   addu      $v0, $zero, $zero
.L8009A3B8:
/* 9AFB8 8009A3B8 03E00008 */  jr         $ra
/* 9AFBC 8009A3BC 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8009A3C0
/* 9AFC0 8009A3C0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9AFC4 8009A3C4 AFB10044 */  sw         $s1, 0x44($sp)
/* 9AFC8 8009A3C8 00808821 */  addu       $s1, $a0, $zero
/* 9AFCC 8009A3CC AFB60058 */  sw         $s6, 0x58($sp)
/* 9AFD0 8009A3D0 3C16800D */  lui        $s6, %hi(D_800CB3E0)
/* 9AFD4 8009A3D4 26D6B3E0 */  addiu      $s6, $s6, %lo(D_800CB3E0)
/* 9AFD8 8009A3D8 30A400FF */  andi       $a0, $a1, 0xFF
/* 9AFDC 8009A3DC 24020058 */  addiu      $v0, $zero, 0x58
/* 9AFE0 8009A3E0 AFBF005C */  sw         $ra, 0x5C($sp)
/* 9AFE4 8009A3E4 AFB50054 */  sw         $s5, 0x54($sp)
/* 9AFE8 8009A3E8 AFB40050 */  sw         $s4, 0x50($sp)
/* 9AFEC 8009A3EC AFB3004C */  sw         $s3, 0x4C($sp)
/* 9AFF0 8009A3F0 AFB20048 */  sw         $s2, 0x48($sp)
/* 9AFF4 8009A3F4 14820003 */  bne        $a0, $v0, .L8009A404
/* 9AFF8 8009A3F8 AFB00040 */   sw        $s0, 0x40($sp)
/* 9AFFC 8009A3FC 3C16800D */  lui        $s6, %hi(D_800CB3F4)
/* 9B000 8009A400 26D6B3F4 */  addiu      $s6, $s6, %lo(D_800CB3F4)
.L8009A404:
/* 9B004 8009A404 2402006F */  addiu      $v0, $zero, 0x6F
/* 9B008 8009A408 10820009 */  beq        $a0, $v0, .L8009A430
/* 9B00C 8009A40C 38830078 */   xori      $v1, $a0, 0x78
/* 9B010 8009A410 0003182B */  sltu       $v1, $zero, $v1
/* 9B014 8009A414 38820058 */  xori       $v0, $a0, 0x58
/* 9B018 8009A418 0002102B */  sltu       $v0, $zero, $v0
/* 9B01C 8009A41C 00621824 */  and        $v1, $v1, $v0
/* 9B020 8009A420 10600004 */  beqz       $v1, .L8009A434
/* 9B024 8009A424 24130010 */   addiu     $s3, $zero, 0x10
/* 9B028 8009A428 0802690D */  j          .L8009A434
/* 9B02C 8009A42C 2413000A */   addiu     $s3, $zero, 0xA
.L8009A430:
/* 9B030 8009A430 24130008 */  addiu      $s3, $zero, 0x8
.L8009A434:
/* 9B034 8009A434 8E340000 */  lw         $s4, 0x0($s1)
/* 9B038 8009A438 8E350004 */  lw         $s5, 0x4($s1)
/* 9B03C 8009A43C 30A200FF */  andi       $v0, $a1, 0xFF
/* 9B040 8009A440 38430064 */  xori       $v1, $v0, 0x64
/* 9B044 8009A444 2C630001 */  sltiu      $v1, $v1, 0x1
/* 9B048 8009A448 38420069 */  xori       $v0, $v0, 0x69
/* 9B04C 8009A44C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B050 8009A450 00621825 */  or         $v1, $v1, $v0
/* 9B054 8009A454 10600008 */  beqz       $v1, .L8009A478
/* 9B058 8009A458 24120018 */   addiu     $s2, $zero, 0x18
/* 9B05C 8009A45C 8E220000 */  lw         $v0, 0x0($s1)
/* 9B060 8009A460 04410005 */  bgez       $v0, .L8009A478
/* 9B064 8009A464 00000000 */   nop
/* 9B068 8009A468 0015A823 */  negu       $s5, $s5
/* 9B06C 8009A46C 0014A023 */  negu       $s4, $s4
/* 9B070 8009A470 0015102B */  sltu       $v0, $zero, $s5
/* 9B074 8009A474 0282A023 */  subu       $s4, $s4, $v0
.L8009A478:
/* 9B078 8009A478 56800007 */  bnel       $s4, $zero, .L8009A498
/* 9B07C 8009A47C 2652FFFF */   addiu     $s2, $s2, -0x1
/* 9B080 8009A480 56A00005 */  bnel       $s5, $zero, .L8009A498
/* 9B084 8009A484 2652FFFF */   addiu     $s2, $s2, -0x1
/* 9B088 8009A488 8E220024 */  lw         $v0, 0x24($s1)
/* 9B08C 8009A48C 1040000D */  beqz       $v0, .L8009A4C4
/* 9B090 8009A490 02603821 */   addu      $a3, $s3, $zero
/* 9B094 8009A494 2652FFFF */  addiu      $s2, $s2, -0x1
.L8009A498:
/* 9B098 8009A498 02603821 */  addu       $a3, $s3, $zero
/* 9B09C 8009A49C 00003021 */  addu       $a2, $zero, $zero
/* 9B0A0 8009A4A0 02802021 */  addu       $a0, $s4, $zero
/* 9B0A4 8009A4A4 02A02821 */  addu       $a1, $s5, $zero
/* 9B0A8 8009A4A8 27B00018 */  addiu      $s0, $sp, 0x18
/* 9B0AC 8009A4AC 0C000DA8 */  jal        .L800036A0
/* 9B0B0 8009A4B0 02128021 */   addu      $s0, $s0, $s2
/* 9B0B4 8009A4B4 02C31021 */  addu       $v0, $s6, $v1
/* 9B0B8 8009A4B8 90420000 */  lbu        $v0, 0x0($v0)
/* 9B0BC 8009A4BC A2020000 */  sb         $v0, 0x0($s0)
/* 9B0C0 8009A4C0 02603821 */  addu       $a3, $s3, $zero
.L8009A4C4:
/* 9B0C4 8009A4C4 00003021 */  addu       $a2, $zero, $zero
/* 9B0C8 8009A4C8 02802021 */  addu       $a0, $s4, $zero
/* 9B0CC 8009A4CC 0C000DA0 */  jal        func_80003680
/* 9B0D0 8009A4D0 02A02821 */   addu      $a1, $s5, $zero
/* 9B0D4 8009A4D4 AE220000 */  sw         $v0, 0x0($s1)
/* 9B0D8 8009A4D8 AE230004 */  sw         $v1, 0x4($s1)
/* 9B0DC 8009A4DC 27A20018 */  addiu      $v0, $sp, 0x18
/* 9B0E0 8009A4E0 02428021 */  addu       $s0, $s2, $v0
.L8009A4E4:
/* 9B0E4 8009A4E4 8E220000 */  lw         $v0, 0x0($s1)
/* 9B0E8 8009A4E8 1C400006 */  bgtz       $v0, .L8009A504
/* 9B0EC 8009A4EC 00001821 */   addu      $v1, $zero, $zero
/* 9B0F0 8009A4F0 14400006 */  bnez       $v0, .L8009A50C
/* 9B0F4 8009A4F4 0012102A */   slt       $v0, $zero, $s2
/* 9B0F8 8009A4F8 8E220004 */  lw         $v0, 0x4($s1)
/* 9B0FC 8009A4FC 10400003 */  beqz       $v0, .L8009A50C
/* 9B100 8009A500 0012102A */   slt       $v0, $zero, $s2
.L8009A504:
/* 9B104 8009A504 24030001 */  addiu      $v1, $zero, 0x1
/* 9B108 8009A508 0012102A */  slt        $v0, $zero, $s2
.L8009A50C:
/* 9B10C 8009A50C 00621024 */  and        $v0, $v1, $v0
/* 9B110 8009A510 10400014 */  beqz       $v0, .L8009A564
/* 9B114 8009A514 02601821 */   addu      $v1, $s3, $zero
/* 9B118 8009A518 8E260000 */  lw         $a2, 0x0($s1)
/* 9B11C 8009A51C 8E270004 */  lw         $a3, 0x4($s1)
/* 9B120 8009A520 001317C3 */  sra        $v0, $s3, 31
/* 9B124 8009A524 AFA20010 */  sw         $v0, 0x10($sp)
/* 9B128 8009A528 AFA30014 */  sw         $v1, 0x14($sp)
/* 9B12C 8009A52C 0C026C45 */  jal        func_8009B114
/* 9B130 8009A530 27A40030 */   addiu     $a0, $sp, 0x30
/* 9B134 8009A534 8FA20030 */  lw         $v0, 0x30($sp)
/* 9B138 8009A538 8FA30034 */  lw         $v1, 0x34($sp)
/* 9B13C 8009A53C AE220000 */  sw         $v0, 0x0($s1)
/* 9B140 8009A540 AE230004 */  sw         $v1, 0x4($s1)
/* 9B144 8009A544 8FA20038 */  lw         $v0, 0x38($sp)
/* 9B148 8009A548 8FA3003C */  lw         $v1, 0x3C($sp)
/* 9B14C 8009A54C 02C31021 */  addu       $v0, $s6, $v1
/* 9B150 8009A550 90420000 */  lbu        $v0, 0x0($v0)
/* 9B154 8009A554 2610FFFF */  addiu      $s0, $s0, -0x1
/* 9B158 8009A558 2652FFFF */  addiu      $s2, $s2, -0x1
/* 9B15C 8009A55C 08026939 */  j          .L8009A4E4
/* 9B160 8009A560 A2020000 */   sb        $v0, 0x0($s0)
.L8009A564:
/* 9B164 8009A564 8E240008 */  lw         $a0, 0x8($s1)
/* 9B168 8009A568 27A50018 */  addiu      $a1, $sp, 0x18
/* 9B16C 8009A56C 00B22821 */  addu       $a1, $a1, $s2
/* 9B170 8009A570 24060018 */  addiu      $a2, $zero, 0x18
/* 9B174 8009A574 00D23023 */  subu       $a2, $a2, $s2
/* 9B178 8009A578 0C024933 */  jal        func_800924CC
/* 9B17C 8009A57C AE260014 */   sw        $a2, 0x14($s1)
/* 9B180 8009A580 8E240014 */  lw         $a0, 0x14($s1)
/* 9B184 8009A584 8E230024 */  lw         $v1, 0x24($s1)
/* 9B188 8009A588 0083102A */  slt        $v0, $a0, $v1
/* 9B18C 8009A58C 10400002 */  beqz       $v0, .L8009A598
/* 9B190 8009A590 00641023 */   subu      $v0, $v1, $a0
/* 9B194 8009A594 AE220010 */  sw         $v0, 0x10($s1)
.L8009A598:
/* 9B198 8009A598 8E220024 */  lw         $v0, 0x24($s1)
/* 9B19C 8009A59C 0441000F */  bgez       $v0, .L8009A5DC
/* 9B1A0 8009A5A0 24030010 */   addiu     $v1, $zero, 0x10
/* 9B1A4 8009A5A4 8E220030 */  lw         $v0, 0x30($s1)
/* 9B1A8 8009A5A8 30420014 */  andi       $v0, $v0, 0x14
/* 9B1AC 8009A5AC 1443000B */  bne        $v0, $v1, .L8009A5DC
/* 9B1B0 8009A5B0 00000000 */   nop
/* 9B1B4 8009A5B4 8E220028 */  lw         $v0, 0x28($s1)
/* 9B1B8 8009A5B8 8E23000C */  lw         $v1, 0xC($s1)
/* 9B1BC 8009A5BC 8E250010 */  lw         $a1, 0x10($s1)
/* 9B1C0 8009A5C0 8E240014 */  lw         $a0, 0x14($s1)
/* 9B1C4 8009A5C4 00431023 */  subu       $v0, $v0, $v1
/* 9B1C8 8009A5C8 00451023 */  subu       $v0, $v0, $a1
/* 9B1CC 8009A5CC 00449023 */  subu       $s2, $v0, $a0
/* 9B1D0 8009A5D0 1A400002 */  blez       $s2, .L8009A5DC
/* 9B1D4 8009A5D4 00B21021 */   addu      $v0, $a1, $s2
/* 9B1D8 8009A5D8 AE220010 */  sw         $v0, 0x10($s1)
.L8009A5DC:
/* 9B1DC 8009A5DC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 9B1E0 8009A5E0 8FB60058 */  lw         $s6, 0x58($sp)
/* 9B1E4 8009A5E4 8FB50054 */  lw         $s5, 0x54($sp)
/* 9B1E8 8009A5E8 8FB40050 */  lw         $s4, 0x50($sp)
/* 9B1EC 8009A5EC 8FB3004C */  lw         $s3, 0x4C($sp)
/* 9B1F0 8009A5F0 8FB20048 */  lw         $s2, 0x48($sp)
/* 9B1F4 8009A5F4 8FB10044 */  lw         $s1, 0x44($sp)
/* 9B1F8 8009A5F8 8FB00040 */  lw         $s0, 0x40($sp)
/* 9B1FC 8009A5FC 03E00008 */  jr         $ra
/* 9B200 8009A600 27BD0060 */   addiu     $sp, $sp, 0x60
/* 9B204 8009A604 00000000 */  nop
/* 9B208 8009A608 00000000 */  nop
/* 9B20C 8009A60C 00000000 */  nop

glabel func_8009A610
/* 9B210 8009A610 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9B214 8009A614 AFB30054 */  sw         $s3, 0x54($sp)
/* 9B218 8009A618 00809821 */  addu       $s3, $a0, $zero
/* 9B21C 8009A61C AFB1004C */  sw         $s1, 0x4C($sp)
/* 9B220 8009A620 27B10018 */  addiu      $s1, $sp, 0x18
/* 9B224 8009A624 AFBF0060 */  sw         $ra, 0x60($sp)
/* 9B228 8009A628 AFB5005C */  sw         $s5, 0x5C($sp)
/* 9B22C 8009A62C AFB40058 */  sw         $s4, 0x58($sp)
/* 9B230 8009A630 AFB20050 */  sw         $s2, 0x50($sp)
/* 9B234 8009A634 AFB00048 */  sw         $s0, 0x48($sp)
/* 9B238 8009A638 F7B80078 */  sdc1       $f24, 0x78($sp)
/* 9B23C 8009A63C F7B60070 */  sdc1       $f22, 0x70($sp)
/* 9B240 8009A640 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 9B244 8009A644 8E620024 */  lw         $v0, 0x24($s3)
/* 9B248 8009A648 D6740000 */  ldc1       $f20, 0x0($s3)
/* 9B24C 8009A64C 04410003 */  bgez       $v0, .L8009A65C
/* 9B250 8009A650 00A0A821 */   addu      $s5, $a1, $zero
/* 9B254 8009A654 080269A1 */  j          .L8009A684
/* 9B258 8009A658 24020006 */   addiu     $v0, $zero, 0x6
.L8009A65C:
/* 9B25C 8009A65C 1440000B */  bnez       $v0, .L8009A68C
/* 9B260 8009A660 27A40038 */   addiu     $a0, $sp, 0x38
/* 9B264 8009A664 32A200FF */  andi       $v0, $s5, 0xFF
/* 9B268 8009A668 38430067 */  xori       $v1, $v0, 0x67
/* 9B26C 8009A66C 2C630001 */  sltiu      $v1, $v1, 0x1
/* 9B270 8009A670 38420047 */  xori       $v0, $v0, 0x47
/* 9B274 8009A674 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B278 8009A678 00621825 */  or         $v1, $v1, $v0
/* 9B27C 8009A67C 10600003 */  beqz       $v1, .L8009A68C
/* 9B280 8009A680 24020001 */   addiu     $v0, $zero, 0x1
.L8009A684:
/* 9B284 8009A684 AE620024 */  sw         $v0, 0x24($s3)
/* 9B288 8009A688 27A40038 */  addiu      $a0, $sp, 0x38
.L8009A68C:
/* 9B28C 8009A68C 0C026A94 */  jal        func_8009AA50
/* 9B290 8009A690 02602821 */   addu      $a1, $s3, $zero
/* 9B294 8009A694 00021400 */  sll        $v0, $v0, 16
/* 9B298 8009A698 00021C03 */  sra        $v1, $v0, 16
/* 9B29C 8009A69C 18600010 */  blez       $v1, .L8009A6E0
/* 9B2A0 8009A6A0 24020002 */   addiu     $v0, $zero, 0x2
/* 9B2A4 8009A6A4 3C06800D */  lui        $a2, %hi(D_800D700C)
/* 9B2A8 8009A6A8 24C6700C */  addiu      $a2, $a2, %lo(D_800D700C)
/* 9B2AC 8009A6AC 8E670008 */  lw         $a3, 0x8($s3)
/* 9B2B0 8009A6B0 14620003 */  bne        $v1, $v0, .L8009A6C0
/* 9B2B4 8009A6B4 24020003 */   addiu     $v0, $zero, 0x3
/* 9B2B8 8009A6B8 3C06800D */  lui        $a2, %hi(D_800D7008)
/* 9B2BC 8009A6BC 24C67008 */  addiu      $a2, $a2, %lo(D_800D7008)
.L8009A6C0:
/* 9B2C0 8009A6C0 AE620014 */  sw         $v0, 0x14($s3)
/* 9B2C4 8009A6C4 80C20000 */  lb         $v0, 0x0($a2)
/* 9B2C8 8009A6C8 80C30001 */  lb         $v1, 0x1($a2)
/* 9B2CC 8009A6CC 80C40002 */  lb         $a0, 0x2($a2)
/* 9B2D0 8009A6D0 A0E20000 */  sb         $v0, 0x0($a3)
/* 9B2D4 8009A6D4 A0E30001 */  sb         $v1, 0x1($a3)
/* 9B2D8 8009A6D8 08026A88 */  j          .L8009AA20
/* 9B2DC 8009A6DC A0E40002 */   sb        $a0, 0x2($a3)
.L8009A6E0:
/* 9B2E0 8009A6E0 14600003 */  bnez       $v1, .L8009A6F0
/* 9B2E4 8009A6E4 00003821 */   addu      $a3, $zero, $zero
/* 9B2E8 8009A6E8 08026A80 */  j          .L8009AA00
/* 9B2EC 8009A6EC A7A00038 */   sh        $zero, 0x38($sp)
.L8009A6F0:
/* 9B2F0 8009A6F0 44800000 */  mtc1       $zero, $f0
/* 9B2F4 8009A6F4 44800800 */  mtc1       $zero, $f1
/* 9B2F8 8009A6F8 00000000 */  nop
/* 9B2FC 8009A6FC 4620A03C */  c.lt.d     $f20, $f0
/* 9B300 8009A700 00000000 */  nop
/* 9B304 8009A704 00000000 */  nop
/* 9B308 8009A708 45030001 */  bc1tl      .L8009A710
/* 9B30C 8009A70C 4620A507 */   neg.d     $f20, $f20
.L8009A710:
/* 9B310 8009A710 87A30038 */  lh         $v1, 0x38($sp)
/* 9B314 8009A714 24027597 */  addiu      $v0, $zero, 0x7597
/* 9B318 8009A718 00620018 */  mult       $v1, $v0
/* 9B31C 8009A71C 00001812 */  mflo       $v1
/* 9B320 8009A720 3C0214F8 */  lui        $v0, (0x14F8B589 >> 16)
/* 9B324 8009A724 3442B589 */  ori        $v0, $v0, (0x14F8B589 & 0xFFFF)
/* 9B328 8009A728 00620018 */  mult       $v1, $v0
/* 9B32C 8009A72C 00031FC3 */  sra        $v1, $v1, 31
/* 9B330 8009A730 00004010 */  mfhi       $t0
/* 9B334 8009A734 00081343 */  sra        $v0, $t0, 13
/* 9B338 8009A738 00431023 */  subu       $v0, $v0, $v1
/* 9B33C 8009A73C 2443FFFC */  addiu      $v1, $v0, -0x4
/* 9B340 8009A740 00031400 */  sll        $v0, $v1, 16
/* 9B344 8009A744 00021403 */  sra        $v0, $v0, 16
/* 9B348 8009A748 04410013 */  bgez       $v0, .L8009A798
/* 9B34C 8009A74C A7A30038 */   sh        $v1, 0x38($sp)
/* 9B350 8009A750 00021023 */  negu       $v0, $v0
/* 9B354 8009A754 24420003 */  addiu      $v0, $v0, 0x3
/* 9B358 8009A758 2403FFFC */  addiu      $v1, $zero, -0x4
/* 9B35C 8009A75C 00431824 */  and        $v1, $v0, $v1
/* 9B360 8009A760 00031023 */  negu       $v0, $v1
/* 9B364 8009A764 1860001F */  blez       $v1, .L8009A7E4
/* 9B368 8009A768 A7A20038 */   sh        $v0, 0x38($sp)
/* 9B36C 8009A76C 3C04800D */  lui        $a0, %hi(D_800D6FC0)
/* 9B370 8009A770 24846FC0 */  addiu      $a0, $a0, %lo(D_800D6FC0)
.L8009A774:
/* 9B374 8009A774 30620001 */  andi       $v0, $v1, 0x1
/* 9B378 8009A778 10400003 */  beqz       $v0, .L8009A788
/* 9B37C 8009A77C 00031843 */   sra       $v1, $v1, 1
/* 9B380 8009A780 D4800000 */  ldc1       $f0, 0x0($a0)
/* 9B384 8009A784 4620A502 */  mul.d      $f20, $f20, $f0
.L8009A788:
/* 9B388 8009A788 1C60FFFA */  bgtz       $v1, .L8009A774
/* 9B38C 8009A78C 24840008 */   addiu     $a0, $a0, 0x8
/* 9B390 8009A790 080269F9 */  j          .L8009A7E4
/* 9B394 8009A794 00000000 */   nop
.L8009A798:
/* 9B398 8009A798 18400012 */  blez       $v0, .L8009A7E4
/* 9B39C 8009A79C 2402FFFC */   addiu     $v0, $zero, -0x4
/* 9B3A0 8009A7A0 3C01800D */  lui        $at, %hi(D_800D7010)
/* 9B3A4 8009A7A4 D4227010 */  ldc1       $f2, %lo(D_800D7010)($at)
/* 9B3A8 8009A7A8 00621024 */  and        $v0, $v1, $v0
/* 9B3AC 8009A7AC 00021C00 */  sll        $v1, $v0, 16
/* 9B3B0 8009A7B0 00031C03 */  sra        $v1, $v1, 16
/* 9B3B4 8009A7B4 1860000A */  blez       $v1, .L8009A7E0
/* 9B3B8 8009A7B8 A7A20038 */   sh        $v0, 0x38($sp)
/* 9B3BC 8009A7BC 3C04800D */  lui        $a0, %hi(D_800D6FC0)
/* 9B3C0 8009A7C0 24846FC0 */  addiu      $a0, $a0, %lo(D_800D6FC0)
.L8009A7C4:
/* 9B3C4 8009A7C4 30620001 */  andi       $v0, $v1, 0x1
/* 9B3C8 8009A7C8 10400003 */  beqz       $v0, .L8009A7D8
/* 9B3CC 8009A7CC 00031843 */   sra       $v1, $v1, 1
/* 9B3D0 8009A7D0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 9B3D4 8009A7D4 46201082 */  mul.d      $f2, $f2, $f0
.L8009A7D8:
/* 9B3D8 8009A7D8 1C60FFFA */  bgtz       $v1, .L8009A7C4
/* 9B3DC 8009A7DC 24840008 */   addiu     $a0, $a0, 0x8
.L8009A7E0:
/* 9B3E0 8009A7E0 4622A503 */  div.d      $f20, $f20, $f2
.L8009A7E4:
/* 9B3E4 8009A7E4 8E640024 */  lw         $a0, 0x24($s3)
/* 9B3E8 8009A7E8 32A300FF */  andi       $v1, $s5, 0xFF
/* 9B3EC 8009A7EC 24020066 */  addiu      $v0, $zero, 0x66
/* 9B3F0 8009A7F0 14620004 */  bne        $v1, $v0, .L8009A804
/* 9B3F4 8009A7F4 24920006 */   addiu     $s2, $a0, 0x6
/* 9B3F8 8009A7F8 87A30038 */  lh         $v1, 0x38($sp)
/* 9B3FC 8009A7FC 2482000A */  addiu      $v0, $a0, 0xA
/* 9B400 8009A800 00439021 */  addu       $s2, $v0, $v1
.L8009A804:
/* 9B404 8009A804 2A420014 */  slti       $v0, $s2, 0x14
/* 9B408 8009A808 50400001 */  beql       $v0, $zero, .L8009A810
/* 9B40C 8009A80C 24120013 */   addiu     $s2, $zero, 0x13
.L8009A810:
/* 9B410 8009A810 24020030 */  addiu      $v0, $zero, 0x30
/* 9B414 8009A814 A2220000 */  sb         $v0, 0x0($s1)
/* 9B418 8009A818 26310001 */  addiu      $s1, $s1, 0x1
/* 9B41C 8009A81C 4480C000 */  mtc1       $zero, $f24
/* 9B420 8009A820 4480C800 */  mtc1       $zero, $f25
/* 9B424 8009A824 3C01800D */  lui        $at, %hi(D_800D7018)
/* 9B428 8009A828 D4367018 */  ldc1       $f22, %lo(D_800D7018)($at)
/* 9B42C 8009A82C 24140030 */  addiu      $s4, $zero, 0x30
.L8009A830:
/* 9B430 8009A830 4634C03C */  c.lt.d     $f24, $f20
/* 9B434 8009A834 24030001 */  addiu      $v1, $zero, 0x1
/* 9B438 8009A838 00000000 */  nop
/* 9B43C 8009A83C 45010002 */  bc1t       .L8009A848
/* 9B440 8009A840 0012102A */   slt       $v0, $zero, $s2
/* 9B444 8009A844 00001821 */  addu       $v1, $zero, $zero
.L8009A848:
/* 9B448 8009A848 00431024 */  and        $v0, $v0, $v1
/* 9B44C 8009A84C 10400021 */  beqz       $v0, .L8009A8D4
/* 9B450 8009A850 2652FFF8 */   addiu     $s2, $s2, -0x8
/* 9B454 8009A854 4620A00D */  trunc.w.d  $f0, $f20
/* 9B458 8009A858 44050000 */  mfc1       $a1, $f0
/* 9B45C 8009A85C 00000000 */  nop
/* 9B460 8009A860 1A400006 */  blez       $s2, .L8009A87C
/* 9B464 8009A864 26310008 */   addiu     $s1, $s1, 0x8
/* 9B468 8009A868 44850000 */  mtc1       $a1, $f0
/* 9B46C 8009A86C 00000000 */  nop
/* 9B470 8009A870 46800021 */  cvt.d.w    $f0, $f0
/* 9B474 8009A874 4620A001 */  sub.d      $f0, $f20, $f0
/* 9B478 8009A878 46360502 */  mul.d      $f20, $f0, $f22
.L8009A87C:
/* 9B47C 8009A87C 18A00010 */  blez       $a1, .L8009A8C0
/* 9B480 8009A880 24100008 */   addiu     $s0, $zero, 0x8
/* 9B484 8009A884 2610FFFF */  addiu      $s0, $s0, -0x1
.L8009A888:
/* 9B488 8009A888 0600000D */  bltz       $s0, .L8009A8C0
/* 9B48C 8009A88C 27A40040 */   addiu     $a0, $sp, 0x40
/* 9B490 8009A890 0C026C24 */  jal        func_8009B090
/* 9B494 8009A894 2406000A */   addiu     $a2, $zero, 0xA
/* 9B498 8009A898 8FA20044 */  lw         $v0, 0x44($sp)
/* 9B49C 8009A89C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 9B4A0 8009A8A0 24420030 */  addiu      $v0, $v0, 0x30
/* 9B4A4 8009A8A4 A2220000 */  sb         $v0, 0x0($s1)
/* 9B4A8 8009A8A8 8FA50040 */  lw         $a1, 0x40($sp)
/* 9B4AC 8009A8AC 1CA0FFF6 */  bgtz       $a1, .L8009A888
/* 9B4B0 8009A8B0 2610FFFF */   addiu     $s0, $s0, -0x1
/* 9B4B4 8009A8B4 08026A31 */  j          .L8009A8C4
/* 9B4B8 8009A8B8 00000000 */   nop
.L8009A8BC:
/* 9B4BC 8009A8BC A2340000 */  sb         $s4, 0x0($s1)
.L8009A8C0:
/* 9B4C0 8009A8C0 2610FFFF */  addiu      $s0, $s0, -0x1
.L8009A8C4:
/* 9B4C4 8009A8C4 0603FFFD */  bgezl      $s0, .L8009A8BC
/* 9B4C8 8009A8C8 2631FFFF */   addiu     $s1, $s1, -0x1
/* 9B4CC 8009A8CC 08026A0C */  j          .L8009A830
/* 9B4D0 8009A8D0 26310008 */   addiu     $s1, $s1, 0x8
.L8009A8D4:
/* 9B4D4 8009A8D4 2623FFFF */  addiu      $v1, $s1, -0x1
/* 9B4D8 8009A8D8 27A20018 */  addiu      $v0, $sp, 0x18
/* 9B4DC 8009A8DC 00629023 */  subu       $s2, $v1, $v0
/* 9B4E0 8009A8E0 97A20038 */  lhu        $v0, 0x38($sp)
/* 9B4E4 8009A8E4 93A30019 */  lbu        $v1, 0x19($sp)
/* 9B4E8 8009A8E8 24420007 */  addiu      $v0, $v0, 0x7
/* 9B4EC 8009A8EC A7A20038 */  sh         $v0, 0x38($sp)
/* 9B4F0 8009A8F0 24020030 */  addiu      $v0, $zero, 0x30
/* 9B4F4 8009A8F4 14620009 */  bne        $v1, $v0, .L8009A91C
/* 9B4F8 8009A8F8 27B10019 */   addiu     $s1, $sp, 0x19
/* 9B4FC 8009A8FC 24030030 */  addiu      $v1, $zero, 0x30
.L8009A900:
/* 9B500 8009A900 97A20038 */  lhu        $v0, 0x38($sp)
/* 9B504 8009A904 26310001 */  addiu      $s1, $s1, 0x1
/* 9B508 8009A908 2442FFFF */  addiu      $v0, $v0, -0x1
/* 9B50C 8009A90C A7A20038 */  sh         $v0, 0x38($sp)
/* 9B510 8009A910 92220000 */  lbu        $v0, 0x0($s1)
/* 9B514 8009A914 1043FFFA */  beq        $v0, $v1, .L8009A900
/* 9B518 8009A918 2652FFFF */   addiu     $s2, $s2, -0x1
.L8009A91C:
/* 9B51C 8009A91C 8E650024 */  lw         $a1, 0x24($s3)
/* 9B520 8009A920 32A400FF */  andi       $a0, $s5, 0xFF
/* 9B524 8009A924 24020066 */  addiu      $v0, $zero, 0x66
/* 9B528 8009A928 14820005 */  bne        $a0, $v0, .L8009A940
/* 9B52C 8009A92C 38830065 */   xori      $v1, $a0, 0x65
/* 9B530 8009A930 87A30038 */  lh         $v1, 0x38($sp)
/* 9B534 8009A934 24A20001 */  addiu      $v0, $a1, 0x1
/* 9B538 8009A938 08026A55 */  j          .L8009A954
/* 9B53C 8009A93C 00433821 */   addu      $a3, $v0, $v1
.L8009A940:
/* 9B540 8009A940 2C630001 */  sltiu      $v1, $v1, 0x1
/* 9B544 8009A944 38820045 */  xori       $v0, $a0, 0x45
/* 9B548 8009A948 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B54C 8009A94C 00621825 */  or         $v1, $v1, $v0
/* 9B550 8009A950 00A33821 */  addu       $a3, $a1, $v1
.L8009A954:
/* 9B554 8009A954 00071400 */  sll        $v0, $a3, 16
/* 9B558 8009A958 00021403 */  sra        $v0, $v0, 16
/* 9B55C 8009A95C 0242102A */  slt        $v0, $s2, $v0
/* 9B560 8009A960 54400001 */  bnel       $v0, $zero, .L8009A968
/* 9B564 8009A964 02403821 */   addu      $a3, $s2, $zero
.L8009A968:
/* 9B568 8009A968 00071400 */  sll        $v0, $a3, 16
/* 9B56C 8009A96C 00022403 */  sra        $a0, $v0, 16
/* 9B570 8009A970 18800023 */  blez       $a0, .L8009AA00
/* 9B574 8009A974 0092102A */   slt       $v0, $a0, $s2
/* 9B578 8009A978 10400008 */  beqz       $v0, .L8009A99C
/* 9B57C 8009A97C 24030030 */   addiu     $v1, $zero, 0x30
/* 9B580 8009A980 02241021 */  addu       $v0, $s1, $a0
/* 9B584 8009A984 90420000 */  lbu        $v0, 0x0($v0)
/* 9B588 8009A988 2C420035 */  sltiu      $v0, $v0, 0x35
/* 9B58C 8009A98C 38420001 */  xori       $v0, $v0, 0x1
/* 9B590 8009A990 00021023 */  negu       $v0, $v0
/* 9B594 8009A994 30420039 */  andi       $v0, $v0, 0x39
/* 9B598 8009A998 34430030 */  ori        $v1, $v0, 0x30
.L8009A99C:
/* 9B59C 8009A99C 2485FFFF */  addiu      $a1, $a0, -0x1
/* 9B5A0 8009A9A0 02252021 */  addu       $a0, $s1, $a1
/* 9B5A4 8009A9A4 90820000 */  lbu        $v0, 0x0($a0)
/* 9B5A8 8009A9A8 306600FF */  andi       $a2, $v1, 0xFF
/* 9B5AC 8009A9AC 54460007 */  bnel       $v0, $a2, .L8009A9CC
/* 9B5B0 8009A9B0 306300FF */   andi      $v1, $v1, 0xFF
.L8009A9B4:
/* 9B5B4 8009A9B4 2484FFFF */  addiu      $a0, $a0, -0x1
/* 9B5B8 8009A9B8 90820000 */  lbu        $v0, 0x0($a0)
/* 9B5BC 8009A9BC 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 9B5C0 8009A9C0 1046FFFC */  beq        $v0, $a2, .L8009A9B4
/* 9B5C4 8009A9C4 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 9B5C8 8009A9C8 306300FF */  andi       $v1, $v1, 0xFF
.L8009A9CC:
/* 9B5CC 8009A9CC 24020039 */  addiu      $v0, $zero, 0x39
/* 9B5D0 8009A9D0 14620004 */  bne        $v1, $v0, .L8009A9E4
/* 9B5D4 8009A9D4 02251821 */   addu      $v1, $s1, $a1
/* 9B5D8 8009A9D8 90620000 */  lbu        $v0, 0x0($v1)
/* 9B5DC 8009A9DC 24420001 */  addiu      $v0, $v0, 0x1
/* 9B5E0 8009A9E0 A0620000 */  sb         $v0, 0x0($v1)
.L8009A9E4:
/* 9B5E4 8009A9E4 04A10007 */  bgez       $a1, .L8009AA04
/* 9B5E8 8009A9E8 02602021 */   addu      $a0, $s3, $zero
/* 9B5EC 8009A9EC 97A20038 */  lhu        $v0, 0x38($sp)
/* 9B5F0 8009A9F0 2631FFFF */  addiu      $s1, $s1, -0x1
/* 9B5F4 8009A9F4 24E70001 */  addiu      $a3, $a3, 0x1
/* 9B5F8 8009A9F8 24420001 */  addiu      $v0, $v0, 0x1
/* 9B5FC 8009A9FC A7A20038 */  sh         $v0, 0x38($sp)
.L8009AA00:
/* 9B600 8009AA00 02602021 */  addu       $a0, $s3, $zero
.L8009AA04:
/* 9B604 8009AA04 87A20038 */  lh         $v0, 0x38($sp)
/* 9B608 8009AA08 32A500FF */  andi       $a1, $s5, 0xFF
/* 9B60C 8009AA0C 02203021 */  addu       $a2, $s1, $zero
/* 9B610 8009AA10 00073C00 */  sll        $a3, $a3, 16
/* 9B614 8009AA14 00073C03 */  sra        $a3, $a3, 16
/* 9B618 8009AA18 0C026ABA */  jal        func_8009AAE8
/* 9B61C 8009AA1C AFA20010 */   sw        $v0, 0x10($sp)
.L8009AA20:
/* 9B620 8009AA20 8FBF0060 */  lw         $ra, 0x60($sp)
/* 9B624 8009AA24 8FB5005C */  lw         $s5, 0x5C($sp)
/* 9B628 8009AA28 8FB40058 */  lw         $s4, 0x58($sp)
/* 9B62C 8009AA2C 8FB30054 */  lw         $s3, 0x54($sp)
/* 9B630 8009AA30 8FB20050 */  lw         $s2, 0x50($sp)
/* 9B634 8009AA34 8FB1004C */  lw         $s1, 0x4C($sp)
/* 9B638 8009AA38 8FB00048 */  lw         $s0, 0x48($sp)
/* 9B63C 8009AA3C D7B80078 */  ldc1       $f24, 0x78($sp)
/* 9B640 8009AA40 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 9B644 8009AA44 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 9B648 8009AA48 03E00008 */  jr         $ra
/* 9B64C 8009AA4C 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8009AA50
/* 9B650 8009AA50 94A30000 */  lhu        $v1, 0x0($a1)
/* 9B654 8009AA54 30627FF0 */  andi       $v0, $v1, 0x7FF0
/* 9B658 8009AA58 00023902 */  srl        $a3, $v0, 4
/* 9B65C 8009AA5C 00E03021 */  addu       $a2, $a3, $zero
/* 9B660 8009AA60 240207FF */  addiu      $v0, $zero, 0x7FF
/* 9B664 8009AA64 14C20011 */  bne        $a2, $v0, .L8009AAAC
/* 9B668 8009AA68 00A04021 */   addu      $t0, $a1, $zero
/* 9B66C 8009AA6C A4800000 */  sh         $zero, 0x0($a0)
/* 9B670 8009AA70 94A20000 */  lhu        $v0, 0x0($a1)
/* 9B674 8009AA74 3042000F */  andi       $v0, $v0, 0xF
/* 9B678 8009AA78 14400019 */  bnez       $v0, .L8009AAE0
/* 9B67C 8009AA7C 24020002 */   addiu     $v0, $zero, 0x2
/* 9B680 8009AA80 94A20002 */  lhu        $v0, 0x2($a1)
/* 9B684 8009AA84 14400016 */  bnez       $v0, .L8009AAE0
/* 9B688 8009AA88 24020002 */   addiu     $v0, $zero, 0x2
/* 9B68C 8009AA8C 94A20004 */  lhu        $v0, 0x4($a1)
/* 9B690 8009AA90 14400013 */  bnez       $v0, .L8009AAE0
/* 9B694 8009AA94 24020002 */   addiu     $v0, $zero, 0x2
/* 9B698 8009AA98 94A20006 */  lhu        $v0, 0x6($a1)
/* 9B69C 8009AA9C 14400010 */  bnez       $v0, .L8009AAE0
/* 9B6A0 8009AAA0 24020002 */   addiu     $v0, $zero, 0x2
/* 9B6A4 8009AAA4 08026AB8 */  j          .L8009AAE0
/* 9B6A8 8009AAA8 24020001 */   addiu     $v0, $zero, 0x1
.L8009AAAC:
/* 9B6AC 8009AAAC 18C00007 */  blez       $a2, .L8009AACC
/* 9B6B0 8009AAB0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 9B6B4 8009AAB4 3063800F */  andi       $v1, $v1, 0x800F
/* 9B6B8 8009AAB8 34633FF0 */  ori        $v1, $v1, 0x3FF0
/* 9B6BC 8009AABC A5030000 */  sh         $v1, 0x0($t0)
/* 9B6C0 8009AAC0 24E3FC02 */  addiu      $v1, $a3, -0x3FE
/* 9B6C4 8009AAC4 08026AB8 */  j          .L8009AAE0
/* 9B6C8 8009AAC8 A4830000 */   sh        $v1, 0x0($a0)
.L8009AACC:
/* 9B6CC 8009AACC 04C00003 */  bltz       $a2, .L8009AADC
/* 9B6D0 8009AAD0 00001021 */   addu      $v0, $zero, $zero
/* 9B6D4 8009AAD4 08026AB8 */  j          .L8009AAE0
/* 9B6D8 8009AAD8 A4800000 */   sh        $zero, 0x0($a0)
.L8009AADC:
/* 9B6DC 8009AADC 24020002 */  addiu      $v0, $zero, 0x2
.L8009AAE0:
/* 9B6E0 8009AAE0 03E00008 */  jr         $ra
/* 9B6E4 8009AAE4 00000000 */   nop

glabel func_8009AAE8
/* 9B6E8 8009AAE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9B6EC 8009AAEC AFB3001C */  sw         $s3, 0x1C($sp)
/* 9B6F0 8009AAF0 00A09821 */  addu       $s3, $a1, $zero
/* 9B6F4 8009AAF4 8FA50040 */  lw         $a1, 0x40($sp)
/* 9B6F8 8009AAF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9B6FC 8009AAFC 00808821 */  addu       $s1, $a0, $zero
/* 9B700 8009AB00 AFB20018 */  sw         $s2, 0x18($sp)
/* 9B704 8009AB04 00C09021 */  addu       $s2, $a2, $zero
/* 9B708 8009AB08 AFB50024 */  sw         $s5, 0x24($sp)
/* 9B70C 8009AB0C 00E0A821 */  addu       $s5, $a3, $zero
/* 9B710 8009AB10 00073C00 */  sll        $a3, $a3, 16
/* 9B714 8009AB14 AFBF0028 */  sw         $ra, 0x28($sp)
/* 9B718 8009AB18 AFB40020 */  sw         $s4, 0x20($sp)
/* 9B71C 8009AB1C AFB00010 */  sw         $s0, 0x10($sp)
/* 9B720 8009AB20 1CE00004 */  bgtz       $a3, .L8009AB34
/* 9B724 8009AB24 00A0A021 */   addu      $s4, $a1, $zero
/* 9B728 8009AB28 24150001 */  addiu      $s5, $zero, 0x1
/* 9B72C 8009AB2C 3C12800D */  lui        $s2, %hi(D_800D7020)
/* 9B730 8009AB30 26527020 */  addiu      $s2, $s2, %lo(D_800D7020)
.L8009AB34:
/* 9B734 8009AB34 326400FF */  andi       $a0, $s3, 0xFF
/* 9B738 8009AB38 24060066 */  addiu      $a2, $zero, 0x66
/* 9B73C 8009AB3C 1086000F */  beq        $a0, $a2, .L8009AB7C
/* 9B740 8009AB40 38830067 */   xori      $v1, $a0, 0x67
/* 9B744 8009AB44 2C630001 */  sltiu      $v1, $v1, 0x1
/* 9B748 8009AB48 38820047 */  xori       $v0, $a0, 0x47
/* 9B74C 8009AB4C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B750 8009AB50 00621825 */  or         $v1, $v1, $v0
/* 9B754 8009AB54 106000B3 */  beqz       $v1, .L8009AE24
/* 9B758 8009AB58 00051400 */   sll       $v0, $a1, 16
/* 9B75C 8009AB5C 00021C03 */  sra        $v1, $v0, 16
/* 9B760 8009AB60 2862FFFC */  slti       $v0, $v1, -0x4
/* 9B764 8009AB64 1440009B */  bnez       $v0, .L8009ADD4
/* 9B768 8009AB68 326200FF */   andi      $v0, $s3, 0xFF
/* 9B76C 8009AB6C 8E220024 */  lw         $v0, 0x24($s1)
/* 9B770 8009AB70 0062102A */  slt        $v0, $v1, $v0
/* 9B774 8009AB74 10400097 */  beqz       $v0, .L8009ADD4
/* 9B778 8009AB78 326200FF */   andi      $v0, $s3, 0xFF
.L8009AB7C:
/* 9B77C 8009AB7C 10860011 */  beq        $a0, $a2, .L8009ABC4
/* 9B780 8009AB80 24B40001 */   addiu     $s4, $a1, 0x1
/* 9B784 8009AB84 8E220030 */  lw         $v0, 0x30($s1)
/* 9B788 8009AB88 30420008 */  andi       $v0, $v0, 0x8
/* 9B78C 8009AB8C 14400006 */  bnez       $v0, .L8009ABA8
/* 9B790 8009AB90 00151C00 */   sll       $v1, $s5, 16
/* 9B794 8009AB94 8E220024 */  lw         $v0, 0x24($s1)
/* 9B798 8009AB98 00031C03 */  sra        $v1, $v1, 16
/* 9B79C 8009AB9C 0062102A */  slt        $v0, $v1, $v0
/* 9B7A0 8009ABA0 54400001 */  bnel       $v0, $zero, .L8009ABA8
/* 9B7A4 8009ABA4 AE230024 */   sw        $v1, 0x24($s1)
.L8009ABA8:
/* 9B7A8 8009ABA8 8E230024 */  lw         $v1, 0x24($s1)
/* 9B7AC 8009ABAC 00141400 */  sll        $v0, $s4, 16
/* 9B7B0 8009ABB0 00021403 */  sra        $v0, $v0, 16
/* 9B7B4 8009ABB4 00621823 */  subu       $v1, $v1, $v0
/* 9B7B8 8009ABB8 04610002 */  bgez       $v1, .L8009ABC4
/* 9B7BC 8009ABBC AE230024 */   sw        $v1, 0x24($s1)
/* 9B7C0 8009ABC0 AE200024 */  sw         $zero, 0x24($s1)
.L8009ABC4:
/* 9B7C4 8009ABC4 00141400 */  sll        $v0, $s4, 16
/* 9B7C8 8009ABC8 00029C03 */  sra        $s3, $v0, 16
/* 9B7CC 8009ABCC 1E600036 */  bgtz       $s3, .L8009ACA8
/* 9B7D0 8009ABD0 00151400 */   sll       $v0, $s5, 16
/* 9B7D4 8009ABD4 8E240014 */  lw         $a0, 0x14($s1)
/* 9B7D8 8009ABD8 8E230008 */  lw         $v1, 0x8($s1)
/* 9B7DC 8009ABDC 24820001 */  addiu      $v0, $a0, 0x1
/* 9B7E0 8009ABE0 00641821 */  addu       $v1, $v1, $a0
/* 9B7E4 8009ABE4 AE220014 */  sw         $v0, 0x14($s1)
/* 9B7E8 8009ABE8 24020030 */  addiu      $v0, $zero, 0x30
/* 9B7EC 8009ABEC A0620000 */  sb         $v0, 0x0($v1)
/* 9B7F0 8009ABF0 8E220024 */  lw         $v0, 0x24($s1)
/* 9B7F4 8009ABF4 1C400005 */  bgtz       $v0, .L8009AC0C
/* 9B7F8 8009ABF8 00000000 */   nop
/* 9B7FC 8009ABFC 8E220030 */  lw         $v0, 0x30($s1)
/* 9B800 8009AC00 30420008 */  andi       $v0, $v0, 0x8
/* 9B804 8009AC04 10400009 */  beqz       $v0, .L8009AC2C
/* 9B808 8009AC08 00141400 */   sll       $v0, $s4, 16
.L8009AC0C:
/* 9B80C 8009AC0C 8E240014 */  lw         $a0, 0x14($s1)
/* 9B810 8009AC10 8E230008 */  lw         $v1, 0x8($s1)
/* 9B814 8009AC14 24820001 */  addiu      $v0, $a0, 0x1
/* 9B818 8009AC18 00641821 */  addu       $v1, $v1, $a0
/* 9B81C 8009AC1C AE220014 */  sw         $v0, 0x14($s1)
/* 9B820 8009AC20 2402002E */  addiu      $v0, $zero, 0x2E
/* 9B824 8009AC24 A0620000 */  sb         $v0, 0x0($v1)
/* 9B828 8009AC28 00141400 */  sll        $v0, $s4, 16
.L8009AC2C:
/* 9B82C 8009AC2C 8E230024 */  lw         $v1, 0x24($s1)
/* 9B830 8009AC30 00021403 */  sra        $v0, $v0, 16
/* 9B834 8009AC34 00021023 */  negu       $v0, $v0
/* 9B838 8009AC38 0062102A */  slt        $v0, $v1, $v0
/* 9B83C 8009AC3C 54400001 */  bnel       $v0, $zero, .L8009AC44
/* 9B840 8009AC40 0003A023 */   negu      $s4, $v1
.L8009AC44:
/* 9B844 8009AC44 00141400 */  sll        $v0, $s4, 16
/* 9B848 8009AC48 8E240024 */  lw         $a0, 0x24($s1)
/* 9B84C 8009AC4C 00021403 */  sra        $v0, $v0, 16
/* 9B850 8009AC50 00021823 */  negu       $v1, $v0
/* 9B854 8009AC54 AE230018 */  sw         $v1, 0x18($s1)
/* 9B858 8009AC58 00822021 */  addu       $a0, $a0, $v0
/* 9B85C 8009AC5C 00151400 */  sll        $v0, $s5, 16
/* 9B860 8009AC60 00021403 */  sra        $v0, $v0, 16
/* 9B864 8009AC64 0082102A */  slt        $v0, $a0, $v0
/* 9B868 8009AC68 10400002 */  beqz       $v0, .L8009AC74
/* 9B86C 8009AC6C AE240024 */   sw        $a0, 0x24($s1)
/* 9B870 8009AC70 0080A821 */  addu       $s5, $a0, $zero
.L8009AC74:
/* 9B874 8009AC74 02402821 */  addu       $a1, $s2, $zero
/* 9B878 8009AC78 8E220008 */  lw         $v0, 0x8($s1)
/* 9B87C 8009AC7C 8E240014 */  lw         $a0, 0x14($s1)
/* 9B880 8009AC80 00158400 */  sll        $s0, $s5, 16
/* 9B884 8009AC84 00108403 */  sra        $s0, $s0, 16
/* 9B888 8009AC88 02003021 */  addu       $a2, $s0, $zero
/* 9B88C 8009AC8C AE30001C */  sw         $s0, 0x1C($s1)
/* 9B890 8009AC90 0C024933 */  jal        func_800924CC
/* 9B894 8009AC94 00442021 */   addu      $a0, $v0, $a0
/* 9B898 8009AC98 8E220024 */  lw         $v0, 0x24($s1)
/* 9B89C 8009AC9C 00501023 */  subu       $v0, $v0, $s0
/* 9B8A0 8009ACA0 08026C06 */  j          .L8009B018
/* 9B8A4 8009ACA4 AE220020 */   sw        $v0, 0x20($s1)
.L8009ACA8:
/* 9B8A8 8009ACA8 00028403 */  sra        $s0, $v0, 16
/* 9B8AC 8009ACAC 0213102A */  slt        $v0, $s0, $s3
/* 9B8B0 8009ACB0 1040001C */  beqz       $v0, .L8009AD24
/* 9B8B4 8009ACB4 02402821 */   addu      $a1, $s2, $zero
/* 9B8B8 8009ACB8 8E220008 */  lw         $v0, 0x8($s1)
/* 9B8BC 8009ACBC 8E240014 */  lw         $a0, 0x14($s1)
/* 9B8C0 8009ACC0 02003021 */  addu       $a2, $s0, $zero
/* 9B8C4 8009ACC4 0C024933 */  jal        func_800924CC
/* 9B8C8 8009ACC8 00442021 */   addu      $a0, $v0, $a0
/* 9B8CC 8009ACCC 8E230014 */  lw         $v1, 0x14($s1)
/* 9B8D0 8009ACD0 8E240024 */  lw         $a0, 0x24($s1)
/* 9B8D4 8009ACD4 02701023 */  subu       $v0, $s3, $s0
/* 9B8D8 8009ACD8 AE220018 */  sw         $v0, 0x18($s1)
/* 9B8DC 8009ACDC 00701821 */  addu       $v1, $v1, $s0
/* 9B8E0 8009ACE0 1C800005 */  bgtz       $a0, .L8009ACF8
/* 9B8E4 8009ACE4 AE230014 */   sw        $v1, 0x14($s1)
/* 9B8E8 8009ACE8 8E220030 */  lw         $v0, 0x30($s1)
/* 9B8EC 8009ACEC 30420008 */  andi       $v0, $v0, 0x8
/* 9B8F0 8009ACF0 10400009 */  beqz       $v0, .L8009AD18
/* 9B8F4 8009ACF4 00000000 */   nop
.L8009ACF8:
/* 9B8F8 8009ACF8 8E220008 */  lw         $v0, 0x8($s1)
/* 9B8FC 8009ACFC 8E230014 */  lw         $v1, 0x14($s1)
/* 9B900 8009AD00 00431021 */  addu       $v0, $v0, $v1
/* 9B904 8009AD04 2403002E */  addiu      $v1, $zero, 0x2E
/* 9B908 8009AD08 A0430000 */  sb         $v1, 0x0($v0)
/* 9B90C 8009AD0C 8E22001C */  lw         $v0, 0x1C($s1)
/* 9B910 8009AD10 24420001 */  addiu      $v0, $v0, 0x1
/* 9B914 8009AD14 AE22001C */  sw         $v0, 0x1C($s1)
.L8009AD18:
/* 9B918 8009AD18 8E220024 */  lw         $v0, 0x24($s1)
/* 9B91C 8009AD1C 08026C06 */  j          .L8009B018
/* 9B920 8009AD20 AE220020 */   sw        $v0, 0x20($s1)
.L8009AD24:
/* 9B924 8009AD24 8E220008 */  lw         $v0, 0x8($s1)
/* 9B928 8009AD28 8E240014 */  lw         $a0, 0x14($s1)
/* 9B92C 8009AD2C 02603021 */  addu       $a2, $s3, $zero
/* 9B930 8009AD30 0C024933 */  jal        func_800924CC
/* 9B934 8009AD34 00442021 */   addu      $a0, $v0, $a0
/* 9B938 8009AD38 8E220014 */  lw         $v0, 0x14($s1)
/* 9B93C 8009AD3C 8E230024 */  lw         $v1, 0x24($s1)
/* 9B940 8009AD40 02B4A823 */  subu       $s5, $s5, $s4
/* 9B944 8009AD44 00533021 */  addu       $a2, $v0, $s3
/* 9B948 8009AD48 1C600005 */  bgtz       $v1, .L8009AD60
/* 9B94C 8009AD4C AE260014 */   sw        $a2, 0x14($s1)
/* 9B950 8009AD50 8E220030 */  lw         $v0, 0x30($s1)
/* 9B954 8009AD54 30420008 */  andi       $v0, $v0, 0x8
/* 9B958 8009AD58 10400007 */  beqz       $v0, .L8009AD78
/* 9B95C 8009AD5C 00000000 */   nop
.L8009AD60:
/* 9B960 8009AD60 8E220008 */  lw         $v0, 0x8($s1)
/* 9B964 8009AD64 24C30001 */  addiu      $v1, $a2, 0x1
/* 9B968 8009AD68 AE230014 */  sw         $v1, 0x14($s1)
/* 9B96C 8009AD6C 2403002E */  addiu      $v1, $zero, 0x2E
/* 9B970 8009AD70 00461021 */  addu       $v0, $v0, $a2
/* 9B974 8009AD74 A0430000 */  sb         $v1, 0x0($v0)
.L8009AD78:
/* 9B978 8009AD78 8E230024 */  lw         $v1, 0x24($s1)
/* 9B97C 8009AD7C 00151400 */  sll        $v0, $s5, 16
/* 9B980 8009AD80 00021403 */  sra        $v0, $v0, 16
/* 9B984 8009AD84 0062102A */  slt        $v0, $v1, $v0
/* 9B988 8009AD88 54400001 */  bnel       $v0, $zero, .L8009AD90
/* 9B98C 8009AD8C 0060A821 */   addu      $s5, $v1, $zero
.L8009AD90:
/* 9B990 8009AD90 00142C00 */  sll        $a1, $s4, 16
/* 9B994 8009AD94 00052C03 */  sra        $a1, $a1, 16
/* 9B998 8009AD98 02452821 */  addu       $a1, $s2, $a1
/* 9B99C 8009AD9C 8E220008 */  lw         $v0, 0x8($s1)
/* 9B9A0 8009ADA0 8E240014 */  lw         $a0, 0x14($s1)
/* 9B9A4 8009ADA4 00158400 */  sll        $s0, $s5, 16
/* 9B9A8 8009ADA8 00108403 */  sra        $s0, $s0, 16
/* 9B9AC 8009ADAC 02003021 */  addu       $a2, $s0, $zero
/* 9B9B0 8009ADB0 0C024933 */  jal        func_800924CC
/* 9B9B4 8009ADB4 00442021 */   addu      $a0, $v0, $a0
/* 9B9B8 8009ADB8 8E220014 */  lw         $v0, 0x14($s1)
/* 9B9BC 8009ADBC 8E230024 */  lw         $v1, 0x24($s1)
/* 9B9C0 8009ADC0 00501021 */  addu       $v0, $v0, $s0
/* 9B9C4 8009ADC4 00701823 */  subu       $v1, $v1, $s0
/* 9B9C8 8009ADC8 AE220014 */  sw         $v0, 0x14($s1)
/* 9B9CC 8009ADCC 08026C06 */  j          .L8009B018
/* 9B9D0 8009ADD0 AE230018 */   sw        $v1, 0x18($s1)
.L8009ADD4:
/* 9B9D4 8009ADD4 38430067 */  xori       $v1, $v0, 0x67
/* 9B9D8 8009ADD8 2C640001 */  sltiu      $a0, $v1, 0x1
/* 9B9DC 8009ADDC 38420047 */  xori       $v0, $v0, 0x47
/* 9B9E0 8009ADE0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B9E4 8009ADE4 00821025 */  or         $v0, $a0, $v0
/* 9B9E8 8009ADE8 1040000E */  beqz       $v0, .L8009AE24
/* 9B9EC 8009ADEC 00151C00 */   sll       $v1, $s5, 16
/* 9B9F0 8009ADF0 8E220024 */  lw         $v0, 0x24($s1)
/* 9B9F4 8009ADF4 00031C03 */  sra        $v1, $v1, 16
/* 9B9F8 8009ADF8 0062102A */  slt        $v0, $v1, $v0
/* 9B9FC 8009ADFC 54400001 */  bnel       $v0, $zero, .L8009AE04
/* 9BA00 8009AE00 AE230024 */   sw        $v1, 0x24($s1)
.L8009AE04:
/* 9BA04 8009AE04 8E220024 */  lw         $v0, 0x24($s1)
/* 9BA08 8009AE08 2442FFFF */  addiu      $v0, $v0, -0x1
/* 9BA0C 8009AE0C 04410002 */  bgez       $v0, .L8009AE18
/* 9BA10 8009AE10 AE220024 */   sw        $v0, 0x24($s1)
/* 9BA14 8009AE14 AE200024 */  sw         $zero, 0x24($s1)
.L8009AE18:
/* 9BA18 8009AE18 00041023 */  negu       $v0, $a0
/* 9BA1C 8009AE1C 30420065 */  andi       $v0, $v0, 0x65
/* 9BA20 8009AE20 34530045 */  ori        $s3, $v0, 0x45
.L8009AE24:
/* 9BA24 8009AE24 8E240014 */  lw         $a0, 0x14($s1)
/* 9BA28 8009AE28 24820001 */  addiu      $v0, $a0, 0x1
/* 9BA2C 8009AE2C AE220014 */  sw         $v0, 0x14($s1)
/* 9BA30 8009AE30 8E220008 */  lw         $v0, 0x8($s1)
/* 9BA34 8009AE34 92430000 */  lbu        $v1, 0x0($s2)
/* 9BA38 8009AE38 00441021 */  addu       $v0, $v0, $a0
/* 9BA3C 8009AE3C A0430000 */  sb         $v1, 0x0($v0)
/* 9BA40 8009AE40 8E220024 */  lw         $v0, 0x24($s1)
/* 9BA44 8009AE44 1C400005 */  bgtz       $v0, .L8009AE5C
/* 9BA48 8009AE48 26520001 */   addiu     $s2, $s2, 0x1
/* 9BA4C 8009AE4C 8E220030 */  lw         $v0, 0x30($s1)
/* 9BA50 8009AE50 30420008 */  andi       $v0, $v0, 0x8
/* 9BA54 8009AE54 10400008 */  beqz       $v0, .L8009AE78
/* 9BA58 8009AE58 00000000 */   nop
.L8009AE5C:
/* 9BA5C 8009AE5C 8E240014 */  lw         $a0, 0x14($s1)
/* 9BA60 8009AE60 8E230008 */  lw         $v1, 0x8($s1)
/* 9BA64 8009AE64 24820001 */  addiu      $v0, $a0, 0x1
/* 9BA68 8009AE68 00641821 */  addu       $v1, $v1, $a0
/* 9BA6C 8009AE6C AE220014 */  sw         $v0, 0x14($s1)
/* 9BA70 8009AE70 2402002E */  addiu      $v0, $zero, 0x2E
/* 9BA74 8009AE74 A0620000 */  sb         $v0, 0x0($v1)
.L8009AE78:
/* 9BA78 8009AE78 8E230024 */  lw         $v1, 0x24($s1)
/* 9BA7C 8009AE7C 18600015 */  blez       $v1, .L8009AED4
/* 9BA80 8009AE80 26A2FFFF */   addiu     $v0, $s5, -0x1
/* 9BA84 8009AE84 0040A821 */  addu       $s5, $v0, $zero
/* 9BA88 8009AE88 00021400 */  sll        $v0, $v0, 16
/* 9BA8C 8009AE8C 00021403 */  sra        $v0, $v0, 16
/* 9BA90 8009AE90 0062102A */  slt        $v0, $v1, $v0
/* 9BA94 8009AE94 54400001 */  bnel       $v0, $zero, .L8009AE9C
/* 9BA98 8009AE98 0060A821 */   addu      $s5, $v1, $zero
.L8009AE9C:
/* 9BA9C 8009AE9C 02402821 */  addu       $a1, $s2, $zero
/* 9BAA0 8009AEA0 8E220008 */  lw         $v0, 0x8($s1)
/* 9BAA4 8009AEA4 8E240014 */  lw         $a0, 0x14($s1)
/* 9BAA8 8009AEA8 00158400 */  sll        $s0, $s5, 16
/* 9BAAC 8009AEAC 00108403 */  sra        $s0, $s0, 16
/* 9BAB0 8009AEB0 02003021 */  addu       $a2, $s0, $zero
/* 9BAB4 8009AEB4 0C024933 */  jal        func_800924CC
/* 9BAB8 8009AEB8 00442021 */   addu      $a0, $v0, $a0
/* 9BABC 8009AEBC 8E220014 */  lw         $v0, 0x14($s1)
/* 9BAC0 8009AEC0 8E230024 */  lw         $v1, 0x24($s1)
/* 9BAC4 8009AEC4 00501021 */  addu       $v0, $v0, $s0
/* 9BAC8 8009AEC8 00701823 */  subu       $v1, $v1, $s0
/* 9BACC 8009AECC AE220014 */  sw         $v0, 0x14($s1)
/* 9BAD0 8009AED0 AE230018 */  sw         $v1, 0x18($s1)
.L8009AED4:
/* 9BAD4 8009AED4 8E220008 */  lw         $v0, 0x8($s1)
/* 9BAD8 8009AED8 8E230014 */  lw         $v1, 0x14($s1)
/* 9BADC 8009AEDC 00439021 */  addu       $s2, $v0, $v1
/* 9BAE0 8009AEE0 A2530000 */  sb         $s3, 0x0($s2)
/* 9BAE4 8009AEE4 00141400 */  sll        $v0, $s4, 16
/* 9BAE8 8009AEE8 04400005 */  bltz       $v0, .L8009AF00
/* 9BAEC 8009AEEC 26520001 */   addiu     $s2, $s2, 0x1
/* 9BAF0 8009AEF0 2402002B */  addiu      $v0, $zero, 0x2B
/* 9BAF4 8009AEF4 A2420000 */  sb         $v0, 0x0($s2)
/* 9BAF8 8009AEF8 08026BC4 */  j          .L8009AF10
/* 9BAFC 8009AEFC 26520001 */   addiu     $s2, $s2, 0x1
.L8009AF00:
/* 9BB00 8009AF00 2402002D */  addiu      $v0, $zero, 0x2D
/* 9BB04 8009AF04 A2420000 */  sb         $v0, 0x0($s2)
/* 9BB08 8009AF08 26520001 */  addiu      $s2, $s2, 0x1
/* 9BB0C 8009AF0C 0014A023 */  negu       $s4, $s4
.L8009AF10:
/* 9BB10 8009AF10 00142C00 */  sll        $a1, $s4, 16
/* 9BB14 8009AF14 00052403 */  sra        $a0, $a1, 16
/* 9BB18 8009AF18 28820064 */  slti       $v0, $a0, 0x64
/* 9BB1C 8009AF1C 14400027 */  bnez       $v0, .L8009AFBC
/* 9BB20 8009AF20 3C036666 */   lui       $v1, (0x66666667 >> 16)
/* 9BB24 8009AF24 288203E8 */  slti       $v0, $a0, 0x3E8
/* 9BB28 8009AF28 14400012 */  bnez       $v0, .L8009AF74
/* 9BB2C 8009AF2C 3C0351EB */   lui       $v1, (0x51EB851F >> 16)
/* 9BB30 8009AF30 3C021062 */  lui        $v0, (0x10624DD3 >> 16)
/* 9BB34 8009AF34 34424DD3 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
/* 9BB38 8009AF38 00820018 */  mult       $a0, $v0
/* 9BB3C 8009AF3C 000517C3 */  sra        $v0, $a1, 31
/* 9BB40 8009AF40 00004010 */  mfhi       $t0
/* 9BB44 8009AF44 00081983 */  sra        $v1, $t0, 6
/* 9BB48 8009AF48 00621823 */  subu       $v1, $v1, $v0
/* 9BB4C 8009AF4C 24620030 */  addiu      $v0, $v1, 0x30
/* 9BB50 8009AF50 A2420000 */  sb         $v0, 0x0($s2)
/* 9BB54 8009AF54 26520001 */  addiu      $s2, $s2, 0x1
/* 9BB58 8009AF58 00031140 */  sll        $v0, $v1, 5
/* 9BB5C 8009AF5C 00431023 */  subu       $v0, $v0, $v1
/* 9BB60 8009AF60 00021080 */  sll        $v0, $v0, 2
/* 9BB64 8009AF64 00431021 */  addu       $v0, $v0, $v1
/* 9BB68 8009AF68 000210C0 */  sll        $v0, $v0, 3
/* 9BB6C 8009AF6C 0082A023 */  subu       $s4, $a0, $v0
/* 9BB70 8009AF70 3C0351EB */  lui        $v1, (0x51EB851F >> 16)
.L8009AF74:
/* 9BB74 8009AF74 3463851F */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
/* 9BB78 8009AF78 00141400 */  sll        $v0, $s4, 16
/* 9BB7C 8009AF7C 00022403 */  sra        $a0, $v0, 16
/* 9BB80 8009AF80 00830018 */  mult       $a0, $v1
/* 9BB84 8009AF84 000217C3 */  sra        $v0, $v0, 31
/* 9BB88 8009AF88 00004010 */  mfhi       $t0
/* 9BB8C 8009AF8C 00081943 */  sra        $v1, $t0, 5
/* 9BB90 8009AF90 00621823 */  subu       $v1, $v1, $v0
/* 9BB94 8009AF94 24620030 */  addiu      $v0, $v1, 0x30
/* 9BB98 8009AF98 A2420000 */  sb         $v0, 0x0($s2)
/* 9BB9C 8009AF9C 26520001 */  addiu      $s2, $s2, 0x1
/* 9BBA0 8009AFA0 00031040 */  sll        $v0, $v1, 1
/* 9BBA4 8009AFA4 00431021 */  addu       $v0, $v0, $v1
/* 9BBA8 8009AFA8 000210C0 */  sll        $v0, $v0, 3
/* 9BBAC 8009AFAC 00431021 */  addu       $v0, $v0, $v1
/* 9BBB0 8009AFB0 00021080 */  sll        $v0, $v0, 2
/* 9BBB4 8009AFB4 0082A023 */  subu       $s4, $a0, $v0
/* 9BBB8 8009AFB8 3C036666 */  lui        $v1, (0x66666667 >> 16)
.L8009AFBC:
/* 9BBBC 8009AFBC 34636667 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 9BBC0 8009AFC0 00141400 */  sll        $v0, $s4, 16
/* 9BBC4 8009AFC4 00022403 */  sra        $a0, $v0, 16
/* 9BBC8 8009AFC8 00830018 */  mult       $a0, $v1
/* 9BBCC 8009AFCC 000217C3 */  sra        $v0, $v0, 31
/* 9BBD0 8009AFD0 00004010 */  mfhi       $t0
/* 9BBD4 8009AFD4 00081883 */  sra        $v1, $t0, 2
/* 9BBD8 8009AFD8 00621823 */  subu       $v1, $v1, $v0
/* 9BBDC 8009AFDC 24620030 */  addiu      $v0, $v1, 0x30
/* 9BBE0 8009AFE0 A2420000 */  sb         $v0, 0x0($s2)
/* 9BBE4 8009AFE4 26520001 */  addiu      $s2, $s2, 0x1
/* 9BBE8 8009AFE8 00031080 */  sll        $v0, $v1, 2
/* 9BBEC 8009AFEC 00431021 */  addu       $v0, $v0, $v1
/* 9BBF0 8009AFF0 00021040 */  sll        $v0, $v0, 1
/* 9BBF4 8009AFF4 00822023 */  subu       $a0, $a0, $v0
/* 9BBF8 8009AFF8 24840030 */  addiu      $a0, $a0, 0x30
/* 9BBFC 8009AFFC A2440000 */  sb         $a0, 0x0($s2)
/* 9BC00 8009B000 8E220008 */  lw         $v0, 0x8($s1)
/* 9BC04 8009B004 8E230014 */  lw         $v1, 0x14($s1)
/* 9BC08 8009B008 26520001 */  addiu      $s2, $s2, 0x1
/* 9BC0C 8009B00C 00431021 */  addu       $v0, $v0, $v1
/* 9BC10 8009B010 02421023 */  subu       $v0, $s2, $v0
/* 9BC14 8009B014 AE22001C */  sw         $v0, 0x1C($s1)
.L8009B018:
/* 9BC18 8009B018 8E220030 */  lw         $v0, 0x30($s1)
/* 9BC1C 8009B01C 24030010 */  addiu      $v1, $zero, 0x10
/* 9BC20 8009B020 30420014 */  andi       $v0, $v0, 0x14
/* 9BC24 8009B024 1443000F */  bne        $v0, $v1, .L8009B064
/* 9BC28 8009B028 00000000 */   nop
/* 9BC2C 8009B02C 8E22000C */  lw         $v0, 0xC($s1)
/* 9BC30 8009B030 8E230014 */  lw         $v1, 0x14($s1)
/* 9BC34 8009B034 8E240018 */  lw         $a0, 0x18($s1)
/* 9BC38 8009B038 00431021 */  addu       $v0, $v0, $v1
/* 9BC3C 8009B03C 00441021 */  addu       $v0, $v0, $a0
/* 9BC40 8009B040 8E23001C */  lw         $v1, 0x1C($s1)
/* 9BC44 8009B044 8E240020 */  lw         $a0, 0x20($s1)
/* 9BC48 8009B048 8E250028 */  lw         $a1, 0x28($s1)
/* 9BC4C 8009B04C 00431021 */  addu       $v0, $v0, $v1
/* 9BC50 8009B050 00441821 */  addu       $v1, $v0, $a0
/* 9BC54 8009B054 0065102A */  slt        $v0, $v1, $a1
/* 9BC58 8009B058 10400002 */  beqz       $v0, .L8009B064
/* 9BC5C 8009B05C 00A31023 */   subu      $v0, $a1, $v1
/* 9BC60 8009B060 AE220010 */  sw         $v0, 0x10($s1)
.L8009B064:
/* 9BC64 8009B064 8FBF0028 */  lw         $ra, 0x28($sp)
/* 9BC68 8009B068 8FB50024 */  lw         $s5, 0x24($sp)
/* 9BC6C 8009B06C 8FB40020 */  lw         $s4, 0x20($sp)
/* 9BC70 8009B070 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9BC74 8009B074 8FB20018 */  lw         $s2, 0x18($sp)
/* 9BC78 8009B078 8FB10014 */  lw         $s1, 0x14($sp)
/* 9BC7C 8009B07C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9BC80 8009B080 03E00008 */  jr         $ra
/* 9BC84 8009B084 27BD0030 */   addiu     $sp, $sp, 0x30
/* 9BC88 8009B088 00000000 */  nop
/* 9BC8C 8009B08C 00000000 */  nop

glabel func_8009B090
/* 9BC90 8009B090 00A6001A */  div        $zero, $a1, $a2
/* 9BC94 8009B094 14C00002 */  bnez       $a2, .L8009B0A0
/* 9BC98 8009B098 00000000 */   nop
/* 9BC9C 8009B09C 0007000D */  break      7
.L8009B0A0:
/* 9BCA0 8009B0A0 2401FFFF */  addiu      $at, $zero, -0x1
/* 9BCA4 8009B0A4 14C10004 */  bne        $a2, $at, .L8009B0B8
/* 9BCA8 8009B0A8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 9BCAC 8009B0AC 14A10002 */  bne        $a1, $at, .L8009B0B8
/* 9BCB0 8009B0B0 00000000 */   nop
/* 9BCB4 8009B0B4 0006000D */  break      6
.L8009B0B8:
/* 9BCB8 8009B0B8 00001812 */  mflo       $v1
/* 9BCBC 8009B0BC 00000000 */  nop
/* 9BCC0 8009B0C0 00000000 */  nop
/* 9BCC4 8009B0C4 00C30018 */  mult       $a2, $v1
/* 9BCC8 8009B0C8 00001012 */  mflo       $v0
/* 9BCCC 8009B0CC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9BCD0 8009B0D0 00803821 */  addu       $a3, $a0, $zero
/* 9BCD4 8009B0D4 AFA30000 */  sw         $v1, 0x0($sp)
/* 9BCD8 8009B0D8 00A22823 */  subu       $a1, $a1, $v0
/* 9BCDC 8009B0DC 04610006 */  bgez       $v1, .L8009B0F8
/* 9BCE0 8009B0E0 AFA50004 */   sw        $a1, 0x4($sp)
/* 9BCE4 8009B0E4 18A00004 */  blez       $a1, .L8009B0F8
/* 9BCE8 8009B0E8 24620001 */   addiu     $v0, $v1, 0x1
/* 9BCEC 8009B0EC AFA20000 */  sw         $v0, 0x0($sp)
/* 9BCF0 8009B0F0 00A61023 */  subu       $v0, $a1, $a2
/* 9BCF4 8009B0F4 AFA20004 */  sw         $v0, 0x4($sp)
.L8009B0F8:
/* 9BCF8 8009B0F8 8FA20000 */  lw         $v0, 0x0($sp)
/* 9BCFC 8009B0FC 8FA30004 */  lw         $v1, 0x4($sp)
/* 9BD00 8009B100 ACE20000 */  sw         $v0, 0x0($a3)
/* 9BD04 8009B104 ACE30004 */  sw         $v1, 0x4($a3)
/* 9BD08 8009B108 00E01021 */  addu       $v0, $a3, $zero
/* 9BD0C 8009B10C 03E00008 */  jr         $ra
/* 9BD10 8009B110 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8009B114
/* 9BD14 8009B114 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9BD18 8009B118 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9BD1C 8009B11C AFB20028 */  sw         $s2, 0x28($sp)
/* 9BD20 8009B120 8FB20048 */  lw         $s2, 0x48($sp)
/* 9BD24 8009B124 8FB3004C */  lw         $s3, 0x4C($sp)
/* 9BD28 8009B128 AFB40030 */  sw         $s4, 0x30($sp)
/* 9BD2C 8009B12C 0080A021 */  addu       $s4, $a0, $zero
/* 9BD30 8009B130 AFB10024 */  sw         $s1, 0x24($sp)
/* 9BD34 8009B134 AFB00020 */  sw         $s0, 0x20($sp)
/* 9BD38 8009B138 00C08021 */  addu       $s0, $a2, $zero
/* 9BD3C 8009B13C 00E08821 */  addu       $s1, $a3, $zero
/* 9BD40 8009B140 02002021 */  addu       $a0, $s0, $zero
/* 9BD44 8009B144 02202821 */  addu       $a1, $s1, $zero
/* 9BD48 8009B148 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9BD4C 8009B14C 02403021 */  addu       $a2, $s2, $zero
/* 9BD50 8009B150 0C000D44 */  jal        func_80003510
/* 9BD54 8009B154 02603821 */   addu      $a3, $s3, $zero
/* 9BD58 8009B158 00403021 */  addu       $a2, $v0, $zero
/* 9BD5C 8009B15C 00603821 */  addu       $a3, $v1, $zero
/* 9BD60 8009B160 02670019 */  multu      $s3, $a3
/* 9BD64 8009B164 00001010 */  mfhi       $v0
/* 9BD68 8009B168 00001812 */  mflo       $v1
/* 9BD6C 8009B16C 00000000 */  nop
/* 9BD70 8009B170 00000000 */  nop
/* 9BD74 8009B174 02660018 */  mult       $s3, $a2
/* 9BD78 8009B178 00002012 */  mflo       $a0
/* 9BD7C 8009B17C 00000000 */  nop
/* 9BD80 8009B180 00000000 */  nop
/* 9BD84 8009B184 00F20018 */  mult       $a3, $s2
/* 9BD88 8009B188 00002812 */  mflo       $a1
/* 9BD8C 8009B18C AFA60010 */  sw         $a2, 0x10($sp)
/* 9BD90 8009B190 AFA70014 */  sw         $a3, 0x14($sp)
/* 9BD94 8009B194 00441021 */  addu       $v0, $v0, $a0
/* 9BD98 8009B198 8FA40010 */  lw         $a0, 0x10($sp)
/* 9BD9C 8009B19C 00451021 */  addu       $v0, $v0, $a1
/* 9BDA0 8009B1A0 0223282B */  sltu       $a1, $s1, $v1
/* 9BDA4 8009B1A4 02234823 */  subu       $t1, $s1, $v1
/* 9BDA8 8009B1A8 02024023 */  subu       $t0, $s0, $v0
/* 9BDAC 8009B1AC 01054023 */  subu       $t0, $t0, $a1
/* 9BDB0 8009B1B0 AFA80018 */  sw         $t0, 0x18($sp)
/* 9BDB4 8009B1B4 04810013 */  bgez       $a0, .L8009B204
/* 9BDB8 8009B1B8 AFA9001C */   sw        $t1, 0x1C($sp)
/* 9BDBC 8009B1BC 8FA20018 */  lw         $v0, 0x18($sp)
/* 9BDC0 8009B1C0 5C400006 */  bgtzl      $v0, .L8009B1DC
/* 9BDC4 8009B1C4 24E30001 */   addiu     $v1, $a3, 0x1
/* 9BDC8 8009B1C8 1440000E */  bnez       $v0, .L8009B204
/* 9BDCC 8009B1CC 00000000 */   nop
/* 9BDD0 8009B1D0 8FA2001C */  lw         $v0, 0x1C($sp)
/* 9BDD4 8009B1D4 1040000B */  beqz       $v0, .L8009B204
/* 9BDD8 8009B1D8 24E30001 */   addiu     $v1, $a3, 0x1
.L8009B1DC:
/* 9BDDC 8009B1DC 2C640001 */  sltiu      $a0, $v1, 0x1
/* 9BDE0 8009B1E0 00C41021 */  addu       $v0, $a2, $a0
/* 9BDE4 8009B1E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 9BDE8 8009B1E8 AFA30014 */  sw         $v1, 0x14($sp)
/* 9BDEC 8009B1EC 0133202B */  sltu       $a0, $t1, $s3
/* 9BDF0 8009B1F0 01331823 */  subu       $v1, $t1, $s3
/* 9BDF4 8009B1F4 01121023 */  subu       $v0, $t0, $s2
/* 9BDF8 8009B1F8 00441023 */  subu       $v0, $v0, $a0
/* 9BDFC 8009B1FC AFA20018 */  sw         $v0, 0x18($sp)
/* 9BE00 8009B200 AFA3001C */  sw         $v1, 0x1C($sp)
.L8009B204:
/* 9BE04 8009B204 8FA20010 */  lw         $v0, 0x10($sp)
/* 9BE08 8009B208 8FA30014 */  lw         $v1, 0x14($sp)
/* 9BE0C 8009B20C 8FA40018 */  lw         $a0, 0x18($sp)
/* 9BE10 8009B210 8FA5001C */  lw         $a1, 0x1C($sp)
/* 9BE14 8009B214 AE820000 */  sw         $v0, 0x0($s4)
/* 9BE18 8009B218 AE830004 */  sw         $v1, 0x4($s4)
/* 9BE1C 8009B21C AE840008 */  sw         $a0, 0x8($s4)
/* 9BE20 8009B220 AE85000C */  sw         $a1, 0xC($s4)
/* 9BE24 8009B224 02801021 */  addu       $v0, $s4, $zero
/* 9BE28 8009B228 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9BE2C 8009B22C 8FB40030 */  lw         $s4, 0x30($sp)
/* 9BE30 8009B230 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9BE34 8009B234 8FB20028 */  lw         $s2, 0x28($sp)
/* 9BE38 8009B238 8FB10024 */  lw         $s1, 0x24($sp)
/* 9BE3C 8009B23C 8FB00020 */  lw         $s0, 0x20($sp)
/* 9BE40 8009B240 03E00008 */  jr         $ra
/* 9BE44 8009B244 27BD0038 */   addiu     $sp, $sp, 0x38
/* 9BE48 8009B248 00000000 */  nop
/* 9BE4C 8009B24C 00000000 */  nop

glabel func_8009B250
/* 9BE50 8009B250 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE54 8009B254 10400007 */  beqz       $v0, .L8009B274
/* 9BE58 8009B258 00801821 */   addu      $v1, $a0, $zero
.L8009B25C:
/* 9BE5C 8009B25C 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE60 8009B260 A0620000 */  sb         $v0, 0x0($v1)
/* 9BE64 8009B264 24A50001 */  addiu      $a1, $a1, 0x1
/* 9BE68 8009B268 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE6C 8009B26C 1440FFFB */  bnez       $v0, .L8009B25C
/* 9BE70 8009B270 24630001 */   addiu     $v1, $v1, 0x1
.L8009B274:
/* 9BE74 8009B274 A0600000 */  sb         $zero, 0x0($v1)
/* 9BE78 8009B278 03E00008 */  jr         $ra
/* 9BE7C 8009B27C 00801021 */   addu      $v0, $a0, $zero

glabel func_8009B280
/* 9BE80 8009B280 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE84 8009B284 1040000B */  beqz       $v0, .L8009B2B4
/* 9BE88 8009B288 00801821 */   addu      $v1, $a0, $zero
/* 9BE8C 8009B28C 2407FFFF */  addiu      $a3, $zero, -0x1
.L8009B290:
/* 9BE90 8009B290 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 9BE94 8009B294 50C70008 */  beql       $a2, $a3, .L8009B2B8
/* 9BE98 8009B298 A0600000 */   sb        $zero, 0x0($v1)
/* 9BE9C 8009B29C 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BEA0 8009B2A0 A0620000 */  sb         $v0, 0x0($v1)
/* 9BEA4 8009B2A4 24A50001 */  addiu      $a1, $a1, 0x1
/* 9BEA8 8009B2A8 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BEAC 8009B2AC 1440FFF8 */  bnez       $v0, .L8009B290
/* 9BEB0 8009B2B0 24630001 */   addiu     $v1, $v1, 0x1
.L8009B2B4:
/* 9BEB4 8009B2B4 A0600000 */  sb         $zero, 0x0($v1)
.L8009B2B8:
/* 9BEB8 8009B2B8 03E00008 */  jr         $ra
/* 9BEBC 8009B2BC 00801021 */   addu      $v0, $a0, $zero

glabel func_8009B2C0
/* 9BEC0 8009B2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BEC4 8009B2C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9BEC8 8009B2C8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9BECC 8009B2CC 46207506 */  mov.d      $f20, $f14
/* 9BED0 8009B2D0 4620A00D */  trunc.w.d  $f0, $f20
/* 9BED4 8009B2D4 44040000 */  mfc1       $a0, $f0
/* 9BED8 8009B2D8 44800000 */  mtc1       $zero, $f0
/* 9BEDC 8009B2DC 44800800 */  mtc1       $zero, $f1
/* 9BEE0 8009B2E0 00000000 */  nop
/* 9BEE4 8009B2E4 46206032 */  c.eq.d     $f12, $f0
/* 9BEE8 8009B2E8 00000000 */  nop
/* 9BEEC 8009B2EC 00000000 */  nop
/* 9BEF0 8009B2F0 45000005 */  bc1f       .L8009B308
/* 9BEF4 8009B2F4 24020001 */   addiu     $v0, $zero, 0x1
/* 9BEF8 8009B2F8 00001021 */  addu       $v0, $zero, $zero
/* 9BEFC 8009B2FC 44800000 */  mtc1       $zero, $f0
/* 9BF00 8009B300 44800800 */  mtc1       $zero, $f1
/* 9BF04 8009B304 00000000 */  nop
.L8009B308:
/* 9BF08 8009B308 4620A032 */  c.eq.d     $f20, $f0
/* 9BF0C 8009B30C 00000000 */  nop
/* 9BF10 8009B310 00000000 */  nop
/* 9BF14 8009B314 45010002 */  bc1t       .L8009B320
/* 9BF18 8009B318 24030001 */   addiu     $v1, $zero, 0x1
/* 9BF1C 8009B31C 00001821 */  addu       $v1, $zero, $zero
.L8009B320:
/* 9BF20 8009B320 00431024 */  and        $v0, $v0, $v1
/* 9BF24 8009B324 10400004 */  beqz       $v0, .L8009B338
/* 9BF28 8009B328 00000000 */   nop
/* 9BF2C 8009B32C 3C01800D */  lui        $at, %hi(D_800D7030)
/* 9BF30 8009B330 08026D36 */  j          .L8009B4D8
/* 9BF34 8009B334 D4207030 */   ldc1      $f0, %lo(D_800D7030)($at)
.L8009B338:
/* 9BF38 8009B338 44800000 */  mtc1       $zero, $f0
/* 9BF3C 8009B33C 44800800 */  mtc1       $zero, $f1
/* 9BF40 8009B340 00000000 */  nop
/* 9BF44 8009B344 46206032 */  c.eq.d     $f12, $f0
/* 9BF48 8009B348 00000000 */  nop
/* 9BF4C 8009B34C 45010062 */  bc1t       .L8009B4D8
/* 9BF50 8009B350 00000000 */   nop
/* 9BF54 8009B354 45010005 */  bc1t       .L8009B36C
/* 9BF58 8009B358 24020001 */   addiu     $v0, $zero, 0x1
/* 9BF5C 8009B35C 00001021 */  addu       $v0, $zero, $zero
/* 9BF60 8009B360 44800000 */  mtc1       $zero, $f0
/* 9BF64 8009B364 44800800 */  mtc1       $zero, $f1
/* 9BF68 8009B368 00000000 */  nop
.L8009B36C:
/* 9BF6C 8009B36C 4620A032 */  c.eq.d     $f20, $f0
/* 9BF70 8009B370 00000000 */  nop
/* 9BF74 8009B374 00000000 */  nop
/* 9BF78 8009B378 45010002 */  bc1t       .L8009B384
/* 9BF7C 8009B37C 24030001 */   addiu     $v1, $zero, 0x1
/* 9BF80 8009B380 00001821 */  addu       $v1, $zero, $zero
.L8009B384:
/* 9BF84 8009B384 00431024 */  and        $v0, $v0, $v1
/* 9BF88 8009B388 1440000F */  bnez       $v0, .L8009B3C8
/* 9BF8C 8009B38C 00000000 */   nop
/* 9BF90 8009B390 44800000 */  mtc1       $zero, $f0
/* 9BF94 8009B394 44800800 */  mtc1       $zero, $f1
/* 9BF98 8009B398 00000000 */  nop
/* 9BF9C 8009B39C 4620603C */  c.lt.d     $f12, $f0
/* 9BFA0 8009B3A0 00000000 */  nop
/* 9BFA4 8009B3A4 4500000C */  bc1f       .L8009B3D8
/* 9BFA8 8009B3A8 00000000 */   nop
/* 9BFAC 8009B3AC 44840000 */  mtc1       $a0, $f0
/* 9BFB0 8009B3B0 00000000 */  nop
/* 9BFB4 8009B3B4 46800021 */  cvt.d.w    $f0, $f0
/* 9BFB8 8009B3B8 4620A032 */  c.eq.d     $f20, $f0
/* 9BFBC 8009B3BC 00000000 */  nop
/* 9BFC0 8009B3C0 4501000A */  bc1t       .L8009B3EC
/* 9BFC4 8009B3C4 00000000 */   nop
.L8009B3C8:
/* 9BFC8 8009B3C8 44800000 */  mtc1       $zero, $f0
/* 9BFCC 8009B3CC 44800800 */  mtc1       $zero, $f1
/* 9BFD0 8009B3D0 08026D36 */  j          .L8009B4D8
/* 9BFD4 8009B3D4 00000000 */   nop
.L8009B3D8:
/* 9BFD8 8009B3D8 44840000 */  mtc1       $a0, $f0
/* 9BFDC 8009B3DC 00000000 */  nop
/* 9BFE0 8009B3E0 46800021 */  cvt.d.w    $f0, $f0
/* 9BFE4 8009B3E4 4620A032 */  c.eq.d     $f20, $f0
/* 9BFE8 8009B3E8 00000000 */  nop
.L8009B3EC:
/* 9BFEC 8009B3EC 45010007 */  bc1t       .L8009B40C
/* 9BFF0 8009B3F0 00000000 */   nop
/* 9BFF4 8009B3F4 0C026EB8 */  jal        func_8009BAE0
/* 9BFF8 8009B3F8 00000000 */   nop
/* 9BFFC 8009B3FC 0C026EFC */  jal        func_8009BBF0
/* 9C000 8009B400 4620A302 */   mul.d     $f12, $f20, $f0
/* 9C004 8009B404 08026D35 */  j          .L8009B4D4
/* 9C008 8009B408 46200306 */   mov.d     $f12, $f0
.L8009B40C:
/* 9C00C 8009B40C 44803000 */  mtc1       $zero, $f6
/* 9C010 8009B410 44803800 */  mtc1       $zero, $f7
/* 9C014 8009B414 00000000 */  nop
/* 9C018 8009B418 4634303C */  c.lt.d     $f6, $f20
/* 9C01C 8009B41C 00000000 */  nop
/* 9C020 8009B420 00000000 */  nop
/* 9C024 8009B424 45000016 */  bc1f       .L8009B480
/* 9C028 8009B428 46203286 */   mov.d     $f10, $f6
/* 9C02C 8009B42C 3C01800D */  lui        $at, %hi(D_800D7038)
/* 9C030 8009B430 D4207038 */  ldc1       $f0, %lo(D_800D7038)($at)
/* 9C034 8009B434 46200206 */  mov.d      $f8, $f0
/* 9C038 8009B438 4620A501 */  sub.d      $f20, $f20, $f0
/* 9C03C 8009B43C 46206106 */  mov.d      $f4, $f12
/* 9C040 8009B440 4620A086 */  mov.d      $f2, $f20
/* 9C044 8009B444 46261032 */  c.eq.d     $f2, $f6
/* 9C048 8009B448 00000000 */  nop
/* 9C04C 8009B44C 00000000 */  nop
/* 9C050 8009B450 45010020 */  bc1t       .L8009B4D4
/* 9C054 8009B454 4620A501 */   sub.d     $f20, $f20, $f0
.L8009B458:
/* 9C058 8009B458 00000000 */  nop
/* 9C05C 8009B45C 46246302 */  mul.d      $f12, $f12, $f4
/* 9C060 8009B460 4620A006 */  mov.d      $f0, $f20
/* 9C064 8009B464 462A0032 */  c.eq.d     $f0, $f10
/* 9C068 8009B468 00000000 */  nop
/* 9C06C 8009B46C 00000000 */  nop
/* 9C070 8009B470 4500FFF9 */  bc1f       .L8009B458
/* 9C074 8009B474 4628A501 */   sub.d     $f20, $f20, $f8
/* 9C078 8009B478 08026D36 */  j          .L8009B4D8
/* 9C07C 8009B47C 46206006 */   mov.d     $f0, $f12
.L8009B480:
/* 9C080 8009B480 3C01800D */  lui        $at, %hi(D_800D7040)
/* 9C084 8009B484 D4247040 */  ldc1       $f4, %lo(D_800D7040)($at)
/* 9C088 8009B488 46202206 */  mov.d      $f8, $f4
/* 9C08C 8009B48C 44801000 */  mtc1       $zero, $f2
/* 9C090 8009B490 44801800 */  mtc1       $zero, $f3
/* 9C094 8009B494 00000000 */  nop
/* 9C098 8009B498 46201186 */  mov.d      $f6, $f2
/* 9C09C 8009B49C 4620A006 */  mov.d      $f0, $f20
/* 9C0A0 8009B4A0 46220032 */  c.eq.d     $f0, $f2
/* 9C0A4 8009B4A4 00000000 */  nop
/* 9C0A8 8009B4A8 00000000 */  nop
/* 9C0AC 8009B4AC 45010008 */  bc1t       .L8009B4D0
/* 9C0B0 8009B4B0 4624A500 */   add.d     $f20, $f20, $f4
.L8009B4B4:
/* 9C0B4 8009B4B4 462C2103 */  div.d      $f4, $f4, $f12
/* 9C0B8 8009B4B8 4620A006 */  mov.d      $f0, $f20
/* 9C0BC 8009B4BC 46260032 */  c.eq.d     $f0, $f6
/* 9C0C0 8009B4C0 00000000 */  nop
/* 9C0C4 8009B4C4 00000000 */  nop
/* 9C0C8 8009B4C8 4500FFFA */  bc1f       .L8009B4B4
/* 9C0CC 8009B4CC 4628A500 */   add.d     $f20, $f20, $f8
.L8009B4D0:
/* 9C0D0 8009B4D0 46202306 */  mov.d      $f12, $f4
.L8009B4D4:
/* 9C0D4 8009B4D4 46206006 */  mov.d      $f0, $f12
.L8009B4D8:
/* 9C0D8 8009B4D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C0DC 8009B4DC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C0E0 8009B4E0 03E00008 */  jr         $ra
/* 9C0E4 8009B4E4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9C0E8 8009B4E8 00000000 */  nop
/* 9C0EC 8009B4EC 00000000 */  nop

glabel func_8009B4F0
/* 9C0F0 8009B4F0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9C0F4 8009B4F4 00801021 */  addu       $v0, $a0, $zero
/* 9C0F8 8009B4F8 00403821 */  addu       $a3, $v0, $zero
/* 9C0FC 8009B4FC 10C00006 */  beqz       $a2, .L8009B518
/* 9C100 8009B500 24C3FFFF */   addiu     $v1, $a2, -0x1
/* 9C104 8009B504 2406FFFF */  addiu      $a2, $zero, -0x1
.L8009B508:
/* 9C108 8009B508 A0E50000 */  sb         $a1, 0x0($a3)
/* 9C10C 8009B50C 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C110 8009B510 1466FFFD */  bne        $v1, $a2, .L8009B508
/* 9C114 8009B514 24E70001 */   addiu     $a3, $a3, 0x1
.L8009B518:
/* 9C118 8009B518 27BD0008 */  addiu      $sp, $sp, 0x8
/* 9C11C 8009B51C 03E00008 */  jr         $ra
/* 9C120 8009B520 00000000 */   nop
/* 9C124 8009B524 00000000 */  nop
/* 9C128 8009B528 00000000 */  nop
/* 9C12C 8009B52C 00000000 */  nop

glabel func_8009B530
/* 9C130 8009B530 3C01800D */  lui        $at, %hi(D_800D7050)
/* 9C134 8009B534 D4207050 */  ldc1       $f0, %lo(D_800D7050)($at)
/* 9C138 8009B538 46206083 */  div.d      $f2, $f12, $f0
/* 9C13C 8009B53C 44800000 */  mtc1       $zero, $f0
/* 9C140 8009B540 44800800 */  mtc1       $zero, $f1
/* 9C144 8009B544 00000000 */  nop
/* 9C148 8009B548 462C003E */  c.le.d     $f0, $f12
/* 9C14C 8009B54C 3C01800D */  lui        $at, %hi(D_800D7058)
/* 9C150 8009B550 D4207058 */  ldc1       $f0, %lo(D_800D7058)($at)
/* 9C154 8009B554 45020004 */  bc1fl      .L8009B568
/* 9C158 8009B558 46201000 */   add.d     $f0, $f2, $f0
/* 9C15C 8009B55C 3C01800D */  lui        $at, %hi(D_800D7060)
/* 9C160 8009B560 D4207060 */  ldc1       $f0, %lo(D_800D7060)($at)
/* 9C164 8009B564 46201000 */  add.d      $f0, $f2, $f0
.L8009B568:
/* 9C168 8009B568 4620008D */  trunc.w.d  $f2, $f0
/* 9C16C 8009B56C 44031000 */  mfc1       $v1, $f2
/* 9C170 8009B570 00000000 */  nop
/* 9C174 8009B574 44830000 */  mtc1       $v1, $f0
/* 9C178 8009B578 00000000 */  nop
/* 9C17C 8009B57C 46800021 */  cvt.d.w    $f0, $f0
/* 9C180 8009B580 3C01800D */  lui        $at, %hi(D_800D7068)
/* 9C184 8009B584 D4227068 */  ldc1       $f2, %lo(D_800D7068)($at)
/* 9C188 8009B588 46220002 */  mul.d      $f0, $f0, $f2
/* 9C18C 8009B58C 46206301 */  sub.d      $f12, $f12, $f0
/* 9C190 8009B590 46206085 */  abs.d      $f2, $f12
/* 9C194 8009B594 3C01800D */  lui        $at, %hi(D_800D7070)
/* 9C198 8009B598 D4207070 */  ldc1       $f0, %lo(D_800D7070)($at)
/* 9C19C 8009B59C 4622003C */  c.lt.d     $f0, $f2
/* 9C1A0 8009B5A0 00000000 */  nop
/* 9C1A4 8009B5A4 00000000 */  nop
/* 9C1A8 8009B5A8 45000025 */  bc1f       .L8009B640
/* 9C1AC 8009B5AC 30620001 */   andi      $v0, $v1, 0x1
/* 9C1B0 8009B5B0 00000000 */  nop
/* 9C1B4 8009B5B4 462C6102 */  mul.d      $f4, $f12, $f12
/* 9C1B8 8009B5B8 3C01800D */  lui        $at, %hi(D_800D7078)
/* 9C1BC 8009B5BC D4207078 */  ldc1       $f0, %lo(D_800D7078)($at)
/* 9C1C0 8009B5C0 46202002 */  mul.d      $f0, $f4, $f0
/* 9C1C4 8009B5C4 3C01800D */  lui        $at, %hi(D_800D7080)
/* 9C1C8 8009B5C8 D4227080 */  ldc1       $f2, %lo(D_800D7080)($at)
/* 9C1CC 8009B5CC 46220000 */  add.d      $f0, $f0, $f2
/* 9C1D0 8009B5D0 46202002 */  mul.d      $f0, $f4, $f0
/* 9C1D4 8009B5D4 3C01800D */  lui        $at, %hi(D_800D7088)
/* 9C1D8 8009B5D8 D4227088 */  ldc1       $f2, %lo(D_800D7088)($at)
/* 9C1DC 8009B5DC 46220000 */  add.d      $f0, $f0, $f2
/* 9C1E0 8009B5E0 46202002 */  mul.d      $f0, $f4, $f0
/* 9C1E4 8009B5E4 3C01800D */  lui        $at, %hi(D_800D7090)
/* 9C1E8 8009B5E8 D4227090 */  ldc1       $f2, %lo(D_800D7090)($at)
/* 9C1EC 8009B5EC 46220000 */  add.d      $f0, $f0, $f2
/* 9C1F0 8009B5F0 46202002 */  mul.d      $f0, $f4, $f0
/* 9C1F4 8009B5F4 3C01800D */  lui        $at, %hi(D_800D7098)
/* 9C1F8 8009B5F8 D4227098 */  ldc1       $f2, %lo(D_800D7098)($at)
/* 9C1FC 8009B5FC 46220000 */  add.d      $f0, $f0, $f2
/* 9C200 8009B600 46202002 */  mul.d      $f0, $f4, $f0
/* 9C204 8009B604 3C01800D */  lui        $at, %hi(D_800D70A0)
/* 9C208 8009B608 D42270A0 */  ldc1       $f2, %lo(D_800D70A0)($at)
/* 9C20C 8009B60C 46220000 */  add.d      $f0, $f0, $f2
/* 9C210 8009B610 46202002 */  mul.d      $f0, $f4, $f0
/* 9C214 8009B614 3C01800D */  lui        $at, %hi(D_800D70A8)
/* 9C218 8009B618 D42270A8 */  ldc1       $f2, %lo(D_800D70A8)($at)
/* 9C21C 8009B61C 46220000 */  add.d      $f0, $f0, $f2
/* 9C220 8009B620 46202002 */  mul.d      $f0, $f4, $f0
/* 9C224 8009B624 3C01800D */  lui        $at, %hi(D_800D70B0)
/* 9C228 8009B628 D42270B0 */  ldc1       $f2, %lo(D_800D70B0)($at)
/* 9C22C 8009B62C 46220000 */  add.d      $f0, $f0, $f2
/* 9C230 8009B630 46202102 */  mul.d      $f4, $f4, $f0
/* 9C234 8009B634 00000000 */  nop
/* 9C238 8009B638 46246102 */  mul.d      $f4, $f12, $f4
/* 9C23C 8009B63C 46246300 */  add.d      $f12, $f12, $f4
.L8009B640:
/* 9C240 8009B640 54400002 */  bnel       $v0, $zero, .L8009B64C
/* 9C244 8009B644 46206007 */   neg.d     $f0, $f12
/* 9C248 8009B648 46206006 */  mov.d      $f0, $f12
.L8009B64C:
/* 9C24C 8009B64C 03E00008 */  jr         $ra
/* 9C250 8009B650 00000000 */   nop
/* 9C254 8009B654 00000000 */  nop
/* 9C258 8009B658 00000000 */  nop
/* 9C25C 8009B65C 00000000 */  nop

glabel func_8009B660
/* 9C260 8009B660 3C01800D */  lui        $at, %hi(D_800D70C0)
/* 9C264 8009B664 D42070C0 */  ldc1       $f0, %lo(D_800D70C0)($at)
/* 9C268 8009B668 46206083 */  div.d      $f2, $f12, $f0
/* 9C26C 8009B66C 44800000 */  mtc1       $zero, $f0
/* 9C270 8009B670 44800800 */  mtc1       $zero, $f1
/* 9C274 8009B674 00000000 */  nop
/* 9C278 8009B678 462C003E */  c.le.d     $f0, $f12
/* 9C27C 8009B67C 3C01800D */  lui        $at, %hi(D_800D70C8)
/* 9C280 8009B680 D42070C8 */  ldc1       $f0, %lo(D_800D70C8)($at)
/* 9C284 8009B684 45020004 */  bc1fl      .L8009B698
/* 9C288 8009B688 46201000 */   add.d     $f0, $f2, $f0
/* 9C28C 8009B68C 3C01800D */  lui        $at, %hi(D_800D70D0)
/* 9C290 8009B690 D42070D0 */  ldc1       $f0, %lo(D_800D70D0)($at)
/* 9C294 8009B694 46201000 */  add.d      $f0, $f2, $f0
.L8009B698:
/* 9C298 8009B698 4620008D */  trunc.w.d  $f2, $f0
/* 9C29C 8009B69C 44031000 */  mfc1       $v1, $f2
/* 9C2A0 8009B6A0 00000000 */  nop
/* 9C2A4 8009B6A4 44830000 */  mtc1       $v1, $f0
/* 9C2A8 8009B6A8 00000000 */  nop
/* 9C2AC 8009B6AC 46800021 */  cvt.d.w    $f0, $f0
/* 9C2B0 8009B6B0 3C01800D */  lui        $at, %hi(D_800D70D8)
/* 9C2B4 8009B6B4 D42270D8 */  ldc1       $f2, %lo(D_800D70D8)($at)
/* 9C2B8 8009B6B8 46220002 */  mul.d      $f0, $f0, $f2
/* 9C2BC 8009B6BC 46206301 */  sub.d      $f12, $f12, $f0
/* 9C2C0 8009B6C0 462C6102 */  mul.d      $f4, $f12, $f12
/* 9C2C4 8009B6C4 00000000 */  nop
/* 9C2C8 8009B6C8 46242182 */  mul.d      $f6, $f4, $f4
/* 9C2CC 8009B6CC 3C01800D */  lui        $at, %hi(D_800D70E0)
/* 9C2D0 8009B6D0 D42070E0 */  ldc1       $f0, %lo(D_800D70E0)($at)
/* 9C2D4 8009B6D4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2D8 8009B6D8 3C01800D */  lui        $at, %hi(D_800D70E8)
/* 9C2DC 8009B6DC D42270E8 */  ldc1       $f2, %lo(D_800D70E8)($at)
/* 9C2E0 8009B6E0 46220000 */  add.d      $f0, $f0, $f2
/* 9C2E4 8009B6E4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2E8 8009B6E8 3C01800D */  lui        $at, %hi(D_800D70F0)
/* 9C2EC 8009B6EC D42270F0 */  ldc1       $f2, %lo(D_800D70F0)($at)
/* 9C2F0 8009B6F0 46220000 */  add.d      $f0, $f0, $f2
/* 9C2F4 8009B6F4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2F8 8009B6F8 3C01800D */  lui        $at, %hi(D_800D70F8)
/* 9C2FC 8009B6FC D42270F8 */  ldc1       $f2, %lo(D_800D70F8)($at)
/* 9C300 8009B700 46220000 */  add.d      $f0, $f0, $f2
/* 9C304 8009B704 46202002 */  mul.d      $f0, $f4, $f0
/* 9C308 8009B708 3C01800D */  lui        $at, %hi(D_800D7100)
/* 9C30C 8009B70C D4227100 */  ldc1       $f2, %lo(D_800D7100)($at)
/* 9C310 8009B710 46220000 */  add.d      $f0, $f0, $f2
/* 9C314 8009B714 46202002 */  mul.d      $f0, $f4, $f0
/* 9C318 8009B718 3C01800D */  lui        $at, %hi(D_800D7108)
/* 9C31C 8009B71C D4227108 */  ldc1       $f2, %lo(D_800D7108)($at)
/* 9C320 8009B720 46220000 */  add.d      $f0, $f0, $f2
/* 9C324 8009B724 46202002 */  mul.d      $f0, $f4, $f0
/* 9C328 8009B728 3C01800D */  lui        $at, %hi(D_800D7110)
/* 9C32C 8009B72C D4227110 */  ldc1       $f2, %lo(D_800D7110)($at)
/* 9C330 8009B730 46220000 */  add.d      $f0, $f0, $f2
/* 9C334 8009B734 46203182 */  mul.d      $f6, $f6, $f0
/* 9C338 8009B738 3C01800D */  lui        $at, %hi(D_800D7118)
/* 9C33C 8009B73C D4207118 */  ldc1       $f0, %lo(D_800D7118)($at)
/* 9C340 8009B740 46202103 */  div.d      $f4, $f4, $f0
/* 9C344 8009B744 3C01800D */  lui        $at, %hi(D_800D7120)
/* 9C348 8009B748 D4207120 */  ldc1       $f0, %lo(D_800D7120)($at)
/* 9C34C 8009B74C 46240301 */  sub.d      $f12, $f0, $f4
/* 9C350 8009B750 30620001 */  andi       $v0, $v1, 0x1
/* 9C354 8009B754 14400003 */  bnez       $v0, .L8009B764
/* 9C358 8009B758 46266300 */   add.d     $f12, $f12, $f6
/* 9C35C 8009B75C 08026DDA */  j          .L8009B768
/* 9C360 8009B760 46206006 */   mov.d     $f0, $f12
.L8009B764:
/* 9C364 8009B764 46206007 */  neg.d      $f0, $f12
.L8009B768:
/* 9C368 8009B768 03E00008 */  jr         $ra
/* 9C36C 8009B76C 00000000 */   nop

glabel func_8009B770
/* 9C370 8009B770 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C374 8009B774 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C378 8009B778 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9C37C 8009B77C 46206506 */  mov.d      $f20, $f12
/* 9C380 8009B780 4620A085 */  abs.d      $f2, $f20
/* 9C384 8009B784 3C01800D */  lui        $at, %hi(D_800D7130)
/* 9C388 8009B788 D4207130 */  ldc1       $f0, %lo(D_800D7130)($at)
/* 9C38C 8009B78C 4622003C */  c.lt.d     $f0, $f2
/* 9C390 8009B790 00000000 */  nop
/* 9C394 8009B794 00000000 */  nop
/* 9C398 8009B798 45020005 */  bc1fl      .L8009B7B0
/* 9C39C 8009B79C 4634A082 */   mul.d     $f2, $f20, $f20
/* 9C3A0 8009B7A0 44800000 */  mtc1       $zero, $f0
/* 9C3A4 8009B7A4 44800800 */  mtc1       $zero, $f1
/* 9C3A8 8009B7A8 08026E08 */  j          .L8009B820
/* 9C3AC 8009B7AC 00000000 */   nop
.L8009B7B0:
/* 9C3B0 8009B7B0 46220301 */  sub.d      $f12, $f0, $f2
/* 9C3B4 8009B7B4 46206384 */  sqrt.d     $f14, $f12
/* 9C3B8 8009B7B8 462E7032 */  c.eq.d     $f14, $f14
/* 9C3BC 8009B7BC 00000000 */  nop
/* 9C3C0 8009B7C0 45010004 */  bc1t       .L8009B7D4
/* 9C3C4 8009B7C4 00000000 */   nop
/* 9C3C8 8009B7C8 0C026F44 */  jal        func_8009BD10
/* 9C3CC 8009B7CC 00000000 */   nop
/* 9C3D0 8009B7D0 46200386 */  mov.d      $f14, $f0
.L8009B7D4:
/* 9C3D4 8009B7D4 44800000 */  mtc1       $zero, $f0
/* 9C3D8 8009B7D8 44800800 */  mtc1       $zero, $f1
/* 9C3DC 8009B7DC 00000000 */  nop
/* 9C3E0 8009B7E0 46207032 */  c.eq.d     $f14, $f0
/* 9C3E4 8009B7E4 00000000 */  nop
/* 9C3E8 8009B7E8 45010007 */  bc1t       .L8009B808
/* 9C3EC 8009B7EC 00000000 */   nop
/* 9C3F0 8009B7F0 0C026E44 */  jal        func_8009B910
/* 9C3F4 8009B7F4 4620A306 */   mov.d     $f12, $f20
/* 9C3F8 8009B7F8 3C01800D */  lui        $at, %hi(D_800D7138)
/* 9C3FC 8009B7FC D4227138 */  ldc1       $f2, %lo(D_800D7138)($at)
/* 9C400 8009B800 08026E08 */  j          .L8009B820
/* 9C404 8009B804 46201001 */   sub.d     $f0, $f2, $f0
.L8009B808:
/* 9C408 8009B808 4634003C */  c.lt.d     $f0, $f20
/* 9C40C 8009B80C 00000000 */  nop
/* 9C410 8009B810 45010003 */  bc1t       .L8009B820
/* 9C414 8009B814 00000000 */   nop
/* 9C418 8009B818 3C01800D */  lui        $at, %hi(D_800D7140)
/* 9C41C 8009B81C D4207140 */  ldc1       $f0, %lo(D_800D7140)($at)
.L8009B820:
/* 9C420 8009B820 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C424 8009B824 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C428 8009B828 03E00008 */  jr         $ra
/* 9C42C 8009B82C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8009B830
/* 9C430 8009B830 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C434 8009B834 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C438 8009B838 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9C43C 8009B83C 46206506 */  mov.d      $f20, $f12
/* 9C440 8009B840 4620A085 */  abs.d      $f2, $f20
/* 9C444 8009B844 3C01800D */  lui        $at, %hi(D_800D7150)
/* 9C448 8009B848 D4207150 */  ldc1       $f0, %lo(D_800D7150)($at)
/* 9C44C 8009B84C 4622003C */  c.lt.d     $f0, $f2
/* 9C450 8009B850 00000000 */  nop
/* 9C454 8009B854 00000000 */  nop
/* 9C458 8009B858 45020005 */  bc1fl      .L8009B870
/* 9C45C 8009B85C 4634A082 */   mul.d     $f2, $f20, $f20
/* 9C460 8009B860 44800000 */  mtc1       $zero, $f0
/* 9C464 8009B864 44800800 */  mtc1       $zero, $f1
/* 9C468 8009B868 08026E37 */  j          .L8009B8DC
/* 9C46C 8009B86C 00000000 */   nop
.L8009B870:
/* 9C470 8009B870 46220301 */  sub.d      $f12, $f0, $f2
/* 9C474 8009B874 46206384 */  sqrt.d     $f14, $f12
/* 9C478 8009B878 462E7032 */  c.eq.d     $f14, $f14
/* 9C47C 8009B87C 00000000 */  nop
/* 9C480 8009B880 45010004 */  bc1t       .L8009B894
/* 9C484 8009B884 00000000 */   nop
/* 9C488 8009B888 0C026F44 */  jal        func_8009BD10
/* 9C48C 8009B88C 00000000 */   nop
/* 9C490 8009B890 46200386 */  mov.d      $f14, $f0
.L8009B894:
/* 9C494 8009B894 44800000 */  mtc1       $zero, $f0
/* 9C498 8009B898 44800800 */  mtc1       $zero, $f1
/* 9C49C 8009B89C 00000000 */  nop
/* 9C4A0 8009B8A0 46207032 */  c.eq.d     $f14, $f0
/* 9C4A4 8009B8A4 00000000 */  nop
/* 9C4A8 8009B8A8 45010005 */  bc1t       .L8009B8C0
/* 9C4AC 8009B8AC 00000000 */   nop
/* 9C4B0 8009B8B0 0C026E44 */  jal        func_8009B910
/* 9C4B4 8009B8B4 4620A306 */   mov.d     $f12, $f20
/* 9C4B8 8009B8B8 08026E37 */  j          .L8009B8DC
/* 9C4BC 8009B8BC 00000000 */   nop
.L8009B8C0:
/* 9C4C0 8009B8C0 4634003C */  c.lt.d     $f0, $f20
/* 9C4C4 8009B8C4 3C01800D */  lui        $at, %hi(D_800D7158)
/* 9C4C8 8009B8C8 D4207158 */  ldc1       $f0, %lo(D_800D7158)($at)
/* 9C4CC 8009B8CC 45010003 */  bc1t       .L8009B8DC
/* 9C4D0 8009B8D0 00000000 */   nop
/* 9C4D4 8009B8D4 3C01800D */  lui        $at, %hi(D_800D7160)
/* 9C4D8 8009B8D8 D4207160 */  ldc1       $f0, %lo(D_800D7160)($at)
.L8009B8DC:
/* 9C4DC 8009B8DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C4E0 8009B8E0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C4E4 8009B8E4 03E00008 */  jr         $ra
/* 9C4E8 8009B8E8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9C4EC 8009B8EC 00000000 */  nop

glabel func_8009B8F0
/* 9C4F0 8009B8F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C4F4 8009B8F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C4F8 8009B8F8 3C01800D */  lui        $at, %hi(D_800D7170)
/* 9C4FC 8009B8FC 0C026E44 */  jal        func_8009B910
/* 9C500 8009B900 D42E7170 */   ldc1      $f14, %lo(D_800D7170)($at)
/* 9C504 8009B904 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C508 8009B908 03E00008 */  jr         $ra
/* 9C50C 8009B90C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8009B910
/* 9C510 8009B910 44800000 */  mtc1       $zero, $f0
/* 9C514 8009B914 44800800 */  mtc1       $zero, $f1
/* 9C518 8009B918 00000000 */  nop
/* 9C51C 8009B91C 46207032 */  c.eq.d     $f14, $f0
/* 9C520 8009B920 00000000 */  nop
/* 9C524 8009B924 00000000 */  nop
/* 9C528 8009B928 45010005 */  bc1t       .L8009B940
/* 9C52C 8009B92C 24020001 */   addiu     $v0, $zero, 0x1
/* 9C530 8009B930 00001021 */  addu       $v0, $zero, $zero
/* 9C534 8009B934 44800000 */  mtc1       $zero, $f0
/* 9C538 8009B938 44800800 */  mtc1       $zero, $f1
/* 9C53C 8009B93C 00000000 */  nop
.L8009B940:
/* 9C540 8009B940 46206032 */  c.eq.d     $f12, $f0
/* 9C544 8009B944 00000000 */  nop
/* 9C548 8009B948 00000000 */  nop
/* 9C54C 8009B94C 45010002 */  bc1t       .L8009B958
/* 9C550 8009B950 24030001 */   addiu     $v1, $zero, 0x1
/* 9C554 8009B954 00001821 */  addu       $v1, $zero, $zero
.L8009B958:
/* 9C558 8009B958 00431024 */  and        $v0, $v0, $v1
/* 9C55C 8009B95C 10400005 */  beqz       $v0, .L8009B974
/* 9C560 8009B960 00000000 */   nop
/* 9C564 8009B964 44800000 */  mtc1       $zero, $f0
/* 9C568 8009B968 44800800 */  mtc1       $zero, $f1
/* 9C56C 8009B96C 08026EB5 */  j          .L8009BAD4
/* 9C570 8009B970 00000000 */   nop
.L8009B974:
/* 9C574 8009B974 44800000 */  mtc1       $zero, $f0
/* 9C578 8009B978 44800800 */  mtc1       $zero, $f1
/* 9C57C 8009B97C 00000000 */  nop
/* 9C580 8009B980 46207032 */  c.eq.d     $f14, $f0
/* 9C584 8009B984 00000000 */  nop
/* 9C588 8009B988 00000000 */  nop
/* 9C58C 8009B98C 45020009 */  bc1fl      .L8009B9B4
/* 9C590 8009B990 462E6203 */   div.d     $f8, $f12, $f14
/* 9C594 8009B994 462C003C */  c.lt.d     $f0, $f12
/* 9C598 8009B998 3C01800D */  lui        $at, %hi(D_800D7180)
/* 9C59C 8009B99C D4207180 */  ldc1       $f0, %lo(D_800D7180)($at)
/* 9C5A0 8009B9A0 4500004C */  bc1f       .L8009BAD4
/* 9C5A4 8009B9A4 00000000 */   nop
/* 9C5A8 8009B9A8 3C01800D */  lui        $at, %hi(D_800D7188)
/* 9C5AC 8009B9AC 08026EB5 */  j          .L8009BAD4
/* 9C5B0 8009B9B0 D4207188 */   ldc1      $f0, %lo(D_800D7188)($at)
.L8009B9B4:
/* 9C5B4 8009B9B4 46204085 */  abs.d      $f2, $f8
/* 9C5B8 8009B9B8 3C01800D */  lui        $at, %hi(D_800D7190)
/* 9C5BC 8009B9BC D4207190 */  ldc1       $f0, %lo(D_800D7190)($at)
/* 9C5C0 8009B9C0 4620103E */  c.le.d     $f2, $f0
/* 9C5C4 8009B9C4 00000000 */  nop
/* 9C5C8 8009B9C8 00000000 */  nop
/* 9C5CC 8009B9CC 45010002 */  bc1t       .L8009B9D8
/* 9C5D0 8009B9D0 46204106 */   mov.d     $f4, $f8
/* 9C5D4 8009B9D4 46280103 */  div.d      $f4, $f0, $f8
.L8009B9D8:
/* 9C5D8 8009B9D8 44803000 */  mtc1       $zero, $f6
/* 9C5DC 8009B9DC 44803800 */  mtc1       $zero, $f7
/* 9C5E0 8009B9E0 2403000E */  addiu      $v1, $zero, 0xE
.L8009B9E4:
/* 9C5E4 8009B9E4 00000000 */  nop
/* 9C5E8 8009B9E8 00630018 */  mult       $v1, $v1
/* 9C5EC 8009B9EC 00001012 */  mflo       $v0
/* 9C5F0 8009B9F0 44821000 */  mtc1       $v0, $f2
/* 9C5F4 8009B9F4 00000000 */  nop
/* 9C5F8 8009B9F8 468010A1 */  cvt.d.w    $f2, $f2
/* 9C5FC 8009B9FC 46241082 */  mul.d      $f2, $f2, $f4
/* 9C600 8009BA00 00000000 */  nop
/* 9C604 8009BA04 46241082 */  mul.d      $f2, $f2, $f4
/* 9C608 8009BA08 00031040 */  sll        $v0, $v1, 1
/* 9C60C 8009BA0C 24420001 */  addiu      $v0, $v0, 0x1
/* 9C610 8009BA10 44820000 */  mtc1       $v0, $f0
/* 9C614 8009BA14 00000000 */  nop
/* 9C618 8009BA18 46800021 */  cvt.d.w    $f0, $f0
/* 9C61C 8009BA1C 46260000 */  add.d      $f0, $f0, $f6
/* 9C620 8009BA20 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C624 8009BA24 1C60FFEF */  bgtz       $v1, .L8009B9E4
/* 9C628 8009BA28 46201183 */   div.d     $f6, $f2, $f0
/* 9C62C 8009BA2C 3C01800D */  lui        $at, %hi(D_800D7198)
/* 9C630 8009BA30 D4227198 */  ldc1       $f2, %lo(D_800D7198)($at)
/* 9C634 8009BA34 46223000 */  add.d      $f0, $f6, $f2
/* 9C638 8009BA38 4628103C */  c.lt.d     $f2, $f8
/* 9C63C 8009BA3C 00000000 */  nop
/* 9C640 8009BA40 00000000 */  nop
/* 9C644 8009BA44 45000004 */  bc1f       .L8009BA58
/* 9C648 8009BA48 46202103 */   div.d     $f4, $f4, $f0
/* 9C64C 8009BA4C 3C01800D */  lui        $at, %hi(D_800D71A0)
/* 9C650 8009BA50 D42071A0 */  ldc1       $f0, %lo(D_800D71A0)($at)
/* 9C654 8009BA54 46240101 */  sub.d      $f4, $f0, $f4
.L8009BA58:
/* 9C658 8009BA58 3C01800D */  lui        $at, %hi(D_800D71A8)
/* 9C65C 8009BA5C D42071A8 */  ldc1       $f0, %lo(D_800D71A8)($at)
/* 9C660 8009BA60 4620403C */  c.lt.d     $f8, $f0
/* 9C664 8009BA64 00000000 */  nop
/* 9C668 8009BA68 45000004 */  bc1f       .L8009BA7C
/* 9C66C 8009BA6C 00000000 */   nop
/* 9C670 8009BA70 3C01800D */  lui        $at, %hi(D_800D71B0)
/* 9C674 8009BA74 D42071B0 */  ldc1       $f0, %lo(D_800D71B0)($at)
/* 9C678 8009BA78 46240101 */  sub.d      $f4, $f0, $f4
.L8009BA7C:
/* 9C67C 8009BA7C 44800000 */  mtc1       $zero, $f0
/* 9C680 8009BA80 44800800 */  mtc1       $zero, $f1
/* 9C684 8009BA84 00000000 */  nop
/* 9C688 8009BA88 462E003C */  c.lt.d     $f0, $f14
/* 9C68C 8009BA8C 00000000 */  nop
/* 9C690 8009BA90 00000000 */  nop
/* 9C694 8009BA94 4501000F */  bc1t       .L8009BAD4
/* 9C698 8009BA98 46202006 */   mov.d     $f0, $f4
/* 9C69C 8009BA9C 44800000 */  mtc1       $zero, $f0
/* 9C6A0 8009BAA0 44800800 */  mtc1       $zero, $f1
/* 9C6A4 8009BAA4 00000000 */  nop
/* 9C6A8 8009BAA8 462C003C */  c.lt.d     $f0, $f12
/* 9C6AC 8009BAAC 00000000 */  nop
/* 9C6B0 8009BAB0 45010005 */  bc1t       .L8009BAC8
/* 9C6B4 8009BAB4 00000000 */   nop
/* 9C6B8 8009BAB8 3C01800D */  lui        $at, %hi(D_800D71B8)
/* 9C6BC 8009BABC D42071B8 */  ldc1       $f0, %lo(D_800D71B8)($at)
/* 9C6C0 8009BAC0 08026EB5 */  j          .L8009BAD4
/* 9C6C4 8009BAC4 46202001 */   sub.d     $f0, $f4, $f0
.L8009BAC8:
/* 9C6C8 8009BAC8 3C01800D */  lui        $at, %hi(D_800D71C0)
/* 9C6CC 8009BACC D42071C0 */  ldc1       $f0, %lo(D_800D71C0)($at)
/* 9C6D0 8009BAD0 46202000 */  add.d      $f0, $f4, $f0
.L8009BAD4:
/* 9C6D4 8009BAD4 03E00008 */  jr         $ra
/* 9C6D8 8009BAD8 00000000 */   nop
/* 9C6DC 8009BADC 00000000 */  nop

glabel func_8009BAE0
/* 9C6E0 8009BAE0 44800000 */  mtc1       $zero, $f0
/* 9C6E4 8009BAE4 44800800 */  mtc1       $zero, $f1
/* 9C6E8 8009BAE8 00000000 */  nop
/* 9C6EC 8009BAEC 4620603C */  c.lt.d     $f12, $f0
/* 9C6F0 8009BAF0 00000000 */  nop
/* 9C6F4 8009BAF4 45010039 */  bc1t       .L8009BBDC
/* 9C6F8 8009BAF8 00000000 */   nop
/* 9C6FC 8009BAFC 46206032 */  c.eq.d     $f12, $f0
/* 9C700 8009BB00 00000000 */  nop
/* 9C704 8009BB04 45010035 */  bc1t       .L8009BBDC
/* 9C708 8009BB08 00000000 */   nop
/* 9C70C 8009BB0C 44803000 */  mtc1       $zero, $f6
/* 9C710 8009BB10 44803800 */  mtc1       $zero, $f7
/* 9C714 8009BB14 3C01800D */  lui        $at, %hi(D_800D71D0)
/* 9C718 8009BB18 D42071D0 */  ldc1       $f0, %lo(D_800D71D0)($at)
/* 9C71C 8009BB1C 462C003E */  c.le.d     $f0, $f12
/* 9C720 8009BB20 00000000 */  nop
/* 9C724 8009BB24 45000009 */  bc1f       .L8009BB4C
/* 9C728 8009BB28 00000000 */   nop
/* 9C72C 8009BB2C 3C01800D */  lui        $at, %hi(D_800D71D8)
/* 9C730 8009BB30 D42271D8 */  ldc1       $f2, %lo(D_800D71D8)($at)
.L8009BB34:
/* 9C734 8009BB34 46206303 */  div.d      $f12, $f12, $f0
/* 9C738 8009BB38 462C003E */  c.le.d     $f0, $f12
/* 9C73C 8009BB3C 00000000 */  nop
/* 9C740 8009BB40 00000000 */  nop
/* 9C744 8009BB44 4501FFFB */  bc1t       .L8009BB34
/* 9C748 8009BB48 46223180 */   add.d     $f6, $f6, $f2
.L8009BB4C:
/* 9C74C 8009BB4C 3C01800D */  lui        $at, %hi(D_800D71E0)
/* 9C750 8009BB50 D42071E0 */  ldc1       $f0, %lo(D_800D71E0)($at)
/* 9C754 8009BB54 4620603C */  c.lt.d     $f12, $f0
/* 9C758 8009BB58 00000000 */  nop
/* 9C75C 8009BB5C 00000000 */  nop
/* 9C760 8009BB60 45000009 */  bc1f       .L8009BB88
/* 9C764 8009BB64 46200086 */   mov.d     $f2, $f0
/* 9C768 8009BB68 3C01800D */  lui        $at, %hi(D_800D71E8)
/* 9C76C 8009BB6C D42071E8 */  ldc1       $f0, %lo(D_800D71E8)($at)
.L8009BB70:
/* 9C770 8009BB70 462C6300 */  add.d      $f12, $f12, $f12
/* 9C774 8009BB74 4622603C */  c.lt.d     $f12, $f2
/* 9C778 8009BB78 00000000 */  nop
/* 9C77C 8009BB7C 00000000 */  nop
/* 9C780 8009BB80 4501FFFB */  bc1t       .L8009BB70
/* 9C784 8009BB84 46203181 */   sub.d     $f6, $f6, $f0
.L8009BB88:
/* 9C788 8009BB88 24020001 */  addiu      $v0, $zero, 0x1
/* 9C78C 8009BB8C 3C01800D */  lui        $at, %hi(D_800D71F0)
/* 9C790 8009BB90 D42071F0 */  ldc1       $f0, %lo(D_800D71F0)($at)
/* 9C794 8009BB94 46206101 */  sub.d      $f4, $f12, $f0
/* 9C798 8009BB98 46206000 */  add.d      $f0, $f12, $f0
/* 9C79C 8009BB9C 46202103 */  div.d      $f4, $f4, $f0
/* 9C7A0 8009BBA0 46242200 */  add.d      $f8, $f4, $f4
/* 9C7A4 8009BBA4 46242102 */  mul.d      $f4, $f4, $f4
.L8009BBA8:
/* 9C7A8 8009BBA8 46203086 */  mov.d      $f2, $f6
/* 9C7AC 8009BBAC 44820000 */  mtc1       $v0, $f0
/* 9C7B0 8009BBB0 00000000 */  nop
/* 9C7B4 8009BBB4 46800021 */  cvt.d.w    $f0, $f0
/* 9C7B8 8009BBB8 46204003 */  div.d      $f0, $f8, $f0
/* 9C7BC 8009BBBC 46203180 */  add.d      $f6, $f6, $f0
/* 9C7C0 8009BBC0 46244202 */  mul.d      $f8, $f8, $f4
/* 9C7C4 8009BBC4 46223032 */  c.eq.d     $f6, $f2
/* 9C7C8 8009BBC8 00000000 */  nop
/* 9C7CC 8009BBCC 00000000 */  nop
/* 9C7D0 8009BBD0 4500FFF5 */  bc1f       .L8009BBA8
/* 9C7D4 8009BBD4 24420002 */   addiu     $v0, $v0, 0x2
/* 9C7D8 8009BBD8 46203006 */  mov.d      $f0, $f6
.L8009BBDC:
/* 9C7DC 8009BBDC 03E00008 */  jr         $ra
/* 9C7E0 8009BBE0 00000000 */   nop
/* 9C7E4 8009BBE4 00000000 */  nop
/* 9C7E8 8009BBE8 00000000 */  nop
/* 9C7EC 8009BBEC 00000000 */  nop

glabel func_8009BBF0
/* 9C7F0 8009BBF0 46206105 */  abs.d      $f4, $f12
/* 9C7F4 8009BBF4 3C01800D */  lui        $at, %hi(D_800D7208)
/* 9C7F8 8009BBF8 D4207208 */  ldc1       $f0, %lo(D_800D7208)($at)
/* 9C7FC 8009BBFC 4620203C */  c.lt.d     $f4, $f0
/* 9C800 8009BC00 00000000 */  nop
/* 9C804 8009BC04 45000004 */  bc1f       .L8009BC18
/* 9C808 8009BC08 00000000 */   nop
/* 9C80C 8009BC0C 3C01800D */  lui        $at, %hi(D_800D7210)
/* 9C810 8009BC10 08026F3F */  j          .L8009BCFC
/* 9C814 8009BC14 D4207210 */   ldc1      $f0, %lo(D_800D7210)($at)
.L8009BC18:
/* 9C818 8009BC18 3C01800D */  lui        $at, %hi(D_800D7218)
/* 9C81C 8009BC1C D4207218 */  ldc1       $f0, %lo(D_800D7218)($at)
/* 9C820 8009BC20 46202003 */  div.d      $f0, $f4, $f0
/* 9C824 8009BC24 4620008D */  trunc.w.d  $f2, $f0
/* 9C828 8009BC28 44031000 */  mfc1       $v1, $f2
/* 9C82C 8009BC2C 00000000 */  nop
/* 9C830 8009BC30 28620401 */  slti       $v0, $v1, 0x401
/* 9C834 8009BC34 5440000B */  bnel       $v0, $zero, .L8009BC64
/* 9C838 8009BC38 24020001 */   addiu     $v0, $zero, 0x1
/* 9C83C 8009BC3C 44800000 */  mtc1       $zero, $f0
/* 9C840 8009BC40 44800800 */  mtc1       $zero, $f1
/* 9C844 8009BC44 00000000 */  nop
/* 9C848 8009BC48 462C003E */  c.le.d     $f0, $f12
/* 9C84C 8009BC4C 00000000 */  nop
/* 9C850 8009BC50 4500002A */  bc1f       .L8009BCFC
/* 9C854 8009BC54 00000000 */   nop
/* 9C858 8009BC58 3C01800D */  lui        $at, %hi(D_800D7200)
/* 9C85C 8009BC5C 08026F3F */  j          .L8009BCFC
/* 9C860 8009BC60 D4207200 */   ldc1      $f0, %lo(D_800D7200)($at)
.L8009BC64:
/* 9C864 8009BC64 44830000 */  mtc1       $v1, $f0
/* 9C868 8009BC68 00000000 */  nop
/* 9C86C 8009BC6C 46800021 */  cvt.d.w    $f0, $f0
/* 9C870 8009BC70 3C01800D */  lui        $at, %hi(D_800D7220)
/* 9C874 8009BC74 D4227220 */  ldc1       $f2, %lo(D_800D7220)($at)
/* 9C878 8009BC78 46220002 */  mul.d      $f0, $f0, $f2
/* 9C87C 8009BC7C 46202201 */  sub.d      $f8, $f4, $f0
/* 9C880 8009BC80 3C01800D */  lui        $at, %hi(D_800D7228)
/* 9C884 8009BC84 D4247228 */  ldc1       $f4, %lo(D_800D7228)($at)
/* 9C888 8009BC88 46202186 */  mov.d      $f6, $f4
.L8009BC8C:
/* 9C88C 8009BC8C 46202086 */  mov.d      $f2, $f4
/* 9C890 8009BC90 44820000 */  mtc1       $v0, $f0
/* 9C894 8009BC94 00000000 */  nop
/* 9C898 8009BC98 46800021 */  cvt.d.w    $f0, $f0
/* 9C89C 8009BC9C 46204003 */  div.d      $f0, $f8, $f0
/* 9C8A0 8009BCA0 46203182 */  mul.d      $f6, $f6, $f0
/* 9C8A4 8009BCA4 46262100 */  add.d      $f4, $f4, $f6
/* 9C8A8 8009BCA8 46222032 */  c.eq.d     $f4, $f2
/* 9C8AC 8009BCAC 00000000 */  nop
/* 9C8B0 8009BCB0 00000000 */  nop
/* 9C8B4 8009BCB4 4500FFF5 */  bc1f       .L8009BC8C
/* 9C8B8 8009BCB8 24420001 */   addiu     $v0, $v0, 0x1
/* 9C8BC 8009BCBC 10600004 */  beqz       $v1, .L8009BCD0
/* 9C8C0 8009BCC0 00000000 */   nop
.L8009BCC4:
/* 9C8C4 8009BCC4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C8C8 8009BCC8 1460FFFE */  bnez       $v1, .L8009BCC4
/* 9C8CC 8009BCCC 46242100 */   add.d     $f4, $f4, $f4
.L8009BCD0:
/* 9C8D0 8009BCD0 44800000 */  mtc1       $zero, $f0
/* 9C8D4 8009BCD4 44800800 */  mtc1       $zero, $f1
/* 9C8D8 8009BCD8 00000000 */  nop
/* 9C8DC 8009BCDC 462C003E */  c.le.d     $f0, $f12
/* 9C8E0 8009BCE0 00000000 */  nop
/* 9C8E4 8009BCE4 00000000 */  nop
/* 9C8E8 8009BCE8 45030004 */  bc1tl      .L8009BCFC
/* 9C8EC 8009BCEC 46202006 */   mov.d     $f0, $f4
/* 9C8F0 8009BCF0 3C01800D */  lui        $at, %hi(D_800D7230)
/* 9C8F4 8009BCF4 D4207230 */  ldc1       $f0, %lo(D_800D7230)($at)
/* 9C8F8 8009BCF8 46240003 */  div.d      $f0, $f0, $f4
.L8009BCFC:
/* 9C8FC 8009BCFC 03E00008 */  jr         $ra
/* 9C900 8009BD00 00000000 */   nop
/* 9C904 8009BD04 00000000 */  nop
/* 9C908 8009BD08 00000000 */  nop
/* 9C90C 8009BD0C 00000000 */  nop

glabel func_8009BD10
/* 9C910 8009BD10 03E00008 */  jr         $ra
/* 9C914 8009BD14 46206004 */   sqrt.d    $f0, $f12
/* 9C918 8009BD18 00000000 */  nop
/* 9C91C 8009BD1C 00000000 */  nop

glabel func_8009BD20
/* 9C920 8009BD20 0086C82A */  slt        $t9, $a0, $a2
/* 9C924 8009BD24 1720000A */  bnez       $t9, .L8009BD50
/* 9C928 8009BD28 00000000 */   nop
/* 9C92C 8009BD2C 1086000A */  beq        $a0, $a2, .L8009BD58
/* 9C930 8009BD30 00000000 */   nop
/* 9C934 8009BD34 00A7C82A */  slt        $t9, $a1, $a3
/* 9C938 8009BD38 17200005 */  bnez       $t9, .L8009BD50
/* 9C93C 8009BD3C 00000000 */   nop
/* 9C940 8009BD40 10A70005 */  beq        $a1, $a3, .L8009BD58
/* 9C944 8009BD44 00000000 */   nop
/* 9C948 8009BD48 03E00008 */  jr         $ra
/* 9C94C 8009BD4C 24020001 */   addiu     $v0, $zero, 0x1
.L8009BD50:
/* 9C950 8009BD50 03E00008 */  jr         $ra
/* 9C954 8009BD54 00421026 */   xor       $v0, $v0, $v0
.L8009BD58:
/* 9C958 8009BD58 03E00008 */  jr         $ra
/* 9C95C 8009BD5C 24020002 */   addiu     $v0, $zero, 0x2
/* 9C960 8009BD60 0086C82B */  sltu       $t9, $a0, $a2
/* 9C964 8009BD64 1720FFFA */  bnez       $t9, .L8009BD50
/* 9C968 8009BD68 00000000 */   nop
/* 9C96C 8009BD6C 14C4FFFA */  bne        $a2, $a0, .L8009BD58
/* 9C970 8009BD70 00000000 */   nop
/* 9C974 8009BD74 00A7C82B */  sltu       $t9, $a1, $a3
/* 9C978 8009BD78 1720FFF5 */  bnez       $t9, .L8009BD50
/* 9C97C 8009BD7C 00000000 */   nop
/* 9C980 8009BD80 14E5FFF5 */  bne        $a3, $a1, .L8009BD58
/* 9C984 8009BD84 00000000 */   nop
/* 9C988 8009BD88 03E00008 */  jr         $ra
/* 9C98C 8009BD8C 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8009BD90
/* 9C990 8009BD90 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9C994 8009BD94 F7AC0000 */  sdc1       $f12, 0x0($sp)
/* 9C998 8009BD98 8FA40000 */  lw         $a0, 0x0($sp)
/* 9C99C 8009BD9C 8FA50004 */  lw         $a1, 0x4($sp)
/* 9C9A0 8009BDA0 27BD0008 */  addiu      $sp, $sp, 0x8
/* 9C9A4 8009BDA4 00801821 */  addu       $v1, $a0, $zero
/* 9C9A8 8009BDA8 00042502 */  srl        $a0, $a0, 20
/* 9C9AC 8009BDAC 308407FF */  andi       $a0, $a0, 0x7FF
/* 9C9B0 8009BDB0 2C9903FF */  sltiu      $t9, $a0, 0x3FF
/* 9C9B4 8009BDB4 1720003A */  bnez       $t9, .L8009BEA0
/* 9C9B8 8009BDB8 2484FC01 */   addiu     $a0, $a0, -0x3FF
/* 9C9BC 8009BDBC 2C990040 */  sltiu      $t9, $a0, 0x40
/* 9C9C0 8009BDC0 13200034 */  beqz       $t9, .L8009BE94
/* 9C9C4 8009BDC4 00000000 */   nop
/* 9C9C8 8009BDC8 00603021 */  addu       $a2, $v1, $zero
/* 9C9CC 8009BDCC 00A03821 */  addu       $a3, $a1, $zero
/* 9C9D0 8009BDD0 00601021 */  addu       $v0, $v1, $zero
/* 9C9D4 8009BDD4 3C19000F */  lui        $t9, (0xFFFFF >> 16)
/* 9C9D8 8009BDD8 3739FFFF */  ori        $t9, $t9, (0xFFFFF & 0xFFFF)
/* 9C9DC 8009BDDC 00591024 */  and        $v0, $v0, $t9
/* 9C9E0 8009BDE0 3C190010 */  lui        $t9, (0x100000 >> 16)
/* 9C9E4 8009BDE4 00591025 */  or         $v0, $v0, $t9
/* 9C9E8 8009BDE8 2C990034 */  sltiu      $t9, $a0, 0x34
/* 9C9EC 8009BDEC 1720000D */  bnez       $t9, .L8009BE24
/* 9C9F0 8009BDF0 2484FFCC */   addiu     $a0, $a0, -0x34
/* 9C9F4 8009BDF4 1080001B */  beqz       $a0, .L8009BE64
/* 9C9F8 8009BDF8 00000000 */   nop
/* 9C9FC 8009BDFC 00801821 */  addu       $v1, $a0, $zero
/* 9CA00 8009BE00 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 9CA04 8009BE04 00042023 */  negu       $a0, $a0
/* 9CA08 8009BE08 00E02821 */  addu       $a1, $a3, $zero
/* 9CA0C 8009BE0C 00852806 */  srlv       $a1, $a1, $a0
/* 9CA10 8009BE10 00602021 */  addu       $a0, $v1, $zero
/* 9CA14 8009BE14 00821004 */  sllv       $v0, $v0, $a0
/* 9CA18 8009BE18 00451025 */  or         $v0, $v0, $a1
/* 9CA1C 8009BE1C 08026F99 */  j          .L8009BE64
/* 9CA20 8009BE20 00873804 */   sllv      $a3, $a3, $a0
.L8009BE24:
/* 9CA24 8009BE24 00042023 */  negu       $a0, $a0
/* 9CA28 8009BE28 00801821 */  addu       $v1, $a0, $zero
/* 9CA2C 8009BE2C 2C990020 */  sltiu      $t9, $a0, 0x20
/* 9CA30 8009BE30 17200005 */  bnez       $t9, .L8009BE48
/* 9CA34 8009BE34 2484FFE0 */   addiu     $a0, $a0, -0x20
/* 9CA38 8009BE38 00403821 */  addu       $a3, $v0, $zero
/* 9CA3C 8009BE3C 00421026 */  xor        $v0, $v0, $v0
/* 9CA40 8009BE40 08026F99 */  j          .L8009BE64
/* 9CA44 8009BE44 00873806 */   srlv      $a3, $a3, $a0
.L8009BE48:
/* 9CA48 8009BE48 00042023 */  negu       $a0, $a0
/* 9CA4C 8009BE4C 00402821 */  addu       $a1, $v0, $zero
/* 9CA50 8009BE50 00852804 */  sllv       $a1, $a1, $a0
/* 9CA54 8009BE54 00602021 */  addu       $a0, $v1, $zero
/* 9CA58 8009BE58 00873806 */  srlv       $a3, $a3, $a0
/* 9CA5C 8009BE5C 00E53825 */  or         $a3, $a3, $a1
/* 9CA60 8009BE60 00821006 */  srlv       $v0, $v0, $a0
.L8009BE64:
/* 9CA64 8009BE64 3C198000 */  lui        $t9, (0x80000000 >> 16)
/* 9CA68 8009BE68 0326C824 */  and        $t9, $t9, $a2
/* 9CA6C 8009BE6C 13200007 */  beqz       $t9, .L8009BE8C
/* 9CA70 8009BE70 00000000 */   nop
/* 9CA74 8009BE74 2403FFFF */  addiu      $v1, $zero, -0x1
/* 9CA78 8009BE78 00E33826 */  xor        $a3, $a3, $v1
/* 9CA7C 8009BE7C 00431026 */  xor        $v0, $v0, $v1
/* 9CA80 8009BE80 24E70001 */  addiu      $a3, $a3, 0x1
/* 9CA84 8009BE84 2CF90001 */  sltiu      $t9, $a3, 0x1
/* 9CA88 8009BE88 00591021 */  addu       $v0, $v0, $t9
.L8009BE8C:
/* 9CA8C 8009BE8C 03E00008 */  jr         $ra
/* 9CA90 8009BE90 00E01821 */   addu      $v1, $a3, $zero
.L8009BE94:
/* 9CA94 8009BE94 24030000 */  addiu      $v1, $zero, 0x0
/* 9CA98 8009BE98 03E00008 */  jr         $ra
/* 9CA9C 8009BE9C 3C028000 */   lui       $v0, (0x80000000 >> 16)
.L8009BEA0:
/* 9CAA0 8009BEA0 00421026 */  xor        $v0, $v0, $v0
/* 9CAA4 8009BEA4 03E00008 */  jr         $ra
/* 9CAA8 8009BEA8 00631826 */   xor       $v1, $v1, $v1
/* 9CAAC 8009BEAC 00000000 */  nop

glabel func_8009BEB0
/* 9CAB0 8009BEB0 00A01821 */  addu       $v1, $a1, $zero
/* 9CAB4 8009BEB4 00801021 */  addu       $v0, $a0, $zero
/* 9CAB8 8009BEB8 00852025 */  or         $a0, $a0, $a1
/* 9CABC 8009BEBC 14800007 */  bnez       $a0, .L8009BEDC
/* 9CAC0 8009BEC0 00000000 */   nop
/* 9CAC4 8009BEC4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9CAC8 8009BEC8 AFA20000 */  sw         $v0, 0x0($sp)
/* 9CACC 8009BECC AFA30004 */  sw         $v1, 0x4($sp)
/* 9CAD0 8009BED0 D7A00000 */  ldc1       $f0, 0x0($sp)
/* 9CAD4 8009BED4 03E00008 */  jr         $ra
/* 9CAD8 8009BED8 27BD0008 */   addiu     $sp, $sp, 0x8
.L8009BEDC:
/* 9CADC 8009BEDC 00C63026 */  xor        $a2, $a2, $a2
/* 9CAE0 8009BEE0 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 9CAE4 8009BEE4 0082C824 */  and        $t9, $a0, $v0
/* 9CAE8 8009BEE8 13200008 */  beqz       $t9, .L8009BF0C
/* 9CAEC 8009BEEC 00000000 */   nop
/* 9CAF0 8009BEF0 2407FFFF */  addiu      $a3, $zero, -0x1
/* 9CAF4 8009BEF4 00671826 */  xor        $v1, $v1, $a3
/* 9CAF8 8009BEF8 00471026 */  xor        $v0, $v0, $a3
/* 9CAFC 8009BEFC 24630001 */  addiu      $v1, $v1, 0x1
/* 9CB00 8009BF00 2C790001 */  sltiu      $t9, $v1, 0x1
/* 9CB04 8009BF04 00591021 */  addu       $v0, $v0, $t9
/* 9CB08 8009BF08 00803021 */  addu       $a2, $a0, $zero
.L8009BF0C:
/* 9CB0C 8009BF0C 00842026 */  xor        $a0, $a0, $a0
/* 9CB10 8009BF10 3C19FFE0 */  lui        $t9, (0xFFE00000 >> 16)
/* 9CB14 8009BF14 0322C824 */  and        $t9, $t9, $v0
/* 9CB18 8009BF18 1320000C */  beqz       $t9, .L8009BF4C
/* 9CB1C 8009BF1C 00000000 */   nop
.L8009BF20:
/* 9CB20 8009BF20 0002CFC0 */  sll        $t9, $v0, 31
/* 9CB24 8009BF24 00031842 */  srl        $v1, $v1, 1
/* 9CB28 8009BF28 00791825 */  or         $v1, $v1, $t9
/* 9CB2C 8009BF2C 00021042 */  srl        $v0, $v0, 1
/* 9CB30 8009BF30 24840001 */  addiu      $a0, $a0, 0x1
/* 9CB34 8009BF34 3C19FFE0 */  lui        $t9, (0xFFE00000 >> 16)
/* 9CB38 8009BF38 0322C824 */  and        $t9, $t9, $v0
/* 9CB3C 8009BF3C 1720FFF8 */  bnez       $t9, .L8009BF20
/* 9CB40 8009BF40 00000000 */   nop
/* 9CB44 8009BF44 08026FDD */  j          .L8009BF74
/* 9CB48 8009BF48 00000000 */   nop
.L8009BF4C:
/* 9CB4C 8009BF4C 3C190010 */  lui        $t9, (0x100000 >> 16)
/* 9CB50 8009BF50 0322C824 */  and        $t9, $t9, $v0
/* 9CB54 8009BF54 17200007 */  bnez       $t9, .L8009BF74
/* 9CB58 8009BF58 00000000 */   nop
/* 9CB5C 8009BF5C 0003CFC2 */  srl        $t9, $v1, 31
/* 9CB60 8009BF60 00021040 */  sll        $v0, $v0, 1
/* 9CB64 8009BF64 00591025 */  or         $v0, $v0, $t9
/* 9CB68 8009BF68 00031840 */  sll        $v1, $v1, 1
/* 9CB6C 8009BF6C 08026FD3 */  j          .L8009BF4C
/* 9CB70 8009BF70 2484FFFF */   addiu     $a0, $a0, -0x1
.L8009BF74:
/* 9CB74 8009BF74 3C19000F */  lui        $t9, (0xFFFFF >> 16)
/* 9CB78 8009BF78 3739FFFF */  ori        $t9, $t9, (0xFFFFF & 0xFFFF)
/* 9CB7C 8009BF7C 00591024 */  and        $v0, $v0, $t9
/* 9CB80 8009BF80 00461025 */  or         $v0, $v0, $a2
/* 9CB84 8009BF84 24840433 */  addiu      $a0, $a0, 0x433
/* 9CB88 8009BF88 00042500 */  sll        $a0, $a0, 20
/* 9CB8C 8009BF8C 00441025 */  or         $v0, $v0, $a0
/* 9CB90 8009BF90 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9CB94 8009BF94 AFA20000 */  sw         $v0, 0x0($sp)
/* 9CB98 8009BF98 AFA30004 */  sw         $v1, 0x4($sp)
/* 9CB9C 8009BF9C D7A00000 */  ldc1       $f0, 0x0($sp)
/* 9CBA0 8009BFA0 03E00008 */  jr         $ra
/* 9CBA4 8009BFA4 27BD0008 */   addiu     $sp, $sp, 0x8
/* 9CBA8 8009BFA8 00000000 */  nop
/* 9CBAC 8009BFAC 00000000 */  nop

# Handwritten function
glabel func_8009BFB0
/* 9CBB0 8009BFB0 09000419 */  j          func_84001064
/* 9CBB4 8009BFB4 20010FC0 */   addi      $at, $zero, 0xFC0
/* 9CBB8 8009BFB8 8C220010 */  lw         $v0, 0x10($at)
/* 9CBBC 8009BFBC 20030F7F */  addi       $v1, $zero, 0xF7F
/* 9CBC0 8009BFC0 20071080 */  addi       $a3, $zero, 0x1080
/* 9CBC4 8009BFC4 40870000 */  mtc0       $a3, $0
/* 9CBC8 8009BFC8 40820800 */  mtc0       $v0, $1
/* 9CBCC 8009BFCC 40831000 */  mtc0       $v1, $2
.L8009BFD0:
/* 9CBD0 8009BFD0 40043000 */  mfc0       $a0, $6
/* 9CBD4 8009BFD4 1480FFFE */  bnez       $a0, .L8009BFD0
/* 9CBD8 8009BFD8 00000000 */   nop
/* 9CBDC 8009BFDC 0D00040F */  jal        func_8400103C
/* 9CBE0 8009BFE0 00000000 */   nop
/* 9CBE4 8009BFE4 00E00008 */  jr         $a3
/* 9CBE8 8009BFE8 40803800 */   mtc0      $zero, $7
.L8009BFEC:
/* 9CBEC 8009BFEC 40082000 */  mfc0       $t0, $4
/* 9CBF0 8009BFF0 31080080 */  andi       $t0, $t0, 0x80
/* 9CBF4 8009BFF4 15000002 */  bnez       $t0, .L8009C000
/* 9CBF8 8009BFF8 00000000 */   nop
/* 9CBFC 8009BFFC 03E00008 */  jr         $ra
.L8009C000:
/* 9CC00 8009C000 40803800 */   mtc0      $zero, $7
/* 9CC04 8009C004 34085200 */  ori        $t0, $zero, 0x5200
/* 9CC08 8009C008 40882000 */  mtc0       $t0, $4
/* 9CC0C 8009C00C 0000000D */  break      0
/* 9CC10 8009C010 00000000 */  nop
/* 9CC14 8009C014 8C220004 */  lw         $v0, 0x4($at)
/* 9CC18 8009C018 30420002 */  andi       $v0, $v0, 0x2
/* 9CC1C 8009C01C 10400007 */  beqz       $v0, .L8009C03C
/* 9CC20 8009C020 00000000 */   nop
/* 9CC24 8009C024 0D00040F */  jal        func_8400103C
/* 9CC28 8009C028 00000000 */   nop
/* 9CC2C 8009C02C 40025800 */  mfc0       $v0, $11
/* 9CC30 8009C030 30420100 */  andi       $v0, $v0, 0x100
/* 9CC34 8009C034 1C40FFED */  bgtz       $v0, .L8009BFEC
/* 9CC38 8009C038 00000000 */   nop
.L8009C03C:
/* 9CC3C 8009C03C 8C220018 */  lw         $v0, 0x18($at)
/* 9CC40 8009C040 8C23001C */  lw         $v1, 0x1C($at)
/* 9CC44 8009C044 2063FFFF */  addi       $v1, $v1, -0x1
.L8009C048:
/* 9CC48 8009C048 401E2800 */  mfc0       $fp, $5
/* 9CC4C 8009C04C 17C0FFFE */  bnez       $fp, .L8009C048
/* 9CC50 8009C050 00000000 */   nop
/* 9CC54 8009C054 40800000 */  mtc0       $zero, $0
/* 9CC58 8009C058 40820800 */  mtc0       $v0, $1
/* 9CC5C 8009C05C 40831000 */  mtc0       $v1, $2
.L8009C060:
/* 9CC60 8009C060 40043000 */  mfc0       $a0, $6
.L8009C064:
/* 9CC64 8009C064 1480FFFE */  bnez       $a0, .L8009C060
/* 9CC68 8009C068 00000000 */   nop
/* 9CC6C 8009C06C 0D00040F */  jal        func_8400103C
/* 9CC70 8009C070 00000000 */   nop
/* 9CC74 8009C074 09000402 */  j          func_84001008
/* 9CC78 8009C078 00000000 */   nop
/* 9CC7C 8009C07C 00000000 */  nop
D_8009C080:
/* 9CC80 8009C080 090005CC */  j          func_84001730
/* 9CC84 8009C084 201D0110 */   addi      $sp, $zero, 0x110
/* 9CC88 8009C088 0D0007F5 */  jal        func_84001FD4
/* 9CC8C 8009C08C 0016A020 */   add       $s4, $zero, $s6
/* 9CC90 8009C090 842200B8 */  lh         $v0, 0xB8($at)
/* 9CC94 8009C094 00400008 */  jr         $v0
/* 9CC98 8009C098 001915C2 */   srl       $v0, $t9, 23
/* 9CC9C 8009C09C 40022000 */  mfc0       $v0, $4
/* 9CCA0 8009C0A0 30420080 */  andi       $v0, $v0, 0x80
/* 9CCA4 8009C0A4 14400006 */  bnez       $v0, .L8009C0C0
/* 9CCA8 8009C0A8 84150026 */   lh        $s5, 0x26($zero)
/* 9CCAC 8009C0AC 179BFFED */  bne        $gp, $k1, .L8009C064
/* 9CCB0 8009C0B0 8F790000 */   lw        $t9, 0x0($k1)
/* 9CCB4 8009C0B4 09000432 */  j          func_840010C8
/* 9CCB8 8009C0B8 841F0104 */   lh        $ra, 0x104($zero)
/* 9CCBC 8009C0BC 841500B6 */  lh         $s5, 0xB6($zero)
.L8009C0C0:
/* 9CCC0 8009C0C0 0900043A */  j          func_840010E8
/* 9CCC4 8009C0C4 341E0020 */   ori       $fp, $zero, 0x20
/* 9CCC8 8009C0C8 201C0AE0 */  addi       $gp, $zero, 0xAE0
/* 9CCCC 8009C0CC 201409A0 */  addi       $s4, $zero, 0x9A0
/* 9CCD0 8009C0D0 001A9820 */  add        $s3, $zero, $k0
/* 9CCD4 8009C0D4 235A0140 */  addi       $k0, $k0, 0x140
/* 9CCD8 8009C0D8 2012013F */  addi       $s2, $zero, 0x13F
/* 9CCDC 8009C0DC 090007F5 */  j          func_84001FD4
/* 9CCE0 8009C0E0 201B09A0 */   addi      $k1, $zero, 0x9A0
/* 9CCE4 8009C0E4 001FA820 */  add        $s5, $zero, $ra
/* 9CCE8 8009C0E8 8FD30000 */  lw         $s3, 0x0($fp)
/* 9CCEC 8009C0EC 87D20004 */  lh         $s2, 0x4($fp)
/* 9CCF0 8009C0F0 0D0007F5 */  jal        func_84001FD4
/* 9CCF4 8009C0F4 87D40006 */   lh        $s4, 0x6($fp)
/* 9CCF8 8009C0F8 0D0007F1 */  jal        func_84001FC4
/* 9CCFC 8009C0FC 00000000 */   nop
/* 9CD00 8009C100 02A00008 */  jr         $s5
/* 9CD04 8009C104 00136582 */   srl       $t4, $s3, 22
/* 9CD08 8009C108 318C003C */  andi       $t4, $t4, 0x3C
/* 9CD0C 8009C10C 8D8C0160 */  lw         $t4, 0x160($t4)
/* 9CD10 8009C110 00139A00 */  sll        $s3, $s3, 8
/* 9CD14 8009C114 00139A02 */  srl        $s3, $s3, 8
/* 9CD18 8009C118 03E00008 */  jr         $ra
/* 9CD1C 8009C11C 026C9820 */   add       $s3, $s3, $t4
/* 9CD20 8009C120 001FA820 */  add        $s5, $zero, $ra
/* 9CD24 8009C124 8FB30018 */  lw         $s3, 0x18($sp)
/* 9CD28 8009C128 22F2F320 */  addi       $s2, $s7, -0xCE0
/* 9CD2C 8009C12C 8FB70044 */  lw         $s7, 0x44($sp)
/* 9CD30 8009C130 1A40001A */  blez       $s2, .L8009C19C
/* 9CD34 8009C134 0272A020 */   add       $s4, $s3, $s2
/* 9CD38 8009C138 02F4A022 */  sub        $s4, $s7, $s4
/* 9CD3C 8009C13C 06810008 */  bgez       $s4, .L8009C160
.L8009C140:
/* 9CD40 8009C140 40145800 */   mfc0      $s4, $11
/* 9CD44 8009C144 32940400 */  andi       $s4, $s4, 0x400
/* 9CD48 8009C148 1680FFFD */  bnez       $s4, .L8009C140
.L8009C14C:
/* 9CD4C 8009C14C 40175000 */   mfc0      $s7, $10
/* 9CD50 8009C150 8FB30040 */  lw         $s3, 0x40($sp)
/* 9CD54 8009C154 12F3FFFD */  beq        $s7, $s3, .L8009C14C
/* 9CD58 8009C158 00000000 */   nop
/* 9CD5C 8009C15C 40934000 */  mtc0       $s3, $8
.L8009C160:
/* 9CD60 8009C160 40175000 */  mfc0       $s7, $10
/* 9CD64 8009C164 0277A022 */  sub        $s4, $s3, $s7
/* 9CD68 8009C168 06810004 */  bgez       $s4, .L8009C17C
/* 9CD6C 8009C16C 0272A020 */   add       $s4, $s3, $s2
/* 9CD70 8009C170 0297A022 */  sub        $s4, $s4, $s7
/* 9CD74 8009C174 0681FFFA */  bgez       $s4, .L8009C160
/* 9CD78 8009C178 00000000 */   nop
.L8009C17C:
/* 9CD7C 8009C17C 0272B820 */  add        $s7, $s3, $s2
/* 9CD80 8009C180 2252FFFF */  addi       $s2, $s2, -0x1
/* 9CD84 8009C184 20140CE0 */  addi       $s4, $zero, 0xCE0
/* 9CD88 8009C188 0D0007F6 */  jal        func_84001FD8
/* 9CD8C 8009C18C 20110001 */   addi      $s1, $zero, 0x1
/* 9CD90 8009C190 0D0007F1 */  jal        func_84001FC4
/* 9CD94 8009C194 AFB70018 */   sw        $s7, 0x18($sp)
/* 9CD98 8009C198 40974800 */  mtc0       $s7, $9
.L8009C19C:
/* 9CD9C 8009C19C 02A00008 */  jr         $s5
/* 9CDA0 8009C1A0 20170CE0 */   addi      $s7, $zero, 0xCE0
/* 9CDA4 8009C1A4 304200FE */  andi       $v0, $v0, 0xFE
/* 9CDA8 8009C1A8 84420076 */  lh         $v0, 0x76($v0)
/* 9CDAC 8009C1AC 00400008 */  jr         $v0
/* 9CDB0 8009C1B0 9361FFFF */   lbu       $at, -0x1($k1)
/* 9CDB4 8009C1B4 841800BA */  lh         $t8, 0xBA($zero)
/* 9CDB8 8009C1B8 841F0396 */  lh         $ra, 0x396($zero)
/* 9CDBC 8009C1BC 9361FFFD */  lbu        $at, -0x3($k1)
/* 9CDC0 8009C1C0 9362FFFE */  lbu        $v0, -0x2($k1)
/* 9CDC4 8009C1C4 9363FFFF */  lbu        $v1, -0x1($k1)
/* 9CDC8 8009C1C8 9421031E */  lhu        $at, 0x31E($at)
/* 9CDCC 8009C1CC 9442031E */  lhu        $v0, 0x31E($v0)
/* 9CDD0 8009C1D0 9463031E */  lhu        $v1, 0x31E($v1)
/* 9CDD4 8009C1D4 03E00008 */  jr         $ra
/* 9CDD8 8009C1D8 20240000 */   addi      $a0, $at, 0x0
/* 9CDDC 8009C1DC 0D00046E */  jal        func_840011B8
