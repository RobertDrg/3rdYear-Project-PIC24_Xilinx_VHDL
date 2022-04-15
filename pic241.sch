VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(5:0)
        SIGNAL Clk
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL Instr(4:0)
        SIGNAL Instr(18:16)
        SIGNAL Branch
        SIGNAL RegWrite
        SIGNAL Instr(18:15)
        SIGNAL Instr(3:0)
        SIGNAL Z
        SIGNAL C
        SIGNAL N
        SIGNAL OV
        SIGNAL RdDataSource(15:0)
        SIGNAL Alu_OP(2:0)
        SIGNAL XLXN_22(15:0)
        SIGNAL N_EN
        SIGNAL C_EN
        SIGNAL OV_EN
        SIGNAL Z_EN
        SIGNAL ALU_OUT(15:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(15:0)
        SIGNAL RegD
        SIGNAL Instr(10:7)
        SIGNAL WrReg(3:0)
        SIGNAL Instr(23:19)
        SIGNAL DataOut(15:0)
        SIGNAL OUTW0(15:0)
        SIGNAL MemWrite
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL Instr(8:4)
        SIGNAL MEM_2Reg
        SIGNAL MEM_WR
        PORT Input Clk
        PORT Output OUTW0(15:0)
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 1 13 11 38 16
            RECTANGLE N 64 -512 400 0 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -492 464 -468 
            LINE N 400 -480 464 -480 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 1 12 15 25 11
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2022 1 13 15 59 18
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 1 12 15 47 58
            RECTANGLE N 64 -384 384 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -364 448 -340 
            LINE N 384 -352 448 -352 
            RECTANGLE N 384 -44 448 -20 
            LINE N 384 -32 448 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 1 13 18 14 57
            LINE N 64 -544 0 -544 
            LINE N 368 -544 432 -544 
            LINE N 368 -416 432 -416 
            LINE N 368 -288 432 -288 
            LINE N 368 -160 432 -160 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
            RECTANGLE N 64 -576 368 120 
            LINE N 64 -448 0 -448 
            LINE N 64 -384 0 -384 
            LINE N 64 -320 0 -320 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -140 64 -116 
            LINE N 64 -128 0 -128 
            RECTANGLE N 0 -76 64 -52 
            LINE N 64 -64 0 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2022 1 12 16 51 14
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 1 12 16 56 25
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2022 1 12 16 58 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 1 13 19 3 14
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -608 0 -608 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -640 320 176 
            LINE N 320 -592 384 -592 
            LINE N 320 -528 384 -528 
            LINE N 320 -464 384 -464 
            LINE N 320 -400 384 -400 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            LINE N 320 32 384 32 
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 PC_Update
            PIN Z Z
            PIN C C
            PIN N N
            PIN OV OV
            PIN Branch Branch
            PIN Offset(4:0) Instr(4:0)
            PIN Branch_Type(2:0) Instr(18:16)
            PIN PC(5:0) PC(5:0)
            PIN New_PC(5:0) New_PC(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 File_Regs
            PIN Clk Clk
            PIN WrEn RegWrite
            PIN RdReg1(3:0) Instr(18:15)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
            PIN WrData(15:0) WrData(15:0)
            PIN RdData1(15:0) XLXN_22(15:0)
            PIN RdData2(15:0) RdDataSource(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 ALU
            PIN Clk Clk
            PIN C C
            PIN N N
            PIN OV OV
            PIN Z Z
            PIN Y(15:0) ALU_OUT(15:0)
            PIN C_EN N_EN
            PIN N_EN C_EN
            PIN OV_EN OV_EN
            PIN Z_EN Z_EN
            PIN RdDataB(15:0) XLXN_22(15:0)
            PIN RdDataS(15:0) RdDataSource(15:0)
            PIN ALUOP(2:0) Alu_OP(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 MUX2V16
            PIN Sel Mem2Reg
            PIN I0(15:0) ALU_OUT(15:0)
            PIN I1(15:0) DataOut(15:0)
            PIN Y(15:0) WrData(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 DataMem
            PIN Clk Clk
            PIN Wr MemWrite
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdDataSource(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) DataOut(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 MUX2V4
            PIN Sel RegD
            PIN I0(3:0) Instr(3:0)
            PIN I1(3:0) Instr(10:7)
            PIN Y(3:0) WrReg(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ctrl
            PIN OP(4:0) Instr(23:19)
            PIN Dif(2:0) Instr(18:16)
            PIN N_EN
            PIN OV_EN OV_EN
            PIN Z_EN Z_EN
            PIN C_EN C_EN
            PIN MEM_WR MEM_WR
            PIN MEM_2Reg MEM_2Reg
            PIN Reg_Wr RegWrite
            PIN Branch Branch
            PIN Reg_Dest RegD
            PIN ALU_OP(2:0) Alu_OP(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_2 432 1344 R0
        END INSTANCE
        BEGIN BRANCH New_PC(5:0)
            WIRE 240 496 336 496
            WIRE 240 496 240 1008
            WIRE 240 1008 240 1312
            WIRE 240 1312 432 1312
            BEGIN DISPLAY 240 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 336 1248 432 1248
        END BRANCH
        IOMARKER 336 1248 Clk R180 28
        BEGIN BRANCH PC(5:0)
            WIRE 800 944 1040 944
            WIRE 1040 944 1040 1024
            WIRE 1040 1024 1040 1104
            WIRE 1040 1104 1040 1248
            WIRE 1040 1248 1040 1728
            WIRE 816 1248 1040 1248
            BEGIN DISPLAY 1040 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1040 1104 1136 1104
        BEGIN BRANCH PC(5:1)
            WIRE 1136 1104 1168 1104
            WIRE 1168 1104 1248 1104
            BEGIN DISPLAY 1168 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1632 1104 1968 1104
            WIRE 1968 1104 1968 1472
            WIRE 1968 1472 1968 1712
            WIRE 1968 1712 1968 1840
            WIRE 1968 1840 1968 2416
            WIRE 1968 2416 1968 2656
            WIRE 1968 656 1968 752
            WIRE 1968 752 1968 816
            WIRE 1968 816 1968 896
            WIRE 1968 896 1968 976
            WIRE 1968 976 1968 1040
            WIRE 1968 1040 1968 1104
            BEGIN DISPLAY 1968 752 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 816 1872 816
        BUSTAP 1968 896 1872 896
        BEGIN BRANCH Instr(4:0)
            WIRE 800 816 1120 816
            WIRE 1120 816 1872 816
            BEGIN DISPLAY 1120 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_1 800 976 M0
        END INSTANCE
        BEGIN BRANCH Instr(18:16)
            WIRE 800 880 1088 880
            WIRE 1088 880 1328 880
            WIRE 1328 880 1328 896
            WIRE 1328 896 1872 896
            BEGIN DISPLAY 1088 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 800 752 880 752
            WIRE 880 752 1008 752
            BEGIN DISPLAY 880 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_5 2144 912 R0
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2064 560 2096 560
            WIRE 2096 560 2144 560
            BEGIN DISPLAY 2096 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWrite
            WIRE 2064 624 2096 624
            WIRE 2096 624 2144 624
            BEGIN DISPLAY 2096 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 976 2064 976
        BUSTAP 1968 1040 2064 1040
        BEGIN BRANCH Instr(18:15)
            WIRE 2064 976 2080 976
            WIRE 2080 688 2080 976
            WIRE 2080 688 2112 688
            WIRE 2112 688 2144 688
            BEGIN DISPLAY 2112 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 2064 1040 2096 1040
            WIRE 2096 1040 2112 1040
            WIRE 2096 1040 2096 1408
            WIRE 2096 1408 2128 1408
            WIRE 2112 752 2144 752
            WIRE 2112 752 2112 1008
            WIRE 2112 1008 2112 1040
            BEGIN DISPLAY 2112 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 800 496 816 496
            WIRE 816 240 3824 240
            WIRE 3824 240 3824 496
            WIRE 816 240 816 496
            WIRE 3648 496 3824 496
            BEGIN DISPLAY 816 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 800 560 880 560
            WIRE 880 288 880 528
            WIRE 880 528 880 560
            WIRE 880 288 3792 288
            WIRE 3792 288 3792 624
            WIRE 3648 624 3792 624
            BEGIN DISPLAY 880 528 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 800 624 896 624
            WIRE 896 336 3760 336
            WIRE 3760 336 3760 752
            WIRE 896 336 896 592
            WIRE 896 592 896 624
            WIRE 3648 752 3760 752
            BEGIN DISPLAY 896 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 800 688 848 688
            WIRE 848 384 848 672
            WIRE 848 672 848 688
            WIRE 848 384 3696 384
            WIRE 3696 384 3696 880
            WIRE 3648 880 3696 880
            BEGIN DISPLAY 848 672 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdDataSource(15:0)
            WIRE 2592 880 2656 880
            WIRE 2656 880 2656 912
            WIRE 2656 912 2656 1984
            WIRE 2656 1984 2800 1984
            WIRE 2800 1984 2800 2416
            WIRE 2800 2416 2848 2416
            WIRE 2656 912 2768 912
            WIRE 2768 912 3216 912
            BEGIN DISPLAY 2768 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_22(15:0)
            WIRE 2592 560 2608 560
            WIRE 2608 560 2608 848
            WIRE 2608 848 3216 848
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2768 496 2816 496
            WIRE 2816 496 3216 496
            BEGIN DISPLAY 2816 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_7 2960 1536 R0
        END INSTANCE
        BEGIN BRANCH ALU_OUT(15:0)
            WIRE 2752 1232 2752 1440
            WIRE 2752 1440 2960 1440
            WIRE 2752 1232 3056 1232
            WIRE 3056 1232 3728 1232
            WIRE 3648 1008 3728 1008
            WIRE 3728 1008 3728 1232
            BEGIN DISPLAY 3056 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2832 1376 2880 1376
            WIRE 2880 1376 2960 1376
            BEGIN DISPLAY 2880 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(15:0)
            WIRE 2144 880 2144 1072
            WIRE 2144 1072 2576 1072
            WIRE 2576 1072 2576 1632
            WIRE 2576 1632 3072 1632
            WIRE 3072 1632 3408 1632
            WIRE 3344 1376 3408 1376
            WIRE 3408 1376 3408 1632
            BEGIN DISPLAY 3072 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_9 2128 1504 R0
        END INSTANCE
        BEGIN BRANCH RegD
            WIRE 2032 1344 2064 1344
            WIRE 2064 1344 2128 1344
            BEGIN DISPLAY 2064 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1472 2064 1472
        BEGIN BRANCH Instr(10:7)
            WIRE 2064 1472 2080 1472
            WIRE 2080 1472 2128 1472
            BEGIN DISPLAY 2080 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(3:0)
            WIRE 2032 816 2032 944
            WIRE 2032 944 2528 944
            WIRE 2528 944 2528 1008
            WIRE 2528 1008 2528 1344
            WIRE 2032 816 2144 816
            WIRE 2512 1344 2528 1344
            BEGIN DISPLAY 2528 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1840 2064 1840
        BUSTAP 1968 2416 2064 2416
        BEGIN BRANCH DataOut(15:0)
            WIRE 2816 1504 2960 1504
            WIRE 2816 1504 2816 1920
            WIRE 2816 1920 3632 1920
            WIRE 3632 1920 3632 2416
            WIRE 3280 2416 3360 2416
            WIRE 3360 2416 3632 2416
            BEGIN DISPLAY 3360 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N_EN
            WIRE 2528 1840 2560 1840
            WIRE 2560 1840 2624 1840
            BEGIN DISPLAY 2560 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(15:0)
            WIRE 3280 2096 3408 2096
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2752 2096 2800 2096
            WIRE 2800 2096 2848 2096
            BEGIN DISPLAY 2800 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWrite
            WIRE 2752 2160 2784 2160
            WIRE 2784 2160 2848 2160
            BEGIN DISPLAY 2784 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 2784 2224 2848 2224
        END BRANCH
        BEGIN BRANCH INW1(15:0)
            WIRE 2784 2288 2848 2288
        END BRANCH
        BUSTAP 1968 1712 2064 1712
        BEGIN BRANCH Instr(8:4)
            WIRE 2064 1712 2192 1712
            WIRE 2192 1712 2608 1712
            WIRE 2608 1712 2608 2000
            WIRE 2608 2000 2832 2000
            WIRE 2832 2000 2832 2352
            WIRE 2832 2352 2848 2352
            BEGIN DISPLAY 2192 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2784 2224 INW0(15:0) R180 28
        IOMARKER 2784 2288 INW1(15:0) R180 28
        BEGIN INSTANCE XLXI_8 2848 2448 R0
        END INSTANCE
        IOMARKER 3408 2096 OUTW0(15:0) R0 28
        BEGIN INSTANCE XLXI_11 1248 1136 R0
        END INSTANCE
        BEGIN BRANCH Alu_OP(2:0)
            WIRE 2720 976 2816 976
            WIRE 2816 976 3216 976
            BEGIN DISPLAY 2816 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z_EN
            WIRE 2768 784 2800 784
            WIRE 2800 784 3216 784
            BEGIN DISPLAY 2800 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV_EN
            WIRE 2768 720 2816 720
            WIRE 2816 720 3216 720
            BEGIN DISPLAY 2816 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C_EN
            WIRE 2768 656 2816 656
            WIRE 2816 656 3216 656
            BEGIN DISPLAY 2816 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N_EN
            WIRE 2768 592 2816 592
            WIRE 2816 592 3216 592
            BEGIN DISPLAY 2816 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM_2Reg
            WIRE 2528 2288 2544 2288
            WIRE 2544 2288 2624 2288
            BEGIN DISPLAY 2544 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV_EN
            WIRE 2528 1920 2544 1920
            WIRE 2544 1920 2624 1920
            BEGIN DISPLAY 2544 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegD
            WIRE 2528 2480 2576 2480
            WIRE 2576 2480 2640 2480
            BEGIN DISPLAY 2576 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 3216 1040 R0
        END INSTANCE
        BEGIN BRANCH Alu_OP(2:0)
            WIRE 2528 2544 2560 2544
            WIRE 2560 2544 2640 2544
            BEGIN DISPLAY 2560 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2528 2416 2560 2416
            WIRE 2560 2416 2640 2416
            BEGIN DISPLAY 2560 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWrite
            WIRE 2528 2352 2560 2352
            WIRE 2560 2352 2640 2352
            BEGIN DISPLAY 2560 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM_WR
            WIRE 2528 2224 2560 2224
            WIRE 2560 2224 2624 2224
            BEGIN DISPLAY 2560 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C_EN
            WIRE 2528 2048 2560 2048
            WIRE 2560 2048 2624 2048
            BEGIN DISPLAY 2560 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z_EN
            WIRE 2528 1984 2560 1984
            WIRE 2560 1984 2624 1984
            BEGIN DISPLAY 2560 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:16)
            WIRE 2064 2416 2080 2416
            WIRE 2080 2416 2144 2416
            BEGIN DISPLAY 2080 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:19)
            WIRE 2064 1840 2080 1840
            WIRE 2080 1840 2144 1840
            BEGIN DISPLAY 2080 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 2144 2448 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
