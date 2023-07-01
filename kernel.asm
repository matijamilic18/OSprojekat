
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	76013103          	ld	sp,1888(sp) # 80005760 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	471010ef          	jal	ra,80001c8c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	06d000ef          	jal	ra,800018f0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00113c23          	sd	ra,24(sp)
    8000112c:	00813823          	sd	s0,16(sp)
    80001130:	00913423          	sd	s1,8(sp)
    80001134:	01213023          	sd	s2,0(sp)
    80001138:	02010413          	addi	s0,sp,32
    8000113c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001140:	00100793          	li	a5,1
    80001144:	02a7f863          	bgeu	a5,a0,80001174 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001148:	00a00793          	li	a5,10
    8000114c:	02f577b3          	remu	a5,a0,a5
    80001150:	02078e63          	beqz	a5,8000118c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001154:	fff48513          	addi	a0,s1,-1
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	fcc080e7          	jalr	-52(ra) # 80001124 <_ZL9fibonaccim>
    80001160:	00050913          	mv	s2,a0
    80001164:	ffe48513          	addi	a0,s1,-2
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	fbc080e7          	jalr	-68(ra) # 80001124 <_ZL9fibonaccim>
    80001170:	00a90533          	add	a0,s2,a0
}
    80001174:	01813083          	ld	ra,24(sp)
    80001178:	01013403          	ld	s0,16(sp)
    8000117c:	00813483          	ld	s1,8(sp)
    80001180:	00013903          	ld	s2,0(sp)
    80001184:	02010113          	addi	sp,sp,32
    80001188:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	5c8080e7          	jalr	1480(ra) # 80001754 <_ZN3TCB5yieldEv>
    80001194:	fc1ff06f          	j	80001154 <_ZL9fibonaccim+0x30>

0000000080001198 <_Z11workerBodyAv>:
{
    80001198:	fe010113          	addi	sp,sp,-32
    8000119c:	00113c23          	sd	ra,24(sp)
    800011a0:	00813823          	sd	s0,16(sp)
    800011a4:	00913423          	sd	s1,8(sp)
    800011a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800011ac:	00000493          	li	s1,0
    800011b0:	0300006f          	j	800011e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800011b4:	00168693          	addi	a3,a3,1
    800011b8:	000027b7          	lui	a5,0x2
    800011bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800011c0:	00d7ee63          	bltu	a5,a3,800011dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800011c4:	00000713          	li	a4,0
    800011c8:	000077b7          	lui	a5,0x7
    800011cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800011d0:	fee7e2e3          	bltu	a5,a4,800011b4 <_Z11workerBodyAv+0x1c>
    800011d4:	00170713          	addi	a4,a4,1
    800011d8:	ff1ff06f          	j	800011c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800011dc:	00148493          	addi	s1,s1,1
    800011e0:	00900793          	li	a5,9
    800011e4:	0297ec63          	bltu	a5,s1,8000121c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800011e8:	00004517          	auipc	a0,0x4
    800011ec:	e1850513          	addi	a0,a0,-488 # 80005000 <kvmincrease+0xf70>
    800011f0:	00001097          	auipc	ra,0x1
    800011f4:	970080e7          	jalr	-1680(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    800011f8:	00048513          	mv	a0,s1
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	9d4080e7          	jalr	-1580(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    80001204:	00004517          	auipc	a0,0x4
    80001208:	ecc50513          	addi	a0,a0,-308 # 800050d0 <kvmincrease+0x1040>
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	954080e7          	jalr	-1708(ra) # 80001b60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001214:	00000693          	li	a3,0
    80001218:	fa1ff06f          	j	800011b8 <_Z11workerBodyAv+0x20>
}
    8000121c:	01813083          	ld	ra,24(sp)
    80001220:	01013403          	ld	s0,16(sp)
    80001224:	00813483          	ld	s1,8(sp)
    80001228:	02010113          	addi	sp,sp,32
    8000122c:	00008067          	ret

0000000080001230 <_Z11workerBodyBv>:
{
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001244:	00000493          	li	s1,0
    80001248:	0300006f          	j	80001278 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000124c:	00168693          	addi	a3,a3,1
    80001250:	000027b7          	lui	a5,0x2
    80001254:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001258:	00d7ee63          	bltu	a5,a3,80001274 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000125c:	00000713          	li	a4,0
    80001260:	000077b7          	lui	a5,0x7
    80001264:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001268:	fee7e2e3          	bltu	a5,a4,8000124c <_Z11workerBodyBv+0x1c>
    8000126c:	00170713          	addi	a4,a4,1
    80001270:	ff1ff06f          	j	80001260 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001274:	00148493          	addi	s1,s1,1
    80001278:	00f00793          	li	a5,15
    8000127c:	0297ec63          	bltu	a5,s1,800012b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001280:	00004517          	auipc	a0,0x4
    80001284:	d8850513          	addi	a0,a0,-632 # 80005008 <kvmincrease+0xf78>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	8d8080e7          	jalr	-1832(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    80001290:	00048513          	mv	a0,s1
    80001294:	00001097          	auipc	ra,0x1
    80001298:	93c080e7          	jalr	-1732(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	e3450513          	addi	a0,a0,-460 # 800050d0 <kvmincrease+0x1040>
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	8bc080e7          	jalr	-1860(ra) # 80001b60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012ac:	00000693          	li	a3,0
    800012b0:	fa1ff06f          	j	80001250 <_Z11workerBodyBv+0x20>
}
    800012b4:	01813083          	ld	ra,24(sp)
    800012b8:	01013403          	ld	s0,16(sp)
    800012bc:	00813483          	ld	s1,8(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	01213023          	sd	s2,0(sp)
    800012dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800012e0:	00000493          	li	s1,0
    800012e4:	0380006f          	j	8000131c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d2850513          	addi	a0,a0,-728 # 80005010 <kvmincrease+0xf80>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	870080e7          	jalr	-1936(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	8d4080e7          	jalr	-1836(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	dcc50513          	addi	a0,a0,-564 # 800050d0 <kvmincrease+0x1040>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	854080e7          	jalr	-1964(ra) # 80001b60 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001314:	0014849b          	addiw	s1,s1,1
    80001318:	0ff4f493          	andi	s1,s1,255
    8000131c:	00200793          	li	a5,2
    80001320:	fc97f4e3          	bgeu	a5,s1,800012e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001324:	00004517          	auipc	a0,0x4
    80001328:	cf450513          	addi	a0,a0,-780 # 80005018 <kvmincrease+0xf88>
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	834080e7          	jalr	-1996(ra) # 80001b60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001334:	00700313          	li	t1,7
    TCB::yield();
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	41c080e7          	jalr	1052(ra) # 80001754 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001340:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001344:	00004517          	auipc	a0,0x4
    80001348:	ce450513          	addi	a0,a0,-796 # 80005028 <kvmincrease+0xf98>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	814080e7          	jalr	-2028(ra) # 80001b60 <_Z11printStringPKc>
    printInteger(t1);
    80001354:	00090513          	mv	a0,s2
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	878080e7          	jalr	-1928(ra) # 80001bd0 <_Z12printIntegerm>
    printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d7050513          	addi	a0,a0,-656 # 800050d0 <kvmincrease+0x1040>
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	7f8080e7          	jalr	2040(ra) # 80001b60 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001370:	00c00513          	li	a0,12
    80001374:	00000097          	auipc	ra,0x0
    80001378:	db0080e7          	jalr	-592(ra) # 80001124 <_ZL9fibonaccim>
    8000137c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	cb050513          	addi	a0,a0,-848 # 80005030 <kvmincrease+0xfa0>
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	7d8080e7          	jalr	2008(ra) # 80001b60 <_Z11printStringPKc>
    printInteger(result);
    80001390:	00090513          	mv	a0,s2
    80001394:	00001097          	auipc	ra,0x1
    80001398:	83c080e7          	jalr	-1988(ra) # 80001bd0 <_Z12printIntegerm>
    printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	d3450513          	addi	a0,a0,-716 # 800050d0 <kvmincrease+0x1040>
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	7bc080e7          	jalr	1980(ra) # 80001b60 <_Z11printStringPKc>
    800013ac:	0380006f          	j	800013e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800013b0:	00004517          	auipc	a0,0x4
    800013b4:	c6050513          	addi	a0,a0,-928 # 80005010 <kvmincrease+0xf80>
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	7a8080e7          	jalr	1960(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	80c080e7          	jalr	-2036(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d0450513          	addi	a0,a0,-764 # 800050d0 <kvmincrease+0x1040>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	78c080e7          	jalr	1932(ra) # 80001b60 <_Z11printStringPKc>
    for (; i < 6; i++)
    800013dc:	0014849b          	addiw	s1,s1,1
    800013e0:	0ff4f493          	andi	s1,s1,255
    800013e4:	00500793          	li	a5,5
    800013e8:	fc97f4e3          	bgeu	a5,s1,800013b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret

0000000080001404 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001404:	fe010113          	addi	sp,sp,-32
    80001408:	00113c23          	sd	ra,24(sp)
    8000140c:	00813823          	sd	s0,16(sp)
    80001410:	00913423          	sd	s1,8(sp)
    80001414:	01213023          	sd	s2,0(sp)
    80001418:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000141c:	00a00493          	li	s1,10
    80001420:	0380006f          	j	80001458 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1c50513          	addi	a0,a0,-996 # 80005040 <kvmincrease+0xfb0>
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	734080e7          	jalr	1844(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    80001434:	00048513          	mv	a0,s1
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	798080e7          	jalr	1944(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	c9050513          	addi	a0,a0,-880 # 800050d0 <kvmincrease+0x1040>
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	718080e7          	jalr	1816(ra) # 80001b60 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001450:	0014849b          	addiw	s1,s1,1
    80001454:	0ff4f493          	andi	s1,s1,255
    80001458:	00c00793          	li	a5,12
    8000145c:	fc97f4e3          	bgeu	a5,s1,80001424 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	be850513          	addi	a0,a0,-1048 # 80005048 <kvmincrease+0xfb8>
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	6f8080e7          	jalr	1784(ra) # 80001b60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001470:	00500313          	li	t1,5
    TCB::yield();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	2e0080e7          	jalr	736(ra) # 80001754 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000147c:	01000513          	li	a0,16
    80001480:	00000097          	auipc	ra,0x0
    80001484:	ca4080e7          	jalr	-860(ra) # 80001124 <_ZL9fibonaccim>
    80001488:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bcc50513          	addi	a0,a0,-1076 # 80005058 <kvmincrease+0xfc8>
    80001494:	00000097          	auipc	ra,0x0
    80001498:	6cc080e7          	jalr	1740(ra) # 80001b60 <_Z11printStringPKc>
    printInteger(result);
    8000149c:	00090513          	mv	a0,s2
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	730080e7          	jalr	1840(ra) # 80001bd0 <_Z12printIntegerm>
    printString("\n");
    800014a8:	00004517          	auipc	a0,0x4
    800014ac:	c2850513          	addi	a0,a0,-984 # 800050d0 <kvmincrease+0x1040>
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	6b0080e7          	jalr	1712(ra) # 80001b60 <_Z11printStringPKc>
    800014b8:	0380006f          	j	800014f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	b8450513          	addi	a0,a0,-1148 # 80005040 <kvmincrease+0xfb0>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	69c080e7          	jalr	1692(ra) # 80001b60 <_Z11printStringPKc>
        printInteger(i);
    800014cc:	00048513          	mv	a0,s1
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	700080e7          	jalr	1792(ra) # 80001bd0 <_Z12printIntegerm>
        printString("\n");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	bf850513          	addi	a0,a0,-1032 # 800050d0 <kvmincrease+0x1040>
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	680080e7          	jalr	1664(ra) # 80001b60 <_Z11printStringPKc>
    for (; i < 16; i++)
    800014e8:	0014849b          	addiw	s1,s1,1
    800014ec:	0ff4f493          	andi	s1,s1,255
    800014f0:	00f00793          	li	a5,15
    800014f4:	fc97f4e3          	bgeu	a5,s1,800014bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	01013403          	ld	s0,16(sp)
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	00013903          	ld	s2,0(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret

0000000080001510 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80001510:	fb010113          	addi	sp,sp,-80
    80001514:	04113423          	sd	ra,72(sp)
    80001518:	04813023          	sd	s0,64(sp)
    8000151c:	02913c23          	sd	s1,56(sp)
    80001520:	03213823          	sd	s2,48(sp)
    80001524:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001528:	00000513          	li	a0,0
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	160080e7          	jalr	352(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001534:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001538:	00004797          	auipc	a5,0x4
    8000153c:	2307b783          	ld	a5,560(a5) # 80005768 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001540:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001544:	00004517          	auipc	a0,0x4
    80001548:	21453503          	ld	a0,532(a0) # 80005758 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	140080e7          	jalr	320(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001554:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001558:	00004517          	auipc	a0,0x4
    8000155c:	b1050513          	addi	a0,a0,-1264 # 80005068 <kvmincrease+0xfd8>
    80001560:	00000097          	auipc	ra,0x0
    80001564:	600080e7          	jalr	1536(ra) # 80001b60 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	1e053503          	ld	a0,480(a0) # 80005748 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	11c080e7          	jalr	284(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001578:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	b0450513          	addi	a0,a0,-1276 # 80005080 <kvmincrease+0xff0>
    80001584:	00000097          	auipc	ra,0x0
    80001588:	5dc080e7          	jalr	1500(ra) # 80001b60 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	1e453503          	ld	a0,484(a0) # 80005770 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001594:	00000097          	auipc	ra,0x0
    80001598:	0f8080e7          	jalr	248(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    8000159c:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	af850513          	addi	a0,a0,-1288 # 80005098 <kvmincrease+0x1008>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	5b8080e7          	jalr	1464(ra) # 80001b60 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800015b0:	00004517          	auipc	a0,0x4
    800015b4:	1c853503          	ld	a0,456(a0) # 80005778 <_GLOBAL_OFFSET_TABLE_+0x40>
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	0d4080e7          	jalr	212(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    800015c0:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800015c4:	00004517          	auipc	a0,0x4
    800015c8:	aec50513          	addi	a0,a0,-1300 # 800050b0 <kvmincrease+0x1020>
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	594080e7          	jalr	1428(ra) # 80001b60 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015d4:	00004797          	auipc	a5,0x4
    800015d8:	16c7b783          	ld	a5,364(a5) # 80005740 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015dc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015e0:	00200793          	li	a5,2
    800015e4:	1007a073          	csrs	sstatus,a5
}
    800015e8:	00c0006f          	j	800015f4 <main+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	168080e7          	jalr	360(ra) # 80001754 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    800015f4:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800015f8:	0287c783          	lbu	a5,40(a5)
    800015fc:	fe0788e3          	beqz	a5,800015ec <main+0xdc>
             threads[2]->isFinished() &&
    80001600:	fc843783          	ld	a5,-56(s0)
    80001604:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001608:	fe0782e3          	beqz	a5,800015ec <main+0xdc>
             threads[3]->isFinished() &&
    8000160c:	fd043783          	ld	a5,-48(s0)
    80001610:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001614:	fc078ce3          	beqz	a5,800015ec <main+0xdc>
             threads[4]->isFinished()))
    80001618:	fd843783          	ld	a5,-40(s0)
    8000161c:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001620:	fc0786e3          	beqz	a5,800015ec <main+0xdc>
    80001624:	fb840493          	addi	s1,s0,-72
    80001628:	0140006f          	j	8000163c <main+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    8000162c:	00090513          	mv	a0,s2
    80001630:	00000097          	auipc	ra,0x0
    80001634:	250080e7          	jalr	592(ra) # 80001880 <_ZdlPv>
    for (auto &thread: threads)
    80001638:	00848493          	addi	s1,s1,8
    8000163c:	fe040793          	addi	a5,s0,-32
    80001640:	02f48063          	beq	s1,a5,80001660 <main+0x150>
        delete thread;
    80001644:	0004b903          	ld	s2,0(s1)
    80001648:	fe0908e3          	beqz	s2,80001638 <main+0x128>
    ~TCB() { delete[] stack; }
    8000164c:	00893503          	ld	a0,8(s2)
    80001650:	fc050ee3          	beqz	a0,8000162c <main+0x11c>
    80001654:	00000097          	auipc	ra,0x0
    80001658:	254080e7          	jalr	596(ra) # 800018a8 <_ZdaPv>
    8000165c:	fd1ff06f          	j	8000162c <main+0x11c>
    }
    printString("Finished\n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	a6850513          	addi	a0,a0,-1432 # 800050c8 <kvmincrease+0x1038>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	4f8080e7          	jalr	1272(ra) # 80001b60 <_Z11printStringPKc>

    return 0;
}
    80001670:	00000513          	li	a0,0
    80001674:	04813083          	ld	ra,72(sp)
    80001678:	04013403          	ld	s0,64(sp)
    8000167c:	03813483          	ld	s1,56(sp)
    80001680:	03013903          	ld	s2,48(sp)
    80001684:	05010113          	addi	sp,sp,80
    80001688:	00008067          	ret

000000008000168c <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	01213023          	sd	s2,0(sp)
    800016a0:	02010413          	addi	s0,sp,32
    800016a4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800016a8:	03000513          	li	a0,48
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	184080e7          	jalr	388(ra) # 80001830 <_Znwm>
    800016b4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800016b8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800016bc:	00090a63          	beqz	s2,800016d0 <_ZN3TCB12createThreadEPFvvE+0x44>
    800016c0:	00002537          	lui	a0,0x2
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	194080e7          	jalr	404(ra) # 80001858 <_Znam>
    800016cc:	0080006f          	j	800016d4 <_ZN3TCB12createThreadEPFvvE+0x48>
    800016d0:	00000513          	li	a0,0
            finished(false)
    800016d4:	00a4b423          	sd	a0,8(s1)
    800016d8:	00000797          	auipc	a5,0x0
    800016dc:	09878793          	addi	a5,a5,152 # 80001770 <_ZN3TCB13threadWrapperEv>
    800016e0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800016e4:	02050863          	beqz	a0,80001714 <_ZN3TCB12createThreadEPFvvE+0x88>
    800016e8:	000027b7          	lui	a5,0x2
    800016ec:	00f507b3          	add	a5,a0,a5
            finished(false)
    800016f0:	00f4bc23          	sd	a5,24(s1)
    800016f4:	00200793          	li	a5,2
    800016f8:	02f4b023          	sd	a5,32(s1)
    800016fc:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001700:	02090c63          	beqz	s2,80001738 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001704:	00048513          	mv	a0,s1
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	3b8080e7          	jalr	952(ra) # 80001ac0 <_ZN9Scheduler3putEP3TCB>
    80001710:	0280006f          	j	80001738 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001714:	00000793          	li	a5,0
    80001718:	fd9ff06f          	j	800016f0 <_ZN3TCB12createThreadEPFvvE+0x64>
    8000171c:	00050913          	mv	s2,a0
    80001720:	00048513          	mv	a0,s1
    80001724:	00000097          	auipc	ra,0x0
    80001728:	15c080e7          	jalr	348(ra) # 80001880 <_ZdlPv>
    8000172c:	00090513          	mv	a0,s2
    80001730:	00005097          	auipc	ra,0x5
    80001734:	188080e7          	jalr	392(ra) # 800068b8 <_Unwind_Resume>
}
    80001738:	00048513          	mv	a0,s1
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	00013903          	ld	s2,0(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001760:	00000073          	ecall
}
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001770:	fe010113          	addi	sp,sp,-32
    80001774:	00113c23          	sd	ra,24(sp)
    80001778:	00813823          	sd	s0,16(sp)
    8000177c:	00913423          	sd	s1,8(sp)
    80001780:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	14c080e7          	jalr	332(ra) # 800018d0 <_ZN5Riscv10popSppSpieEv>
    running->body();
    8000178c:	00004497          	auipc	s1,0x4
    80001790:	04448493          	addi	s1,s1,68 # 800057d0 <_ZN3TCB7runningE>
    80001794:	0004b783          	ld	a5,0(s1)
    80001798:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000179c:	000780e7          	jalr	a5
    running->setFinished(true);
    800017a0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800017a4:	00100713          	li	a4,1
    800017a8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	fa8080e7          	jalr	-88(ra) # 80001754 <_ZN3TCB5yieldEv>
}
    800017b4:	01813083          	ld	ra,24(sp)
    800017b8:	01013403          	ld	s0,16(sp)
    800017bc:	00813483          	ld	s1,8(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_ZN3TCB8dispatchEv>:
{
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800017dc:	00004497          	auipc	s1,0x4
    800017e0:	ff44b483          	ld	s1,-12(s1) # 800057d0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800017e4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800017e8:	02078c63          	beqz	a5,80001820 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	26c080e7          	jalr	620(ra) # 80001a58 <_ZN9Scheduler3getEv>
    800017f4:	00004797          	auipc	a5,0x4
    800017f8:	fca7be23          	sd	a0,-36(a5) # 800057d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800017fc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001800:	01048513          	addi	a0,s1,16
    80001804:	00000097          	auipc	ra,0x0
    80001808:	90c080e7          	jalr	-1780(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	29c080e7          	jalr	668(ra) # 80001ac0 <_ZN9Scheduler3putEP3TCB>
    8000182c:	fc1ff06f          	j	800017ec <_ZN3TCB8dispatchEv+0x24>

0000000080001830 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001830:	ff010113          	addi	sp,sp,-16
    80001834:	00113423          	sd	ra,8(sp)
    80001838:	00813023          	sd	s0,0(sp)
    8000183c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001840:	00002097          	auipc	ra,0x2
    80001844:	5d8080e7          	jalr	1496(ra) # 80003e18 <__mem_alloc>
}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_Znam>:

void *operator new[](size_t n)
{
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00113423          	sd	ra,8(sp)
    80001860:	00813023          	sd	s0,0(sp)
    80001864:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001868:	00002097          	auipc	ra,0x2
    8000186c:	5b0080e7          	jalr	1456(ra) # 80003e18 <__mem_alloc>
}
    80001870:	00813083          	ld	ra,8(sp)
    80001874:	00013403          	ld	s0,0(sp)
    80001878:	01010113          	addi	sp,sp,16
    8000187c:	00008067          	ret

0000000080001880 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00113423          	sd	ra,8(sp)
    80001888:	00813023          	sd	s0,0(sp)
    8000188c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001890:	00002097          	auipc	ra,0x2
    80001894:	4bc080e7          	jalr	1212(ra) # 80003d4c <__mem_free>
}
    80001898:	00813083          	ld	ra,8(sp)
    8000189c:	00013403          	ld	s0,0(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	00813023          	sd	s0,0(sp)
    800018b4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800018b8:	00002097          	auipc	ra,0x2
    800018bc:	494080e7          	jalr	1172(ra) # 80003d4c <__mem_free>
    800018c0:	00813083          	ld	ra,8(sp)
    800018c4:	00013403          	ld	s0,0(sp)
    800018c8:	01010113          	addi	sp,sp,16
    800018cc:	00008067          	ret

00000000800018d0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800018d0:	ff010113          	addi	sp,sp,-16
    800018d4:	00813423          	sd	s0,8(sp)
    800018d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800018dc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800018e0:	10200073          	sret
}
    800018e4:	00813403          	ld	s0,8(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800018f0:	fa010113          	addi	sp,sp,-96
    800018f4:	04113c23          	sd	ra,88(sp)
    800018f8:	04813823          	sd	s0,80(sp)
    800018fc:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001900:	142027f3          	csrr	a5,scause
    80001904:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001908:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000190c:	ff870693          	addi	a3,a4,-8
    80001910:	00100793          	li	a5,1
    80001914:	02d7fa63          	bgeu	a5,a3,80001948 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001918:	fff00793          	li	a5,-1
    8000191c:	03f79793          	slli	a5,a5,0x3f
    80001920:	00178793          	addi	a5,a5,1
    80001924:	06f70863          	beq	a4,a5,80001994 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001928:	fff00793          	li	a5,-1
    8000192c:	03f79793          	slli	a5,a5,0x3f
    80001930:	00978793          	addi	a5,a5,9
    80001934:	0cf70c63          	beq	a4,a5,80001a0c <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80001938:	05813083          	ld	ra,88(sp)
    8000193c:	05013403          	ld	s0,80(sp)
    80001940:	06010113          	addi	sp,sp,96
    80001944:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001948:	141027f3          	csrr	a5,sepc
    8000194c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001950:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001954:	00478793          	addi	a5,a5,4
    80001958:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000195c:	100027f3          	csrr	a5,sstatus
    80001960:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001964:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001968:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    8000196c:	00004797          	auipc	a5,0x4
    80001970:	de47b783          	ld	a5,-540(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001974:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	e50080e7          	jalr	-432(ra) # 800017c8 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80001980:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001984:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001988:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000198c:	14179073          	csrw	sepc,a5
}
    80001990:	fa9ff06f          	j	80001938 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001994:	00200793          	li	a5,2
    80001998:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    8000199c:	00004717          	auipc	a4,0x4
    800019a0:	db473703          	ld	a4,-588(a4) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019a4:	00073783          	ld	a5,0(a4)
    800019a8:	00178793          	addi	a5,a5,1
    800019ac:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800019b0:	00004717          	auipc	a4,0x4
    800019b4:	db873703          	ld	a4,-584(a4) # 80005768 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019b8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800019bc:	02073703          	ld	a4,32(a4)
    800019c0:	f6e7ece3          	bltu	a5,a4,80001938 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800019c4:	141027f3          	csrr	a5,sepc
    800019c8:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800019cc:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800019d0:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019d4:	100027f3          	csrr	a5,sstatus
    800019d8:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800019dc:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800019e0:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	d6c7b783          	ld	a5,-660(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019ec:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	dd8080e7          	jalr	-552(ra) # 800017c8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800019f8:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800019fc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001a00:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a04:	14179073          	csrw	sepc,a5
}
    80001a08:	f31ff06f          	j	80001938 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80001a0c:	00002097          	auipc	ra,0x2
    80001a10:	5d8080e7          	jalr	1496(ra) # 80003fe4 <console_handler>
    80001a14:	f25ff06f          	j	80001938 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001a18 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00813423          	sd	s0,8(sp)
    80001a20:	01010413          	addi	s0,sp,16
    80001a24:	00100793          	li	a5,1
    80001a28:	00f50863          	beq	a0,a5,80001a38 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret
    80001a38:	000107b7          	lui	a5,0x10
    80001a3c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a40:	fef596e3          	bne	a1,a5,80001a2c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a44:	00004797          	auipc	a5,0x4
    80001a48:	d9c78793          	addi	a5,a5,-612 # 800057e0 <_ZN9Scheduler16readyThreadQueueE>
    80001a4c:	0007b023          	sd	zero,0(a5)
    80001a50:	0007b423          	sd	zero,8(a5)
    80001a54:	fd9ff06f          	j	80001a2c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001a58 <_ZN9Scheduler3getEv>:
{
    80001a58:	fe010113          	addi	sp,sp,-32
    80001a5c:	00113c23          	sd	ra,24(sp)
    80001a60:	00813823          	sd	s0,16(sp)
    80001a64:	00913423          	sd	s1,8(sp)
    80001a68:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001a6c:	00004517          	auipc	a0,0x4
    80001a70:	d7453503          	ld	a0,-652(a0) # 800057e0 <_ZN9Scheduler16readyThreadQueueE>
    80001a74:	04050263          	beqz	a0,80001ab8 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001a78:	00853783          	ld	a5,8(a0)
    80001a7c:	00004717          	auipc	a4,0x4
    80001a80:	d6f73223          	sd	a5,-668(a4) # 800057e0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001a84:	02078463          	beqz	a5,80001aac <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001a88:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	df4080e7          	jalr	-524(ra) # 80001880 <_ZdlPv>
}
    80001a94:	00048513          	mv	a0,s1
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret
        if (!head) { tail = 0; }
    80001aac:	00004797          	auipc	a5,0x4
    80001ab0:	d207be23          	sd	zero,-708(a5) # 800057e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ab4:	fd5ff06f          	j	80001a88 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001ab8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001abc:	fd9ff06f          	j	80001a94 <_ZN9Scheduler3getEv+0x3c>

0000000080001ac0 <_ZN9Scheduler3putEP3TCB>:
{
    80001ac0:	fe010113          	addi	sp,sp,-32
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	00813823          	sd	s0,16(sp)
    80001acc:	00913423          	sd	s1,8(sp)
    80001ad0:	02010413          	addi	s0,sp,32
    80001ad4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001ad8:	01000513          	li	a0,16
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	d54080e7          	jalr	-684(ra) # 80001830 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ae4:	00953023          	sd	s1,0(a0)
    80001ae8:	00053423          	sd	zero,8(a0)
        if (tail)
    80001aec:	00004797          	auipc	a5,0x4
    80001af0:	cfc7b783          	ld	a5,-772(a5) # 800057e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001af4:	02078263          	beqz	a5,80001b18 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001af8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001afc:	00004797          	auipc	a5,0x4
    80001b00:	cea7b623          	sd	a0,-788(a5) # 800057e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b04:	01813083          	ld	ra,24(sp)
    80001b08:	01013403          	ld	s0,16(sp)
    80001b0c:	00813483          	ld	s1,8(sp)
    80001b10:	02010113          	addi	sp,sp,32
    80001b14:	00008067          	ret
            head = tail = elem;
    80001b18:	00004797          	auipc	a5,0x4
    80001b1c:	cc878793          	addi	a5,a5,-824 # 800057e0 <_ZN9Scheduler16readyThreadQueueE>
    80001b20:	00a7b423          	sd	a0,8(a5)
    80001b24:	00a7b023          	sd	a0,0(a5)
    80001b28:	fddff06f          	j	80001b04 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001b2c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    80001b3c:	000105b7          	lui	a1,0x10
    80001b40:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b44:	00100513          	li	a0,1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	ed0080e7          	jalr	-304(ra) # 80001a18 <_Z41__static_initialization_and_destruction_0ii>
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001b60:	fd010113          	addi	sp,sp,-48
    80001b64:	02113423          	sd	ra,40(sp)
    80001b68:	02813023          	sd	s0,32(sp)
    80001b6c:	00913c23          	sd	s1,24(sp)
    80001b70:	01213823          	sd	s2,16(sp)
    80001b74:	03010413          	addi	s0,sp,48
    80001b78:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b7c:	100027f3          	csrr	a5,sstatus
    80001b80:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001b84:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001b88:	00200793          	li	a5,2
    80001b8c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001b90:	0004c503          	lbu	a0,0(s1)
    80001b94:	00050a63          	beqz	a0,80001ba8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001b98:	00002097          	auipc	ra,0x2
    80001b9c:	3d8080e7          	jalr	984(ra) # 80003f70 <__putc>
        string++;
    80001ba0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ba4:	fedff06f          	j	80001b90 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ba8:	0009091b          	sext.w	s2,s2
    80001bac:	00297913          	andi	s2,s2,2
    80001bb0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001bb4:	10092073          	csrs	sstatus,s2
}
    80001bb8:	02813083          	ld	ra,40(sp)
    80001bbc:	02013403          	ld	s0,32(sp)
    80001bc0:	01813483          	ld	s1,24(sp)
    80001bc4:	01013903          	ld	s2,16(sp)
    80001bc8:	03010113          	addi	sp,sp,48
    80001bcc:	00008067          	ret

0000000080001bd0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001bd0:	fc010113          	addi	sp,sp,-64
    80001bd4:	02113c23          	sd	ra,56(sp)
    80001bd8:	02813823          	sd	s0,48(sp)
    80001bdc:	02913423          	sd	s1,40(sp)
    80001be0:	03213023          	sd	s2,32(sp)
    80001be4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001be8:	100027f3          	csrr	a5,sstatus
    80001bec:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001bf0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001bf4:	00200793          	li	a5,2
    80001bf8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001bfc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001c00:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001c04:	00a00613          	li	a2,10
    80001c08:	02c5773b          	remuw	a4,a0,a2
    80001c0c:	02071693          	slli	a3,a4,0x20
    80001c10:	0206d693          	srli	a3,a3,0x20
    80001c14:	00003717          	auipc	a4,0x3
    80001c18:	4c470713          	addi	a4,a4,1220 # 800050d8 <_ZZ12printIntegermE6digits>
    80001c1c:	00d70733          	add	a4,a4,a3
    80001c20:	00074703          	lbu	a4,0(a4)
    80001c24:	fe040693          	addi	a3,s0,-32
    80001c28:	009687b3          	add	a5,a3,s1
    80001c2c:	0014849b          	addiw	s1,s1,1
    80001c30:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001c34:	0005071b          	sext.w	a4,a0
    80001c38:	02c5553b          	divuw	a0,a0,a2
    80001c3c:	00900793          	li	a5,9
    80001c40:	fce7e2e3          	bltu	a5,a4,80001c04 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001c44:	fff4849b          	addiw	s1,s1,-1
    80001c48:	0004ce63          	bltz	s1,80001c64 <_Z12printIntegerm+0x94>
    80001c4c:	fe040793          	addi	a5,s0,-32
    80001c50:	009787b3          	add	a5,a5,s1
    80001c54:	ff07c503          	lbu	a0,-16(a5)
    80001c58:	00002097          	auipc	ra,0x2
    80001c5c:	318080e7          	jalr	792(ra) # 80003f70 <__putc>
    80001c60:	fe5ff06f          	j	80001c44 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001c64:	0009091b          	sext.w	s2,s2
    80001c68:	00297913          	andi	s2,s2,2
    80001c6c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c70:	10092073          	csrs	sstatus,s2
    80001c74:	03813083          	ld	ra,56(sp)
    80001c78:	03013403          	ld	s0,48(sp)
    80001c7c:	02813483          	ld	s1,40(sp)
    80001c80:	02013903          	ld	s2,32(sp)
    80001c84:	04010113          	addi	sp,sp,64
    80001c88:	00008067          	ret

0000000080001c8c <start>:
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    80001c98:	300027f3          	csrr	a5,mstatus
    80001c9c:	ffffe737          	lui	a4,0xffffe
    80001ca0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d9f>
    80001ca4:	00e7f7b3          	and	a5,a5,a4
    80001ca8:	00001737          	lui	a4,0x1
    80001cac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001cb0:	00e7e7b3          	or	a5,a5,a4
    80001cb4:	30079073          	csrw	mstatus,a5
    80001cb8:	00000797          	auipc	a5,0x0
    80001cbc:	16078793          	addi	a5,a5,352 # 80001e18 <system_main>
    80001cc0:	34179073          	csrw	mepc,a5
    80001cc4:	00000793          	li	a5,0
    80001cc8:	18079073          	csrw	satp,a5
    80001ccc:	000107b7          	lui	a5,0x10
    80001cd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001cd4:	30279073          	csrw	medeleg,a5
    80001cd8:	30379073          	csrw	mideleg,a5
    80001cdc:	104027f3          	csrr	a5,sie
    80001ce0:	2227e793          	ori	a5,a5,546
    80001ce4:	10479073          	csrw	sie,a5
    80001ce8:	fff00793          	li	a5,-1
    80001cec:	00a7d793          	srli	a5,a5,0xa
    80001cf0:	3b079073          	csrw	pmpaddr0,a5
    80001cf4:	00f00793          	li	a5,15
    80001cf8:	3a079073          	csrw	pmpcfg0,a5
    80001cfc:	f14027f3          	csrr	a5,mhartid
    80001d00:	0200c737          	lui	a4,0x200c
    80001d04:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d08:	0007869b          	sext.w	a3,a5
    80001d0c:	00269713          	slli	a4,a3,0x2
    80001d10:	000f4637          	lui	a2,0xf4
    80001d14:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d18:	00d70733          	add	a4,a4,a3
    80001d1c:	0037979b          	slliw	a5,a5,0x3
    80001d20:	020046b7          	lui	a3,0x2004
    80001d24:	00d787b3          	add	a5,a5,a3
    80001d28:	00c585b3          	add	a1,a1,a2
    80001d2c:	00371693          	slli	a3,a4,0x3
    80001d30:	00004717          	auipc	a4,0x4
    80001d34:	ac070713          	addi	a4,a4,-1344 # 800057f0 <timer_scratch>
    80001d38:	00b7b023          	sd	a1,0(a5)
    80001d3c:	00d70733          	add	a4,a4,a3
    80001d40:	00f73c23          	sd	a5,24(a4)
    80001d44:	02c73023          	sd	a2,32(a4)
    80001d48:	34071073          	csrw	mscratch,a4
    80001d4c:	00000797          	auipc	a5,0x0
    80001d50:	6e478793          	addi	a5,a5,1764 # 80002430 <timervec>
    80001d54:	30579073          	csrw	mtvec,a5
    80001d58:	300027f3          	csrr	a5,mstatus
    80001d5c:	0087e793          	ori	a5,a5,8
    80001d60:	30079073          	csrw	mstatus,a5
    80001d64:	304027f3          	csrr	a5,mie
    80001d68:	0807e793          	ori	a5,a5,128
    80001d6c:	30479073          	csrw	mie,a5
    80001d70:	f14027f3          	csrr	a5,mhartid
    80001d74:	0007879b          	sext.w	a5,a5
    80001d78:	00078213          	mv	tp,a5
    80001d7c:	30200073          	mret
    80001d80:	00813403          	ld	s0,8(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <timerinit>:
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
    80001d98:	f14027f3          	csrr	a5,mhartid
    80001d9c:	0200c737          	lui	a4,0x200c
    80001da0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001da4:	0007869b          	sext.w	a3,a5
    80001da8:	00269713          	slli	a4,a3,0x2
    80001dac:	000f4637          	lui	a2,0xf4
    80001db0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001db4:	00d70733          	add	a4,a4,a3
    80001db8:	0037979b          	slliw	a5,a5,0x3
    80001dbc:	020046b7          	lui	a3,0x2004
    80001dc0:	00d787b3          	add	a5,a5,a3
    80001dc4:	00c585b3          	add	a1,a1,a2
    80001dc8:	00371693          	slli	a3,a4,0x3
    80001dcc:	00004717          	auipc	a4,0x4
    80001dd0:	a2470713          	addi	a4,a4,-1500 # 800057f0 <timer_scratch>
    80001dd4:	00b7b023          	sd	a1,0(a5)
    80001dd8:	00d70733          	add	a4,a4,a3
    80001ddc:	00f73c23          	sd	a5,24(a4)
    80001de0:	02c73023          	sd	a2,32(a4)
    80001de4:	34071073          	csrw	mscratch,a4
    80001de8:	00000797          	auipc	a5,0x0
    80001dec:	64878793          	addi	a5,a5,1608 # 80002430 <timervec>
    80001df0:	30579073          	csrw	mtvec,a5
    80001df4:	300027f3          	csrr	a5,mstatus
    80001df8:	0087e793          	ori	a5,a5,8
    80001dfc:	30079073          	csrw	mstatus,a5
    80001e00:	304027f3          	csrr	a5,mie
    80001e04:	0807e793          	ori	a5,a5,128
    80001e08:	30479073          	csrw	mie,a5
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <system_main>:
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	02010413          	addi	s0,sp,32
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	0c4080e7          	jalr	196(ra) # 80001ef0 <cpuid>
    80001e34:	00004497          	auipc	s1,0x4
    80001e38:	96c48493          	addi	s1,s1,-1684 # 800057a0 <started>
    80001e3c:	02050263          	beqz	a0,80001e60 <system_main+0x48>
    80001e40:	0004a783          	lw	a5,0(s1)
    80001e44:	0007879b          	sext.w	a5,a5
    80001e48:	fe078ce3          	beqz	a5,80001e40 <system_main+0x28>
    80001e4c:	0ff0000f          	fence
    80001e50:	00003517          	auipc	a0,0x3
    80001e54:	2c850513          	addi	a0,a0,712 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	a74080e7          	jalr	-1420(ra) # 800028cc <panic>
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	9c8080e7          	jalr	-1592(ra) # 80002828 <consoleinit>
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	154080e7          	jalr	340(ra) # 80002fbc <printfinit>
    80001e70:	00003517          	auipc	a0,0x3
    80001e74:	26050513          	addi	a0,a0,608 # 800050d0 <kvmincrease+0x1040>
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	ab0080e7          	jalr	-1360(ra) # 80002928 <__printf>
    80001e80:	00003517          	auipc	a0,0x3
    80001e84:	26850513          	addi	a0,a0,616 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	aa0080e7          	jalr	-1376(ra) # 80002928 <__printf>
    80001e90:	00003517          	auipc	a0,0x3
    80001e94:	24050513          	addi	a0,a0,576 # 800050d0 <kvmincrease+0x1040>
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	a90080e7          	jalr	-1392(ra) # 80002928 <__printf>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	4a8080e7          	jalr	1192(ra) # 80003348 <kinit>
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	148080e7          	jalr	328(ra) # 80001ff0 <trapinit>
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	16c080e7          	jalr	364(ra) # 8000201c <trapinithart>
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	5b8080e7          	jalr	1464(ra) # 80002470 <plicinit>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	5d8080e7          	jalr	1496(ra) # 80002498 <plicinithart>
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	078080e7          	jalr	120(ra) # 80001f40 <userinit>
    80001ed0:	0ff0000f          	fence
    80001ed4:	00100793          	li	a5,1
    80001ed8:	00003517          	auipc	a0,0x3
    80001edc:	22850513          	addi	a0,a0,552 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80001ee0:	00f4a023          	sw	a5,0(s1)
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	a44080e7          	jalr	-1468(ra) # 80002928 <__printf>
    80001eec:	0000006f          	j	80001eec <system_main+0xd4>

0000000080001ef0 <cpuid>:
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00813423          	sd	s0,8(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    80001efc:	00020513          	mv	a0,tp
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	0005051b          	sext.w	a0,a0
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <mycpu>:
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00813423          	sd	s0,8(sp)
    80001f18:	01010413          	addi	s0,sp,16
    80001f1c:	00020793          	mv	a5,tp
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	0007879b          	sext.w	a5,a5
    80001f28:	00779793          	slli	a5,a5,0x7
    80001f2c:	00005517          	auipc	a0,0x5
    80001f30:	8f450513          	addi	a0,a0,-1804 # 80006820 <cpus>
    80001f34:	00f50533          	add	a0,a0,a5
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <userinit>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	00813403          	ld	s0,8(sp)
    80001f50:	01010113          	addi	sp,sp,16
    80001f54:	fffff317          	auipc	t1,0xfffff
    80001f58:	5bc30067          	jr	1468(t1) # 80001510 <main>

0000000080001f5c <either_copyout>:
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	01010413          	addi	s0,sp,16
    80001f6c:	02051663          	bnez	a0,80001f98 <either_copyout+0x3c>
    80001f70:	00058513          	mv	a0,a1
    80001f74:	00060593          	mv	a1,a2
    80001f78:	0006861b          	sext.w	a2,a3
    80001f7c:	00002097          	auipc	ra,0x2
    80001f80:	c58080e7          	jalr	-936(ra) # 80003bd4 <__memmove>
    80001f84:	00813083          	ld	ra,8(sp)
    80001f88:	00013403          	ld	s0,0(sp)
    80001f8c:	00000513          	li	a0,0
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret
    80001f98:	00003517          	auipc	a0,0x3
    80001f9c:	1a850513          	addi	a0,a0,424 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	92c080e7          	jalr	-1748(ra) # 800028cc <panic>

0000000080001fa8 <either_copyin>:
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    80001fb8:	02059463          	bnez	a1,80001fe0 <either_copyin+0x38>
    80001fbc:	00060593          	mv	a1,a2
    80001fc0:	0006861b          	sext.w	a2,a3
    80001fc4:	00002097          	auipc	ra,0x2
    80001fc8:	c10080e7          	jalr	-1008(ra) # 80003bd4 <__memmove>
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	00000513          	li	a0,0
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret
    80001fe0:	00003517          	auipc	a0,0x3
    80001fe4:	18850513          	addi	a0,a0,392 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	8e4080e7          	jalr	-1820(ra) # 800028cc <panic>

0000000080001ff0 <trapinit>:
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00813423          	sd	s0,8(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	00003597          	auipc	a1,0x3
    80002004:	19058593          	addi	a1,a1,400 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    80002008:	00005517          	auipc	a0,0x5
    8000200c:	89850513          	addi	a0,a0,-1896 # 800068a0 <tickslock>
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00001317          	auipc	t1,0x1
    80002018:	5c430067          	jr	1476(t1) # 800035d8 <initlock>

000000008000201c <trapinithart>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00000797          	auipc	a5,0x0
    8000202c:	2f878793          	addi	a5,a5,760 # 80002320 <kernelvec>
    80002030:	10579073          	csrw	stvec,a5
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <usertrap>:
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    8000204c:	00813403          	ld	s0,8(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <usertrapret>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <kerneltrap>:
    80002070:	fe010113          	addi	sp,sp,-32
    80002074:	00813823          	sd	s0,16(sp)
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00913423          	sd	s1,8(sp)
    80002080:	02010413          	addi	s0,sp,32
    80002084:	142025f3          	csrr	a1,scause
    80002088:	100027f3          	csrr	a5,sstatus
    8000208c:	0027f793          	andi	a5,a5,2
    80002090:	10079c63          	bnez	a5,800021a8 <kerneltrap+0x138>
    80002094:	142027f3          	csrr	a5,scause
    80002098:	0207ce63          	bltz	a5,800020d4 <kerneltrap+0x64>
    8000209c:	00003517          	auipc	a0,0x3
    800020a0:	13c50513          	addi	a0,a0,316 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	884080e7          	jalr	-1916(ra) # 80002928 <__printf>
    800020ac:	141025f3          	csrr	a1,sepc
    800020b0:	14302673          	csrr	a2,stval
    800020b4:	00003517          	auipc	a0,0x3
    800020b8:	13450513          	addi	a0,a0,308 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	86c080e7          	jalr	-1940(ra) # 80002928 <__printf>
    800020c4:	00003517          	auipc	a0,0x3
    800020c8:	13c50513          	addi	a0,a0,316 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	800080e7          	jalr	-2048(ra) # 800028cc <panic>
    800020d4:	0ff7f713          	andi	a4,a5,255
    800020d8:	00900693          	li	a3,9
    800020dc:	04d70063          	beq	a4,a3,8000211c <kerneltrap+0xac>
    800020e0:	fff00713          	li	a4,-1
    800020e4:	03f71713          	slli	a4,a4,0x3f
    800020e8:	00170713          	addi	a4,a4,1
    800020ec:	fae798e3          	bne	a5,a4,8000209c <kerneltrap+0x2c>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	e00080e7          	jalr	-512(ra) # 80001ef0 <cpuid>
    800020f8:	06050663          	beqz	a0,80002164 <kerneltrap+0xf4>
    800020fc:	144027f3          	csrr	a5,sip
    80002100:	ffd7f793          	andi	a5,a5,-3
    80002104:	14479073          	csrw	sip,a5
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	3c8080e7          	jalr	968(ra) # 800024e4 <plic_claim>
    80002124:	00a00793          	li	a5,10
    80002128:	00050493          	mv	s1,a0
    8000212c:	06f50863          	beq	a0,a5,8000219c <kerneltrap+0x12c>
    80002130:	fc050ce3          	beqz	a0,80002108 <kerneltrap+0x98>
    80002134:	00050593          	mv	a1,a0
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	08050513          	addi	a0,a0,128 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	7e8080e7          	jalr	2024(ra) # 80002928 <__printf>
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	01813083          	ld	ra,24(sp)
    80002150:	00048513          	mv	a0,s1
    80002154:	00813483          	ld	s1,8(sp)
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00000317          	auipc	t1,0x0
    80002160:	3c030067          	jr	960(t1) # 8000251c <plic_complete>
    80002164:	00004517          	auipc	a0,0x4
    80002168:	73c50513          	addi	a0,a0,1852 # 800068a0 <tickslock>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	490080e7          	jalr	1168(ra) # 800035fc <acquire>
    80002174:	00003717          	auipc	a4,0x3
    80002178:	63070713          	addi	a4,a4,1584 # 800057a4 <ticks>
    8000217c:	00072783          	lw	a5,0(a4)
    80002180:	00004517          	auipc	a0,0x4
    80002184:	72050513          	addi	a0,a0,1824 # 800068a0 <tickslock>
    80002188:	0017879b          	addiw	a5,a5,1
    8000218c:	00f72023          	sw	a5,0(a4)
    80002190:	00001097          	auipc	ra,0x1
    80002194:	538080e7          	jalr	1336(ra) # 800036c8 <release>
    80002198:	f65ff06f          	j	800020fc <kerneltrap+0x8c>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	094080e7          	jalr	148(ra) # 80003230 <uartintr>
    800021a4:	fa5ff06f          	j	80002148 <kerneltrap+0xd8>
    800021a8:	00003517          	auipc	a0,0x3
    800021ac:	ff050513          	addi	a0,a0,-16 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	71c080e7          	jalr	1820(ra) # 800028cc <panic>

00000000800021b8 <clockintr>:
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00004497          	auipc	s1,0x4
    800021d0:	6d448493          	addi	s1,s1,1748 # 800068a0 <tickslock>
    800021d4:	00048513          	mv	a0,s1
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	424080e7          	jalr	1060(ra) # 800035fc <acquire>
    800021e0:	00003717          	auipc	a4,0x3
    800021e4:	5c470713          	addi	a4,a4,1476 # 800057a4 <ticks>
    800021e8:	00072783          	lw	a5,0(a4)
    800021ec:	01013403          	ld	s0,16(sp)
    800021f0:	01813083          	ld	ra,24(sp)
    800021f4:	00048513          	mv	a0,s1
    800021f8:	0017879b          	addiw	a5,a5,1
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	00f72023          	sw	a5,0(a4)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00001317          	auipc	t1,0x1
    8000220c:	4c030067          	jr	1216(t1) # 800036c8 <release>

0000000080002210 <devintr>:
    80002210:	142027f3          	csrr	a5,scause
    80002214:	00000513          	li	a0,0
    80002218:	0007c463          	bltz	a5,80002220 <devintr+0x10>
    8000221c:	00008067          	ret
    80002220:	fe010113          	addi	sp,sp,-32
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00113c23          	sd	ra,24(sp)
    8000222c:	00913423          	sd	s1,8(sp)
    80002230:	02010413          	addi	s0,sp,32
    80002234:	0ff7f713          	andi	a4,a5,255
    80002238:	00900693          	li	a3,9
    8000223c:	04d70c63          	beq	a4,a3,80002294 <devintr+0x84>
    80002240:	fff00713          	li	a4,-1
    80002244:	03f71713          	slli	a4,a4,0x3f
    80002248:	00170713          	addi	a4,a4,1
    8000224c:	00e78c63          	beq	a5,a4,80002264 <devintr+0x54>
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	02010113          	addi	sp,sp,32
    80002260:	00008067          	ret
    80002264:	00000097          	auipc	ra,0x0
    80002268:	c8c080e7          	jalr	-884(ra) # 80001ef0 <cpuid>
    8000226c:	06050663          	beqz	a0,800022d8 <devintr+0xc8>
    80002270:	144027f3          	csrr	a5,sip
    80002274:	ffd7f793          	andi	a5,a5,-3
    80002278:	14479073          	csrw	sip,a5
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	00200513          	li	a0,2
    8000228c:	02010113          	addi	sp,sp,32
    80002290:	00008067          	ret
    80002294:	00000097          	auipc	ra,0x0
    80002298:	250080e7          	jalr	592(ra) # 800024e4 <plic_claim>
    8000229c:	00a00793          	li	a5,10
    800022a0:	00050493          	mv	s1,a0
    800022a4:	06f50663          	beq	a0,a5,80002310 <devintr+0x100>
    800022a8:	00100513          	li	a0,1
    800022ac:	fa0482e3          	beqz	s1,80002250 <devintr+0x40>
    800022b0:	00048593          	mv	a1,s1
    800022b4:	00003517          	auipc	a0,0x3
    800022b8:	f0450513          	addi	a0,a0,-252 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	66c080e7          	jalr	1644(ra) # 80002928 <__printf>
    800022c4:	00048513          	mv	a0,s1
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	254080e7          	jalr	596(ra) # 8000251c <plic_complete>
    800022d0:	00100513          	li	a0,1
    800022d4:	f7dff06f          	j	80002250 <devintr+0x40>
    800022d8:	00004517          	auipc	a0,0x4
    800022dc:	5c850513          	addi	a0,a0,1480 # 800068a0 <tickslock>
    800022e0:	00001097          	auipc	ra,0x1
    800022e4:	31c080e7          	jalr	796(ra) # 800035fc <acquire>
    800022e8:	00003717          	auipc	a4,0x3
    800022ec:	4bc70713          	addi	a4,a4,1212 # 800057a4 <ticks>
    800022f0:	00072783          	lw	a5,0(a4)
    800022f4:	00004517          	auipc	a0,0x4
    800022f8:	5ac50513          	addi	a0,a0,1452 # 800068a0 <tickslock>
    800022fc:	0017879b          	addiw	a5,a5,1
    80002300:	00f72023          	sw	a5,0(a4)
    80002304:	00001097          	auipc	ra,0x1
    80002308:	3c4080e7          	jalr	964(ra) # 800036c8 <release>
    8000230c:	f65ff06f          	j	80002270 <devintr+0x60>
    80002310:	00001097          	auipc	ra,0x1
    80002314:	f20080e7          	jalr	-224(ra) # 80003230 <uartintr>
    80002318:	fadff06f          	j	800022c4 <devintr+0xb4>
    8000231c:	0000                	unimp
	...

0000000080002320 <kernelvec>:
    80002320:	f0010113          	addi	sp,sp,-256
    80002324:	00113023          	sd	ra,0(sp)
    80002328:	00213423          	sd	sp,8(sp)
    8000232c:	00313823          	sd	gp,16(sp)
    80002330:	00413c23          	sd	tp,24(sp)
    80002334:	02513023          	sd	t0,32(sp)
    80002338:	02613423          	sd	t1,40(sp)
    8000233c:	02713823          	sd	t2,48(sp)
    80002340:	02813c23          	sd	s0,56(sp)
    80002344:	04913023          	sd	s1,64(sp)
    80002348:	04a13423          	sd	a0,72(sp)
    8000234c:	04b13823          	sd	a1,80(sp)
    80002350:	04c13c23          	sd	a2,88(sp)
    80002354:	06d13023          	sd	a3,96(sp)
    80002358:	06e13423          	sd	a4,104(sp)
    8000235c:	06f13823          	sd	a5,112(sp)
    80002360:	07013c23          	sd	a6,120(sp)
    80002364:	09113023          	sd	a7,128(sp)
    80002368:	09213423          	sd	s2,136(sp)
    8000236c:	09313823          	sd	s3,144(sp)
    80002370:	09413c23          	sd	s4,152(sp)
    80002374:	0b513023          	sd	s5,160(sp)
    80002378:	0b613423          	sd	s6,168(sp)
    8000237c:	0b713823          	sd	s7,176(sp)
    80002380:	0b813c23          	sd	s8,184(sp)
    80002384:	0d913023          	sd	s9,192(sp)
    80002388:	0da13423          	sd	s10,200(sp)
    8000238c:	0db13823          	sd	s11,208(sp)
    80002390:	0dc13c23          	sd	t3,216(sp)
    80002394:	0fd13023          	sd	t4,224(sp)
    80002398:	0fe13423          	sd	t5,232(sp)
    8000239c:	0ff13823          	sd	t6,240(sp)
    800023a0:	cd1ff0ef          	jal	ra,80002070 <kerneltrap>
    800023a4:	00013083          	ld	ra,0(sp)
    800023a8:	00813103          	ld	sp,8(sp)
    800023ac:	01013183          	ld	gp,16(sp)
    800023b0:	02013283          	ld	t0,32(sp)
    800023b4:	02813303          	ld	t1,40(sp)
    800023b8:	03013383          	ld	t2,48(sp)
    800023bc:	03813403          	ld	s0,56(sp)
    800023c0:	04013483          	ld	s1,64(sp)
    800023c4:	04813503          	ld	a0,72(sp)
    800023c8:	05013583          	ld	a1,80(sp)
    800023cc:	05813603          	ld	a2,88(sp)
    800023d0:	06013683          	ld	a3,96(sp)
    800023d4:	06813703          	ld	a4,104(sp)
    800023d8:	07013783          	ld	a5,112(sp)
    800023dc:	07813803          	ld	a6,120(sp)
    800023e0:	08013883          	ld	a7,128(sp)
    800023e4:	08813903          	ld	s2,136(sp)
    800023e8:	09013983          	ld	s3,144(sp)
    800023ec:	09813a03          	ld	s4,152(sp)
    800023f0:	0a013a83          	ld	s5,160(sp)
    800023f4:	0a813b03          	ld	s6,168(sp)
    800023f8:	0b013b83          	ld	s7,176(sp)
    800023fc:	0b813c03          	ld	s8,184(sp)
    80002400:	0c013c83          	ld	s9,192(sp)
    80002404:	0c813d03          	ld	s10,200(sp)
    80002408:	0d013d83          	ld	s11,208(sp)
    8000240c:	0d813e03          	ld	t3,216(sp)
    80002410:	0e013e83          	ld	t4,224(sp)
    80002414:	0e813f03          	ld	t5,232(sp)
    80002418:	0f013f83          	ld	t6,240(sp)
    8000241c:	10010113          	addi	sp,sp,256
    80002420:	10200073          	sret
    80002424:	00000013          	nop
    80002428:	00000013          	nop
    8000242c:	00000013          	nop

0000000080002430 <timervec>:
    80002430:	34051573          	csrrw	a0,mscratch,a0
    80002434:	00b53023          	sd	a1,0(a0)
    80002438:	00c53423          	sd	a2,8(a0)
    8000243c:	00d53823          	sd	a3,16(a0)
    80002440:	01853583          	ld	a1,24(a0)
    80002444:	02053603          	ld	a2,32(a0)
    80002448:	0005b683          	ld	a3,0(a1)
    8000244c:	00c686b3          	add	a3,a3,a2
    80002450:	00d5b023          	sd	a3,0(a1)
    80002454:	00200593          	li	a1,2
    80002458:	14459073          	csrw	sip,a1
    8000245c:	01053683          	ld	a3,16(a0)
    80002460:	00853603          	ld	a2,8(a0)
    80002464:	00053583          	ld	a1,0(a0)
    80002468:	34051573          	csrrw	a0,mscratch,a0
    8000246c:	30200073          	mret

0000000080002470 <plicinit>:
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	00813403          	ld	s0,8(sp)
    80002480:	0c0007b7          	lui	a5,0xc000
    80002484:	00100713          	li	a4,1
    80002488:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000248c:	00e7a223          	sw	a4,4(a5)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <plicinithart>:
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813023          	sd	s0,0(sp)
    800024a0:	00113423          	sd	ra,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	a48080e7          	jalr	-1464(ra) # 80001ef0 <cpuid>
    800024b0:	0085171b          	slliw	a4,a0,0x8
    800024b4:	0c0027b7          	lui	a5,0xc002
    800024b8:	00e787b3          	add	a5,a5,a4
    800024bc:	40200713          	li	a4,1026
    800024c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800024c4:	00813083          	ld	ra,8(sp)
    800024c8:	00013403          	ld	s0,0(sp)
    800024cc:	00d5151b          	slliw	a0,a0,0xd
    800024d0:	0c2017b7          	lui	a5,0xc201
    800024d4:	00a78533          	add	a0,a5,a0
    800024d8:	00052023          	sw	zero,0(a0)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret

00000000800024e4 <plic_claim>:
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00813023          	sd	s0,0(sp)
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	01010413          	addi	s0,sp,16
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	9fc080e7          	jalr	-1540(ra) # 80001ef0 <cpuid>
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	00d5151b          	slliw	a0,a0,0xd
    80002508:	0c2017b7          	lui	a5,0xc201
    8000250c:	00a78533          	add	a0,a5,a0
    80002510:	00452503          	lw	a0,4(a0)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <plic_complete>:
    8000251c:	fe010113          	addi	sp,sp,-32
    80002520:	00813823          	sd	s0,16(sp)
    80002524:	00913423          	sd	s1,8(sp)
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	02010413          	addi	s0,sp,32
    80002530:	00050493          	mv	s1,a0
    80002534:	00000097          	auipc	ra,0x0
    80002538:	9bc080e7          	jalr	-1604(ra) # 80001ef0 <cpuid>
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	00d5179b          	slliw	a5,a0,0xd
    80002548:	0c201737          	lui	a4,0xc201
    8000254c:	00f707b3          	add	a5,a4,a5
    80002550:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002554:	00813483          	ld	s1,8(sp)
    80002558:	02010113          	addi	sp,sp,32
    8000255c:	00008067          	ret

0000000080002560 <consolewrite>:
    80002560:	fb010113          	addi	sp,sp,-80
    80002564:	04813023          	sd	s0,64(sp)
    80002568:	04113423          	sd	ra,72(sp)
    8000256c:	02913c23          	sd	s1,56(sp)
    80002570:	03213823          	sd	s2,48(sp)
    80002574:	03313423          	sd	s3,40(sp)
    80002578:	03413023          	sd	s4,32(sp)
    8000257c:	01513c23          	sd	s5,24(sp)
    80002580:	05010413          	addi	s0,sp,80
    80002584:	06c05c63          	blez	a2,800025fc <consolewrite+0x9c>
    80002588:	00060993          	mv	s3,a2
    8000258c:	00050a13          	mv	s4,a0
    80002590:	00058493          	mv	s1,a1
    80002594:	00000913          	li	s2,0
    80002598:	fff00a93          	li	s5,-1
    8000259c:	01c0006f          	j	800025b8 <consolewrite+0x58>
    800025a0:	fbf44503          	lbu	a0,-65(s0)
    800025a4:	0019091b          	addiw	s2,s2,1
    800025a8:	00148493          	addi	s1,s1,1
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	a9c080e7          	jalr	-1380(ra) # 80003048 <uartputc>
    800025b4:	03298063          	beq	s3,s2,800025d4 <consolewrite+0x74>
    800025b8:	00048613          	mv	a2,s1
    800025bc:	00100693          	li	a3,1
    800025c0:	000a0593          	mv	a1,s4
    800025c4:	fbf40513          	addi	a0,s0,-65
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	9e0080e7          	jalr	-1568(ra) # 80001fa8 <either_copyin>
    800025d0:	fd5518e3          	bne	a0,s5,800025a0 <consolewrite+0x40>
    800025d4:	04813083          	ld	ra,72(sp)
    800025d8:	04013403          	ld	s0,64(sp)
    800025dc:	03813483          	ld	s1,56(sp)
    800025e0:	02813983          	ld	s3,40(sp)
    800025e4:	02013a03          	ld	s4,32(sp)
    800025e8:	01813a83          	ld	s5,24(sp)
    800025ec:	00090513          	mv	a0,s2
    800025f0:	03013903          	ld	s2,48(sp)
    800025f4:	05010113          	addi	sp,sp,80
    800025f8:	00008067          	ret
    800025fc:	00000913          	li	s2,0
    80002600:	fd5ff06f          	j	800025d4 <consolewrite+0x74>

0000000080002604 <consoleread>:
    80002604:	f9010113          	addi	sp,sp,-112
    80002608:	06813023          	sd	s0,96(sp)
    8000260c:	04913c23          	sd	s1,88(sp)
    80002610:	05213823          	sd	s2,80(sp)
    80002614:	05313423          	sd	s3,72(sp)
    80002618:	05413023          	sd	s4,64(sp)
    8000261c:	03513c23          	sd	s5,56(sp)
    80002620:	03613823          	sd	s6,48(sp)
    80002624:	03713423          	sd	s7,40(sp)
    80002628:	03813023          	sd	s8,32(sp)
    8000262c:	06113423          	sd	ra,104(sp)
    80002630:	01913c23          	sd	s9,24(sp)
    80002634:	07010413          	addi	s0,sp,112
    80002638:	00060b93          	mv	s7,a2
    8000263c:	00050913          	mv	s2,a0
    80002640:	00058c13          	mv	s8,a1
    80002644:	00060b1b          	sext.w	s6,a2
    80002648:	00004497          	auipc	s1,0x4
    8000264c:	28048493          	addi	s1,s1,640 # 800068c8 <cons>
    80002650:	00400993          	li	s3,4
    80002654:	fff00a13          	li	s4,-1
    80002658:	00a00a93          	li	s5,10
    8000265c:	05705e63          	blez	s7,800026b8 <consoleread+0xb4>
    80002660:	09c4a703          	lw	a4,156(s1)
    80002664:	0984a783          	lw	a5,152(s1)
    80002668:	0007071b          	sext.w	a4,a4
    8000266c:	08e78463          	beq	a5,a4,800026f4 <consoleread+0xf0>
    80002670:	07f7f713          	andi	a4,a5,127
    80002674:	00e48733          	add	a4,s1,a4
    80002678:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000267c:	0017869b          	addiw	a3,a5,1
    80002680:	08d4ac23          	sw	a3,152(s1)
    80002684:	00070c9b          	sext.w	s9,a4
    80002688:	0b370663          	beq	a4,s3,80002734 <consoleread+0x130>
    8000268c:	00100693          	li	a3,1
    80002690:	f9f40613          	addi	a2,s0,-97
    80002694:	000c0593          	mv	a1,s8
    80002698:	00090513          	mv	a0,s2
    8000269c:	f8e40fa3          	sb	a4,-97(s0)
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	8bc080e7          	jalr	-1860(ra) # 80001f5c <either_copyout>
    800026a8:	01450863          	beq	a0,s4,800026b8 <consoleread+0xb4>
    800026ac:	001c0c13          	addi	s8,s8,1
    800026b0:	fffb8b9b          	addiw	s7,s7,-1
    800026b4:	fb5c94e3          	bne	s9,s5,8000265c <consoleread+0x58>
    800026b8:	000b851b          	sext.w	a0,s7
    800026bc:	06813083          	ld	ra,104(sp)
    800026c0:	06013403          	ld	s0,96(sp)
    800026c4:	05813483          	ld	s1,88(sp)
    800026c8:	05013903          	ld	s2,80(sp)
    800026cc:	04813983          	ld	s3,72(sp)
    800026d0:	04013a03          	ld	s4,64(sp)
    800026d4:	03813a83          	ld	s5,56(sp)
    800026d8:	02813b83          	ld	s7,40(sp)
    800026dc:	02013c03          	ld	s8,32(sp)
    800026e0:	01813c83          	ld	s9,24(sp)
    800026e4:	40ab053b          	subw	a0,s6,a0
    800026e8:	03013b03          	ld	s6,48(sp)
    800026ec:	07010113          	addi	sp,sp,112
    800026f0:	00008067          	ret
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	1d8080e7          	jalr	472(ra) # 800038cc <push_on>
    800026fc:	0984a703          	lw	a4,152(s1)
    80002700:	09c4a783          	lw	a5,156(s1)
    80002704:	0007879b          	sext.w	a5,a5
    80002708:	fef70ce3          	beq	a4,a5,80002700 <consoleread+0xfc>
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	234080e7          	jalr	564(ra) # 80003940 <pop_on>
    80002714:	0984a783          	lw	a5,152(s1)
    80002718:	07f7f713          	andi	a4,a5,127
    8000271c:	00e48733          	add	a4,s1,a4
    80002720:	01874703          	lbu	a4,24(a4)
    80002724:	0017869b          	addiw	a3,a5,1
    80002728:	08d4ac23          	sw	a3,152(s1)
    8000272c:	00070c9b          	sext.w	s9,a4
    80002730:	f5371ee3          	bne	a4,s3,8000268c <consoleread+0x88>
    80002734:	000b851b          	sext.w	a0,s7
    80002738:	f96bf2e3          	bgeu	s7,s6,800026bc <consoleread+0xb8>
    8000273c:	08f4ac23          	sw	a5,152(s1)
    80002740:	f7dff06f          	j	800026bc <consoleread+0xb8>

0000000080002744 <consputc>:
    80002744:	10000793          	li	a5,256
    80002748:	00f50663          	beq	a0,a5,80002754 <consputc+0x10>
    8000274c:	00001317          	auipc	t1,0x1
    80002750:	9f430067          	jr	-1548(t1) # 80003140 <uartputc_sync>
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    80002764:	00800513          	li	a0,8
    80002768:	00001097          	auipc	ra,0x1
    8000276c:	9d8080e7          	jalr	-1576(ra) # 80003140 <uartputc_sync>
    80002770:	02000513          	li	a0,32
    80002774:	00001097          	auipc	ra,0x1
    80002778:	9cc080e7          	jalr	-1588(ra) # 80003140 <uartputc_sync>
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	00813083          	ld	ra,8(sp)
    80002784:	00800513          	li	a0,8
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00001317          	auipc	t1,0x1
    80002790:	9b430067          	jr	-1612(t1) # 80003140 <uartputc_sync>

0000000080002794 <consoleintr>:
    80002794:	fe010113          	addi	sp,sp,-32
    80002798:	00813823          	sd	s0,16(sp)
    8000279c:	00913423          	sd	s1,8(sp)
    800027a0:	01213023          	sd	s2,0(sp)
    800027a4:	00113c23          	sd	ra,24(sp)
    800027a8:	02010413          	addi	s0,sp,32
    800027ac:	00004917          	auipc	s2,0x4
    800027b0:	11c90913          	addi	s2,s2,284 # 800068c8 <cons>
    800027b4:	00050493          	mv	s1,a0
    800027b8:	00090513          	mv	a0,s2
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	e40080e7          	jalr	-448(ra) # 800035fc <acquire>
    800027c4:	02048c63          	beqz	s1,800027fc <consoleintr+0x68>
    800027c8:	0a092783          	lw	a5,160(s2)
    800027cc:	09892703          	lw	a4,152(s2)
    800027d0:	07f00693          	li	a3,127
    800027d4:	40e7873b          	subw	a4,a5,a4
    800027d8:	02e6e263          	bltu	a3,a4,800027fc <consoleintr+0x68>
    800027dc:	00d00713          	li	a4,13
    800027e0:	04e48063          	beq	s1,a4,80002820 <consoleintr+0x8c>
    800027e4:	07f7f713          	andi	a4,a5,127
    800027e8:	00e90733          	add	a4,s2,a4
    800027ec:	0017879b          	addiw	a5,a5,1
    800027f0:	0af92023          	sw	a5,160(s2)
    800027f4:	00970c23          	sb	s1,24(a4)
    800027f8:	08f92e23          	sw	a5,156(s2)
    800027fc:	01013403          	ld	s0,16(sp)
    80002800:	01813083          	ld	ra,24(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	00013903          	ld	s2,0(sp)
    8000280c:	00004517          	auipc	a0,0x4
    80002810:	0bc50513          	addi	a0,a0,188 # 800068c8 <cons>
    80002814:	02010113          	addi	sp,sp,32
    80002818:	00001317          	auipc	t1,0x1
    8000281c:	eb030067          	jr	-336(t1) # 800036c8 <release>
    80002820:	00a00493          	li	s1,10
    80002824:	fc1ff06f          	j	800027e4 <consoleintr+0x50>

0000000080002828 <consoleinit>:
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	02010413          	addi	s0,sp,32
    8000283c:	00004497          	auipc	s1,0x4
    80002840:	08c48493          	addi	s1,s1,140 # 800068c8 <cons>
    80002844:	00048513          	mv	a0,s1
    80002848:	00003597          	auipc	a1,0x3
    8000284c:	9c858593          	addi	a1,a1,-1592 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002850:	00001097          	auipc	ra,0x1
    80002854:	d88080e7          	jalr	-632(ra) # 800035d8 <initlock>
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	7ac080e7          	jalr	1964(ra) # 80003004 <uartinit>
    80002860:	01813083          	ld	ra,24(sp)
    80002864:	01013403          	ld	s0,16(sp)
    80002868:	00000797          	auipc	a5,0x0
    8000286c:	d9c78793          	addi	a5,a5,-612 # 80002604 <consoleread>
    80002870:	0af4bc23          	sd	a5,184(s1)
    80002874:	00000797          	auipc	a5,0x0
    80002878:	cec78793          	addi	a5,a5,-788 # 80002560 <consolewrite>
    8000287c:	0cf4b023          	sd	a5,192(s1)
    80002880:	00813483          	ld	s1,8(sp)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00008067          	ret

000000008000288c <console_read>:
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00813423          	sd	s0,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00813403          	ld	s0,8(sp)
    8000289c:	00004317          	auipc	t1,0x4
    800028a0:	0e433303          	ld	t1,228(t1) # 80006980 <devsw+0x10>
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00030067          	jr	t1

00000000800028ac <console_write>:
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813423          	sd	s0,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00813403          	ld	s0,8(sp)
    800028bc:	00004317          	auipc	t1,0x4
    800028c0:	0cc33303          	ld	t1,204(t1) # 80006988 <devsw+0x18>
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00030067          	jr	t1

00000000800028cc <panic>:
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00113c23          	sd	ra,24(sp)
    800028d4:	00813823          	sd	s0,16(sp)
    800028d8:	00913423          	sd	s1,8(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    800028e4:	00003517          	auipc	a0,0x3
    800028e8:	93450513          	addi	a0,a0,-1740 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    800028ec:	00004797          	auipc	a5,0x4
    800028f0:	1207ae23          	sw	zero,316(a5) # 80006a28 <pr+0x18>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	034080e7          	jalr	52(ra) # 80002928 <__printf>
    800028fc:	00048513          	mv	a0,s1
    80002900:	00000097          	auipc	ra,0x0
    80002904:	028080e7          	jalr	40(ra) # 80002928 <__printf>
    80002908:	00002517          	auipc	a0,0x2
    8000290c:	7c850513          	addi	a0,a0,1992 # 800050d0 <kvmincrease+0x1040>
    80002910:	00000097          	auipc	ra,0x0
    80002914:	018080e7          	jalr	24(ra) # 80002928 <__printf>
    80002918:	00100793          	li	a5,1
    8000291c:	00003717          	auipc	a4,0x3
    80002920:	e8f72623          	sw	a5,-372(a4) # 800057a8 <panicked>
    80002924:	0000006f          	j	80002924 <panic+0x58>

0000000080002928 <__printf>:
    80002928:	f3010113          	addi	sp,sp,-208
    8000292c:	08813023          	sd	s0,128(sp)
    80002930:	07313423          	sd	s3,104(sp)
    80002934:	09010413          	addi	s0,sp,144
    80002938:	05813023          	sd	s8,64(sp)
    8000293c:	08113423          	sd	ra,136(sp)
    80002940:	06913c23          	sd	s1,120(sp)
    80002944:	07213823          	sd	s2,112(sp)
    80002948:	07413023          	sd	s4,96(sp)
    8000294c:	05513c23          	sd	s5,88(sp)
    80002950:	05613823          	sd	s6,80(sp)
    80002954:	05713423          	sd	s7,72(sp)
    80002958:	03913c23          	sd	s9,56(sp)
    8000295c:	03a13823          	sd	s10,48(sp)
    80002960:	03b13423          	sd	s11,40(sp)
    80002964:	00004317          	auipc	t1,0x4
    80002968:	0ac30313          	addi	t1,t1,172 # 80006a10 <pr>
    8000296c:	01832c03          	lw	s8,24(t1)
    80002970:	00b43423          	sd	a1,8(s0)
    80002974:	00c43823          	sd	a2,16(s0)
    80002978:	00d43c23          	sd	a3,24(s0)
    8000297c:	02e43023          	sd	a4,32(s0)
    80002980:	02f43423          	sd	a5,40(s0)
    80002984:	03043823          	sd	a6,48(s0)
    80002988:	03143c23          	sd	a7,56(s0)
    8000298c:	00050993          	mv	s3,a0
    80002990:	4a0c1663          	bnez	s8,80002e3c <__printf+0x514>
    80002994:	60098c63          	beqz	s3,80002fac <__printf+0x684>
    80002998:	0009c503          	lbu	a0,0(s3)
    8000299c:	00840793          	addi	a5,s0,8
    800029a0:	f6f43c23          	sd	a5,-136(s0)
    800029a4:	00000493          	li	s1,0
    800029a8:	22050063          	beqz	a0,80002bc8 <__printf+0x2a0>
    800029ac:	00002a37          	lui	s4,0x2
    800029b0:	00018ab7          	lui	s5,0x18
    800029b4:	000f4b37          	lui	s6,0xf4
    800029b8:	00989bb7          	lui	s7,0x989
    800029bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800029c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800029c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800029c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800029cc:	00148c9b          	addiw	s9,s1,1
    800029d0:	02500793          	li	a5,37
    800029d4:	01998933          	add	s2,s3,s9
    800029d8:	38f51263          	bne	a0,a5,80002d5c <__printf+0x434>
    800029dc:	00094783          	lbu	a5,0(s2)
    800029e0:	00078c9b          	sext.w	s9,a5
    800029e4:	1e078263          	beqz	a5,80002bc8 <__printf+0x2a0>
    800029e8:	0024849b          	addiw	s1,s1,2
    800029ec:	07000713          	li	a4,112
    800029f0:	00998933          	add	s2,s3,s1
    800029f4:	38e78a63          	beq	a5,a4,80002d88 <__printf+0x460>
    800029f8:	20f76863          	bltu	a4,a5,80002c08 <__printf+0x2e0>
    800029fc:	42a78863          	beq	a5,a0,80002e2c <__printf+0x504>
    80002a00:	06400713          	li	a4,100
    80002a04:	40e79663          	bne	a5,a4,80002e10 <__printf+0x4e8>
    80002a08:	f7843783          	ld	a5,-136(s0)
    80002a0c:	0007a603          	lw	a2,0(a5)
    80002a10:	00878793          	addi	a5,a5,8
    80002a14:	f6f43c23          	sd	a5,-136(s0)
    80002a18:	42064a63          	bltz	a2,80002e4c <__printf+0x524>
    80002a1c:	00a00713          	li	a4,10
    80002a20:	02e677bb          	remuw	a5,a2,a4
    80002a24:	00003d97          	auipc	s11,0x3
    80002a28:	81cd8d93          	addi	s11,s11,-2020 # 80005240 <digits>
    80002a2c:	00900593          	li	a1,9
    80002a30:	0006051b          	sext.w	a0,a2
    80002a34:	00000c93          	li	s9,0
    80002a38:	02079793          	slli	a5,a5,0x20
    80002a3c:	0207d793          	srli	a5,a5,0x20
    80002a40:	00fd87b3          	add	a5,s11,a5
    80002a44:	0007c783          	lbu	a5,0(a5)
    80002a48:	02e656bb          	divuw	a3,a2,a4
    80002a4c:	f8f40023          	sb	a5,-128(s0)
    80002a50:	14c5d863          	bge	a1,a2,80002ba0 <__printf+0x278>
    80002a54:	06300593          	li	a1,99
    80002a58:	00100c93          	li	s9,1
    80002a5c:	02e6f7bb          	remuw	a5,a3,a4
    80002a60:	02079793          	slli	a5,a5,0x20
    80002a64:	0207d793          	srli	a5,a5,0x20
    80002a68:	00fd87b3          	add	a5,s11,a5
    80002a6c:	0007c783          	lbu	a5,0(a5)
    80002a70:	02e6d73b          	divuw	a4,a3,a4
    80002a74:	f8f400a3          	sb	a5,-127(s0)
    80002a78:	12a5f463          	bgeu	a1,a0,80002ba0 <__printf+0x278>
    80002a7c:	00a00693          	li	a3,10
    80002a80:	00900593          	li	a1,9
    80002a84:	02d777bb          	remuw	a5,a4,a3
    80002a88:	02079793          	slli	a5,a5,0x20
    80002a8c:	0207d793          	srli	a5,a5,0x20
    80002a90:	00fd87b3          	add	a5,s11,a5
    80002a94:	0007c503          	lbu	a0,0(a5)
    80002a98:	02d757bb          	divuw	a5,a4,a3
    80002a9c:	f8a40123          	sb	a0,-126(s0)
    80002aa0:	48e5f263          	bgeu	a1,a4,80002f24 <__printf+0x5fc>
    80002aa4:	06300513          	li	a0,99
    80002aa8:	02d7f5bb          	remuw	a1,a5,a3
    80002aac:	02059593          	slli	a1,a1,0x20
    80002ab0:	0205d593          	srli	a1,a1,0x20
    80002ab4:	00bd85b3          	add	a1,s11,a1
    80002ab8:	0005c583          	lbu	a1,0(a1)
    80002abc:	02d7d7bb          	divuw	a5,a5,a3
    80002ac0:	f8b401a3          	sb	a1,-125(s0)
    80002ac4:	48e57263          	bgeu	a0,a4,80002f48 <__printf+0x620>
    80002ac8:	3e700513          	li	a0,999
    80002acc:	02d7f5bb          	remuw	a1,a5,a3
    80002ad0:	02059593          	slli	a1,a1,0x20
    80002ad4:	0205d593          	srli	a1,a1,0x20
    80002ad8:	00bd85b3          	add	a1,s11,a1
    80002adc:	0005c583          	lbu	a1,0(a1)
    80002ae0:	02d7d7bb          	divuw	a5,a5,a3
    80002ae4:	f8b40223          	sb	a1,-124(s0)
    80002ae8:	46e57663          	bgeu	a0,a4,80002f54 <__printf+0x62c>
    80002aec:	02d7f5bb          	remuw	a1,a5,a3
    80002af0:	02059593          	slli	a1,a1,0x20
    80002af4:	0205d593          	srli	a1,a1,0x20
    80002af8:	00bd85b3          	add	a1,s11,a1
    80002afc:	0005c583          	lbu	a1,0(a1)
    80002b00:	02d7d7bb          	divuw	a5,a5,a3
    80002b04:	f8b402a3          	sb	a1,-123(s0)
    80002b08:	46ea7863          	bgeu	s4,a4,80002f78 <__printf+0x650>
    80002b0c:	02d7f5bb          	remuw	a1,a5,a3
    80002b10:	02059593          	slli	a1,a1,0x20
    80002b14:	0205d593          	srli	a1,a1,0x20
    80002b18:	00bd85b3          	add	a1,s11,a1
    80002b1c:	0005c583          	lbu	a1,0(a1)
    80002b20:	02d7d7bb          	divuw	a5,a5,a3
    80002b24:	f8b40323          	sb	a1,-122(s0)
    80002b28:	3eeaf863          	bgeu	s5,a4,80002f18 <__printf+0x5f0>
    80002b2c:	02d7f5bb          	remuw	a1,a5,a3
    80002b30:	02059593          	slli	a1,a1,0x20
    80002b34:	0205d593          	srli	a1,a1,0x20
    80002b38:	00bd85b3          	add	a1,s11,a1
    80002b3c:	0005c583          	lbu	a1,0(a1)
    80002b40:	02d7d7bb          	divuw	a5,a5,a3
    80002b44:	f8b403a3          	sb	a1,-121(s0)
    80002b48:	42eb7e63          	bgeu	s6,a4,80002f84 <__printf+0x65c>
    80002b4c:	02d7f5bb          	remuw	a1,a5,a3
    80002b50:	02059593          	slli	a1,a1,0x20
    80002b54:	0205d593          	srli	a1,a1,0x20
    80002b58:	00bd85b3          	add	a1,s11,a1
    80002b5c:	0005c583          	lbu	a1,0(a1)
    80002b60:	02d7d7bb          	divuw	a5,a5,a3
    80002b64:	f8b40423          	sb	a1,-120(s0)
    80002b68:	42ebfc63          	bgeu	s7,a4,80002fa0 <__printf+0x678>
    80002b6c:	02079793          	slli	a5,a5,0x20
    80002b70:	0207d793          	srli	a5,a5,0x20
    80002b74:	00fd8db3          	add	s11,s11,a5
    80002b78:	000dc703          	lbu	a4,0(s11)
    80002b7c:	00a00793          	li	a5,10
    80002b80:	00900c93          	li	s9,9
    80002b84:	f8e404a3          	sb	a4,-119(s0)
    80002b88:	00065c63          	bgez	a2,80002ba0 <__printf+0x278>
    80002b8c:	f9040713          	addi	a4,s0,-112
    80002b90:	00f70733          	add	a4,a4,a5
    80002b94:	02d00693          	li	a3,45
    80002b98:	fed70823          	sb	a3,-16(a4)
    80002b9c:	00078c93          	mv	s9,a5
    80002ba0:	f8040793          	addi	a5,s0,-128
    80002ba4:	01978cb3          	add	s9,a5,s9
    80002ba8:	f7f40d13          	addi	s10,s0,-129
    80002bac:	000cc503          	lbu	a0,0(s9)
    80002bb0:	fffc8c93          	addi	s9,s9,-1
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	b90080e7          	jalr	-1136(ra) # 80002744 <consputc>
    80002bbc:	ffac98e3          	bne	s9,s10,80002bac <__printf+0x284>
    80002bc0:	00094503          	lbu	a0,0(s2)
    80002bc4:	e00514e3          	bnez	a0,800029cc <__printf+0xa4>
    80002bc8:	1a0c1663          	bnez	s8,80002d74 <__printf+0x44c>
    80002bcc:	08813083          	ld	ra,136(sp)
    80002bd0:	08013403          	ld	s0,128(sp)
    80002bd4:	07813483          	ld	s1,120(sp)
    80002bd8:	07013903          	ld	s2,112(sp)
    80002bdc:	06813983          	ld	s3,104(sp)
    80002be0:	06013a03          	ld	s4,96(sp)
    80002be4:	05813a83          	ld	s5,88(sp)
    80002be8:	05013b03          	ld	s6,80(sp)
    80002bec:	04813b83          	ld	s7,72(sp)
    80002bf0:	04013c03          	ld	s8,64(sp)
    80002bf4:	03813c83          	ld	s9,56(sp)
    80002bf8:	03013d03          	ld	s10,48(sp)
    80002bfc:	02813d83          	ld	s11,40(sp)
    80002c00:	0d010113          	addi	sp,sp,208
    80002c04:	00008067          	ret
    80002c08:	07300713          	li	a4,115
    80002c0c:	1ce78a63          	beq	a5,a4,80002de0 <__printf+0x4b8>
    80002c10:	07800713          	li	a4,120
    80002c14:	1ee79e63          	bne	a5,a4,80002e10 <__printf+0x4e8>
    80002c18:	f7843783          	ld	a5,-136(s0)
    80002c1c:	0007a703          	lw	a4,0(a5)
    80002c20:	00878793          	addi	a5,a5,8
    80002c24:	f6f43c23          	sd	a5,-136(s0)
    80002c28:	28074263          	bltz	a4,80002eac <__printf+0x584>
    80002c2c:	00002d97          	auipc	s11,0x2
    80002c30:	614d8d93          	addi	s11,s11,1556 # 80005240 <digits>
    80002c34:	00f77793          	andi	a5,a4,15
    80002c38:	00fd87b3          	add	a5,s11,a5
    80002c3c:	0007c683          	lbu	a3,0(a5)
    80002c40:	00f00613          	li	a2,15
    80002c44:	0007079b          	sext.w	a5,a4
    80002c48:	f8d40023          	sb	a3,-128(s0)
    80002c4c:	0047559b          	srliw	a1,a4,0x4
    80002c50:	0047569b          	srliw	a3,a4,0x4
    80002c54:	00000c93          	li	s9,0
    80002c58:	0ee65063          	bge	a2,a4,80002d38 <__printf+0x410>
    80002c5c:	00f6f693          	andi	a3,a3,15
    80002c60:	00dd86b3          	add	a3,s11,a3
    80002c64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c68:	0087d79b          	srliw	a5,a5,0x8
    80002c6c:	00100c93          	li	s9,1
    80002c70:	f8d400a3          	sb	a3,-127(s0)
    80002c74:	0cb67263          	bgeu	a2,a1,80002d38 <__printf+0x410>
    80002c78:	00f7f693          	andi	a3,a5,15
    80002c7c:	00dd86b3          	add	a3,s11,a3
    80002c80:	0006c583          	lbu	a1,0(a3)
    80002c84:	00f00613          	li	a2,15
    80002c88:	0047d69b          	srliw	a3,a5,0x4
    80002c8c:	f8b40123          	sb	a1,-126(s0)
    80002c90:	0047d593          	srli	a1,a5,0x4
    80002c94:	28f67e63          	bgeu	a2,a5,80002f30 <__printf+0x608>
    80002c98:	00f6f693          	andi	a3,a3,15
    80002c9c:	00dd86b3          	add	a3,s11,a3
    80002ca0:	0006c503          	lbu	a0,0(a3)
    80002ca4:	0087d813          	srli	a6,a5,0x8
    80002ca8:	0087d69b          	srliw	a3,a5,0x8
    80002cac:	f8a401a3          	sb	a0,-125(s0)
    80002cb0:	28b67663          	bgeu	a2,a1,80002f3c <__printf+0x614>
    80002cb4:	00f6f693          	andi	a3,a3,15
    80002cb8:	00dd86b3          	add	a3,s11,a3
    80002cbc:	0006c583          	lbu	a1,0(a3)
    80002cc0:	00c7d513          	srli	a0,a5,0xc
    80002cc4:	00c7d69b          	srliw	a3,a5,0xc
    80002cc8:	f8b40223          	sb	a1,-124(s0)
    80002ccc:	29067a63          	bgeu	a2,a6,80002f60 <__printf+0x638>
    80002cd0:	00f6f693          	andi	a3,a3,15
    80002cd4:	00dd86b3          	add	a3,s11,a3
    80002cd8:	0006c583          	lbu	a1,0(a3)
    80002cdc:	0107d813          	srli	a6,a5,0x10
    80002ce0:	0107d69b          	srliw	a3,a5,0x10
    80002ce4:	f8b402a3          	sb	a1,-123(s0)
    80002ce8:	28a67263          	bgeu	a2,a0,80002f6c <__printf+0x644>
    80002cec:	00f6f693          	andi	a3,a3,15
    80002cf0:	00dd86b3          	add	a3,s11,a3
    80002cf4:	0006c683          	lbu	a3,0(a3)
    80002cf8:	0147d79b          	srliw	a5,a5,0x14
    80002cfc:	f8d40323          	sb	a3,-122(s0)
    80002d00:	21067663          	bgeu	a2,a6,80002f0c <__printf+0x5e4>
    80002d04:	02079793          	slli	a5,a5,0x20
    80002d08:	0207d793          	srli	a5,a5,0x20
    80002d0c:	00fd8db3          	add	s11,s11,a5
    80002d10:	000dc683          	lbu	a3,0(s11)
    80002d14:	00800793          	li	a5,8
    80002d18:	00700c93          	li	s9,7
    80002d1c:	f8d403a3          	sb	a3,-121(s0)
    80002d20:	00075c63          	bgez	a4,80002d38 <__printf+0x410>
    80002d24:	f9040713          	addi	a4,s0,-112
    80002d28:	00f70733          	add	a4,a4,a5
    80002d2c:	02d00693          	li	a3,45
    80002d30:	fed70823          	sb	a3,-16(a4)
    80002d34:	00078c93          	mv	s9,a5
    80002d38:	f8040793          	addi	a5,s0,-128
    80002d3c:	01978cb3          	add	s9,a5,s9
    80002d40:	f7f40d13          	addi	s10,s0,-129
    80002d44:	000cc503          	lbu	a0,0(s9)
    80002d48:	fffc8c93          	addi	s9,s9,-1
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	9f8080e7          	jalr	-1544(ra) # 80002744 <consputc>
    80002d54:	ff9d18e3          	bne	s10,s9,80002d44 <__printf+0x41c>
    80002d58:	0100006f          	j	80002d68 <__printf+0x440>
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	9e8080e7          	jalr	-1560(ra) # 80002744 <consputc>
    80002d64:	000c8493          	mv	s1,s9
    80002d68:	00094503          	lbu	a0,0(s2)
    80002d6c:	c60510e3          	bnez	a0,800029cc <__printf+0xa4>
    80002d70:	e40c0ee3          	beqz	s8,80002bcc <__printf+0x2a4>
    80002d74:	00004517          	auipc	a0,0x4
    80002d78:	c9c50513          	addi	a0,a0,-868 # 80006a10 <pr>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	94c080e7          	jalr	-1716(ra) # 800036c8 <release>
    80002d84:	e49ff06f          	j	80002bcc <__printf+0x2a4>
    80002d88:	f7843783          	ld	a5,-136(s0)
    80002d8c:	03000513          	li	a0,48
    80002d90:	01000d13          	li	s10,16
    80002d94:	00878713          	addi	a4,a5,8
    80002d98:	0007bc83          	ld	s9,0(a5)
    80002d9c:	f6e43c23          	sd	a4,-136(s0)
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	9a4080e7          	jalr	-1628(ra) # 80002744 <consputc>
    80002da8:	07800513          	li	a0,120
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	998080e7          	jalr	-1640(ra) # 80002744 <consputc>
    80002db4:	00002d97          	auipc	s11,0x2
    80002db8:	48cd8d93          	addi	s11,s11,1164 # 80005240 <digits>
    80002dbc:	03ccd793          	srli	a5,s9,0x3c
    80002dc0:	00fd87b3          	add	a5,s11,a5
    80002dc4:	0007c503          	lbu	a0,0(a5)
    80002dc8:	fffd0d1b          	addiw	s10,s10,-1
    80002dcc:	004c9c93          	slli	s9,s9,0x4
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	974080e7          	jalr	-1676(ra) # 80002744 <consputc>
    80002dd8:	fe0d12e3          	bnez	s10,80002dbc <__printf+0x494>
    80002ddc:	f8dff06f          	j	80002d68 <__printf+0x440>
    80002de0:	f7843783          	ld	a5,-136(s0)
    80002de4:	0007bc83          	ld	s9,0(a5)
    80002de8:	00878793          	addi	a5,a5,8
    80002dec:	f6f43c23          	sd	a5,-136(s0)
    80002df0:	000c9a63          	bnez	s9,80002e04 <__printf+0x4dc>
    80002df4:	1080006f          	j	80002efc <__printf+0x5d4>
    80002df8:	001c8c93          	addi	s9,s9,1
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	948080e7          	jalr	-1720(ra) # 80002744 <consputc>
    80002e04:	000cc503          	lbu	a0,0(s9)
    80002e08:	fe0518e3          	bnez	a0,80002df8 <__printf+0x4d0>
    80002e0c:	f5dff06f          	j	80002d68 <__printf+0x440>
    80002e10:	02500513          	li	a0,37
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	930080e7          	jalr	-1744(ra) # 80002744 <consputc>
    80002e1c:	000c8513          	mv	a0,s9
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	924080e7          	jalr	-1756(ra) # 80002744 <consputc>
    80002e28:	f41ff06f          	j	80002d68 <__printf+0x440>
    80002e2c:	02500513          	li	a0,37
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	914080e7          	jalr	-1772(ra) # 80002744 <consputc>
    80002e38:	f31ff06f          	j	80002d68 <__printf+0x440>
    80002e3c:	00030513          	mv	a0,t1
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	7bc080e7          	jalr	1980(ra) # 800035fc <acquire>
    80002e48:	b4dff06f          	j	80002994 <__printf+0x6c>
    80002e4c:	40c0053b          	negw	a0,a2
    80002e50:	00a00713          	li	a4,10
    80002e54:	02e576bb          	remuw	a3,a0,a4
    80002e58:	00002d97          	auipc	s11,0x2
    80002e5c:	3e8d8d93          	addi	s11,s11,1000 # 80005240 <digits>
    80002e60:	ff700593          	li	a1,-9
    80002e64:	02069693          	slli	a3,a3,0x20
    80002e68:	0206d693          	srli	a3,a3,0x20
    80002e6c:	00dd86b3          	add	a3,s11,a3
    80002e70:	0006c683          	lbu	a3,0(a3)
    80002e74:	02e557bb          	divuw	a5,a0,a4
    80002e78:	f8d40023          	sb	a3,-128(s0)
    80002e7c:	10b65e63          	bge	a2,a1,80002f98 <__printf+0x670>
    80002e80:	06300593          	li	a1,99
    80002e84:	02e7f6bb          	remuw	a3,a5,a4
    80002e88:	02069693          	slli	a3,a3,0x20
    80002e8c:	0206d693          	srli	a3,a3,0x20
    80002e90:	00dd86b3          	add	a3,s11,a3
    80002e94:	0006c683          	lbu	a3,0(a3)
    80002e98:	02e7d73b          	divuw	a4,a5,a4
    80002e9c:	00200793          	li	a5,2
    80002ea0:	f8d400a3          	sb	a3,-127(s0)
    80002ea4:	bca5ece3          	bltu	a1,a0,80002a7c <__printf+0x154>
    80002ea8:	ce5ff06f          	j	80002b8c <__printf+0x264>
    80002eac:	40e007bb          	negw	a5,a4
    80002eb0:	00002d97          	auipc	s11,0x2
    80002eb4:	390d8d93          	addi	s11,s11,912 # 80005240 <digits>
    80002eb8:	00f7f693          	andi	a3,a5,15
    80002ebc:	00dd86b3          	add	a3,s11,a3
    80002ec0:	0006c583          	lbu	a1,0(a3)
    80002ec4:	ff100613          	li	a2,-15
    80002ec8:	0047d69b          	srliw	a3,a5,0x4
    80002ecc:	f8b40023          	sb	a1,-128(s0)
    80002ed0:	0047d59b          	srliw	a1,a5,0x4
    80002ed4:	0ac75e63          	bge	a4,a2,80002f90 <__printf+0x668>
    80002ed8:	00f6f693          	andi	a3,a3,15
    80002edc:	00dd86b3          	add	a3,s11,a3
    80002ee0:	0006c603          	lbu	a2,0(a3)
    80002ee4:	00f00693          	li	a3,15
    80002ee8:	0087d79b          	srliw	a5,a5,0x8
    80002eec:	f8c400a3          	sb	a2,-127(s0)
    80002ef0:	d8b6e4e3          	bltu	a3,a1,80002c78 <__printf+0x350>
    80002ef4:	00200793          	li	a5,2
    80002ef8:	e2dff06f          	j	80002d24 <__printf+0x3fc>
    80002efc:	00002c97          	auipc	s9,0x2
    80002f00:	324c8c93          	addi	s9,s9,804 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    80002f04:	02800513          	li	a0,40
    80002f08:	ef1ff06f          	j	80002df8 <__printf+0x4d0>
    80002f0c:	00700793          	li	a5,7
    80002f10:	00600c93          	li	s9,6
    80002f14:	e0dff06f          	j	80002d20 <__printf+0x3f8>
    80002f18:	00700793          	li	a5,7
    80002f1c:	00600c93          	li	s9,6
    80002f20:	c69ff06f          	j	80002b88 <__printf+0x260>
    80002f24:	00300793          	li	a5,3
    80002f28:	00200c93          	li	s9,2
    80002f2c:	c5dff06f          	j	80002b88 <__printf+0x260>
    80002f30:	00300793          	li	a5,3
    80002f34:	00200c93          	li	s9,2
    80002f38:	de9ff06f          	j	80002d20 <__printf+0x3f8>
    80002f3c:	00400793          	li	a5,4
    80002f40:	00300c93          	li	s9,3
    80002f44:	dddff06f          	j	80002d20 <__printf+0x3f8>
    80002f48:	00400793          	li	a5,4
    80002f4c:	00300c93          	li	s9,3
    80002f50:	c39ff06f          	j	80002b88 <__printf+0x260>
    80002f54:	00500793          	li	a5,5
    80002f58:	00400c93          	li	s9,4
    80002f5c:	c2dff06f          	j	80002b88 <__printf+0x260>
    80002f60:	00500793          	li	a5,5
    80002f64:	00400c93          	li	s9,4
    80002f68:	db9ff06f          	j	80002d20 <__printf+0x3f8>
    80002f6c:	00600793          	li	a5,6
    80002f70:	00500c93          	li	s9,5
    80002f74:	dadff06f          	j	80002d20 <__printf+0x3f8>
    80002f78:	00600793          	li	a5,6
    80002f7c:	00500c93          	li	s9,5
    80002f80:	c09ff06f          	j	80002b88 <__printf+0x260>
    80002f84:	00800793          	li	a5,8
    80002f88:	00700c93          	li	s9,7
    80002f8c:	bfdff06f          	j	80002b88 <__printf+0x260>
    80002f90:	00100793          	li	a5,1
    80002f94:	d91ff06f          	j	80002d24 <__printf+0x3fc>
    80002f98:	00100793          	li	a5,1
    80002f9c:	bf1ff06f          	j	80002b8c <__printf+0x264>
    80002fa0:	00900793          	li	a5,9
    80002fa4:	00800c93          	li	s9,8
    80002fa8:	be1ff06f          	j	80002b88 <__printf+0x260>
    80002fac:	00002517          	auipc	a0,0x2
    80002fb0:	27c50513          	addi	a0,a0,636 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	918080e7          	jalr	-1768(ra) # 800028cc <panic>

0000000080002fbc <printfinit>:
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	00113c23          	sd	ra,24(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00004497          	auipc	s1,0x4
    80002fd4:	a4048493          	addi	s1,s1,-1472 # 80006a10 <pr>
    80002fd8:	00048513          	mv	a0,s1
    80002fdc:	00002597          	auipc	a1,0x2
    80002fe0:	25c58593          	addi	a1,a1,604 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	5f4080e7          	jalr	1524(ra) # 800035d8 <initlock>
    80002fec:	01813083          	ld	ra,24(sp)
    80002ff0:	01013403          	ld	s0,16(sp)
    80002ff4:	0004ac23          	sw	zero,24(s1)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	02010113          	addi	sp,sp,32
    80003000:	00008067          	ret

0000000080003004 <uartinit>:
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00813423          	sd	s0,8(sp)
    8000300c:	01010413          	addi	s0,sp,16
    80003010:	100007b7          	lui	a5,0x10000
    80003014:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003018:	f8000713          	li	a4,-128
    8000301c:	00e781a3          	sb	a4,3(a5)
    80003020:	00300713          	li	a4,3
    80003024:	00e78023          	sb	a4,0(a5)
    80003028:	000780a3          	sb	zero,1(a5)
    8000302c:	00e781a3          	sb	a4,3(a5)
    80003030:	00700693          	li	a3,7
    80003034:	00d78123          	sb	a3,2(a5)
    80003038:	00e780a3          	sb	a4,1(a5)
    8000303c:	00813403          	ld	s0,8(sp)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret

0000000080003048 <uartputc>:
    80003048:	00002797          	auipc	a5,0x2
    8000304c:	7607a783          	lw	a5,1888(a5) # 800057a8 <panicked>
    80003050:	00078463          	beqz	a5,80003058 <uartputc+0x10>
    80003054:	0000006f          	j	80003054 <uartputc+0xc>
    80003058:	fd010113          	addi	sp,sp,-48
    8000305c:	02813023          	sd	s0,32(sp)
    80003060:	00913c23          	sd	s1,24(sp)
    80003064:	01213823          	sd	s2,16(sp)
    80003068:	01313423          	sd	s3,8(sp)
    8000306c:	02113423          	sd	ra,40(sp)
    80003070:	03010413          	addi	s0,sp,48
    80003074:	00002917          	auipc	s2,0x2
    80003078:	73c90913          	addi	s2,s2,1852 # 800057b0 <uart_tx_r>
    8000307c:	00093783          	ld	a5,0(s2)
    80003080:	00002497          	auipc	s1,0x2
    80003084:	73848493          	addi	s1,s1,1848 # 800057b8 <uart_tx_w>
    80003088:	0004b703          	ld	a4,0(s1)
    8000308c:	02078693          	addi	a3,a5,32
    80003090:	00050993          	mv	s3,a0
    80003094:	02e69c63          	bne	a3,a4,800030cc <uartputc+0x84>
    80003098:	00001097          	auipc	ra,0x1
    8000309c:	834080e7          	jalr	-1996(ra) # 800038cc <push_on>
    800030a0:	00093783          	ld	a5,0(s2)
    800030a4:	0004b703          	ld	a4,0(s1)
    800030a8:	02078793          	addi	a5,a5,32
    800030ac:	00e79463          	bne	a5,a4,800030b4 <uartputc+0x6c>
    800030b0:	0000006f          	j	800030b0 <uartputc+0x68>
    800030b4:	00001097          	auipc	ra,0x1
    800030b8:	88c080e7          	jalr	-1908(ra) # 80003940 <pop_on>
    800030bc:	00093783          	ld	a5,0(s2)
    800030c0:	0004b703          	ld	a4,0(s1)
    800030c4:	02078693          	addi	a3,a5,32
    800030c8:	fce688e3          	beq	a3,a4,80003098 <uartputc+0x50>
    800030cc:	01f77693          	andi	a3,a4,31
    800030d0:	00004597          	auipc	a1,0x4
    800030d4:	96058593          	addi	a1,a1,-1696 # 80006a30 <uart_tx_buf>
    800030d8:	00d586b3          	add	a3,a1,a3
    800030dc:	00170713          	addi	a4,a4,1
    800030e0:	01368023          	sb	s3,0(a3)
    800030e4:	00e4b023          	sd	a4,0(s1)
    800030e8:	10000637          	lui	a2,0x10000
    800030ec:	02f71063          	bne	a4,a5,8000310c <uartputc+0xc4>
    800030f0:	0340006f          	j	80003124 <uartputc+0xdc>
    800030f4:	00074703          	lbu	a4,0(a4)
    800030f8:	00f93023          	sd	a5,0(s2)
    800030fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003100:	00093783          	ld	a5,0(s2)
    80003104:	0004b703          	ld	a4,0(s1)
    80003108:	00f70e63          	beq	a4,a5,80003124 <uartputc+0xdc>
    8000310c:	00564683          	lbu	a3,5(a2)
    80003110:	01f7f713          	andi	a4,a5,31
    80003114:	00e58733          	add	a4,a1,a4
    80003118:	0206f693          	andi	a3,a3,32
    8000311c:	00178793          	addi	a5,a5,1
    80003120:	fc069ae3          	bnez	a3,800030f4 <uartputc+0xac>
    80003124:	02813083          	ld	ra,40(sp)
    80003128:	02013403          	ld	s0,32(sp)
    8000312c:	01813483          	ld	s1,24(sp)
    80003130:	01013903          	ld	s2,16(sp)
    80003134:	00813983          	ld	s3,8(sp)
    80003138:	03010113          	addi	sp,sp,48
    8000313c:	00008067          	ret

0000000080003140 <uartputc_sync>:
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00813423          	sd	s0,8(sp)
    80003148:	01010413          	addi	s0,sp,16
    8000314c:	00002717          	auipc	a4,0x2
    80003150:	65c72703          	lw	a4,1628(a4) # 800057a8 <panicked>
    80003154:	02071663          	bnez	a4,80003180 <uartputc_sync+0x40>
    80003158:	00050793          	mv	a5,a0
    8000315c:	100006b7          	lui	a3,0x10000
    80003160:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003164:	02077713          	andi	a4,a4,32
    80003168:	fe070ce3          	beqz	a4,80003160 <uartputc_sync+0x20>
    8000316c:	0ff7f793          	andi	a5,a5,255
    80003170:	00f68023          	sb	a5,0(a3)
    80003174:	00813403          	ld	s0,8(sp)
    80003178:	01010113          	addi	sp,sp,16
    8000317c:	00008067          	ret
    80003180:	0000006f          	j	80003180 <uartputc_sync+0x40>

0000000080003184 <uartstart>:
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    80003190:	00002617          	auipc	a2,0x2
    80003194:	62060613          	addi	a2,a2,1568 # 800057b0 <uart_tx_r>
    80003198:	00002517          	auipc	a0,0x2
    8000319c:	62050513          	addi	a0,a0,1568 # 800057b8 <uart_tx_w>
    800031a0:	00063783          	ld	a5,0(a2)
    800031a4:	00053703          	ld	a4,0(a0)
    800031a8:	04f70263          	beq	a4,a5,800031ec <uartstart+0x68>
    800031ac:	100005b7          	lui	a1,0x10000
    800031b0:	00004817          	auipc	a6,0x4
    800031b4:	88080813          	addi	a6,a6,-1920 # 80006a30 <uart_tx_buf>
    800031b8:	01c0006f          	j	800031d4 <uartstart+0x50>
    800031bc:	0006c703          	lbu	a4,0(a3)
    800031c0:	00f63023          	sd	a5,0(a2)
    800031c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031c8:	00063783          	ld	a5,0(a2)
    800031cc:	00053703          	ld	a4,0(a0)
    800031d0:	00f70e63          	beq	a4,a5,800031ec <uartstart+0x68>
    800031d4:	01f7f713          	andi	a4,a5,31
    800031d8:	00e806b3          	add	a3,a6,a4
    800031dc:	0055c703          	lbu	a4,5(a1)
    800031e0:	00178793          	addi	a5,a5,1
    800031e4:	02077713          	andi	a4,a4,32
    800031e8:	fc071ae3          	bnez	a4,800031bc <uartstart+0x38>
    800031ec:	00813403          	ld	s0,8(sp)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <uartgetc>:
    800031f8:	ff010113          	addi	sp,sp,-16
    800031fc:	00813423          	sd	s0,8(sp)
    80003200:	01010413          	addi	s0,sp,16
    80003204:	10000737          	lui	a4,0x10000
    80003208:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000320c:	0017f793          	andi	a5,a5,1
    80003210:	00078c63          	beqz	a5,80003228 <uartgetc+0x30>
    80003214:	00074503          	lbu	a0,0(a4)
    80003218:	0ff57513          	andi	a0,a0,255
    8000321c:	00813403          	ld	s0,8(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret
    80003228:	fff00513          	li	a0,-1
    8000322c:	ff1ff06f          	j	8000321c <uartgetc+0x24>

0000000080003230 <uartintr>:
    80003230:	100007b7          	lui	a5,0x10000
    80003234:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003238:	0017f793          	andi	a5,a5,1
    8000323c:	0a078463          	beqz	a5,800032e4 <uartintr+0xb4>
    80003240:	fe010113          	addi	sp,sp,-32
    80003244:	00813823          	sd	s0,16(sp)
    80003248:	00913423          	sd	s1,8(sp)
    8000324c:	00113c23          	sd	ra,24(sp)
    80003250:	02010413          	addi	s0,sp,32
    80003254:	100004b7          	lui	s1,0x10000
    80003258:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000325c:	0ff57513          	andi	a0,a0,255
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	534080e7          	jalr	1332(ra) # 80002794 <consoleintr>
    80003268:	0054c783          	lbu	a5,5(s1)
    8000326c:	0017f793          	andi	a5,a5,1
    80003270:	fe0794e3          	bnez	a5,80003258 <uartintr+0x28>
    80003274:	00002617          	auipc	a2,0x2
    80003278:	53c60613          	addi	a2,a2,1340 # 800057b0 <uart_tx_r>
    8000327c:	00002517          	auipc	a0,0x2
    80003280:	53c50513          	addi	a0,a0,1340 # 800057b8 <uart_tx_w>
    80003284:	00063783          	ld	a5,0(a2)
    80003288:	00053703          	ld	a4,0(a0)
    8000328c:	04f70263          	beq	a4,a5,800032d0 <uartintr+0xa0>
    80003290:	100005b7          	lui	a1,0x10000
    80003294:	00003817          	auipc	a6,0x3
    80003298:	79c80813          	addi	a6,a6,1948 # 80006a30 <uart_tx_buf>
    8000329c:	01c0006f          	j	800032b8 <uartintr+0x88>
    800032a0:	0006c703          	lbu	a4,0(a3)
    800032a4:	00f63023          	sd	a5,0(a2)
    800032a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032ac:	00063783          	ld	a5,0(a2)
    800032b0:	00053703          	ld	a4,0(a0)
    800032b4:	00f70e63          	beq	a4,a5,800032d0 <uartintr+0xa0>
    800032b8:	01f7f713          	andi	a4,a5,31
    800032bc:	00e806b3          	add	a3,a6,a4
    800032c0:	0055c703          	lbu	a4,5(a1)
    800032c4:	00178793          	addi	a5,a5,1
    800032c8:	02077713          	andi	a4,a4,32
    800032cc:	fc071ae3          	bnez	a4,800032a0 <uartintr+0x70>
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	02010113          	addi	sp,sp,32
    800032e0:	00008067          	ret
    800032e4:	00002617          	auipc	a2,0x2
    800032e8:	4cc60613          	addi	a2,a2,1228 # 800057b0 <uart_tx_r>
    800032ec:	00002517          	auipc	a0,0x2
    800032f0:	4cc50513          	addi	a0,a0,1228 # 800057b8 <uart_tx_w>
    800032f4:	00063783          	ld	a5,0(a2)
    800032f8:	00053703          	ld	a4,0(a0)
    800032fc:	04f70263          	beq	a4,a5,80003340 <uartintr+0x110>
    80003300:	100005b7          	lui	a1,0x10000
    80003304:	00003817          	auipc	a6,0x3
    80003308:	72c80813          	addi	a6,a6,1836 # 80006a30 <uart_tx_buf>
    8000330c:	01c0006f          	j	80003328 <uartintr+0xf8>
    80003310:	0006c703          	lbu	a4,0(a3)
    80003314:	00f63023          	sd	a5,0(a2)
    80003318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000331c:	00063783          	ld	a5,0(a2)
    80003320:	00053703          	ld	a4,0(a0)
    80003324:	02f70063          	beq	a4,a5,80003344 <uartintr+0x114>
    80003328:	01f7f713          	andi	a4,a5,31
    8000332c:	00e806b3          	add	a3,a6,a4
    80003330:	0055c703          	lbu	a4,5(a1)
    80003334:	00178793          	addi	a5,a5,1
    80003338:	02077713          	andi	a4,a4,32
    8000333c:	fc071ae3          	bnez	a4,80003310 <uartintr+0xe0>
    80003340:	00008067          	ret
    80003344:	00008067          	ret

0000000080003348 <kinit>:
    80003348:	fc010113          	addi	sp,sp,-64
    8000334c:	02913423          	sd	s1,40(sp)
    80003350:	fffff7b7          	lui	a5,0xfffff
    80003354:	00004497          	auipc	s1,0x4
    80003358:	70b48493          	addi	s1,s1,1803 # 80007a5f <end+0xfff>
    8000335c:	02813823          	sd	s0,48(sp)
    80003360:	01313c23          	sd	s3,24(sp)
    80003364:	00f4f4b3          	and	s1,s1,a5
    80003368:	02113c23          	sd	ra,56(sp)
    8000336c:	03213023          	sd	s2,32(sp)
    80003370:	01413823          	sd	s4,16(sp)
    80003374:	01513423          	sd	s5,8(sp)
    80003378:	04010413          	addi	s0,sp,64
    8000337c:	000017b7          	lui	a5,0x1
    80003380:	01100993          	li	s3,17
    80003384:	00f487b3          	add	a5,s1,a5
    80003388:	01b99993          	slli	s3,s3,0x1b
    8000338c:	06f9e063          	bltu	s3,a5,800033ec <kinit+0xa4>
    80003390:	00003a97          	auipc	s5,0x3
    80003394:	6d0a8a93          	addi	s5,s5,1744 # 80006a60 <end>
    80003398:	0754ec63          	bltu	s1,s5,80003410 <kinit+0xc8>
    8000339c:	0734fa63          	bgeu	s1,s3,80003410 <kinit+0xc8>
    800033a0:	00088a37          	lui	s4,0x88
    800033a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800033a8:	00002917          	auipc	s2,0x2
    800033ac:	41890913          	addi	s2,s2,1048 # 800057c0 <kmem>
    800033b0:	00ca1a13          	slli	s4,s4,0xc
    800033b4:	0140006f          	j	800033c8 <kinit+0x80>
    800033b8:	000017b7          	lui	a5,0x1
    800033bc:	00f484b3          	add	s1,s1,a5
    800033c0:	0554e863          	bltu	s1,s5,80003410 <kinit+0xc8>
    800033c4:	0534f663          	bgeu	s1,s3,80003410 <kinit+0xc8>
    800033c8:	00001637          	lui	a2,0x1
    800033cc:	00100593          	li	a1,1
    800033d0:	00048513          	mv	a0,s1
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	5e4080e7          	jalr	1508(ra) # 800039b8 <__memset>
    800033dc:	00093783          	ld	a5,0(s2)
    800033e0:	00f4b023          	sd	a5,0(s1)
    800033e4:	00993023          	sd	s1,0(s2)
    800033e8:	fd4498e3          	bne	s1,s4,800033b8 <kinit+0x70>
    800033ec:	03813083          	ld	ra,56(sp)
    800033f0:	03013403          	ld	s0,48(sp)
    800033f4:	02813483          	ld	s1,40(sp)
    800033f8:	02013903          	ld	s2,32(sp)
    800033fc:	01813983          	ld	s3,24(sp)
    80003400:	01013a03          	ld	s4,16(sp)
    80003404:	00813a83          	ld	s5,8(sp)
    80003408:	04010113          	addi	sp,sp,64
    8000340c:	00008067          	ret
    80003410:	00002517          	auipc	a0,0x2
    80003414:	e4850513          	addi	a0,a0,-440 # 80005258 <digits+0x18>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	4b4080e7          	jalr	1204(ra) # 800028cc <panic>

0000000080003420 <freerange>:
    80003420:	fc010113          	addi	sp,sp,-64
    80003424:	000017b7          	lui	a5,0x1
    80003428:	02913423          	sd	s1,40(sp)
    8000342c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003430:	009504b3          	add	s1,a0,s1
    80003434:	fffff537          	lui	a0,0xfffff
    80003438:	02813823          	sd	s0,48(sp)
    8000343c:	02113c23          	sd	ra,56(sp)
    80003440:	03213023          	sd	s2,32(sp)
    80003444:	01313c23          	sd	s3,24(sp)
    80003448:	01413823          	sd	s4,16(sp)
    8000344c:	01513423          	sd	s5,8(sp)
    80003450:	01613023          	sd	s6,0(sp)
    80003454:	04010413          	addi	s0,sp,64
    80003458:	00a4f4b3          	and	s1,s1,a0
    8000345c:	00f487b3          	add	a5,s1,a5
    80003460:	06f5e463          	bltu	a1,a5,800034c8 <freerange+0xa8>
    80003464:	00003a97          	auipc	s5,0x3
    80003468:	5fca8a93          	addi	s5,s5,1532 # 80006a60 <end>
    8000346c:	0954e263          	bltu	s1,s5,800034f0 <freerange+0xd0>
    80003470:	01100993          	li	s3,17
    80003474:	01b99993          	slli	s3,s3,0x1b
    80003478:	0734fc63          	bgeu	s1,s3,800034f0 <freerange+0xd0>
    8000347c:	00058a13          	mv	s4,a1
    80003480:	00002917          	auipc	s2,0x2
    80003484:	34090913          	addi	s2,s2,832 # 800057c0 <kmem>
    80003488:	00002b37          	lui	s6,0x2
    8000348c:	0140006f          	j	800034a0 <freerange+0x80>
    80003490:	000017b7          	lui	a5,0x1
    80003494:	00f484b3          	add	s1,s1,a5
    80003498:	0554ec63          	bltu	s1,s5,800034f0 <freerange+0xd0>
    8000349c:	0534fa63          	bgeu	s1,s3,800034f0 <freerange+0xd0>
    800034a0:	00001637          	lui	a2,0x1
    800034a4:	00100593          	li	a1,1
    800034a8:	00048513          	mv	a0,s1
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	50c080e7          	jalr	1292(ra) # 800039b8 <__memset>
    800034b4:	00093703          	ld	a4,0(s2)
    800034b8:	016487b3          	add	a5,s1,s6
    800034bc:	00e4b023          	sd	a4,0(s1)
    800034c0:	00993023          	sd	s1,0(s2)
    800034c4:	fcfa76e3          	bgeu	s4,a5,80003490 <freerange+0x70>
    800034c8:	03813083          	ld	ra,56(sp)
    800034cc:	03013403          	ld	s0,48(sp)
    800034d0:	02813483          	ld	s1,40(sp)
    800034d4:	02013903          	ld	s2,32(sp)
    800034d8:	01813983          	ld	s3,24(sp)
    800034dc:	01013a03          	ld	s4,16(sp)
    800034e0:	00813a83          	ld	s5,8(sp)
    800034e4:	00013b03          	ld	s6,0(sp)
    800034e8:	04010113          	addi	sp,sp,64
    800034ec:	00008067          	ret
    800034f0:	00002517          	auipc	a0,0x2
    800034f4:	d6850513          	addi	a0,a0,-664 # 80005258 <digits+0x18>
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	3d4080e7          	jalr	980(ra) # 800028cc <panic>

0000000080003500 <kfree>:
    80003500:	fe010113          	addi	sp,sp,-32
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	00913423          	sd	s1,8(sp)
    80003510:	02010413          	addi	s0,sp,32
    80003514:	03451793          	slli	a5,a0,0x34
    80003518:	04079c63          	bnez	a5,80003570 <kfree+0x70>
    8000351c:	00003797          	auipc	a5,0x3
    80003520:	54478793          	addi	a5,a5,1348 # 80006a60 <end>
    80003524:	00050493          	mv	s1,a0
    80003528:	04f56463          	bltu	a0,a5,80003570 <kfree+0x70>
    8000352c:	01100793          	li	a5,17
    80003530:	01b79793          	slli	a5,a5,0x1b
    80003534:	02f57e63          	bgeu	a0,a5,80003570 <kfree+0x70>
    80003538:	00001637          	lui	a2,0x1
    8000353c:	00100593          	li	a1,1
    80003540:	00000097          	auipc	ra,0x0
    80003544:	478080e7          	jalr	1144(ra) # 800039b8 <__memset>
    80003548:	00002797          	auipc	a5,0x2
    8000354c:	27878793          	addi	a5,a5,632 # 800057c0 <kmem>
    80003550:	0007b703          	ld	a4,0(a5)
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00e4b023          	sd	a4,0(s1)
    80003560:	0097b023          	sd	s1,0(a5)
    80003564:	00813483          	ld	s1,8(sp)
    80003568:	02010113          	addi	sp,sp,32
    8000356c:	00008067          	ret
    80003570:	00002517          	auipc	a0,0x2
    80003574:	ce850513          	addi	a0,a0,-792 # 80005258 <digits+0x18>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	354080e7          	jalr	852(ra) # 800028cc <panic>

0000000080003580 <kalloc>:
    80003580:	fe010113          	addi	sp,sp,-32
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00913423          	sd	s1,8(sp)
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	02010413          	addi	s0,sp,32
    80003594:	00002797          	auipc	a5,0x2
    80003598:	22c78793          	addi	a5,a5,556 # 800057c0 <kmem>
    8000359c:	0007b483          	ld	s1,0(a5)
    800035a0:	02048063          	beqz	s1,800035c0 <kalloc+0x40>
    800035a4:	0004b703          	ld	a4,0(s1)
    800035a8:	00001637          	lui	a2,0x1
    800035ac:	00500593          	li	a1,5
    800035b0:	00048513          	mv	a0,s1
    800035b4:	00e7b023          	sd	a4,0(a5)
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	400080e7          	jalr	1024(ra) # 800039b8 <__memset>
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00813483          	ld	s1,8(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret

00000000800035d8 <initlock>:
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00813423          	sd	s0,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	00813403          	ld	s0,8(sp)
    800035e8:	00b53423          	sd	a1,8(a0)
    800035ec:	00052023          	sw	zero,0(a0)
    800035f0:	00053823          	sd	zero,16(a0)
    800035f4:	01010113          	addi	sp,sp,16
    800035f8:	00008067          	ret

00000000800035fc <acquire>:
    800035fc:	fe010113          	addi	sp,sp,-32
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	01213023          	sd	s2,0(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	00050493          	mv	s1,a0
    80003618:	10002973          	csrr	s2,sstatus
    8000361c:	100027f3          	csrr	a5,sstatus
    80003620:	ffd7f793          	andi	a5,a5,-3
    80003624:	10079073          	csrw	sstatus,a5
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	8e8080e7          	jalr	-1816(ra) # 80001f10 <mycpu>
    80003630:	07852783          	lw	a5,120(a0)
    80003634:	06078e63          	beqz	a5,800036b0 <acquire+0xb4>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	8d8080e7          	jalr	-1832(ra) # 80001f10 <mycpu>
    80003640:	07852783          	lw	a5,120(a0)
    80003644:	0004a703          	lw	a4,0(s1)
    80003648:	0017879b          	addiw	a5,a5,1
    8000364c:	06f52c23          	sw	a5,120(a0)
    80003650:	04071063          	bnez	a4,80003690 <acquire+0x94>
    80003654:	00100713          	li	a4,1
    80003658:	00070793          	mv	a5,a4
    8000365c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003660:	0007879b          	sext.w	a5,a5
    80003664:	fe079ae3          	bnez	a5,80003658 <acquire+0x5c>
    80003668:	0ff0000f          	fence
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	8a4080e7          	jalr	-1884(ra) # 80001f10 <mycpu>
    80003674:	01813083          	ld	ra,24(sp)
    80003678:	01013403          	ld	s0,16(sp)
    8000367c:	00a4b823          	sd	a0,16(s1)
    80003680:	00013903          	ld	s2,0(sp)
    80003684:	00813483          	ld	s1,8(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret
    80003690:	0104b903          	ld	s2,16(s1)
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	87c080e7          	jalr	-1924(ra) # 80001f10 <mycpu>
    8000369c:	faa91ce3          	bne	s2,a0,80003654 <acquire+0x58>
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	bc050513          	addi	a0,a0,-1088 # 80005260 <digits+0x20>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	224080e7          	jalr	548(ra) # 800028cc <panic>
    800036b0:	00195913          	srli	s2,s2,0x1
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	85c080e7          	jalr	-1956(ra) # 80001f10 <mycpu>
    800036bc:	00197913          	andi	s2,s2,1
    800036c0:	07252e23          	sw	s2,124(a0)
    800036c4:	f75ff06f          	j	80003638 <acquire+0x3c>

00000000800036c8 <release>:
    800036c8:	fe010113          	addi	sp,sp,-32
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	00113c23          	sd	ra,24(sp)
    800036d4:	00913423          	sd	s1,8(sp)
    800036d8:	01213023          	sd	s2,0(sp)
    800036dc:	02010413          	addi	s0,sp,32
    800036e0:	00052783          	lw	a5,0(a0)
    800036e4:	00079a63          	bnez	a5,800036f8 <release+0x30>
    800036e8:	00002517          	auipc	a0,0x2
    800036ec:	b8050513          	addi	a0,a0,-1152 # 80005268 <digits+0x28>
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	1dc080e7          	jalr	476(ra) # 800028cc <panic>
    800036f8:	01053903          	ld	s2,16(a0)
    800036fc:	00050493          	mv	s1,a0
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	810080e7          	jalr	-2032(ra) # 80001f10 <mycpu>
    80003708:	fea910e3          	bne	s2,a0,800036e8 <release+0x20>
    8000370c:	0004b823          	sd	zero,16(s1)
    80003710:	0ff0000f          	fence
    80003714:	0f50000f          	fence	iorw,ow
    80003718:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	7f4080e7          	jalr	2036(ra) # 80001f10 <mycpu>
    80003724:	100027f3          	csrr	a5,sstatus
    80003728:	0027f793          	andi	a5,a5,2
    8000372c:	04079a63          	bnez	a5,80003780 <release+0xb8>
    80003730:	07852783          	lw	a5,120(a0)
    80003734:	02f05e63          	blez	a5,80003770 <release+0xa8>
    80003738:	fff7871b          	addiw	a4,a5,-1
    8000373c:	06e52c23          	sw	a4,120(a0)
    80003740:	00071c63          	bnez	a4,80003758 <release+0x90>
    80003744:	07c52783          	lw	a5,124(a0)
    80003748:	00078863          	beqz	a5,80003758 <release+0x90>
    8000374c:	100027f3          	csrr	a5,sstatus
    80003750:	0027e793          	ori	a5,a5,2
    80003754:	10079073          	csrw	sstatus,a5
    80003758:	01813083          	ld	ra,24(sp)
    8000375c:	01013403          	ld	s0,16(sp)
    80003760:	00813483          	ld	s1,8(sp)
    80003764:	00013903          	ld	s2,0(sp)
    80003768:	02010113          	addi	sp,sp,32
    8000376c:	00008067          	ret
    80003770:	00002517          	auipc	a0,0x2
    80003774:	b1850513          	addi	a0,a0,-1256 # 80005288 <digits+0x48>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	154080e7          	jalr	340(ra) # 800028cc <panic>
    80003780:	00002517          	auipc	a0,0x2
    80003784:	af050513          	addi	a0,a0,-1296 # 80005270 <digits+0x30>
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	144080e7          	jalr	324(ra) # 800028cc <panic>

0000000080003790 <holding>:
    80003790:	00052783          	lw	a5,0(a0)
    80003794:	00079663          	bnez	a5,800037a0 <holding+0x10>
    80003798:	00000513          	li	a0,0
    8000379c:	00008067          	ret
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	01053483          	ld	s1,16(a0)
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	758080e7          	jalr	1880(ra) # 80001f10 <mycpu>
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	40a48533          	sub	a0,s1,a0
    800037cc:	00153513          	seqz	a0,a0
    800037d0:	00813483          	ld	s1,8(sp)
    800037d4:	02010113          	addi	sp,sp,32
    800037d8:	00008067          	ret

00000000800037dc <push_off>:
    800037dc:	fe010113          	addi	sp,sp,-32
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	00913423          	sd	s1,8(sp)
    800037ec:	02010413          	addi	s0,sp,32
    800037f0:	100024f3          	csrr	s1,sstatus
    800037f4:	100027f3          	csrr	a5,sstatus
    800037f8:	ffd7f793          	andi	a5,a5,-3
    800037fc:	10079073          	csrw	sstatus,a5
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	710080e7          	jalr	1808(ra) # 80001f10 <mycpu>
    80003808:	07852783          	lw	a5,120(a0)
    8000380c:	02078663          	beqz	a5,80003838 <push_off+0x5c>
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	700080e7          	jalr	1792(ra) # 80001f10 <mycpu>
    80003818:	07852783          	lw	a5,120(a0)
    8000381c:	01813083          	ld	ra,24(sp)
    80003820:	01013403          	ld	s0,16(sp)
    80003824:	0017879b          	addiw	a5,a5,1
    80003828:	06f52c23          	sw	a5,120(a0)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	02010113          	addi	sp,sp,32
    80003834:	00008067          	ret
    80003838:	0014d493          	srli	s1,s1,0x1
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	6d4080e7          	jalr	1748(ra) # 80001f10 <mycpu>
    80003844:	0014f493          	andi	s1,s1,1
    80003848:	06952e23          	sw	s1,124(a0)
    8000384c:	fc5ff06f          	j	80003810 <push_off+0x34>

0000000080003850 <pop_off>:
    80003850:	ff010113          	addi	sp,sp,-16
    80003854:	00813023          	sd	s0,0(sp)
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	01010413          	addi	s0,sp,16
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	6b0080e7          	jalr	1712(ra) # 80001f10 <mycpu>
    80003868:	100027f3          	csrr	a5,sstatus
    8000386c:	0027f793          	andi	a5,a5,2
    80003870:	04079663          	bnez	a5,800038bc <pop_off+0x6c>
    80003874:	07852783          	lw	a5,120(a0)
    80003878:	02f05a63          	blez	a5,800038ac <pop_off+0x5c>
    8000387c:	fff7871b          	addiw	a4,a5,-1
    80003880:	06e52c23          	sw	a4,120(a0)
    80003884:	00071c63          	bnez	a4,8000389c <pop_off+0x4c>
    80003888:	07c52783          	lw	a5,124(a0)
    8000388c:	00078863          	beqz	a5,8000389c <pop_off+0x4c>
    80003890:	100027f3          	csrr	a5,sstatus
    80003894:	0027e793          	ori	a5,a5,2
    80003898:	10079073          	csrw	sstatus,a5
    8000389c:	00813083          	ld	ra,8(sp)
    800038a0:	00013403          	ld	s0,0(sp)
    800038a4:	01010113          	addi	sp,sp,16
    800038a8:	00008067          	ret
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	9dc50513          	addi	a0,a0,-1572 # 80005288 <digits+0x48>
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	018080e7          	jalr	24(ra) # 800028cc <panic>
    800038bc:	00002517          	auipc	a0,0x2
    800038c0:	9b450513          	addi	a0,a0,-1612 # 80005270 <digits+0x30>
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	008080e7          	jalr	8(ra) # 800028cc <panic>

00000000800038cc <push_on>:
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00813823          	sd	s0,16(sp)
    800038d4:	00113c23          	sd	ra,24(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	100024f3          	csrr	s1,sstatus
    800038e4:	100027f3          	csrr	a5,sstatus
    800038e8:	0027e793          	ori	a5,a5,2
    800038ec:	10079073          	csrw	sstatus,a5
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	620080e7          	jalr	1568(ra) # 80001f10 <mycpu>
    800038f8:	07852783          	lw	a5,120(a0)
    800038fc:	02078663          	beqz	a5,80003928 <push_on+0x5c>
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	610080e7          	jalr	1552(ra) # 80001f10 <mycpu>
    80003908:	07852783          	lw	a5,120(a0)
    8000390c:	01813083          	ld	ra,24(sp)
    80003910:	01013403          	ld	s0,16(sp)
    80003914:	0017879b          	addiw	a5,a5,1
    80003918:	06f52c23          	sw	a5,120(a0)
    8000391c:	00813483          	ld	s1,8(sp)
    80003920:	02010113          	addi	sp,sp,32
    80003924:	00008067          	ret
    80003928:	0014d493          	srli	s1,s1,0x1
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	5e4080e7          	jalr	1508(ra) # 80001f10 <mycpu>
    80003934:	0014f493          	andi	s1,s1,1
    80003938:	06952e23          	sw	s1,124(a0)
    8000393c:	fc5ff06f          	j	80003900 <push_on+0x34>

0000000080003940 <pop_on>:
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00813023          	sd	s0,0(sp)
    80003948:	00113423          	sd	ra,8(sp)
    8000394c:	01010413          	addi	s0,sp,16
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	5c0080e7          	jalr	1472(ra) # 80001f10 <mycpu>
    80003958:	100027f3          	csrr	a5,sstatus
    8000395c:	0027f793          	andi	a5,a5,2
    80003960:	04078463          	beqz	a5,800039a8 <pop_on+0x68>
    80003964:	07852783          	lw	a5,120(a0)
    80003968:	02f05863          	blez	a5,80003998 <pop_on+0x58>
    8000396c:	fff7879b          	addiw	a5,a5,-1
    80003970:	06f52c23          	sw	a5,120(a0)
    80003974:	07853783          	ld	a5,120(a0)
    80003978:	00079863          	bnez	a5,80003988 <pop_on+0x48>
    8000397c:	100027f3          	csrr	a5,sstatus
    80003980:	ffd7f793          	andi	a5,a5,-3
    80003984:	10079073          	csrw	sstatus,a5
    80003988:	00813083          	ld	ra,8(sp)
    8000398c:	00013403          	ld	s0,0(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret
    80003998:	00002517          	auipc	a0,0x2
    8000399c:	91850513          	addi	a0,a0,-1768 # 800052b0 <digits+0x70>
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	f2c080e7          	jalr	-212(ra) # 800028cc <panic>
    800039a8:	00002517          	auipc	a0,0x2
    800039ac:	8e850513          	addi	a0,a0,-1816 # 80005290 <digits+0x50>
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	f1c080e7          	jalr	-228(ra) # 800028cc <panic>

00000000800039b8 <__memset>:
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00813423          	sd	s0,8(sp)
    800039c0:	01010413          	addi	s0,sp,16
    800039c4:	1a060e63          	beqz	a2,80003b80 <__memset+0x1c8>
    800039c8:	40a007b3          	neg	a5,a0
    800039cc:	0077f793          	andi	a5,a5,7
    800039d0:	00778693          	addi	a3,a5,7
    800039d4:	00b00813          	li	a6,11
    800039d8:	0ff5f593          	andi	a1,a1,255
    800039dc:	fff6071b          	addiw	a4,a2,-1
    800039e0:	1b06e663          	bltu	a3,a6,80003b8c <__memset+0x1d4>
    800039e4:	1cd76463          	bltu	a4,a3,80003bac <__memset+0x1f4>
    800039e8:	1a078e63          	beqz	a5,80003ba4 <__memset+0x1ec>
    800039ec:	00b50023          	sb	a1,0(a0)
    800039f0:	00100713          	li	a4,1
    800039f4:	1ae78463          	beq	a5,a4,80003b9c <__memset+0x1e4>
    800039f8:	00b500a3          	sb	a1,1(a0)
    800039fc:	00200713          	li	a4,2
    80003a00:	1ae78a63          	beq	a5,a4,80003bb4 <__memset+0x1fc>
    80003a04:	00b50123          	sb	a1,2(a0)
    80003a08:	00300713          	li	a4,3
    80003a0c:	18e78463          	beq	a5,a4,80003b94 <__memset+0x1dc>
    80003a10:	00b501a3          	sb	a1,3(a0)
    80003a14:	00400713          	li	a4,4
    80003a18:	1ae78263          	beq	a5,a4,80003bbc <__memset+0x204>
    80003a1c:	00b50223          	sb	a1,4(a0)
    80003a20:	00500713          	li	a4,5
    80003a24:	1ae78063          	beq	a5,a4,80003bc4 <__memset+0x20c>
    80003a28:	00b502a3          	sb	a1,5(a0)
    80003a2c:	00700713          	li	a4,7
    80003a30:	18e79e63          	bne	a5,a4,80003bcc <__memset+0x214>
    80003a34:	00b50323          	sb	a1,6(a0)
    80003a38:	00700e93          	li	t4,7
    80003a3c:	00859713          	slli	a4,a1,0x8
    80003a40:	00e5e733          	or	a4,a1,a4
    80003a44:	01059e13          	slli	t3,a1,0x10
    80003a48:	01c76e33          	or	t3,a4,t3
    80003a4c:	01859313          	slli	t1,a1,0x18
    80003a50:	006e6333          	or	t1,t3,t1
    80003a54:	02059893          	slli	a7,a1,0x20
    80003a58:	40f60e3b          	subw	t3,a2,a5
    80003a5c:	011368b3          	or	a7,t1,a7
    80003a60:	02859813          	slli	a6,a1,0x28
    80003a64:	0108e833          	or	a6,a7,a6
    80003a68:	03059693          	slli	a3,a1,0x30
    80003a6c:	003e589b          	srliw	a7,t3,0x3
    80003a70:	00d866b3          	or	a3,a6,a3
    80003a74:	03859713          	slli	a4,a1,0x38
    80003a78:	00389813          	slli	a6,a7,0x3
    80003a7c:	00f507b3          	add	a5,a0,a5
    80003a80:	00e6e733          	or	a4,a3,a4
    80003a84:	000e089b          	sext.w	a7,t3
    80003a88:	00f806b3          	add	a3,a6,a5
    80003a8c:	00e7b023          	sd	a4,0(a5)
    80003a90:	00878793          	addi	a5,a5,8
    80003a94:	fed79ce3          	bne	a5,a3,80003a8c <__memset+0xd4>
    80003a98:	ff8e7793          	andi	a5,t3,-8
    80003a9c:	0007871b          	sext.w	a4,a5
    80003aa0:	01d787bb          	addw	a5,a5,t4
    80003aa4:	0ce88e63          	beq	a7,a4,80003b80 <__memset+0x1c8>
    80003aa8:	00f50733          	add	a4,a0,a5
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0017871b          	addiw	a4,a5,1
    80003ab4:	0cc77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0027871b          	addiw	a4,a5,2
    80003ac4:	0ac77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0037871b          	addiw	a4,a5,3
    80003ad4:	0ac77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0047871b          	addiw	a4,a5,4
    80003ae4:	08c77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	0057871b          	addiw	a4,a5,5
    80003af4:	08c77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	0067871b          	addiw	a4,a5,6
    80003b04:	06c77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	0077871b          	addiw	a4,a5,7
    80003b14:	06c77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	0087871b          	addiw	a4,a5,8
    80003b24:	04c77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b28:	00e50733          	add	a4,a0,a4
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	0097871b          	addiw	a4,a5,9
    80003b34:	04c77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	00a7871b          	addiw	a4,a5,10
    80003b44:	02c77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	00b7871b          	addiw	a4,a5,11
    80003b54:	02c77663          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b58:	00e50733          	add	a4,a0,a4
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	00c7871b          	addiw	a4,a5,12
    80003b64:	00c77e63          	bgeu	a4,a2,80003b80 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	00d7879b          	addiw	a5,a5,13
    80003b74:	00c7f663          	bgeu	a5,a2,80003b80 <__memset+0x1c8>
    80003b78:	00f507b3          	add	a5,a0,a5
    80003b7c:	00b78023          	sb	a1,0(a5)
    80003b80:	00813403          	ld	s0,8(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret
    80003b8c:	00b00693          	li	a3,11
    80003b90:	e55ff06f          	j	800039e4 <__memset+0x2c>
    80003b94:	00300e93          	li	t4,3
    80003b98:	ea5ff06f          	j	80003a3c <__memset+0x84>
    80003b9c:	00100e93          	li	t4,1
    80003ba0:	e9dff06f          	j	80003a3c <__memset+0x84>
    80003ba4:	00000e93          	li	t4,0
    80003ba8:	e95ff06f          	j	80003a3c <__memset+0x84>
    80003bac:	00000793          	li	a5,0
    80003bb0:	ef9ff06f          	j	80003aa8 <__memset+0xf0>
    80003bb4:	00200e93          	li	t4,2
    80003bb8:	e85ff06f          	j	80003a3c <__memset+0x84>
    80003bbc:	00400e93          	li	t4,4
    80003bc0:	e7dff06f          	j	80003a3c <__memset+0x84>
    80003bc4:	00500e93          	li	t4,5
    80003bc8:	e75ff06f          	j	80003a3c <__memset+0x84>
    80003bcc:	00600e93          	li	t4,6
    80003bd0:	e6dff06f          	j	80003a3c <__memset+0x84>

0000000080003bd4 <__memmove>:
    80003bd4:	ff010113          	addi	sp,sp,-16
    80003bd8:	00813423          	sd	s0,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	0e060863          	beqz	a2,80003cd0 <__memmove+0xfc>
    80003be4:	fff6069b          	addiw	a3,a2,-1
    80003be8:	0006881b          	sext.w	a6,a3
    80003bec:	0ea5e863          	bltu	a1,a0,80003cdc <__memmove+0x108>
    80003bf0:	00758713          	addi	a4,a1,7
    80003bf4:	00a5e7b3          	or	a5,a1,a0
    80003bf8:	40a70733          	sub	a4,a4,a0
    80003bfc:	0077f793          	andi	a5,a5,7
    80003c00:	00f73713          	sltiu	a4,a4,15
    80003c04:	00174713          	xori	a4,a4,1
    80003c08:	0017b793          	seqz	a5,a5
    80003c0c:	00e7f7b3          	and	a5,a5,a4
    80003c10:	10078863          	beqz	a5,80003d20 <__memmove+0x14c>
    80003c14:	00900793          	li	a5,9
    80003c18:	1107f463          	bgeu	a5,a6,80003d20 <__memmove+0x14c>
    80003c1c:	0036581b          	srliw	a6,a2,0x3
    80003c20:	fff8081b          	addiw	a6,a6,-1
    80003c24:	02081813          	slli	a6,a6,0x20
    80003c28:	01d85893          	srli	a7,a6,0x1d
    80003c2c:	00858813          	addi	a6,a1,8
    80003c30:	00058793          	mv	a5,a1
    80003c34:	00050713          	mv	a4,a0
    80003c38:	01088833          	add	a6,a7,a6
    80003c3c:	0007b883          	ld	a7,0(a5)
    80003c40:	00878793          	addi	a5,a5,8
    80003c44:	00870713          	addi	a4,a4,8
    80003c48:	ff173c23          	sd	a7,-8(a4)
    80003c4c:	ff0798e3          	bne	a5,a6,80003c3c <__memmove+0x68>
    80003c50:	ff867713          	andi	a4,a2,-8
    80003c54:	02071793          	slli	a5,a4,0x20
    80003c58:	0207d793          	srli	a5,a5,0x20
    80003c5c:	00f585b3          	add	a1,a1,a5
    80003c60:	40e686bb          	subw	a3,a3,a4
    80003c64:	00f507b3          	add	a5,a0,a5
    80003c68:	06e60463          	beq	a2,a4,80003cd0 <__memmove+0xfc>
    80003c6c:	0005c703          	lbu	a4,0(a1)
    80003c70:	00e78023          	sb	a4,0(a5)
    80003c74:	04068e63          	beqz	a3,80003cd0 <__memmove+0xfc>
    80003c78:	0015c603          	lbu	a2,1(a1)
    80003c7c:	00100713          	li	a4,1
    80003c80:	00c780a3          	sb	a2,1(a5)
    80003c84:	04e68663          	beq	a3,a4,80003cd0 <__memmove+0xfc>
    80003c88:	0025c603          	lbu	a2,2(a1)
    80003c8c:	00200713          	li	a4,2
    80003c90:	00c78123          	sb	a2,2(a5)
    80003c94:	02e68e63          	beq	a3,a4,80003cd0 <__memmove+0xfc>
    80003c98:	0035c603          	lbu	a2,3(a1)
    80003c9c:	00300713          	li	a4,3
    80003ca0:	00c781a3          	sb	a2,3(a5)
    80003ca4:	02e68663          	beq	a3,a4,80003cd0 <__memmove+0xfc>
    80003ca8:	0045c603          	lbu	a2,4(a1)
    80003cac:	00400713          	li	a4,4
    80003cb0:	00c78223          	sb	a2,4(a5)
    80003cb4:	00e68e63          	beq	a3,a4,80003cd0 <__memmove+0xfc>
    80003cb8:	0055c603          	lbu	a2,5(a1)
    80003cbc:	00500713          	li	a4,5
    80003cc0:	00c782a3          	sb	a2,5(a5)
    80003cc4:	00e68663          	beq	a3,a4,80003cd0 <__memmove+0xfc>
    80003cc8:	0065c703          	lbu	a4,6(a1)
    80003ccc:	00e78323          	sb	a4,6(a5)
    80003cd0:	00813403          	ld	s0,8(sp)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret
    80003cdc:	02061713          	slli	a4,a2,0x20
    80003ce0:	02075713          	srli	a4,a4,0x20
    80003ce4:	00e587b3          	add	a5,a1,a4
    80003ce8:	f0f574e3          	bgeu	a0,a5,80003bf0 <__memmove+0x1c>
    80003cec:	02069613          	slli	a2,a3,0x20
    80003cf0:	02065613          	srli	a2,a2,0x20
    80003cf4:	fff64613          	not	a2,a2
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00c78633          	add	a2,a5,a2
    80003d00:	fff7c683          	lbu	a3,-1(a5)
    80003d04:	fff78793          	addi	a5,a5,-1
    80003d08:	fff70713          	addi	a4,a4,-1
    80003d0c:	00d70023          	sb	a3,0(a4)
    80003d10:	fec798e3          	bne	a5,a2,80003d00 <__memmove+0x12c>
    80003d14:	00813403          	ld	s0,8(sp)
    80003d18:	01010113          	addi	sp,sp,16
    80003d1c:	00008067          	ret
    80003d20:	02069713          	slli	a4,a3,0x20
    80003d24:	02075713          	srli	a4,a4,0x20
    80003d28:	00170713          	addi	a4,a4,1
    80003d2c:	00e50733          	add	a4,a0,a4
    80003d30:	00050793          	mv	a5,a0
    80003d34:	0005c683          	lbu	a3,0(a1)
    80003d38:	00178793          	addi	a5,a5,1
    80003d3c:	00158593          	addi	a1,a1,1
    80003d40:	fed78fa3          	sb	a3,-1(a5)
    80003d44:	fee798e3          	bne	a5,a4,80003d34 <__memmove+0x160>
    80003d48:	f89ff06f          	j	80003cd0 <__memmove+0xfc>

0000000080003d4c <__mem_free>:
    80003d4c:	ff010113          	addi	sp,sp,-16
    80003d50:	00813423          	sd	s0,8(sp)
    80003d54:	01010413          	addi	s0,sp,16
    80003d58:	00002597          	auipc	a1,0x2
    80003d5c:	a7058593          	addi	a1,a1,-1424 # 800057c8 <freep>
    80003d60:	0005b783          	ld	a5,0(a1)
    80003d64:	ff050693          	addi	a3,a0,-16
    80003d68:	0007b703          	ld	a4,0(a5)
    80003d6c:	00d7fc63          	bgeu	a5,a3,80003d84 <__mem_free+0x38>
    80003d70:	00e6ee63          	bltu	a3,a4,80003d8c <__mem_free+0x40>
    80003d74:	00e7fc63          	bgeu	a5,a4,80003d8c <__mem_free+0x40>
    80003d78:	00070793          	mv	a5,a4
    80003d7c:	0007b703          	ld	a4,0(a5)
    80003d80:	fed7e8e3          	bltu	a5,a3,80003d70 <__mem_free+0x24>
    80003d84:	fee7eae3          	bltu	a5,a4,80003d78 <__mem_free+0x2c>
    80003d88:	fee6f8e3          	bgeu	a3,a4,80003d78 <__mem_free+0x2c>
    80003d8c:	ff852803          	lw	a6,-8(a0)
    80003d90:	02081613          	slli	a2,a6,0x20
    80003d94:	01c65613          	srli	a2,a2,0x1c
    80003d98:	00c68633          	add	a2,a3,a2
    80003d9c:	02c70a63          	beq	a4,a2,80003dd0 <__mem_free+0x84>
    80003da0:	fee53823          	sd	a4,-16(a0)
    80003da4:	0087a503          	lw	a0,8(a5)
    80003da8:	02051613          	slli	a2,a0,0x20
    80003dac:	01c65613          	srli	a2,a2,0x1c
    80003db0:	00c78633          	add	a2,a5,a2
    80003db4:	04c68263          	beq	a3,a2,80003df8 <__mem_free+0xac>
    80003db8:	00813403          	ld	s0,8(sp)
    80003dbc:	00d7b023          	sd	a3,0(a5)
    80003dc0:	00f5b023          	sd	a5,0(a1)
    80003dc4:	00000513          	li	a0,0
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret
    80003dd0:	00872603          	lw	a2,8(a4)
    80003dd4:	00073703          	ld	a4,0(a4)
    80003dd8:	0106083b          	addw	a6,a2,a6
    80003ddc:	ff052c23          	sw	a6,-8(a0)
    80003de0:	fee53823          	sd	a4,-16(a0)
    80003de4:	0087a503          	lw	a0,8(a5)
    80003de8:	02051613          	slli	a2,a0,0x20
    80003dec:	01c65613          	srli	a2,a2,0x1c
    80003df0:	00c78633          	add	a2,a5,a2
    80003df4:	fcc692e3          	bne	a3,a2,80003db8 <__mem_free+0x6c>
    80003df8:	00813403          	ld	s0,8(sp)
    80003dfc:	0105053b          	addw	a0,a0,a6
    80003e00:	00a7a423          	sw	a0,8(a5)
    80003e04:	00e7b023          	sd	a4,0(a5)
    80003e08:	00f5b023          	sd	a5,0(a1)
    80003e0c:	00000513          	li	a0,0
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <__mem_alloc>:
    80003e18:	fc010113          	addi	sp,sp,-64
    80003e1c:	02813823          	sd	s0,48(sp)
    80003e20:	02913423          	sd	s1,40(sp)
    80003e24:	03213023          	sd	s2,32(sp)
    80003e28:	01513423          	sd	s5,8(sp)
    80003e2c:	02113c23          	sd	ra,56(sp)
    80003e30:	01313c23          	sd	s3,24(sp)
    80003e34:	01413823          	sd	s4,16(sp)
    80003e38:	01613023          	sd	s6,0(sp)
    80003e3c:	04010413          	addi	s0,sp,64
    80003e40:	00002a97          	auipc	s5,0x2
    80003e44:	988a8a93          	addi	s5,s5,-1656 # 800057c8 <freep>
    80003e48:	00f50913          	addi	s2,a0,15
    80003e4c:	000ab683          	ld	a3,0(s5)
    80003e50:	00495913          	srli	s2,s2,0x4
    80003e54:	0019049b          	addiw	s1,s2,1
    80003e58:	00048913          	mv	s2,s1
    80003e5c:	0c068c63          	beqz	a3,80003f34 <__mem_alloc+0x11c>
    80003e60:	0006b503          	ld	a0,0(a3)
    80003e64:	00852703          	lw	a4,8(a0)
    80003e68:	10977063          	bgeu	a4,s1,80003f68 <__mem_alloc+0x150>
    80003e6c:	000017b7          	lui	a5,0x1
    80003e70:	0009099b          	sext.w	s3,s2
    80003e74:	0af4e863          	bltu	s1,a5,80003f24 <__mem_alloc+0x10c>
    80003e78:	02099a13          	slli	s4,s3,0x20
    80003e7c:	01ca5a13          	srli	s4,s4,0x1c
    80003e80:	fff00b13          	li	s6,-1
    80003e84:	0100006f          	j	80003e94 <__mem_alloc+0x7c>
    80003e88:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003e8c:	00852703          	lw	a4,8(a0)
    80003e90:	04977463          	bgeu	a4,s1,80003ed8 <__mem_alloc+0xc0>
    80003e94:	00050793          	mv	a5,a0
    80003e98:	fea698e3          	bne	a3,a0,80003e88 <__mem_alloc+0x70>
    80003e9c:	000a0513          	mv	a0,s4
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	1f0080e7          	jalr	496(ra) # 80004090 <kvmincrease>
    80003ea8:	00050793          	mv	a5,a0
    80003eac:	01050513          	addi	a0,a0,16
    80003eb0:	07678e63          	beq	a5,s6,80003f2c <__mem_alloc+0x114>
    80003eb4:	0137a423          	sw	s3,8(a5)
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	e94080e7          	jalr	-364(ra) # 80003d4c <__mem_free>
    80003ec0:	000ab783          	ld	a5,0(s5)
    80003ec4:	06078463          	beqz	a5,80003f2c <__mem_alloc+0x114>
    80003ec8:	0007b503          	ld	a0,0(a5)
    80003ecc:	00078693          	mv	a3,a5
    80003ed0:	00852703          	lw	a4,8(a0)
    80003ed4:	fc9760e3          	bltu	a4,s1,80003e94 <__mem_alloc+0x7c>
    80003ed8:	08e48263          	beq	s1,a4,80003f5c <__mem_alloc+0x144>
    80003edc:	4127073b          	subw	a4,a4,s2
    80003ee0:	02071693          	slli	a3,a4,0x20
    80003ee4:	01c6d693          	srli	a3,a3,0x1c
    80003ee8:	00e52423          	sw	a4,8(a0)
    80003eec:	00d50533          	add	a0,a0,a3
    80003ef0:	01252423          	sw	s2,8(a0)
    80003ef4:	00fab023          	sd	a5,0(s5)
    80003ef8:	01050513          	addi	a0,a0,16
    80003efc:	03813083          	ld	ra,56(sp)
    80003f00:	03013403          	ld	s0,48(sp)
    80003f04:	02813483          	ld	s1,40(sp)
    80003f08:	02013903          	ld	s2,32(sp)
    80003f0c:	01813983          	ld	s3,24(sp)
    80003f10:	01013a03          	ld	s4,16(sp)
    80003f14:	00813a83          	ld	s5,8(sp)
    80003f18:	00013b03          	ld	s6,0(sp)
    80003f1c:	04010113          	addi	sp,sp,64
    80003f20:	00008067          	ret
    80003f24:	000019b7          	lui	s3,0x1
    80003f28:	f51ff06f          	j	80003e78 <__mem_alloc+0x60>
    80003f2c:	00000513          	li	a0,0
    80003f30:	fcdff06f          	j	80003efc <__mem_alloc+0xe4>
    80003f34:	00003797          	auipc	a5,0x3
    80003f38:	b1c78793          	addi	a5,a5,-1252 # 80006a50 <base>
    80003f3c:	00078513          	mv	a0,a5
    80003f40:	00fab023          	sd	a5,0(s5)
    80003f44:	00f7b023          	sd	a5,0(a5)
    80003f48:	00000713          	li	a4,0
    80003f4c:	00003797          	auipc	a5,0x3
    80003f50:	b007a623          	sw	zero,-1268(a5) # 80006a58 <base+0x8>
    80003f54:	00050693          	mv	a3,a0
    80003f58:	f11ff06f          	j	80003e68 <__mem_alloc+0x50>
    80003f5c:	00053703          	ld	a4,0(a0)
    80003f60:	00e7b023          	sd	a4,0(a5)
    80003f64:	f91ff06f          	j	80003ef4 <__mem_alloc+0xdc>
    80003f68:	00068793          	mv	a5,a3
    80003f6c:	f6dff06f          	j	80003ed8 <__mem_alloc+0xc0>

0000000080003f70 <__putc>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00113c23          	sd	ra,24(sp)
    80003f7c:	02010413          	addi	s0,sp,32
    80003f80:	00050793          	mv	a5,a0
    80003f84:	fef40593          	addi	a1,s0,-17
    80003f88:	00100613          	li	a2,1
    80003f8c:	00000513          	li	a0,0
    80003f90:	fef407a3          	sb	a5,-17(s0)
    80003f94:	fffff097          	auipc	ra,0xfffff
    80003f98:	918080e7          	jalr	-1768(ra) # 800028ac <console_write>
    80003f9c:	01813083          	ld	ra,24(sp)
    80003fa0:	01013403          	ld	s0,16(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret

0000000080003fac <__getc>:
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00113c23          	sd	ra,24(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    80003fbc:	fe840593          	addi	a1,s0,-24
    80003fc0:	00100613          	li	a2,1
    80003fc4:	00000513          	li	a0,0
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	8c4080e7          	jalr	-1852(ra) # 8000288c <console_read>
    80003fd0:	fe844503          	lbu	a0,-24(s0)
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	02010113          	addi	sp,sp,32
    80003fe0:	00008067          	ret

0000000080003fe4 <console_handler>:
    80003fe4:	fe010113          	addi	sp,sp,-32
    80003fe8:	00813823          	sd	s0,16(sp)
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	00913423          	sd	s1,8(sp)
    80003ff4:	02010413          	addi	s0,sp,32
    80003ff8:	14202773          	csrr	a4,scause
    80003ffc:	100027f3          	csrr	a5,sstatus
    80004000:	0027f793          	andi	a5,a5,2
    80004004:	06079e63          	bnez	a5,80004080 <console_handler+0x9c>
    80004008:	00074c63          	bltz	a4,80004020 <console_handler+0x3c>
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	00813483          	ld	s1,8(sp)
    80004018:	02010113          	addi	sp,sp,32
    8000401c:	00008067          	ret
    80004020:	0ff77713          	andi	a4,a4,255
    80004024:	00900793          	li	a5,9
    80004028:	fef712e3          	bne	a4,a5,8000400c <console_handler+0x28>
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	4b8080e7          	jalr	1208(ra) # 800024e4 <plic_claim>
    80004034:	00a00793          	li	a5,10
    80004038:	00050493          	mv	s1,a0
    8000403c:	02f50c63          	beq	a0,a5,80004074 <console_handler+0x90>
    80004040:	fc0506e3          	beqz	a0,8000400c <console_handler+0x28>
    80004044:	00050593          	mv	a1,a0
    80004048:	00001517          	auipc	a0,0x1
    8000404c:	17050513          	addi	a0,a0,368 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	8d8080e7          	jalr	-1832(ra) # 80002928 <__printf>
    80004058:	01013403          	ld	s0,16(sp)
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	00048513          	mv	a0,s1
    80004064:	00813483          	ld	s1,8(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	ffffe317          	auipc	t1,0xffffe
    80004070:	4b030067          	jr	1200(t1) # 8000251c <plic_complete>
    80004074:	fffff097          	auipc	ra,0xfffff
    80004078:	1bc080e7          	jalr	444(ra) # 80003230 <uartintr>
    8000407c:	fddff06f          	j	80004058 <console_handler+0x74>
    80004080:	00001517          	auipc	a0,0x1
    80004084:	23850513          	addi	a0,a0,568 # 800052b8 <digits+0x78>
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	844080e7          	jalr	-1980(ra) # 800028cc <panic>

0000000080004090 <kvmincrease>:
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	01213023          	sd	s2,0(sp)
    80004098:	00001937          	lui	s2,0x1
    8000409c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800040a0:	00813823          	sd	s0,16(sp)
    800040a4:	00113c23          	sd	ra,24(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	02010413          	addi	s0,sp,32
    800040b0:	01250933          	add	s2,a0,s2
    800040b4:	00c95913          	srli	s2,s2,0xc
    800040b8:	02090863          	beqz	s2,800040e8 <kvmincrease+0x58>
    800040bc:	00000493          	li	s1,0
    800040c0:	00148493          	addi	s1,s1,1
    800040c4:	fffff097          	auipc	ra,0xfffff
    800040c8:	4bc080e7          	jalr	1212(ra) # 80003580 <kalloc>
    800040cc:	fe991ae3          	bne	s2,s1,800040c0 <kvmincrease+0x30>
    800040d0:	01813083          	ld	ra,24(sp)
    800040d4:	01013403          	ld	s0,16(sp)
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	00013903          	ld	s2,0(sp)
    800040e0:	02010113          	addi	sp,sp,32
    800040e4:	00008067          	ret
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	01013403          	ld	s0,16(sp)
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	00013903          	ld	s2,0(sp)
    800040f8:	00000513          	li	a0,0
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret
	...
