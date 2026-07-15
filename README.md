# 广工大二计组 f4b 实验整理

## 前言

f4b应该是很多计院同学做的比较痛苦的实验,好在我们老师给了源代码和一些指导,趁着考完试传到github来,希望学弟学妹可以用得上
重点工程看 2026 年 6 月修改过的四个 f4b 版本：

| 目录 | 实验内容 | 当前工程使用的 RAM 初始化文件 | 关键差异 |
| --- | --- | --- | --- |
| `f4b` | `22 + 10` | `LPM_RAM_DQ_test1_pro1.mif` | 基础算术程序，执行 `LOAD 2A -> ADD 2B -> STORE 2C -> HALT` |
| `f4b2` | `1 + 2 + ... + 100` 倒序求和 | `LPM_RAM_DQ_test1_pro2.mif` | 使用循环从 100 递减到 1 累加，sum 保存在 `A4` |
| `f4b3` | DIV 除法指令 | `LPM_RAM_DQ_test1_pro2.mif` | 新增 opcode `0D` 的 DIV 微程序；`ALU.vhd` 直接使用 `unsigned(ACC) / unsigned(BR)` |
| `f4b3v2` | 加减交替法实现 DIV | `LPM_RAM_DQ_test1_pro2.mif` | 在 `ALU.vhd` 中加入 `div_add_sub`，用 16 轮加减交替法计算商 |

根目录中 2025 年修改日期的文件大多是老师给的原始资料，例如 `如何做f4b.doc`、`源代码.txt`、`RTL视图.png`、`程序1仿真波形.png`、`程序2仿真波形.png`、`f4b.zip`。

## 工程结构

每个工程目录基本包含：

- `top_level.bdf`：顶层原理图。
- `top_level.qsf` / `f4b_test1.qpf`：Quartus 工程配置。
- `PC.vhd`、`MBR.vhd`、`MAR.vhd`、`IR.vhd`、`CONTROLR.vhd`、`CAR.vhd`、`BR.vhd`、`ALU.vhd`：CPU 主要部件源码。
- `LPM_ROM_test1.mif`：微程序 ROM 初始化文件。
- `LPM_RAM_DQ_test1_pro1.mif`：程序 1，`22 + 10`。
- `LPM_RAM_DQ_test1_pro2.mif`：程序 2，不同工程中含义不同：`f4b2` 是 1 到 100 求和，`f4b3/f4b3v2` 是除法测试。
- `Waveform*.vwf`：仿真波形文件。
- `db/`、`incremental_db/`、`simulation/qsim/`：Quartus 编译和仿真生成文件。

## f4b：22 + 10

`f4b/top_level.qsf` 当前引用：

```text
MIF_FILE LPM_ROM_test1.mif
MIF_FILE LPM_RAM_DQ_test1_pro1.mif
```

`f4b/LPM_RAM_DQ_test1_pro1.mif` 的机器程序：

```text
000 : 022A;  LOAD 2A
001 : 032B;  ADD  2B
002 : 012C;  STORE 2C
003 : 0C00;  HALT
02A : 0016;  22
02B : 000A;  10
```

执行结果：`RAM[2C] = 0020H`，即十进制 `32`。

根目录的 `22加10_PC0微指令分析.txt` 对 PC=0 的 `LOAD 2A` 做了微指令级说明。

## f4b2：1 到 100 倒序求和

`f4b2/top_level.qsf` 当前引用：

```text
MIF_FILE LPM_ROM_test1.mif
MIF_FILE LPM_RAM_DQ_test1_pro2.mif
```

`f4b2/LPM_RAM_DQ_test1_pro2.mif` 的核心程序：

```text
000 : 02A0;  LOAD  A0
001 : 01A4;  STORE A4      ; sum = 0
002 : 02A2;  LOAD  A2
003 : 01A3;  STORE A3      ; counter = 100
004 : 02A4;  LOAD  A4
005 : 03A3;  ADD   A3      ; sum += counter
006 : 01A4;  STORE A4
007 : 02A3;  LOAD  A3
008 : 04A1;  SUB   A1      ; counter -= 1
009 : 01A3;  STORE A3
00A : 0504;  JMP   04      ; ACC > 0 时继续循环
00B : 0C00;  HALT
0A1 : 0001;  常量 1
0A2 : 0064;  常量 100
```

执行结果：`RAM[A4] = 13BAH`，即十进制 `5050`。

根目录的 `1到100倒序求和_PC4微指令分析.txt` 对循环中的 `PC=4, LOAD A4` 做了微指令级说明。

## f4b3：直接除法 DIV

`f4b3` 在微程序 ROM 中新增了 opcode `0D` 的分派入口：

```text
0F : 01000050;  CAR <- 50H，进入 DIV 微程序
50 : 00840000;  MAR <- MBR[7:0]
51 : 00810200;  读除数，PC <- PC + 1
52 : 00C0C000;  BR <- MBR，ALU 执行 DIV
53 : 04080000;  MAR <- PC，CAR <- 00H
```

`f4b3/ALU.vhd` 中 DIV 的实现方式是直接调用 VHDL 运算：

```vhdl
if aluCONTR="1100" then
   if BR=x"0000" then
      ACC<=x"0000";
   else
      ACC<=std_logic_vector(unsigned(ACC)/unsigned(BR));
   end if;
end if;
```

除法测试程序位于 `f4b3/LPM_RAM_DQ_test1_pro2.mif`：

```text
000 : 02A0;  LOAD  A0      ; ACC = 1000
001 : 0DA1;  DIV   A1      ; ACC = ACC / 500
002 : 01A2;  STORE A2
003 : 0C00;  HALT
0A0 : 03E8;  1000
0A1 : 01F4;  500
0A2 : 0000;  保存结果
```

执行结果：`RAM[A2] = 0002H`。

## f4b3v2：加减交替法 DIV

`f4b3v2` 与 `f4b3` 的 RAM 程序和微程序 ROM 基本一致，核心区别在 `f4b3v2/ALU.vhd`。

`f4b3v2/ALU.vhd` 新增 `div_add_sub` 函数，实现 16 位无符号非恢复除法：

- 被除数来自 `ACC`。
- 除数来自 `BR`。
- 部分余数非负时减除数，部分余数为负时加除数。
- 循环 16 轮形成 16 位商。
- 除数为 0 时返回 `0000H`。

DIV 控制码仍然是 `aluCONTR = 1100`：

```vhdl
if aluCONTR="1100" then
   ACC <= div_add_sub(ACC, BR);
end if;
```

`f4b3v2/PC=1_DIV指令波形简要分析.txt` 对 `PC=01H` 的 `DIV A1` 进行了波形和数据流说明。测试用例为：

```text
ACC = 03E8H = 1000
RAM[A1] = 01F4H = 500
ACC <- ACC / RAM[A1] = 0002H
```

## 微指令和源码差异

- `BR.vhd`、`CONTROLR.vhd` 在四个工程中的源码一致。
- `f4b` 与 `f4b2` 的 `ALU.vhd` 一致，支持 ADD、SUB、AND、OR、NOT、SRR、SRL、MPY。
- `f4b3/ALU.vhd` 增加直接除法实现。
- `f4b3v2/ALU.vhd` 增加加减交替法除法函数。
- `f4b3` 和 `f4b3v2` 的 `LPM_ROM_test1.mif` 新增 DIV 微程序入口和执行段。
