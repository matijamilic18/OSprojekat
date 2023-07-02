
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7c013103          	ld	sp,1984(sp) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	529010ef          	jal	ra,80001d44 <start>

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
    80001084:	0f5000ef          	jal	ra,80001978 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_Z13thread_createPP3TCBPFvPvES2_>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"



int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    80001130:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    80001134:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001138:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_CREATE));
    8000113c:	01100793          	li	a5,17
    80001140:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    80001144:	00000073          	ecall

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));
    80001148:	00050513          	mv	a0,a0

    return  retValue;

}
    8000114c:	0005051b          	sext.w	a0,a0
    80001150:	00813403          	ld	s0,8(sp)
    80001154:	01010113          	addi	sp,sp,16
    80001158:	00008067          	ret

000000008000115c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000115c:	ff010113          	addi	sp,sp,-16
    80001160:	00813423          	sd	s0,8(sp)
    80001164:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_DISPATCH));
    80001168:	01300793          	li	a5,19
    8000116c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001170:	00000073          	ecall

}
    80001174:	00813403          	ld	s0,8(sp)
    80001178:	01010113          	addi	sp,sp,16
    8000117c:	00008067          	ret

0000000080001180 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001180:	fe010113          	addi	sp,sp,-32
    80001184:	00113c23          	sd	ra,24(sp)
    80001188:	00813823          	sd	s0,16(sp)
    8000118c:	00913423          	sd	s1,8(sp)
    80001190:	01213023          	sd	s2,0(sp)
    80001194:	02010413          	addi	s0,sp,32
    80001198:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000119c:	00100793          	li	a5,1
    800011a0:	02a7f863          	bgeu	a5,a0,800011d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    800011a4:	00a00793          	li	a5,10
    800011a8:	02f577b3          	remu	a5,a0,a5
    800011ac:	02078e63          	beqz	a5,800011e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800011b0:	fff48513          	addi	a0,s1,-1
    800011b4:	00000097          	auipc	ra,0x0
    800011b8:	fcc080e7          	jalr	-52(ra) # 80001180 <_ZL9fibonaccim>
    800011bc:	00050913          	mv	s2,a0
    800011c0:	ffe48513          	addi	a0,s1,-2
    800011c4:	00000097          	auipc	ra,0x0
    800011c8:	fbc080e7          	jalr	-68(ra) # 80001180 <_ZL9fibonaccim>
    800011cc:	00a90533          	add	a0,s2,a0
}
    800011d0:	01813083          	ld	ra,24(sp)
    800011d4:	01013403          	ld	s0,16(sp)
    800011d8:	00813483          	ld	s1,8(sp)
    800011dc:	00013903          	ld	s2,0(sp)
    800011e0:	02010113          	addi	sp,sp,32
    800011e4:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	5f0080e7          	jalr	1520(ra) # 800017d8 <_ZN3TCB5yieldEv>
    800011f0:	fc1ff06f          	j	800011b0 <_ZL9fibonaccim+0x30>

00000000800011f4 <_Z11workerBodyAv>:
{
    800011f4:	fe010113          	addi	sp,sp,-32
    800011f8:	00113c23          	sd	ra,24(sp)
    800011fc:	00813823          	sd	s0,16(sp)
    80001200:	00913423          	sd	s1,8(sp)
    80001204:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001208:	00000493          	li	s1,0
    8000120c:	0300006f          	j	8000123c <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001210:	00168693          	addi	a3,a3,1
    80001214:	000027b7          	lui	a5,0x2
    80001218:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000121c:	00d7ee63          	bltu	a5,a3,80001238 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001220:	00000713          	li	a4,0
    80001224:	000077b7          	lui	a5,0x7
    80001228:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000122c:	fee7e2e3          	bltu	a5,a4,80001210 <_Z11workerBodyAv+0x1c>
    80001230:	00170713          	addi	a4,a4,1
    80001234:	ff1ff06f          	j	80001224 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001238:	00148493          	addi	s1,s1,1
    8000123c:	00900793          	li	a5,9
    80001240:	0297ec63          	bltu	a5,s1,80001278 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001244:	00004517          	auipc	a0,0x4
    80001248:	dbc50513          	addi	a0,a0,-580 # 80005000 <kvmincrease+0xeb0>
    8000124c:	00001097          	auipc	ra,0x1
    80001250:	9cc080e7          	jalr	-1588(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    80001254:	00048513          	mv	a0,s1
    80001258:	00001097          	auipc	ra,0x1
    8000125c:	a30080e7          	jalr	-1488(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    80001260:	00004517          	auipc	a0,0x4
    80001264:	e7050513          	addi	a0,a0,-400 # 800050d0 <kvmincrease+0xf80>
    80001268:	00001097          	auipc	ra,0x1
    8000126c:	9b0080e7          	jalr	-1616(ra) # 80001c18 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001270:	00000693          	li	a3,0
    80001274:	fa1ff06f          	j	80001214 <_Z11workerBodyAv+0x20>
}
    80001278:	01813083          	ld	ra,24(sp)
    8000127c:	01013403          	ld	s0,16(sp)
    80001280:	00813483          	ld	s1,8(sp)
    80001284:	02010113          	addi	sp,sp,32
    80001288:	00008067          	ret

000000008000128c <_Z11workerBodyBv>:
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800012a0:	00000493          	li	s1,0
    800012a4:	0300006f          	j	800012d4 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800012a8:	00168693          	addi	a3,a3,1
    800012ac:	000027b7          	lui	a5,0x2
    800012b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012b4:	00d7ee63          	bltu	a5,a3,800012d0 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800012b8:	00000713          	li	a4,0
    800012bc:	000077b7          	lui	a5,0x7
    800012c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012c4:	fee7e2e3          	bltu	a5,a4,800012a8 <_Z11workerBodyBv+0x1c>
    800012c8:	00170713          	addi	a4,a4,1
    800012cc:	ff1ff06f          	j	800012bc <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800012d0:	00148493          	addi	s1,s1,1
    800012d4:	00f00793          	li	a5,15
    800012d8:	0297ec63          	bltu	a5,s1,80001310 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    800012dc:	00004517          	auipc	a0,0x4
    800012e0:	d2c50513          	addi	a0,a0,-724 # 80005008 <kvmincrease+0xeb8>
    800012e4:	00001097          	auipc	ra,0x1
    800012e8:	934080e7          	jalr	-1740(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    800012ec:	00048513          	mv	a0,s1
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	998080e7          	jalr	-1640(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    800012f8:	00004517          	auipc	a0,0x4
    800012fc:	dd850513          	addi	a0,a0,-552 # 800050d0 <kvmincrease+0xf80>
    80001300:	00001097          	auipc	ra,0x1
    80001304:	918080e7          	jalr	-1768(ra) # 80001c18 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001308:	00000693          	li	a3,0
    8000130c:	fa1ff06f          	j	800012ac <_Z11workerBodyBv+0x20>
}
    80001310:	01813083          	ld	ra,24(sp)
    80001314:	01013403          	ld	s0,16(sp)
    80001318:	00813483          	ld	s1,8(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001324:	fe010113          	addi	sp,sp,-32
    80001328:	00113c23          	sd	ra,24(sp)
    8000132c:	00813823          	sd	s0,16(sp)
    80001330:	00913423          	sd	s1,8(sp)
    80001334:	01213023          	sd	s2,0(sp)
    80001338:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000133c:	00000493          	li	s1,0
    80001340:	0380006f          	j	80001378 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001344:	00004517          	auipc	a0,0x4
    80001348:	ccc50513          	addi	a0,a0,-820 # 80005010 <kvmincrease+0xec0>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	8cc080e7          	jalr	-1844(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    80001354:	00048513          	mv	a0,s1
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	930080e7          	jalr	-1744(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d7050513          	addi	a0,a0,-656 # 800050d0 <kvmincrease+0xf80>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	8b0080e7          	jalr	-1872(ra) # 80001c18 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001370:	0014849b          	addiw	s1,s1,1
    80001374:	0ff4f493          	andi	s1,s1,255
    80001378:	00200793          	li	a5,2
    8000137c:	fc97f4e3          	bgeu	a5,s1,80001344 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	c9850513          	addi	a0,a0,-872 # 80005018 <kvmincrease+0xec8>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	890080e7          	jalr	-1904(ra) # 80001c18 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001390:	00700313          	li	t1,7
    TCB::yield();
    80001394:	00000097          	auipc	ra,0x0
    80001398:	444080e7          	jalr	1092(ra) # 800017d8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000139c:	00030913          	mv	s2,t1

    printString("C: t1=");
    800013a0:	00004517          	auipc	a0,0x4
    800013a4:	c8850513          	addi	a0,a0,-888 # 80005028 <kvmincrease+0xed8>
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	870080e7          	jalr	-1936(ra) # 80001c18 <_Z11printStringPKc>
    printInteger(t1);
    800013b0:	00090513          	mv	a0,s2
    800013b4:	00001097          	auipc	ra,0x1
    800013b8:	8d4080e7          	jalr	-1836(ra) # 80001c88 <_Z12printIntegerm>
    printString("\n");
    800013bc:	00004517          	auipc	a0,0x4
    800013c0:	d1450513          	addi	a0,a0,-748 # 800050d0 <kvmincrease+0xf80>
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	854080e7          	jalr	-1964(ra) # 80001c18 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800013cc:	00c00513          	li	a0,12
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	db0080e7          	jalr	-592(ra) # 80001180 <_ZL9fibonaccim>
    800013d8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800013dc:	00004517          	auipc	a0,0x4
    800013e0:	c5450513          	addi	a0,a0,-940 # 80005030 <kvmincrease+0xee0>
    800013e4:	00001097          	auipc	ra,0x1
    800013e8:	834080e7          	jalr	-1996(ra) # 80001c18 <_Z11printStringPKc>
    printInteger(result);
    800013ec:	00090513          	mv	a0,s2
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	898080e7          	jalr	-1896(ra) # 80001c88 <_Z12printIntegerm>
    printString("\n");
    800013f8:	00004517          	auipc	a0,0x4
    800013fc:	cd850513          	addi	a0,a0,-808 # 800050d0 <kvmincrease+0xf80>
    80001400:	00001097          	auipc	ra,0x1
    80001404:	818080e7          	jalr	-2024(ra) # 80001c18 <_Z11printStringPKc>
    80001408:	0380006f          	j	80001440 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000140c:	00004517          	auipc	a0,0x4
    80001410:	c0450513          	addi	a0,a0,-1020 # 80005010 <kvmincrease+0xec0>
    80001414:	00001097          	auipc	ra,0x1
    80001418:	804080e7          	jalr	-2044(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    8000141c:	00048513          	mv	a0,s1
    80001420:	00001097          	auipc	ra,0x1
    80001424:	868080e7          	jalr	-1944(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    80001428:	00004517          	auipc	a0,0x4
    8000142c:	ca850513          	addi	a0,a0,-856 # 800050d0 <kvmincrease+0xf80>
    80001430:	00000097          	auipc	ra,0x0
    80001434:	7e8080e7          	jalr	2024(ra) # 80001c18 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001438:	0014849b          	addiw	s1,s1,1
    8000143c:	0ff4f493          	andi	s1,s1,255
    80001440:	00500793          	li	a5,5
    80001444:	fc97f4e3          	bgeu	a5,s1,8000140c <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    80001448:	01813083          	ld	ra,24(sp)
    8000144c:	01013403          	ld	s0,16(sp)
    80001450:	00813483          	ld	s1,8(sp)
    80001454:	00013903          	ld	s2,0(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00113c23          	sd	ra,24(sp)
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	00913423          	sd	s1,8(sp)
    80001470:	01213023          	sd	s2,0(sp)
    80001474:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001478:	00a00493          	li	s1,10
    8000147c:	0380006f          	j	800014b4 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	bc050513          	addi	a0,a0,-1088 # 80005040 <kvmincrease+0xef0>
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	790080e7          	jalr	1936(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    80001490:	00048513          	mv	a0,s1
    80001494:	00000097          	auipc	ra,0x0
    80001498:	7f4080e7          	jalr	2036(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	c3450513          	addi	a0,a0,-972 # 800050d0 <kvmincrease+0xf80>
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	774080e7          	jalr	1908(ra) # 80001c18 <_Z11printStringPKc>
    for (; i < 13; i++)
    800014ac:	0014849b          	addiw	s1,s1,1
    800014b0:	0ff4f493          	andi	s1,s1,255
    800014b4:	00c00793          	li	a5,12
    800014b8:	fc97f4e3          	bgeu	a5,s1,80001480 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	b8c50513          	addi	a0,a0,-1140 # 80005048 <kvmincrease+0xef8>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	754080e7          	jalr	1876(ra) # 80001c18 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800014cc:	00500313          	li	t1,5
    TCB::yield();
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	308080e7          	jalr	776(ra) # 800017d8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800014d8:	01000513          	li	a0,16
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	ca4080e7          	jalr	-860(ra) # 80001180 <_ZL9fibonaccim>
    800014e4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	b7050513          	addi	a0,a0,-1168 # 80005058 <kvmincrease+0xf08>
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	728080e7          	jalr	1832(ra) # 80001c18 <_Z11printStringPKc>
    printInteger(result);
    800014f8:	00090513          	mv	a0,s2
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	78c080e7          	jalr	1932(ra) # 80001c88 <_Z12printIntegerm>
    printString("\n");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	bcc50513          	addi	a0,a0,-1076 # 800050d0 <kvmincrease+0xf80>
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	70c080e7          	jalr	1804(ra) # 80001c18 <_Z11printStringPKc>
    80001514:	0380006f          	j	8000154c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b2850513          	addi	a0,a0,-1240 # 80005040 <kvmincrease+0xef0>
    80001520:	00000097          	auipc	ra,0x0
    80001524:	6f8080e7          	jalr	1784(ra) # 80001c18 <_Z11printStringPKc>
        printInteger(i);
    80001528:	00048513          	mv	a0,s1
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	75c080e7          	jalr	1884(ra) # 80001c88 <_Z12printIntegerm>
        printString("\n");
    80001534:	00004517          	auipc	a0,0x4
    80001538:	b9c50513          	addi	a0,a0,-1124 # 800050d0 <kvmincrease+0xf80>
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	6dc080e7          	jalr	1756(ra) # 80001c18 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001544:	0014849b          	addiw	s1,s1,1
    80001548:	0ff4f493          	andi	s1,s1,255
    8000154c:	00f00793          	li	a5,15
    80001550:	fc97f4e3          	bgeu	a5,s1,80001518 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	00013903          	ld	s2,0(sp)
    80001564:	02010113          	addi	sp,sp,32
    80001568:	00008067          	ret

000000008000156c <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
int main()
{
    8000156c:	fb010113          	addi	sp,sp,-80
    80001570:	04113423          	sd	ra,72(sp)
    80001574:	04813023          	sd	s0,64(sp)
    80001578:	02913c23          	sd	s1,56(sp)
    8000157c:	03213823          	sd	s2,48(sp)
    80001580:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    80001584:	00000613          	li	a2,0
    80001588:	00000593          	li	a1,0
    8000158c:	fb840513          	addi	a0,s0,-72
    80001590:	00000097          	auipc	ra,0x0
    80001594:	b94080e7          	jalr	-1132(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001598:	fb843703          	ld	a4,-72(s0)
    8000159c:	00004797          	auipc	a5,0x4
    800015a0:	22c7b783          	ld	a5,556(a5) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015a4:	00e7b023          	sd	a4,0(a5)
    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    800015a8:	00000613          	li	a2,0
    800015ac:	00004597          	auipc	a1,0x4
    800015b0:	20c5b583          	ld	a1,524(a1) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015b4:	fc040513          	addi	a0,s0,-64
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	b6c080e7          	jalr	-1172(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>

    printString("ThreadA created\n");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	aa850513          	addi	a0,a0,-1368 # 80005068 <kvmincrease+0xf18>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	650080e7          	jalr	1616(ra) # 80001c18 <_Z11printStringPKc>
    thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    800015d0:	00000613          	li	a2,0
    800015d4:	00004597          	auipc	a1,0x4
    800015d8:	1d45b583          	ld	a1,468(a1) # 800057a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015dc:	fc840513          	addi	a0,s0,-56
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	b44080e7          	jalr	-1212(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800015e8:	00004517          	auipc	a0,0x4
    800015ec:	a9850513          	addi	a0,a0,-1384 # 80005080 <kvmincrease+0xf30>
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	628080e7          	jalr	1576(ra) # 80001c18 <_Z11printStringPKc>
    thread_create(&threads[3], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    800015f8:	00000613          	li	a2,0
    800015fc:	00004597          	auipc	a1,0x4
    80001600:	1d45b583          	ld	a1,468(a1) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001604:	fd040513          	addi	a0,s0,-48
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	b1c080e7          	jalr	-1252(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001610:	00004517          	auipc	a0,0x4
    80001614:	a8850513          	addi	a0,a0,-1400 # 80005098 <kvmincrease+0xf48>
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	600080e7          	jalr	1536(ra) # 80001c18 <_Z11printStringPKc>
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    80001620:	00000613          	li	a2,0
    80001624:	00004597          	auipc	a1,0x4
    80001628:	1b45b583          	ld	a1,436(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000162c:	fd840513          	addi	a0,s0,-40
    80001630:	00000097          	auipc	ra,0x0
    80001634:	af4080e7          	jalr	-1292(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	a7850513          	addi	a0,a0,-1416 # 800050b0 <kvmincrease+0xf60>
    80001640:	00000097          	auipc	ra,0x0
    80001644:	5d8080e7          	jalr	1496(ra) # 80001c18 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001648:	00004797          	auipc	a5,0x4
    8000164c:	1587b783          	ld	a5,344(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001650:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001654:	00200793          	li	a5,2
    80001658:	1007a073          	csrs	sstatus,a5
}
    8000165c:	00c0006f          	j	80001668 <main+0xfc>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001660:	00000097          	auipc	ra,0x0
    80001664:	178080e7          	jalr	376(ra) # 800017d8 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001668:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    8000166c:	0307c783          	lbu	a5,48(a5)
    80001670:	fe0788e3          	beqz	a5,80001660 <main+0xf4>
             threads[2]->isFinished() &&
    80001674:	fc843783          	ld	a5,-56(s0)
    80001678:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    8000167c:	fe0782e3          	beqz	a5,80001660 <main+0xf4>
             threads[3]->isFinished() &&
    80001680:	fd043783          	ld	a5,-48(s0)
    80001684:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001688:	fc078ce3          	beqz	a5,80001660 <main+0xf4>
             threads[4]->isFinished()))
    8000168c:	fd843783          	ld	a5,-40(s0)
    80001690:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001694:	fc0786e3          	beqz	a5,80001660 <main+0xf4>
    80001698:	fb840493          	addi	s1,s0,-72
    8000169c:	0140006f          	j	800016b0 <main+0x144>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800016a0:	00090513          	mv	a0,s2
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	264080e7          	jalr	612(ra) # 80001908 <_ZdlPv>
    for (auto &thread: threads)
    800016ac:	00848493          	addi	s1,s1,8
    800016b0:	fe040793          	addi	a5,s0,-32
    800016b4:	02f48063          	beq	s1,a5,800016d4 <main+0x168>
        delete thread;
    800016b8:	0004b903          	ld	s2,0(s1)
    800016bc:	fe0908e3          	beqz	s2,800016ac <main+0x140>
    ~TCB() { delete[] stack; }
    800016c0:	01093503          	ld	a0,16(s2)
    800016c4:	fc050ee3          	beqz	a0,800016a0 <main+0x134>
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	268080e7          	jalr	616(ra) # 80001930 <_ZdaPv>
    800016d0:	fd1ff06f          	j	800016a0 <main+0x134>
    }
    printString("Finished\n");
    800016d4:	00004517          	auipc	a0,0x4
    800016d8:	9f450513          	addi	a0,a0,-1548 # 800050c8 <kvmincrease+0xf78>
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	53c080e7          	jalr	1340(ra) # 80001c18 <_Z11printStringPKc>

    return 0;
}
    800016e4:	00000513          	li	a0,0
    800016e8:	04813083          	ld	ra,72(sp)
    800016ec:	04013403          	ld	s0,64(sp)
    800016f0:	03813483          	ld	s1,56(sp)
    800016f4:	03013903          	ld	s2,48(sp)
    800016f8:	05010113          	addi	sp,sp,80
    800016fc:	00008067          	ret

0000000080001700 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80001700:	fd010113          	addi	sp,sp,-48
    80001704:	02113423          	sd	ra,40(sp)
    80001708:	02813023          	sd	s0,32(sp)
    8000170c:	00913c23          	sd	s1,24(sp)
    80001710:	01213823          	sd	s2,16(sp)
    80001714:	01313423          	sd	s3,8(sp)
    80001718:	03010413          	addi	s0,sp,48
    8000171c:	00050913          	mv	s2,a0
    80001720:	00058993          	mv	s3,a1
    return new TCB(body,arg, TIME_SLICE);
    80001724:	03800513          	li	a0,56
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	190080e7          	jalr	400(ra) # 800018b8 <_Znwm>
    80001730:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001734:	01353023          	sd	s3,0(a0)
    80001738:	01253423          	sd	s2,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000173c:	00090a63          	beqz	s2,80001750 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001740:	00002537          	lui	a0,0x2
    80001744:	00000097          	auipc	ra,0x0
    80001748:	19c080e7          	jalr	412(ra) # 800018e0 <_Znam>
    8000174c:	0080006f          	j	80001754 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001750:	00000513          	li	a0,0
            finished(false)
    80001754:	00a4b823          	sd	a0,16(s1)
    80001758:	00000797          	auipc	a5,0x0
    8000175c:	09c78793          	addi	a5,a5,156 # 800017f4 <_ZN3TCB13threadWrapperEv>
    80001760:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001764:	02050863          	beqz	a0,80001794 <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001768:	000027b7          	lui	a5,0x2
    8000176c:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001770:	02f4b023          	sd	a5,32(s1)
    80001774:	00200793          	li	a5,2
    80001778:	02f4b423          	sd	a5,40(s1)
    8000177c:	02048823          	sb	zero,48(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001780:	02090c63          	beqz	s2,800017b8 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
    80001784:	00048513          	mv	a0,s1
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	3f0080e7          	jalr	1008(ra) # 80001b78 <_ZN9Scheduler3putEP3TCB>
    80001790:	0280006f          	j	800017b8 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001794:	00000793          	li	a5,0
    80001798:	fd9ff06f          	j	80001770 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    8000179c:	00050913          	mv	s2,a0
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	164080e7          	jalr	356(ra) # 80001908 <_ZdlPv>
    800017ac:	00090513          	mv	a0,s2
    800017b0:	00005097          	auipc	ra,0x5
    800017b4:	168080e7          	jalr	360(ra) # 80006918 <_Unwind_Resume>
}
    800017b8:	00048513          	mv	a0,s1
    800017bc:	02813083          	ld	ra,40(sp)
    800017c0:	02013403          	ld	s0,32(sp)
    800017c4:	01813483          	ld	s1,24(sp)
    800017c8:	01013903          	ld	s2,16(sp)
    800017cc:	00813983          	ld	s3,8(sp)
    800017d0:	03010113          	addi	sp,sp,48
    800017d4:	00008067          	ret

00000000800017d8 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00813423          	sd	s0,8(sp)
    800017e0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800017e4:	00000073          	ecall
}
    800017e8:	00813403          	ld	s0,8(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800017f4:	fe010113          	addi	sp,sp,-32
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00813823          	sd	s0,16(sp)
    80001800:	00913423          	sd	s1,8(sp)
    80001804:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	150080e7          	jalr	336(ra) # 80001958 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001810:	00004497          	auipc	s1,0x4
    80001814:	02048493          	addi	s1,s1,32 # 80005830 <_ZN3TCB7runningE>
    80001818:	0004b783          	ld	a5,0(s1)
    8000181c:	0087b703          	ld	a4,8(a5) # 2008 <_entry-0x7fffdff8>
    80001820:	0007b503          	ld	a0,0(a5)
    80001824:	000700e7          	jalr	a4
    running->setFinished(true);
    80001828:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    8000182c:	00100713          	li	a4,1
    80001830:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001834:	00000097          	auipc	ra,0x0
    80001838:	fa4080e7          	jalr	-92(ra) # 800017d8 <_ZN3TCB5yieldEv>
}
    8000183c:	01813083          	ld	ra,24(sp)
    80001840:	01013403          	ld	s0,16(sp)
    80001844:	00813483          	ld	s1,8(sp)
    80001848:	02010113          	addi	sp,sp,32
    8000184c:	00008067          	ret

0000000080001850 <_ZN3TCB8dispatchEv>:
{
    80001850:	fe010113          	addi	sp,sp,-32
    80001854:	00113c23          	sd	ra,24(sp)
    80001858:	00813823          	sd	s0,16(sp)
    8000185c:	00913423          	sd	s1,8(sp)
    80001860:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001864:	00004497          	auipc	s1,0x4
    80001868:	fcc4b483          	ld	s1,-52(s1) # 80005830 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000186c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001870:	02078c63          	beqz	a5,800018a8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	29c080e7          	jalr	668(ra) # 80001b10 <_ZN9Scheduler3getEv>
    8000187c:	00004797          	auipc	a5,0x4
    80001880:	faa7ba23          	sd	a0,-76(a5) # 80005830 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001884:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001888:	01848513          	addi	a0,s1,24
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	884080e7          	jalr	-1916(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	02010113          	addi	sp,sp,32
    800018a4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	2cc080e7          	jalr	716(ra) # 80001b78 <_ZN9Scheduler3putEP3TCB>
    800018b4:	fc1ff06f          	j	80001874 <_ZN3TCB8dispatchEv+0x24>

00000000800018b8 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	610080e7          	jalr	1552(ra) # 80003ed8 <__mem_alloc>
}
    800018d0:	00813083          	ld	ra,8(sp)
    800018d4:	00013403          	ld	s0,0(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_Znam>:

void *operator new[](size_t n)
{
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00113423          	sd	ra,8(sp)
    800018e8:	00813023          	sd	s0,0(sp)
    800018ec:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800018f0:	00002097          	auipc	ra,0x2
    800018f4:	5e8080e7          	jalr	1512(ra) # 80003ed8 <__mem_alloc>
}
    800018f8:	00813083          	ld	ra,8(sp)
    800018fc:	00013403          	ld	s0,0(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00113423          	sd	ra,8(sp)
    80001910:	00813023          	sd	s0,0(sp)
    80001914:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	4f4080e7          	jalr	1268(ra) # 80003e0c <__mem_free>
}
    80001920:	00813083          	ld	ra,8(sp)
    80001924:	00013403          	ld	s0,0(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret

0000000080001930 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00113423          	sd	ra,8(sp)
    80001938:	00813023          	sd	s0,0(sp)
    8000193c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001940:	00002097          	auipc	ra,0x2
    80001944:	4cc080e7          	jalr	1228(ra) # 80003e0c <__mem_free>
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
void Riscv::popSppSpie()
{
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00813423          	sd	s0,8(sp)
    80001960:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001964:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001968:	10200073          	sret
}
    8000196c:	00813403          	ld	s0,8(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001978:	fb010113          	addi	sp,sp,-80
    8000197c:	04113423          	sd	ra,72(sp)
    80001980:	04813023          	sd	s0,64(sp)
    80001984:	02913c23          	sd	s1,56(sp)
    80001988:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000198c:	141027f3          	csrr	a5,sepc
    80001990:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001994:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sepc = r_sepc();
    80001998:	fcf43c23          	sd	a5,-40(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000199c:	100027f3          	csrr	a5,sstatus
    800019a0:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800019a4:	fb843783          	ld	a5,-72(s0)
    uint64 volatile sstatus= r_sstatus();
    800019a8:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800019ac:	142027f3          	csrr	a5,scause
    800019b0:	faf43823          	sd	a5,-80(s0)
    return scause;
    800019b4:	fb043783          	ld	a5,-80(s0)
    uint64 volatile scause = r_scause();
    800019b8:	fcf43423          	sd	a5,-56(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800019bc:	fc843703          	ld	a4,-56(s0)
    800019c0:	00800793          	li	a5,8
    800019c4:	04f70263          	beq	a4,a5,80001a08 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    800019c8:	fc843703          	ld	a4,-56(s0)
    800019cc:	00900793          	li	a5,9
    800019d0:	02f70c63          	beq	a4,a5,80001a08 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);*/
    }
    else if (scause == 0x8000000000000001UL)
    800019d4:	fc843703          	ld	a4,-56(s0)
    800019d8:	fff00793          	li	a5,-1
    800019dc:	03f79793          	slli	a5,a5,0x3f
    800019e0:	00178793          	addi	a5,a5,1
    800019e4:	0af70863          	beq	a4,a5,80001a94 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        {

            thread_dispatch();
        }
    }
    else if (scause == 0x8000000000000009UL)
    800019e8:	fc843703          	ld	a4,-56(s0)
    800019ec:	fff00793          	li	a5,-1
    800019f0:	03f79793          	slli	a5,a5,0x3f
    800019f4:	00978793          	addi	a5,a5,9
    800019f8:	02f71e63          	bne	a4,a5,80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	6a8080e7          	jalr	1704(ra) # 800040a4 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001a04:	0300006f          	j	80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
        sepc= sepc +4;
    80001a08:	fd843783          	ld	a5,-40(s0)
    80001a0c:	00478793          	addi	a5,a5,4
    80001a10:	fcf43c23          	sd	a5,-40(s0)
        __asm__ volatile("mv %0, a0" : "=r" (CODE));
    80001a14:	00050793          	mv	a5,a0
        __asm__ volatile("mv %0, a1" : "=r" (arg1));
    80001a18:	00058493          	mv	s1,a1
        __asm__ volatile("mv %0, a2" : "=r" (arg2));
    80001a1c:	00060513          	mv	a0,a2
        __asm__ volatile("mv %0, a3" : "=r" (arg3));
    80001a20:	00068593          	mv	a1,a3
        if (CODE == SCALL_THREAD_CREATE){
    80001a24:	01100713          	li	a4,17
    80001a28:	02e78063          	beq	a5,a4,80001a48 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
        }else if (CODE == SCALL_THREAD_DISPATCH){
    80001a2c:	01300713          	li	a4,19
    80001a30:	02e78e63          	beq	a5,a4,80001a6c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    80001a34:	04813083          	ld	ra,72(sp)
    80001a38:	04013403          	ld	s0,64(sp)
    80001a3c:	03813483          	ld	s1,56(sp)
    80001a40:	05010113          	addi	sp,sp,80
    80001a44:	00008067          	ret
            if (handle != nullptr){
    80001a48:	00049863          	bnez	s1,80001a58 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                rett=-1;
    80001a4c:	fff00793          	li	a5,-1
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001a50:	04f43823          	sd	a5,80(s0)
    80001a54:	fe1ff06f          	j	80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
                *handle = TCB::createThread(reinterpret_cast<void (*) (void*)>(arg2),(void*)arg3);
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	ca8080e7          	jalr	-856(ra) # 80001700 <_ZN3TCB12createThreadEPFvPvES0_>
    80001a60:	00a4b023          	sd	a0,0(s1)
                rett=0;
    80001a64:	00000793          	li	a5,0
    80001a68:	fe9ff06f          	j	80001a50 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
            TCB::timeSliceCounter=0;
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	d447b783          	ld	a5,-700(a5) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a74:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	dd8080e7          	jalr	-552(ra) # 80001850 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80001a80:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a84:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80001a88:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a8c:	10079073          	csrw	sstatus,a5
}
    80001a90:	fa5ff06f          	j	80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001a94:	00200793          	li	a5,2
    80001a98:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001a9c:	00004717          	auipc	a4,0x4
    80001aa0:	d1473703          	ld	a4,-748(a4) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001aa4:	00073783          	ld	a5,0(a4)
    80001aa8:	00178793          	addi	a5,a5,1
    80001aac:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001ab0:	00004717          	auipc	a4,0x4
    80001ab4:	d1873703          	ld	a4,-744(a4) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ab8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001abc:	02873703          	ld	a4,40(a4)
    80001ac0:	f6e7eae3          	bltu	a5,a4,80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
            thread_dispatch();
    80001ac4:	fffff097          	auipc	ra,0xfffff
    80001ac8:	698080e7          	jalr	1688(ra) # 8000115c <_Z15thread_dispatchv>
    80001acc:	f69ff06f          	j	80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

0000000080001ad0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00813423          	sd	s0,8(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    80001adc:	00100793          	li	a5,1
    80001ae0:	00f50863          	beq	a0,a5,80001af0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ae4:	00813403          	ld	s0,8(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret
    80001af0:	000107b7          	lui	a5,0x10
    80001af4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001af8:	fef596e3          	bne	a1,a5,80001ae4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001afc:	00004797          	auipc	a5,0x4
    80001b00:	d4478793          	addi	a5,a5,-700 # 80005840 <_ZN9Scheduler16readyThreadQueueE>
    80001b04:	0007b023          	sd	zero,0(a5)
    80001b08:	0007b423          	sd	zero,8(a5)
    80001b0c:	fd9ff06f          	j	80001ae4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b10 <_ZN9Scheduler3getEv>:
{
    80001b10:	fe010113          	addi	sp,sp,-32
    80001b14:	00113c23          	sd	ra,24(sp)
    80001b18:	00813823          	sd	s0,16(sp)
    80001b1c:	00913423          	sd	s1,8(sp)
    80001b20:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001b24:	00004517          	auipc	a0,0x4
    80001b28:	d1c53503          	ld	a0,-740(a0) # 80005840 <_ZN9Scheduler16readyThreadQueueE>
    80001b2c:	04050263          	beqz	a0,80001b70 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001b30:	00853783          	ld	a5,8(a0)
    80001b34:	00004717          	auipc	a4,0x4
    80001b38:	d0f73623          	sd	a5,-756(a4) # 80005840 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001b3c:	02078463          	beqz	a5,80001b64 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001b40:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	dc4080e7          	jalr	-572(ra) # 80001908 <_ZdlPv>
}
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret
        if (!head) { tail = 0; }
    80001b64:	00004797          	auipc	a5,0x4
    80001b68:	ce07b223          	sd	zero,-796(a5) # 80005848 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b6c:	fd5ff06f          	j	80001b40 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001b70:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001b74:	fd9ff06f          	j	80001b4c <_ZN9Scheduler3getEv+0x3c>

0000000080001b78 <_ZN9Scheduler3putEP3TCB>:
{
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	00913423          	sd	s1,8(sp)
    80001b88:	02010413          	addi	s0,sp,32
    80001b8c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001b90:	01000513          	li	a0,16
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	d24080e7          	jalr	-732(ra) # 800018b8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001b9c:	00953023          	sd	s1,0(a0)
    80001ba0:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	ca47b783          	ld	a5,-860(a5) # 80005848 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bac:	02078263          	beqz	a5,80001bd0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001bb0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	c8a7ba23          	sd	a0,-876(a5) # 80005848 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bbc:	01813083          	ld	ra,24(sp)
    80001bc0:	01013403          	ld	s0,16(sp)
    80001bc4:	00813483          	ld	s1,8(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret
            head = tail = elem;
    80001bd0:	00004797          	auipc	a5,0x4
    80001bd4:	c7078793          	addi	a5,a5,-912 # 80005840 <_ZN9Scheduler16readyThreadQueueE>
    80001bd8:	00a7b423          	sd	a0,8(a5)
    80001bdc:	00a7b023          	sd	a0,0(a5)
    80001be0:	fddff06f          	j	80001bbc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001be4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    80001bf4:	000105b7          	lui	a1,0x10
    80001bf8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bfc:	00100513          	li	a0,1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	ed0080e7          	jalr	-304(ra) # 80001ad0 <_Z41__static_initialization_and_destruction_0ii>
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001c18:	fd010113          	addi	sp,sp,-48
    80001c1c:	02113423          	sd	ra,40(sp)
    80001c20:	02813023          	sd	s0,32(sp)
    80001c24:	00913c23          	sd	s1,24(sp)
    80001c28:	01213823          	sd	s2,16(sp)
    80001c2c:	03010413          	addi	s0,sp,48
    80001c30:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c34:	100027f3          	csrr	a5,sstatus
    80001c38:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001c3c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c40:	00200793          	li	a5,2
    80001c44:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001c48:	0004c503          	lbu	a0,0(s1)
    80001c4c:	00050a63          	beqz	a0,80001c60 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	3e0080e7          	jalr	992(ra) # 80004030 <__putc>
        string++;
    80001c58:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001c5c:	fedff06f          	j	80001c48 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001c60:	0009091b          	sext.w	s2,s2
    80001c64:	00297913          	andi	s2,s2,2
    80001c68:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c6c:	10092073          	csrs	sstatus,s2
}
    80001c70:	02813083          	ld	ra,40(sp)
    80001c74:	02013403          	ld	s0,32(sp)
    80001c78:	01813483          	ld	s1,24(sp)
    80001c7c:	01013903          	ld	s2,16(sp)
    80001c80:	03010113          	addi	sp,sp,48
    80001c84:	00008067          	ret

0000000080001c88 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001c88:	fc010113          	addi	sp,sp,-64
    80001c8c:	02113c23          	sd	ra,56(sp)
    80001c90:	02813823          	sd	s0,48(sp)
    80001c94:	02913423          	sd	s1,40(sp)
    80001c98:	03213023          	sd	s2,32(sp)
    80001c9c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ca0:	100027f3          	csrr	a5,sstatus
    80001ca4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ca8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cac:	00200793          	li	a5,2
    80001cb0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001cb4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001cb8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001cbc:	00a00613          	li	a2,10
    80001cc0:	02c5773b          	remuw	a4,a0,a2
    80001cc4:	02071693          	slli	a3,a4,0x20
    80001cc8:	0206d693          	srli	a3,a3,0x20
    80001ccc:	00003717          	auipc	a4,0x3
    80001cd0:	40c70713          	addi	a4,a4,1036 # 800050d8 <_ZZ12printIntegermE6digits>
    80001cd4:	00d70733          	add	a4,a4,a3
    80001cd8:	00074703          	lbu	a4,0(a4)
    80001cdc:	fe040693          	addi	a3,s0,-32
    80001ce0:	009687b3          	add	a5,a3,s1
    80001ce4:	0014849b          	addiw	s1,s1,1
    80001ce8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001cec:	0005071b          	sext.w	a4,a0
    80001cf0:	02c5553b          	divuw	a0,a0,a2
    80001cf4:	00900793          	li	a5,9
    80001cf8:	fce7e2e3          	bltu	a5,a4,80001cbc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001cfc:	fff4849b          	addiw	s1,s1,-1
    80001d00:	0004ce63          	bltz	s1,80001d1c <_Z12printIntegerm+0x94>
    80001d04:	fe040793          	addi	a5,s0,-32
    80001d08:	009787b3          	add	a5,a5,s1
    80001d0c:	ff07c503          	lbu	a0,-16(a5)
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	320080e7          	jalr	800(ra) # 80004030 <__putc>
    80001d18:	fe5ff06f          	j	80001cfc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d1c:	0009091b          	sext.w	s2,s2
    80001d20:	00297913          	andi	s2,s2,2
    80001d24:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d28:	10092073          	csrs	sstatus,s2
    80001d2c:	03813083          	ld	ra,56(sp)
    80001d30:	03013403          	ld	s0,48(sp)
    80001d34:	02813483          	ld	s1,40(sp)
    80001d38:	02013903          	ld	s2,32(sp)
    80001d3c:	04010113          	addi	sp,sp,64
    80001d40:	00008067          	ret

0000000080001d44 <start>:
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	300027f3          	csrr	a5,mstatus
    80001d54:	ffffe737          	lui	a4,0xffffe
    80001d58:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d3f>
    80001d5c:	00e7f7b3          	and	a5,a5,a4
    80001d60:	00001737          	lui	a4,0x1
    80001d64:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d68:	00e7e7b3          	or	a5,a5,a4
    80001d6c:	30079073          	csrw	mstatus,a5
    80001d70:	00000797          	auipc	a5,0x0
    80001d74:	16078793          	addi	a5,a5,352 # 80001ed0 <system_main>
    80001d78:	34179073          	csrw	mepc,a5
    80001d7c:	00000793          	li	a5,0
    80001d80:	18079073          	csrw	satp,a5
    80001d84:	000107b7          	lui	a5,0x10
    80001d88:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d8c:	30279073          	csrw	medeleg,a5
    80001d90:	30379073          	csrw	mideleg,a5
    80001d94:	104027f3          	csrr	a5,sie
    80001d98:	2227e793          	ori	a5,a5,546
    80001d9c:	10479073          	csrw	sie,a5
    80001da0:	fff00793          	li	a5,-1
    80001da4:	00a7d793          	srli	a5,a5,0xa
    80001da8:	3b079073          	csrw	pmpaddr0,a5
    80001dac:	00f00793          	li	a5,15
    80001db0:	3a079073          	csrw	pmpcfg0,a5
    80001db4:	f14027f3          	csrr	a5,mhartid
    80001db8:	0200c737          	lui	a4,0x200c
    80001dbc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001dc0:	0007869b          	sext.w	a3,a5
    80001dc4:	00269713          	slli	a4,a3,0x2
    80001dc8:	000f4637          	lui	a2,0xf4
    80001dcc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001dd0:	00d70733          	add	a4,a4,a3
    80001dd4:	0037979b          	slliw	a5,a5,0x3
    80001dd8:	020046b7          	lui	a3,0x2004
    80001ddc:	00d787b3          	add	a5,a5,a3
    80001de0:	00c585b3          	add	a1,a1,a2
    80001de4:	00371693          	slli	a3,a4,0x3
    80001de8:	00004717          	auipc	a4,0x4
    80001dec:	a6870713          	addi	a4,a4,-1432 # 80005850 <timer_scratch>
    80001df0:	00b7b023          	sd	a1,0(a5)
    80001df4:	00d70733          	add	a4,a4,a3
    80001df8:	00f73c23          	sd	a5,24(a4)
    80001dfc:	02c73023          	sd	a2,32(a4)
    80001e00:	34071073          	csrw	mscratch,a4
    80001e04:	00000797          	auipc	a5,0x0
    80001e08:	6ec78793          	addi	a5,a5,1772 # 800024f0 <timervec>
    80001e0c:	30579073          	csrw	mtvec,a5
    80001e10:	300027f3          	csrr	a5,mstatus
    80001e14:	0087e793          	ori	a5,a5,8
    80001e18:	30079073          	csrw	mstatus,a5
    80001e1c:	304027f3          	csrr	a5,mie
    80001e20:	0807e793          	ori	a5,a5,128
    80001e24:	30479073          	csrw	mie,a5
    80001e28:	f14027f3          	csrr	a5,mhartid
    80001e2c:	0007879b          	sext.w	a5,a5
    80001e30:	00078213          	mv	tp,a5
    80001e34:	30200073          	mret
    80001e38:	00813403          	ld	s0,8(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <timerinit>:
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813423          	sd	s0,8(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    80001e50:	f14027f3          	csrr	a5,mhartid
    80001e54:	0200c737          	lui	a4,0x200c
    80001e58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e5c:	0007869b          	sext.w	a3,a5
    80001e60:	00269713          	slli	a4,a3,0x2
    80001e64:	000f4637          	lui	a2,0xf4
    80001e68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e6c:	00d70733          	add	a4,a4,a3
    80001e70:	0037979b          	slliw	a5,a5,0x3
    80001e74:	020046b7          	lui	a3,0x2004
    80001e78:	00d787b3          	add	a5,a5,a3
    80001e7c:	00c585b3          	add	a1,a1,a2
    80001e80:	00371693          	slli	a3,a4,0x3
    80001e84:	00004717          	auipc	a4,0x4
    80001e88:	9cc70713          	addi	a4,a4,-1588 # 80005850 <timer_scratch>
    80001e8c:	00b7b023          	sd	a1,0(a5)
    80001e90:	00d70733          	add	a4,a4,a3
    80001e94:	00f73c23          	sd	a5,24(a4)
    80001e98:	02c73023          	sd	a2,32(a4)
    80001e9c:	34071073          	csrw	mscratch,a4
    80001ea0:	00000797          	auipc	a5,0x0
    80001ea4:	65078793          	addi	a5,a5,1616 # 800024f0 <timervec>
    80001ea8:	30579073          	csrw	mtvec,a5
    80001eac:	300027f3          	csrr	a5,mstatus
    80001eb0:	0087e793          	ori	a5,a5,8
    80001eb4:	30079073          	csrw	mstatus,a5
    80001eb8:	304027f3          	csrr	a5,mie
    80001ebc:	0807e793          	ori	a5,a5,128
    80001ec0:	30479073          	csrw	mie,a5
    80001ec4:	00813403          	ld	s0,8(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <system_main>:
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	0c4080e7          	jalr	196(ra) # 80001fa8 <cpuid>
    80001eec:	00004497          	auipc	s1,0x4
    80001ef0:	91448493          	addi	s1,s1,-1772 # 80005800 <started>
    80001ef4:	02050263          	beqz	a0,80001f18 <system_main+0x48>
    80001ef8:	0004a783          	lw	a5,0(s1)
    80001efc:	0007879b          	sext.w	a5,a5
    80001f00:	fe078ce3          	beqz	a5,80001ef8 <system_main+0x28>
    80001f04:	0ff0000f          	fence
    80001f08:	00003517          	auipc	a0,0x3
    80001f0c:	21050513          	addi	a0,a0,528 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	a7c080e7          	jalr	-1412(ra) # 8000298c <panic>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	9d0080e7          	jalr	-1584(ra) # 800028e8 <consoleinit>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	15c080e7          	jalr	348(ra) # 8000307c <printfinit>
    80001f28:	00003517          	auipc	a0,0x3
    80001f2c:	1a850513          	addi	a0,a0,424 # 800050d0 <kvmincrease+0xf80>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	ab8080e7          	jalr	-1352(ra) # 800029e8 <__printf>
    80001f38:	00003517          	auipc	a0,0x3
    80001f3c:	1b050513          	addi	a0,a0,432 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	aa8080e7          	jalr	-1368(ra) # 800029e8 <__printf>
    80001f48:	00003517          	auipc	a0,0x3
    80001f4c:	18850513          	addi	a0,a0,392 # 800050d0 <kvmincrease+0xf80>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	a98080e7          	jalr	-1384(ra) # 800029e8 <__printf>
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	4b0080e7          	jalr	1200(ra) # 80003408 <kinit>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	148080e7          	jalr	328(ra) # 800020a8 <trapinit>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	16c080e7          	jalr	364(ra) # 800020d4 <trapinithart>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	5c0080e7          	jalr	1472(ra) # 80002530 <plicinit>
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	5e0080e7          	jalr	1504(ra) # 80002558 <plicinithart>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	078080e7          	jalr	120(ra) # 80001ff8 <userinit>
    80001f88:	0ff0000f          	fence
    80001f8c:	00100793          	li	a5,1
    80001f90:	00003517          	auipc	a0,0x3
    80001f94:	17050513          	addi	a0,a0,368 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80001f98:	00f4a023          	sw	a5,0(s1)
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	a4c080e7          	jalr	-1460(ra) # 800029e8 <__printf>
    80001fa4:	0000006f          	j	80001fa4 <system_main+0xd4>

0000000080001fa8 <cpuid>:
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    80001fb4:	00020513          	mv	a0,tp
    80001fb8:	00813403          	ld	s0,8(sp)
    80001fbc:	0005051b          	sext.w	a0,a0
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <mycpu>:
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00813423          	sd	s0,8(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    80001fd4:	00020793          	mv	a5,tp
    80001fd8:	00813403          	ld	s0,8(sp)
    80001fdc:	0007879b          	sext.w	a5,a5
    80001fe0:	00779793          	slli	a5,a5,0x7
    80001fe4:	00005517          	auipc	a0,0x5
    80001fe8:	89c50513          	addi	a0,a0,-1892 # 80006880 <cpus>
    80001fec:	00f50533          	add	a0,a0,a5
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <userinit>:
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	fffff317          	auipc	t1,0xfffff
    80002010:	56030067          	jr	1376(t1) # 8000156c <main>

0000000080002014 <either_copyout>:
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	02051663          	bnez	a0,80002050 <either_copyout+0x3c>
    80002028:	00058513          	mv	a0,a1
    8000202c:	00060593          	mv	a1,a2
    80002030:	0006861b          	sext.w	a2,a3
    80002034:	00002097          	auipc	ra,0x2
    80002038:	c60080e7          	jalr	-928(ra) # 80003c94 <__memmove>
    8000203c:	00813083          	ld	ra,8(sp)
    80002040:	00013403          	ld	s0,0(sp)
    80002044:	00000513          	li	a0,0
    80002048:	01010113          	addi	sp,sp,16
    8000204c:	00008067          	ret
    80002050:	00003517          	auipc	a0,0x3
    80002054:	0f050513          	addi	a0,a0,240 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	934080e7          	jalr	-1740(ra) # 8000298c <panic>

0000000080002060 <either_copyin>:
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	00113423          	sd	ra,8(sp)
    8000206c:	01010413          	addi	s0,sp,16
    80002070:	02059463          	bnez	a1,80002098 <either_copyin+0x38>
    80002074:	00060593          	mv	a1,a2
    80002078:	0006861b          	sext.w	a2,a3
    8000207c:	00002097          	auipc	ra,0x2
    80002080:	c18080e7          	jalr	-1000(ra) # 80003c94 <__memmove>
    80002084:	00813083          	ld	ra,8(sp)
    80002088:	00013403          	ld	s0,0(sp)
    8000208c:	00000513          	li	a0,0
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret
    80002098:	00003517          	auipc	a0,0x3
    8000209c:	0d050513          	addi	a0,a0,208 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	8ec080e7          	jalr	-1812(ra) # 8000298c <panic>

00000000800020a8 <trapinit>:
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00813423          	sd	s0,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	00003597          	auipc	a1,0x3
    800020bc:	0d858593          	addi	a1,a1,216 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    800020c0:	00005517          	auipc	a0,0x5
    800020c4:	84050513          	addi	a0,a0,-1984 # 80006900 <tickslock>
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00001317          	auipc	t1,0x1
    800020d0:	5cc30067          	jr	1484(t1) # 80003698 <initlock>

00000000800020d4 <trapinithart>:
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00000797          	auipc	a5,0x0
    800020e4:	30078793          	addi	a5,a5,768 # 800023e0 <kernelvec>
    800020e8:	10579073          	csrw	stvec,a5
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <usertrap>:
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <usertrapret>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <kerneltrap>:
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00813823          	sd	s0,16(sp)
    80002130:	00113c23          	sd	ra,24(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	02010413          	addi	s0,sp,32
    8000213c:	142025f3          	csrr	a1,scause
    80002140:	100027f3          	csrr	a5,sstatus
    80002144:	0027f793          	andi	a5,a5,2
    80002148:	10079c63          	bnez	a5,80002260 <kerneltrap+0x138>
    8000214c:	142027f3          	csrr	a5,scause
    80002150:	0207ce63          	bltz	a5,8000218c <kerneltrap+0x64>
    80002154:	00003517          	auipc	a0,0x3
    80002158:	08450513          	addi	a0,a0,132 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	88c080e7          	jalr	-1908(ra) # 800029e8 <__printf>
    80002164:	141025f3          	csrr	a1,sepc
    80002168:	14302673          	csrr	a2,stval
    8000216c:	00003517          	auipc	a0,0x3
    80002170:	07c50513          	addi	a0,a0,124 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    80002174:	00001097          	auipc	ra,0x1
    80002178:	874080e7          	jalr	-1932(ra) # 800029e8 <__printf>
    8000217c:	00003517          	auipc	a0,0x3
    80002180:	08450513          	addi	a0,a0,132 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    80002184:	00001097          	auipc	ra,0x1
    80002188:	808080e7          	jalr	-2040(ra) # 8000298c <panic>
    8000218c:	0ff7f713          	andi	a4,a5,255
    80002190:	00900693          	li	a3,9
    80002194:	04d70063          	beq	a4,a3,800021d4 <kerneltrap+0xac>
    80002198:	fff00713          	li	a4,-1
    8000219c:	03f71713          	slli	a4,a4,0x3f
    800021a0:	00170713          	addi	a4,a4,1
    800021a4:	fae798e3          	bne	a5,a4,80002154 <kerneltrap+0x2c>
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	e00080e7          	jalr	-512(ra) # 80001fa8 <cpuid>
    800021b0:	06050663          	beqz	a0,8000221c <kerneltrap+0xf4>
    800021b4:	144027f3          	csrr	a5,sip
    800021b8:	ffd7f793          	andi	a5,a5,-3
    800021bc:	14479073          	csrw	sip,a5
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	3d0080e7          	jalr	976(ra) # 800025a4 <plic_claim>
    800021dc:	00a00793          	li	a5,10
    800021e0:	00050493          	mv	s1,a0
    800021e4:	06f50863          	beq	a0,a5,80002254 <kerneltrap+0x12c>
    800021e8:	fc050ce3          	beqz	a0,800021c0 <kerneltrap+0x98>
    800021ec:	00050593          	mv	a1,a0
    800021f0:	00003517          	auipc	a0,0x3
    800021f4:	fc850513          	addi	a0,a0,-56 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	7f0080e7          	jalr	2032(ra) # 800029e8 <__printf>
    80002200:	01013403          	ld	s0,16(sp)
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	00048513          	mv	a0,s1
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00000317          	auipc	t1,0x0
    80002218:	3c830067          	jr	968(t1) # 800025dc <plic_complete>
    8000221c:	00004517          	auipc	a0,0x4
    80002220:	6e450513          	addi	a0,a0,1764 # 80006900 <tickslock>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	498080e7          	jalr	1176(ra) # 800036bc <acquire>
    8000222c:	00003717          	auipc	a4,0x3
    80002230:	5d870713          	addi	a4,a4,1496 # 80005804 <ticks>
    80002234:	00072783          	lw	a5,0(a4)
    80002238:	00004517          	auipc	a0,0x4
    8000223c:	6c850513          	addi	a0,a0,1736 # 80006900 <tickslock>
    80002240:	0017879b          	addiw	a5,a5,1
    80002244:	00f72023          	sw	a5,0(a4)
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	540080e7          	jalr	1344(ra) # 80003788 <release>
    80002250:	f65ff06f          	j	800021b4 <kerneltrap+0x8c>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	09c080e7          	jalr	156(ra) # 800032f0 <uartintr>
    8000225c:	fa5ff06f          	j	80002200 <kerneltrap+0xd8>
    80002260:	00003517          	auipc	a0,0x3
    80002264:	f3850513          	addi	a0,a0,-200 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	724080e7          	jalr	1828(ra) # 8000298c <panic>

0000000080002270 <clockintr>:
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00813823          	sd	s0,16(sp)
    80002278:	00913423          	sd	s1,8(sp)
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00004497          	auipc	s1,0x4
    80002288:	67c48493          	addi	s1,s1,1660 # 80006900 <tickslock>
    8000228c:	00048513          	mv	a0,s1
    80002290:	00001097          	auipc	ra,0x1
    80002294:	42c080e7          	jalr	1068(ra) # 800036bc <acquire>
    80002298:	00003717          	auipc	a4,0x3
    8000229c:	56c70713          	addi	a4,a4,1388 # 80005804 <ticks>
    800022a0:	00072783          	lw	a5,0(a4)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	00048513          	mv	a0,s1
    800022b0:	0017879b          	addiw	a5,a5,1
    800022b4:	00813483          	ld	s1,8(sp)
    800022b8:	00f72023          	sw	a5,0(a4)
    800022bc:	02010113          	addi	sp,sp,32
    800022c0:	00001317          	auipc	t1,0x1
    800022c4:	4c830067          	jr	1224(t1) # 80003788 <release>

00000000800022c8 <devintr>:
    800022c8:	142027f3          	csrr	a5,scause
    800022cc:	00000513          	li	a0,0
    800022d0:	0007c463          	bltz	a5,800022d8 <devintr+0x10>
    800022d4:	00008067          	ret
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00813823          	sd	s0,16(sp)
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	02010413          	addi	s0,sp,32
    800022ec:	0ff7f713          	andi	a4,a5,255
    800022f0:	00900693          	li	a3,9
    800022f4:	04d70c63          	beq	a4,a3,8000234c <devintr+0x84>
    800022f8:	fff00713          	li	a4,-1
    800022fc:	03f71713          	slli	a4,a4,0x3f
    80002300:	00170713          	addi	a4,a4,1
    80002304:	00e78c63          	beq	a5,a4,8000231c <devintr+0x54>
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	c8c080e7          	jalr	-884(ra) # 80001fa8 <cpuid>
    80002324:	06050663          	beqz	a0,80002390 <devintr+0xc8>
    80002328:	144027f3          	csrr	a5,sip
    8000232c:	ffd7f793          	andi	a5,a5,-3
    80002330:	14479073          	csrw	sip,a5
    80002334:	01813083          	ld	ra,24(sp)
    80002338:	01013403          	ld	s0,16(sp)
    8000233c:	00813483          	ld	s1,8(sp)
    80002340:	00200513          	li	a0,2
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	258080e7          	jalr	600(ra) # 800025a4 <plic_claim>
    80002354:	00a00793          	li	a5,10
    80002358:	00050493          	mv	s1,a0
    8000235c:	06f50663          	beq	a0,a5,800023c8 <devintr+0x100>
    80002360:	00100513          	li	a0,1
    80002364:	fa0482e3          	beqz	s1,80002308 <devintr+0x40>
    80002368:	00048593          	mv	a1,s1
    8000236c:	00003517          	auipc	a0,0x3
    80002370:	e4c50513          	addi	a0,a0,-436 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80002374:	00000097          	auipc	ra,0x0
    80002378:	674080e7          	jalr	1652(ra) # 800029e8 <__printf>
    8000237c:	00048513          	mv	a0,s1
    80002380:	00000097          	auipc	ra,0x0
    80002384:	25c080e7          	jalr	604(ra) # 800025dc <plic_complete>
    80002388:	00100513          	li	a0,1
    8000238c:	f7dff06f          	j	80002308 <devintr+0x40>
    80002390:	00004517          	auipc	a0,0x4
    80002394:	57050513          	addi	a0,a0,1392 # 80006900 <tickslock>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	324080e7          	jalr	804(ra) # 800036bc <acquire>
    800023a0:	00003717          	auipc	a4,0x3
    800023a4:	46470713          	addi	a4,a4,1124 # 80005804 <ticks>
    800023a8:	00072783          	lw	a5,0(a4)
    800023ac:	00004517          	auipc	a0,0x4
    800023b0:	55450513          	addi	a0,a0,1364 # 80006900 <tickslock>
    800023b4:	0017879b          	addiw	a5,a5,1
    800023b8:	00f72023          	sw	a5,0(a4)
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	3cc080e7          	jalr	972(ra) # 80003788 <release>
    800023c4:	f65ff06f          	j	80002328 <devintr+0x60>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	f28080e7          	jalr	-216(ra) # 800032f0 <uartintr>
    800023d0:	fadff06f          	j	8000237c <devintr+0xb4>
	...

00000000800023e0 <kernelvec>:
    800023e0:	f0010113          	addi	sp,sp,-256
    800023e4:	00113023          	sd	ra,0(sp)
    800023e8:	00213423          	sd	sp,8(sp)
    800023ec:	00313823          	sd	gp,16(sp)
    800023f0:	00413c23          	sd	tp,24(sp)
    800023f4:	02513023          	sd	t0,32(sp)
    800023f8:	02613423          	sd	t1,40(sp)
    800023fc:	02713823          	sd	t2,48(sp)
    80002400:	02813c23          	sd	s0,56(sp)
    80002404:	04913023          	sd	s1,64(sp)
    80002408:	04a13423          	sd	a0,72(sp)
    8000240c:	04b13823          	sd	a1,80(sp)
    80002410:	04c13c23          	sd	a2,88(sp)
    80002414:	06d13023          	sd	a3,96(sp)
    80002418:	06e13423          	sd	a4,104(sp)
    8000241c:	06f13823          	sd	a5,112(sp)
    80002420:	07013c23          	sd	a6,120(sp)
    80002424:	09113023          	sd	a7,128(sp)
    80002428:	09213423          	sd	s2,136(sp)
    8000242c:	09313823          	sd	s3,144(sp)
    80002430:	09413c23          	sd	s4,152(sp)
    80002434:	0b513023          	sd	s5,160(sp)
    80002438:	0b613423          	sd	s6,168(sp)
    8000243c:	0b713823          	sd	s7,176(sp)
    80002440:	0b813c23          	sd	s8,184(sp)
    80002444:	0d913023          	sd	s9,192(sp)
    80002448:	0da13423          	sd	s10,200(sp)
    8000244c:	0db13823          	sd	s11,208(sp)
    80002450:	0dc13c23          	sd	t3,216(sp)
    80002454:	0fd13023          	sd	t4,224(sp)
    80002458:	0fe13423          	sd	t5,232(sp)
    8000245c:	0ff13823          	sd	t6,240(sp)
    80002460:	cc9ff0ef          	jal	ra,80002128 <kerneltrap>
    80002464:	00013083          	ld	ra,0(sp)
    80002468:	00813103          	ld	sp,8(sp)
    8000246c:	01013183          	ld	gp,16(sp)
    80002470:	02013283          	ld	t0,32(sp)
    80002474:	02813303          	ld	t1,40(sp)
    80002478:	03013383          	ld	t2,48(sp)
    8000247c:	03813403          	ld	s0,56(sp)
    80002480:	04013483          	ld	s1,64(sp)
    80002484:	04813503          	ld	a0,72(sp)
    80002488:	05013583          	ld	a1,80(sp)
    8000248c:	05813603          	ld	a2,88(sp)
    80002490:	06013683          	ld	a3,96(sp)
    80002494:	06813703          	ld	a4,104(sp)
    80002498:	07013783          	ld	a5,112(sp)
    8000249c:	07813803          	ld	a6,120(sp)
    800024a0:	08013883          	ld	a7,128(sp)
    800024a4:	08813903          	ld	s2,136(sp)
    800024a8:	09013983          	ld	s3,144(sp)
    800024ac:	09813a03          	ld	s4,152(sp)
    800024b0:	0a013a83          	ld	s5,160(sp)
    800024b4:	0a813b03          	ld	s6,168(sp)
    800024b8:	0b013b83          	ld	s7,176(sp)
    800024bc:	0b813c03          	ld	s8,184(sp)
    800024c0:	0c013c83          	ld	s9,192(sp)
    800024c4:	0c813d03          	ld	s10,200(sp)
    800024c8:	0d013d83          	ld	s11,208(sp)
    800024cc:	0d813e03          	ld	t3,216(sp)
    800024d0:	0e013e83          	ld	t4,224(sp)
    800024d4:	0e813f03          	ld	t5,232(sp)
    800024d8:	0f013f83          	ld	t6,240(sp)
    800024dc:	10010113          	addi	sp,sp,256
    800024e0:	10200073          	sret
    800024e4:	00000013          	nop
    800024e8:	00000013          	nop
    800024ec:	00000013          	nop

00000000800024f0 <timervec>:
    800024f0:	34051573          	csrrw	a0,mscratch,a0
    800024f4:	00b53023          	sd	a1,0(a0)
    800024f8:	00c53423          	sd	a2,8(a0)
    800024fc:	00d53823          	sd	a3,16(a0)
    80002500:	01853583          	ld	a1,24(a0)
    80002504:	02053603          	ld	a2,32(a0)
    80002508:	0005b683          	ld	a3,0(a1)
    8000250c:	00c686b3          	add	a3,a3,a2
    80002510:	00d5b023          	sd	a3,0(a1)
    80002514:	00200593          	li	a1,2
    80002518:	14459073          	csrw	sip,a1
    8000251c:	01053683          	ld	a3,16(a0)
    80002520:	00853603          	ld	a2,8(a0)
    80002524:	00053583          	ld	a1,0(a0)
    80002528:	34051573          	csrrw	a0,mscratch,a0
    8000252c:	30200073          	mret

0000000080002530 <plicinit>:
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	0c0007b7          	lui	a5,0xc000
    80002544:	00100713          	li	a4,1
    80002548:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000254c:	00e7a223          	sw	a4,4(a5)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret

0000000080002558 <plicinithart>:
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00813023          	sd	s0,0(sp)
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	a40080e7          	jalr	-1472(ra) # 80001fa8 <cpuid>
    80002570:	0085171b          	slliw	a4,a0,0x8
    80002574:	0c0027b7          	lui	a5,0xc002
    80002578:	00e787b3          	add	a5,a5,a4
    8000257c:	40200713          	li	a4,1026
    80002580:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002584:	00813083          	ld	ra,8(sp)
    80002588:	00013403          	ld	s0,0(sp)
    8000258c:	00d5151b          	slliw	a0,a0,0xd
    80002590:	0c2017b7          	lui	a5,0xc201
    80002594:	00a78533          	add	a0,a5,a0
    80002598:	00052023          	sw	zero,0(a0)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <plic_claim>:
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	9f4080e7          	jalr	-1548(ra) # 80001fa8 <cpuid>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	00d5151b          	slliw	a0,a0,0xd
    800025c8:	0c2017b7          	lui	a5,0xc201
    800025cc:	00a78533          	add	a0,a5,a0
    800025d0:	00452503          	lw	a0,4(a0)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <plic_complete>:
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	02010413          	addi	s0,sp,32
    800025f0:	00050493          	mv	s1,a0
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	9b4080e7          	jalr	-1612(ra) # 80001fa8 <cpuid>
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00d5179b          	slliw	a5,a0,0xd
    80002608:	0c201737          	lui	a4,0xc201
    8000260c:	00f707b3          	add	a5,a4,a5
    80002610:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <consolewrite>:
    80002620:	fb010113          	addi	sp,sp,-80
    80002624:	04813023          	sd	s0,64(sp)
    80002628:	04113423          	sd	ra,72(sp)
    8000262c:	02913c23          	sd	s1,56(sp)
    80002630:	03213823          	sd	s2,48(sp)
    80002634:	03313423          	sd	s3,40(sp)
    80002638:	03413023          	sd	s4,32(sp)
    8000263c:	01513c23          	sd	s5,24(sp)
    80002640:	05010413          	addi	s0,sp,80
    80002644:	06c05c63          	blez	a2,800026bc <consolewrite+0x9c>
    80002648:	00060993          	mv	s3,a2
    8000264c:	00050a13          	mv	s4,a0
    80002650:	00058493          	mv	s1,a1
    80002654:	00000913          	li	s2,0
    80002658:	fff00a93          	li	s5,-1
    8000265c:	01c0006f          	j	80002678 <consolewrite+0x58>
    80002660:	fbf44503          	lbu	a0,-65(s0)
    80002664:	0019091b          	addiw	s2,s2,1
    80002668:	00148493          	addi	s1,s1,1
    8000266c:	00001097          	auipc	ra,0x1
    80002670:	a9c080e7          	jalr	-1380(ra) # 80003108 <uartputc>
    80002674:	03298063          	beq	s3,s2,80002694 <consolewrite+0x74>
    80002678:	00048613          	mv	a2,s1
    8000267c:	00100693          	li	a3,1
    80002680:	000a0593          	mv	a1,s4
    80002684:	fbf40513          	addi	a0,s0,-65
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	9d8080e7          	jalr	-1576(ra) # 80002060 <either_copyin>
    80002690:	fd5518e3          	bne	a0,s5,80002660 <consolewrite+0x40>
    80002694:	04813083          	ld	ra,72(sp)
    80002698:	04013403          	ld	s0,64(sp)
    8000269c:	03813483          	ld	s1,56(sp)
    800026a0:	02813983          	ld	s3,40(sp)
    800026a4:	02013a03          	ld	s4,32(sp)
    800026a8:	01813a83          	ld	s5,24(sp)
    800026ac:	00090513          	mv	a0,s2
    800026b0:	03013903          	ld	s2,48(sp)
    800026b4:	05010113          	addi	sp,sp,80
    800026b8:	00008067          	ret
    800026bc:	00000913          	li	s2,0
    800026c0:	fd5ff06f          	j	80002694 <consolewrite+0x74>

00000000800026c4 <consoleread>:
    800026c4:	f9010113          	addi	sp,sp,-112
    800026c8:	06813023          	sd	s0,96(sp)
    800026cc:	04913c23          	sd	s1,88(sp)
    800026d0:	05213823          	sd	s2,80(sp)
    800026d4:	05313423          	sd	s3,72(sp)
    800026d8:	05413023          	sd	s4,64(sp)
    800026dc:	03513c23          	sd	s5,56(sp)
    800026e0:	03613823          	sd	s6,48(sp)
    800026e4:	03713423          	sd	s7,40(sp)
    800026e8:	03813023          	sd	s8,32(sp)
    800026ec:	06113423          	sd	ra,104(sp)
    800026f0:	01913c23          	sd	s9,24(sp)
    800026f4:	07010413          	addi	s0,sp,112
    800026f8:	00060b93          	mv	s7,a2
    800026fc:	00050913          	mv	s2,a0
    80002700:	00058c13          	mv	s8,a1
    80002704:	00060b1b          	sext.w	s6,a2
    80002708:	00004497          	auipc	s1,0x4
    8000270c:	22048493          	addi	s1,s1,544 # 80006928 <cons>
    80002710:	00400993          	li	s3,4
    80002714:	fff00a13          	li	s4,-1
    80002718:	00a00a93          	li	s5,10
    8000271c:	05705e63          	blez	s7,80002778 <consoleread+0xb4>
    80002720:	09c4a703          	lw	a4,156(s1)
    80002724:	0984a783          	lw	a5,152(s1)
    80002728:	0007071b          	sext.w	a4,a4
    8000272c:	08e78463          	beq	a5,a4,800027b4 <consoleread+0xf0>
    80002730:	07f7f713          	andi	a4,a5,127
    80002734:	00e48733          	add	a4,s1,a4
    80002738:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000273c:	0017869b          	addiw	a3,a5,1
    80002740:	08d4ac23          	sw	a3,152(s1)
    80002744:	00070c9b          	sext.w	s9,a4
    80002748:	0b370663          	beq	a4,s3,800027f4 <consoleread+0x130>
    8000274c:	00100693          	li	a3,1
    80002750:	f9f40613          	addi	a2,s0,-97
    80002754:	000c0593          	mv	a1,s8
    80002758:	00090513          	mv	a0,s2
    8000275c:	f8e40fa3          	sb	a4,-97(s0)
    80002760:	00000097          	auipc	ra,0x0
    80002764:	8b4080e7          	jalr	-1868(ra) # 80002014 <either_copyout>
    80002768:	01450863          	beq	a0,s4,80002778 <consoleread+0xb4>
    8000276c:	001c0c13          	addi	s8,s8,1
    80002770:	fffb8b9b          	addiw	s7,s7,-1
    80002774:	fb5c94e3          	bne	s9,s5,8000271c <consoleread+0x58>
    80002778:	000b851b          	sext.w	a0,s7
    8000277c:	06813083          	ld	ra,104(sp)
    80002780:	06013403          	ld	s0,96(sp)
    80002784:	05813483          	ld	s1,88(sp)
    80002788:	05013903          	ld	s2,80(sp)
    8000278c:	04813983          	ld	s3,72(sp)
    80002790:	04013a03          	ld	s4,64(sp)
    80002794:	03813a83          	ld	s5,56(sp)
    80002798:	02813b83          	ld	s7,40(sp)
    8000279c:	02013c03          	ld	s8,32(sp)
    800027a0:	01813c83          	ld	s9,24(sp)
    800027a4:	40ab053b          	subw	a0,s6,a0
    800027a8:	03013b03          	ld	s6,48(sp)
    800027ac:	07010113          	addi	sp,sp,112
    800027b0:	00008067          	ret
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	1d8080e7          	jalr	472(ra) # 8000398c <push_on>
    800027bc:	0984a703          	lw	a4,152(s1)
    800027c0:	09c4a783          	lw	a5,156(s1)
    800027c4:	0007879b          	sext.w	a5,a5
    800027c8:	fef70ce3          	beq	a4,a5,800027c0 <consoleread+0xfc>
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	234080e7          	jalr	564(ra) # 80003a00 <pop_on>
    800027d4:	0984a783          	lw	a5,152(s1)
    800027d8:	07f7f713          	andi	a4,a5,127
    800027dc:	00e48733          	add	a4,s1,a4
    800027e0:	01874703          	lbu	a4,24(a4)
    800027e4:	0017869b          	addiw	a3,a5,1
    800027e8:	08d4ac23          	sw	a3,152(s1)
    800027ec:	00070c9b          	sext.w	s9,a4
    800027f0:	f5371ee3          	bne	a4,s3,8000274c <consoleread+0x88>
    800027f4:	000b851b          	sext.w	a0,s7
    800027f8:	f96bf2e3          	bgeu	s7,s6,8000277c <consoleread+0xb8>
    800027fc:	08f4ac23          	sw	a5,152(s1)
    80002800:	f7dff06f          	j	8000277c <consoleread+0xb8>

0000000080002804 <consputc>:
    80002804:	10000793          	li	a5,256
    80002808:	00f50663          	beq	a0,a5,80002814 <consputc+0x10>
    8000280c:	00001317          	auipc	t1,0x1
    80002810:	9f430067          	jr	-1548(t1) # 80003200 <uartputc_sync>
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    80002824:	00800513          	li	a0,8
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	9d8080e7          	jalr	-1576(ra) # 80003200 <uartputc_sync>
    80002830:	02000513          	li	a0,32
    80002834:	00001097          	auipc	ra,0x1
    80002838:	9cc080e7          	jalr	-1588(ra) # 80003200 <uartputc_sync>
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00800513          	li	a0,8
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00001317          	auipc	t1,0x1
    80002850:	9b430067          	jr	-1612(t1) # 80003200 <uartputc_sync>

0000000080002854 <consoleintr>:
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00813823          	sd	s0,16(sp)
    8000285c:	00913423          	sd	s1,8(sp)
    80002860:	01213023          	sd	s2,0(sp)
    80002864:	00113c23          	sd	ra,24(sp)
    80002868:	02010413          	addi	s0,sp,32
    8000286c:	00004917          	auipc	s2,0x4
    80002870:	0bc90913          	addi	s2,s2,188 # 80006928 <cons>
    80002874:	00050493          	mv	s1,a0
    80002878:	00090513          	mv	a0,s2
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	e40080e7          	jalr	-448(ra) # 800036bc <acquire>
    80002884:	02048c63          	beqz	s1,800028bc <consoleintr+0x68>
    80002888:	0a092783          	lw	a5,160(s2)
    8000288c:	09892703          	lw	a4,152(s2)
    80002890:	07f00693          	li	a3,127
    80002894:	40e7873b          	subw	a4,a5,a4
    80002898:	02e6e263          	bltu	a3,a4,800028bc <consoleintr+0x68>
    8000289c:	00d00713          	li	a4,13
    800028a0:	04e48063          	beq	s1,a4,800028e0 <consoleintr+0x8c>
    800028a4:	07f7f713          	andi	a4,a5,127
    800028a8:	00e90733          	add	a4,s2,a4
    800028ac:	0017879b          	addiw	a5,a5,1
    800028b0:	0af92023          	sw	a5,160(s2)
    800028b4:	00970c23          	sb	s1,24(a4)
    800028b8:	08f92e23          	sw	a5,156(s2)
    800028bc:	01013403          	ld	s0,16(sp)
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	00013903          	ld	s2,0(sp)
    800028cc:	00004517          	auipc	a0,0x4
    800028d0:	05c50513          	addi	a0,a0,92 # 80006928 <cons>
    800028d4:	02010113          	addi	sp,sp,32
    800028d8:	00001317          	auipc	t1,0x1
    800028dc:	eb030067          	jr	-336(t1) # 80003788 <release>
    800028e0:	00a00493          	li	s1,10
    800028e4:	fc1ff06f          	j	800028a4 <consoleintr+0x50>

00000000800028e8 <consoleinit>:
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	02010413          	addi	s0,sp,32
    800028fc:	00004497          	auipc	s1,0x4
    80002900:	02c48493          	addi	s1,s1,44 # 80006928 <cons>
    80002904:	00048513          	mv	a0,s1
    80002908:	00003597          	auipc	a1,0x3
    8000290c:	90858593          	addi	a1,a1,-1784 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	d88080e7          	jalr	-632(ra) # 80003698 <initlock>
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	7ac080e7          	jalr	1964(ra) # 800030c4 <uartinit>
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00000797          	auipc	a5,0x0
    8000292c:	d9c78793          	addi	a5,a5,-612 # 800026c4 <consoleread>
    80002930:	0af4bc23          	sd	a5,184(s1)
    80002934:	00000797          	auipc	a5,0x0
    80002938:	cec78793          	addi	a5,a5,-788 # 80002620 <consolewrite>
    8000293c:	0cf4b023          	sd	a5,192(s1)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <console_read>:
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	00004317          	auipc	t1,0x4
    80002960:	08433303          	ld	t1,132(t1) # 800069e0 <devsw+0x10>
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00030067          	jr	t1

000000008000296c <console_write>:
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	00004317          	auipc	t1,0x4
    80002980:	06c33303          	ld	t1,108(t1) # 800069e8 <devsw+0x18>
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00030067          	jr	t1

000000008000298c <panic>:
    8000298c:	fe010113          	addi	sp,sp,-32
    80002990:	00113c23          	sd	ra,24(sp)
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00913423          	sd	s1,8(sp)
    8000299c:	02010413          	addi	s0,sp,32
    800029a0:	00050493          	mv	s1,a0
    800029a4:	00003517          	auipc	a0,0x3
    800029a8:	87450513          	addi	a0,a0,-1932 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    800029ac:	00004797          	auipc	a5,0x4
    800029b0:	0c07ae23          	sw	zero,220(a5) # 80006a88 <pr+0x18>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	034080e7          	jalr	52(ra) # 800029e8 <__printf>
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	028080e7          	jalr	40(ra) # 800029e8 <__printf>
    800029c8:	00002517          	auipc	a0,0x2
    800029cc:	70850513          	addi	a0,a0,1800 # 800050d0 <kvmincrease+0xf80>
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	018080e7          	jalr	24(ra) # 800029e8 <__printf>
    800029d8:	00100793          	li	a5,1
    800029dc:	00003717          	auipc	a4,0x3
    800029e0:	e2f72623          	sw	a5,-468(a4) # 80005808 <panicked>
    800029e4:	0000006f          	j	800029e4 <panic+0x58>

00000000800029e8 <__printf>:
    800029e8:	f3010113          	addi	sp,sp,-208
    800029ec:	08813023          	sd	s0,128(sp)
    800029f0:	07313423          	sd	s3,104(sp)
    800029f4:	09010413          	addi	s0,sp,144
    800029f8:	05813023          	sd	s8,64(sp)
    800029fc:	08113423          	sd	ra,136(sp)
    80002a00:	06913c23          	sd	s1,120(sp)
    80002a04:	07213823          	sd	s2,112(sp)
    80002a08:	07413023          	sd	s4,96(sp)
    80002a0c:	05513c23          	sd	s5,88(sp)
    80002a10:	05613823          	sd	s6,80(sp)
    80002a14:	05713423          	sd	s7,72(sp)
    80002a18:	03913c23          	sd	s9,56(sp)
    80002a1c:	03a13823          	sd	s10,48(sp)
    80002a20:	03b13423          	sd	s11,40(sp)
    80002a24:	00004317          	auipc	t1,0x4
    80002a28:	04c30313          	addi	t1,t1,76 # 80006a70 <pr>
    80002a2c:	01832c03          	lw	s8,24(t1)
    80002a30:	00b43423          	sd	a1,8(s0)
    80002a34:	00c43823          	sd	a2,16(s0)
    80002a38:	00d43c23          	sd	a3,24(s0)
    80002a3c:	02e43023          	sd	a4,32(s0)
    80002a40:	02f43423          	sd	a5,40(s0)
    80002a44:	03043823          	sd	a6,48(s0)
    80002a48:	03143c23          	sd	a7,56(s0)
    80002a4c:	00050993          	mv	s3,a0
    80002a50:	4a0c1663          	bnez	s8,80002efc <__printf+0x514>
    80002a54:	60098c63          	beqz	s3,8000306c <__printf+0x684>
    80002a58:	0009c503          	lbu	a0,0(s3)
    80002a5c:	00840793          	addi	a5,s0,8
    80002a60:	f6f43c23          	sd	a5,-136(s0)
    80002a64:	00000493          	li	s1,0
    80002a68:	22050063          	beqz	a0,80002c88 <__printf+0x2a0>
    80002a6c:	00002a37          	lui	s4,0x2
    80002a70:	00018ab7          	lui	s5,0x18
    80002a74:	000f4b37          	lui	s6,0xf4
    80002a78:	00989bb7          	lui	s7,0x989
    80002a7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a8c:	00148c9b          	addiw	s9,s1,1
    80002a90:	02500793          	li	a5,37
    80002a94:	01998933          	add	s2,s3,s9
    80002a98:	38f51263          	bne	a0,a5,80002e1c <__printf+0x434>
    80002a9c:	00094783          	lbu	a5,0(s2)
    80002aa0:	00078c9b          	sext.w	s9,a5
    80002aa4:	1e078263          	beqz	a5,80002c88 <__printf+0x2a0>
    80002aa8:	0024849b          	addiw	s1,s1,2
    80002aac:	07000713          	li	a4,112
    80002ab0:	00998933          	add	s2,s3,s1
    80002ab4:	38e78a63          	beq	a5,a4,80002e48 <__printf+0x460>
    80002ab8:	20f76863          	bltu	a4,a5,80002cc8 <__printf+0x2e0>
    80002abc:	42a78863          	beq	a5,a0,80002eec <__printf+0x504>
    80002ac0:	06400713          	li	a4,100
    80002ac4:	40e79663          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002ac8:	f7843783          	ld	a5,-136(s0)
    80002acc:	0007a603          	lw	a2,0(a5)
    80002ad0:	00878793          	addi	a5,a5,8
    80002ad4:	f6f43c23          	sd	a5,-136(s0)
    80002ad8:	42064a63          	bltz	a2,80002f0c <__printf+0x524>
    80002adc:	00a00713          	li	a4,10
    80002ae0:	02e677bb          	remuw	a5,a2,a4
    80002ae4:	00002d97          	auipc	s11,0x2
    80002ae8:	75cd8d93          	addi	s11,s11,1884 # 80005240 <digits>
    80002aec:	00900593          	li	a1,9
    80002af0:	0006051b          	sext.w	a0,a2
    80002af4:	00000c93          	li	s9,0
    80002af8:	02079793          	slli	a5,a5,0x20
    80002afc:	0207d793          	srli	a5,a5,0x20
    80002b00:	00fd87b3          	add	a5,s11,a5
    80002b04:	0007c783          	lbu	a5,0(a5)
    80002b08:	02e656bb          	divuw	a3,a2,a4
    80002b0c:	f8f40023          	sb	a5,-128(s0)
    80002b10:	14c5d863          	bge	a1,a2,80002c60 <__printf+0x278>
    80002b14:	06300593          	li	a1,99
    80002b18:	00100c93          	li	s9,1
    80002b1c:	02e6f7bb          	remuw	a5,a3,a4
    80002b20:	02079793          	slli	a5,a5,0x20
    80002b24:	0207d793          	srli	a5,a5,0x20
    80002b28:	00fd87b3          	add	a5,s11,a5
    80002b2c:	0007c783          	lbu	a5,0(a5)
    80002b30:	02e6d73b          	divuw	a4,a3,a4
    80002b34:	f8f400a3          	sb	a5,-127(s0)
    80002b38:	12a5f463          	bgeu	a1,a0,80002c60 <__printf+0x278>
    80002b3c:	00a00693          	li	a3,10
    80002b40:	00900593          	li	a1,9
    80002b44:	02d777bb          	remuw	a5,a4,a3
    80002b48:	02079793          	slli	a5,a5,0x20
    80002b4c:	0207d793          	srli	a5,a5,0x20
    80002b50:	00fd87b3          	add	a5,s11,a5
    80002b54:	0007c503          	lbu	a0,0(a5)
    80002b58:	02d757bb          	divuw	a5,a4,a3
    80002b5c:	f8a40123          	sb	a0,-126(s0)
    80002b60:	48e5f263          	bgeu	a1,a4,80002fe4 <__printf+0x5fc>
    80002b64:	06300513          	li	a0,99
    80002b68:	02d7f5bb          	remuw	a1,a5,a3
    80002b6c:	02059593          	slli	a1,a1,0x20
    80002b70:	0205d593          	srli	a1,a1,0x20
    80002b74:	00bd85b3          	add	a1,s11,a1
    80002b78:	0005c583          	lbu	a1,0(a1)
    80002b7c:	02d7d7bb          	divuw	a5,a5,a3
    80002b80:	f8b401a3          	sb	a1,-125(s0)
    80002b84:	48e57263          	bgeu	a0,a4,80003008 <__printf+0x620>
    80002b88:	3e700513          	li	a0,999
    80002b8c:	02d7f5bb          	remuw	a1,a5,a3
    80002b90:	02059593          	slli	a1,a1,0x20
    80002b94:	0205d593          	srli	a1,a1,0x20
    80002b98:	00bd85b3          	add	a1,s11,a1
    80002b9c:	0005c583          	lbu	a1,0(a1)
    80002ba0:	02d7d7bb          	divuw	a5,a5,a3
    80002ba4:	f8b40223          	sb	a1,-124(s0)
    80002ba8:	46e57663          	bgeu	a0,a4,80003014 <__printf+0x62c>
    80002bac:	02d7f5bb          	remuw	a1,a5,a3
    80002bb0:	02059593          	slli	a1,a1,0x20
    80002bb4:	0205d593          	srli	a1,a1,0x20
    80002bb8:	00bd85b3          	add	a1,s11,a1
    80002bbc:	0005c583          	lbu	a1,0(a1)
    80002bc0:	02d7d7bb          	divuw	a5,a5,a3
    80002bc4:	f8b402a3          	sb	a1,-123(s0)
    80002bc8:	46ea7863          	bgeu	s4,a4,80003038 <__printf+0x650>
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40323          	sb	a1,-122(s0)
    80002be8:	3eeaf863          	bgeu	s5,a4,80002fd8 <__printf+0x5f0>
    80002bec:	02d7f5bb          	remuw	a1,a5,a3
    80002bf0:	02059593          	slli	a1,a1,0x20
    80002bf4:	0205d593          	srli	a1,a1,0x20
    80002bf8:	00bd85b3          	add	a1,s11,a1
    80002bfc:	0005c583          	lbu	a1,0(a1)
    80002c00:	02d7d7bb          	divuw	a5,a5,a3
    80002c04:	f8b403a3          	sb	a1,-121(s0)
    80002c08:	42eb7e63          	bgeu	s6,a4,80003044 <__printf+0x65c>
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b40423          	sb	a1,-120(s0)
    80002c28:	42ebfc63          	bgeu	s7,a4,80003060 <__printf+0x678>
    80002c2c:	02079793          	slli	a5,a5,0x20
    80002c30:	0207d793          	srli	a5,a5,0x20
    80002c34:	00fd8db3          	add	s11,s11,a5
    80002c38:	000dc703          	lbu	a4,0(s11)
    80002c3c:	00a00793          	li	a5,10
    80002c40:	00900c93          	li	s9,9
    80002c44:	f8e404a3          	sb	a4,-119(s0)
    80002c48:	00065c63          	bgez	a2,80002c60 <__printf+0x278>
    80002c4c:	f9040713          	addi	a4,s0,-112
    80002c50:	00f70733          	add	a4,a4,a5
    80002c54:	02d00693          	li	a3,45
    80002c58:	fed70823          	sb	a3,-16(a4)
    80002c5c:	00078c93          	mv	s9,a5
    80002c60:	f8040793          	addi	a5,s0,-128
    80002c64:	01978cb3          	add	s9,a5,s9
    80002c68:	f7f40d13          	addi	s10,s0,-129
    80002c6c:	000cc503          	lbu	a0,0(s9)
    80002c70:	fffc8c93          	addi	s9,s9,-1
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	b90080e7          	jalr	-1136(ra) # 80002804 <consputc>
    80002c7c:	ffac98e3          	bne	s9,s10,80002c6c <__printf+0x284>
    80002c80:	00094503          	lbu	a0,0(s2)
    80002c84:	e00514e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002c88:	1a0c1663          	bnez	s8,80002e34 <__printf+0x44c>
    80002c8c:	08813083          	ld	ra,136(sp)
    80002c90:	08013403          	ld	s0,128(sp)
    80002c94:	07813483          	ld	s1,120(sp)
    80002c98:	07013903          	ld	s2,112(sp)
    80002c9c:	06813983          	ld	s3,104(sp)
    80002ca0:	06013a03          	ld	s4,96(sp)
    80002ca4:	05813a83          	ld	s5,88(sp)
    80002ca8:	05013b03          	ld	s6,80(sp)
    80002cac:	04813b83          	ld	s7,72(sp)
    80002cb0:	04013c03          	ld	s8,64(sp)
    80002cb4:	03813c83          	ld	s9,56(sp)
    80002cb8:	03013d03          	ld	s10,48(sp)
    80002cbc:	02813d83          	ld	s11,40(sp)
    80002cc0:	0d010113          	addi	sp,sp,208
    80002cc4:	00008067          	ret
    80002cc8:	07300713          	li	a4,115
    80002ccc:	1ce78a63          	beq	a5,a4,80002ea0 <__printf+0x4b8>
    80002cd0:	07800713          	li	a4,120
    80002cd4:	1ee79e63          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002cd8:	f7843783          	ld	a5,-136(s0)
    80002cdc:	0007a703          	lw	a4,0(a5)
    80002ce0:	00878793          	addi	a5,a5,8
    80002ce4:	f6f43c23          	sd	a5,-136(s0)
    80002ce8:	28074263          	bltz	a4,80002f6c <__printf+0x584>
    80002cec:	00002d97          	auipc	s11,0x2
    80002cf0:	554d8d93          	addi	s11,s11,1364 # 80005240 <digits>
    80002cf4:	00f77793          	andi	a5,a4,15
    80002cf8:	00fd87b3          	add	a5,s11,a5
    80002cfc:	0007c683          	lbu	a3,0(a5)
    80002d00:	00f00613          	li	a2,15
    80002d04:	0007079b          	sext.w	a5,a4
    80002d08:	f8d40023          	sb	a3,-128(s0)
    80002d0c:	0047559b          	srliw	a1,a4,0x4
    80002d10:	0047569b          	srliw	a3,a4,0x4
    80002d14:	00000c93          	li	s9,0
    80002d18:	0ee65063          	bge	a2,a4,80002df8 <__printf+0x410>
    80002d1c:	00f6f693          	andi	a3,a3,15
    80002d20:	00dd86b3          	add	a3,s11,a3
    80002d24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d28:	0087d79b          	srliw	a5,a5,0x8
    80002d2c:	00100c93          	li	s9,1
    80002d30:	f8d400a3          	sb	a3,-127(s0)
    80002d34:	0cb67263          	bgeu	a2,a1,80002df8 <__printf+0x410>
    80002d38:	00f7f693          	andi	a3,a5,15
    80002d3c:	00dd86b3          	add	a3,s11,a3
    80002d40:	0006c583          	lbu	a1,0(a3)
    80002d44:	00f00613          	li	a2,15
    80002d48:	0047d69b          	srliw	a3,a5,0x4
    80002d4c:	f8b40123          	sb	a1,-126(s0)
    80002d50:	0047d593          	srli	a1,a5,0x4
    80002d54:	28f67e63          	bgeu	a2,a5,80002ff0 <__printf+0x608>
    80002d58:	00f6f693          	andi	a3,a3,15
    80002d5c:	00dd86b3          	add	a3,s11,a3
    80002d60:	0006c503          	lbu	a0,0(a3)
    80002d64:	0087d813          	srli	a6,a5,0x8
    80002d68:	0087d69b          	srliw	a3,a5,0x8
    80002d6c:	f8a401a3          	sb	a0,-125(s0)
    80002d70:	28b67663          	bgeu	a2,a1,80002ffc <__printf+0x614>
    80002d74:	00f6f693          	andi	a3,a3,15
    80002d78:	00dd86b3          	add	a3,s11,a3
    80002d7c:	0006c583          	lbu	a1,0(a3)
    80002d80:	00c7d513          	srli	a0,a5,0xc
    80002d84:	00c7d69b          	srliw	a3,a5,0xc
    80002d88:	f8b40223          	sb	a1,-124(s0)
    80002d8c:	29067a63          	bgeu	a2,a6,80003020 <__printf+0x638>
    80002d90:	00f6f693          	andi	a3,a3,15
    80002d94:	00dd86b3          	add	a3,s11,a3
    80002d98:	0006c583          	lbu	a1,0(a3)
    80002d9c:	0107d813          	srli	a6,a5,0x10
    80002da0:	0107d69b          	srliw	a3,a5,0x10
    80002da4:	f8b402a3          	sb	a1,-123(s0)
    80002da8:	28a67263          	bgeu	a2,a0,8000302c <__printf+0x644>
    80002dac:	00f6f693          	andi	a3,a3,15
    80002db0:	00dd86b3          	add	a3,s11,a3
    80002db4:	0006c683          	lbu	a3,0(a3)
    80002db8:	0147d79b          	srliw	a5,a5,0x14
    80002dbc:	f8d40323          	sb	a3,-122(s0)
    80002dc0:	21067663          	bgeu	a2,a6,80002fcc <__printf+0x5e4>
    80002dc4:	02079793          	slli	a5,a5,0x20
    80002dc8:	0207d793          	srli	a5,a5,0x20
    80002dcc:	00fd8db3          	add	s11,s11,a5
    80002dd0:	000dc683          	lbu	a3,0(s11)
    80002dd4:	00800793          	li	a5,8
    80002dd8:	00700c93          	li	s9,7
    80002ddc:	f8d403a3          	sb	a3,-121(s0)
    80002de0:	00075c63          	bgez	a4,80002df8 <__printf+0x410>
    80002de4:	f9040713          	addi	a4,s0,-112
    80002de8:	00f70733          	add	a4,a4,a5
    80002dec:	02d00693          	li	a3,45
    80002df0:	fed70823          	sb	a3,-16(a4)
    80002df4:	00078c93          	mv	s9,a5
    80002df8:	f8040793          	addi	a5,s0,-128
    80002dfc:	01978cb3          	add	s9,a5,s9
    80002e00:	f7f40d13          	addi	s10,s0,-129
    80002e04:	000cc503          	lbu	a0,0(s9)
    80002e08:	fffc8c93          	addi	s9,s9,-1
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9f8080e7          	jalr	-1544(ra) # 80002804 <consputc>
    80002e14:	ff9d18e3          	bne	s10,s9,80002e04 <__printf+0x41c>
    80002e18:	0100006f          	j	80002e28 <__printf+0x440>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	9e8080e7          	jalr	-1560(ra) # 80002804 <consputc>
    80002e24:	000c8493          	mv	s1,s9
    80002e28:	00094503          	lbu	a0,0(s2)
    80002e2c:	c60510e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002e30:	e40c0ee3          	beqz	s8,80002c8c <__printf+0x2a4>
    80002e34:	00004517          	auipc	a0,0x4
    80002e38:	c3c50513          	addi	a0,a0,-964 # 80006a70 <pr>
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	94c080e7          	jalr	-1716(ra) # 80003788 <release>
    80002e44:	e49ff06f          	j	80002c8c <__printf+0x2a4>
    80002e48:	f7843783          	ld	a5,-136(s0)
    80002e4c:	03000513          	li	a0,48
    80002e50:	01000d13          	li	s10,16
    80002e54:	00878713          	addi	a4,a5,8
    80002e58:	0007bc83          	ld	s9,0(a5)
    80002e5c:	f6e43c23          	sd	a4,-136(s0)
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	9a4080e7          	jalr	-1628(ra) # 80002804 <consputc>
    80002e68:	07800513          	li	a0,120
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	998080e7          	jalr	-1640(ra) # 80002804 <consputc>
    80002e74:	00002d97          	auipc	s11,0x2
    80002e78:	3ccd8d93          	addi	s11,s11,972 # 80005240 <digits>
    80002e7c:	03ccd793          	srli	a5,s9,0x3c
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c503          	lbu	a0,0(a5)
    80002e88:	fffd0d1b          	addiw	s10,s10,-1
    80002e8c:	004c9c93          	slli	s9,s9,0x4
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	974080e7          	jalr	-1676(ra) # 80002804 <consputc>
    80002e98:	fe0d12e3          	bnez	s10,80002e7c <__printf+0x494>
    80002e9c:	f8dff06f          	j	80002e28 <__printf+0x440>
    80002ea0:	f7843783          	ld	a5,-136(s0)
    80002ea4:	0007bc83          	ld	s9,0(a5)
    80002ea8:	00878793          	addi	a5,a5,8
    80002eac:	f6f43c23          	sd	a5,-136(s0)
    80002eb0:	000c9a63          	bnez	s9,80002ec4 <__printf+0x4dc>
    80002eb4:	1080006f          	j	80002fbc <__printf+0x5d4>
    80002eb8:	001c8c93          	addi	s9,s9,1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	948080e7          	jalr	-1720(ra) # 80002804 <consputc>
    80002ec4:	000cc503          	lbu	a0,0(s9)
    80002ec8:	fe0518e3          	bnez	a0,80002eb8 <__printf+0x4d0>
    80002ecc:	f5dff06f          	j	80002e28 <__printf+0x440>
    80002ed0:	02500513          	li	a0,37
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	930080e7          	jalr	-1744(ra) # 80002804 <consputc>
    80002edc:	000c8513          	mv	a0,s9
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	924080e7          	jalr	-1756(ra) # 80002804 <consputc>
    80002ee8:	f41ff06f          	j	80002e28 <__printf+0x440>
    80002eec:	02500513          	li	a0,37
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	914080e7          	jalr	-1772(ra) # 80002804 <consputc>
    80002ef8:	f31ff06f          	j	80002e28 <__printf+0x440>
    80002efc:	00030513          	mv	a0,t1
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	7bc080e7          	jalr	1980(ra) # 800036bc <acquire>
    80002f08:	b4dff06f          	j	80002a54 <__printf+0x6c>
    80002f0c:	40c0053b          	negw	a0,a2
    80002f10:	00a00713          	li	a4,10
    80002f14:	02e576bb          	remuw	a3,a0,a4
    80002f18:	00002d97          	auipc	s11,0x2
    80002f1c:	328d8d93          	addi	s11,s11,808 # 80005240 <digits>
    80002f20:	ff700593          	li	a1,-9
    80002f24:	02069693          	slli	a3,a3,0x20
    80002f28:	0206d693          	srli	a3,a3,0x20
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c683          	lbu	a3,0(a3)
    80002f34:	02e557bb          	divuw	a5,a0,a4
    80002f38:	f8d40023          	sb	a3,-128(s0)
    80002f3c:	10b65e63          	bge	a2,a1,80003058 <__printf+0x670>
    80002f40:	06300593          	li	a1,99
    80002f44:	02e7f6bb          	remuw	a3,a5,a4
    80002f48:	02069693          	slli	a3,a3,0x20
    80002f4c:	0206d693          	srli	a3,a3,0x20
    80002f50:	00dd86b3          	add	a3,s11,a3
    80002f54:	0006c683          	lbu	a3,0(a3)
    80002f58:	02e7d73b          	divuw	a4,a5,a4
    80002f5c:	00200793          	li	a5,2
    80002f60:	f8d400a3          	sb	a3,-127(s0)
    80002f64:	bca5ece3          	bltu	a1,a0,80002b3c <__printf+0x154>
    80002f68:	ce5ff06f          	j	80002c4c <__printf+0x264>
    80002f6c:	40e007bb          	negw	a5,a4
    80002f70:	00002d97          	auipc	s11,0x2
    80002f74:	2d0d8d93          	addi	s11,s11,720 # 80005240 <digits>
    80002f78:	00f7f693          	andi	a3,a5,15
    80002f7c:	00dd86b3          	add	a3,s11,a3
    80002f80:	0006c583          	lbu	a1,0(a3)
    80002f84:	ff100613          	li	a2,-15
    80002f88:	0047d69b          	srliw	a3,a5,0x4
    80002f8c:	f8b40023          	sb	a1,-128(s0)
    80002f90:	0047d59b          	srliw	a1,a5,0x4
    80002f94:	0ac75e63          	bge	a4,a2,80003050 <__printf+0x668>
    80002f98:	00f6f693          	andi	a3,a3,15
    80002f9c:	00dd86b3          	add	a3,s11,a3
    80002fa0:	0006c603          	lbu	a2,0(a3)
    80002fa4:	00f00693          	li	a3,15
    80002fa8:	0087d79b          	srliw	a5,a5,0x8
    80002fac:	f8c400a3          	sb	a2,-127(s0)
    80002fb0:	d8b6e4e3          	bltu	a3,a1,80002d38 <__printf+0x350>
    80002fb4:	00200793          	li	a5,2
    80002fb8:	e2dff06f          	j	80002de4 <__printf+0x3fc>
    80002fbc:	00002c97          	auipc	s9,0x2
    80002fc0:	264c8c93          	addi	s9,s9,612 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    80002fc4:	02800513          	li	a0,40
    80002fc8:	ef1ff06f          	j	80002eb8 <__printf+0x4d0>
    80002fcc:	00700793          	li	a5,7
    80002fd0:	00600c93          	li	s9,6
    80002fd4:	e0dff06f          	j	80002de0 <__printf+0x3f8>
    80002fd8:	00700793          	li	a5,7
    80002fdc:	00600c93          	li	s9,6
    80002fe0:	c69ff06f          	j	80002c48 <__printf+0x260>
    80002fe4:	00300793          	li	a5,3
    80002fe8:	00200c93          	li	s9,2
    80002fec:	c5dff06f          	j	80002c48 <__printf+0x260>
    80002ff0:	00300793          	li	a5,3
    80002ff4:	00200c93          	li	s9,2
    80002ff8:	de9ff06f          	j	80002de0 <__printf+0x3f8>
    80002ffc:	00400793          	li	a5,4
    80003000:	00300c93          	li	s9,3
    80003004:	dddff06f          	j	80002de0 <__printf+0x3f8>
    80003008:	00400793          	li	a5,4
    8000300c:	00300c93          	li	s9,3
    80003010:	c39ff06f          	j	80002c48 <__printf+0x260>
    80003014:	00500793          	li	a5,5
    80003018:	00400c93          	li	s9,4
    8000301c:	c2dff06f          	j	80002c48 <__printf+0x260>
    80003020:	00500793          	li	a5,5
    80003024:	00400c93          	li	s9,4
    80003028:	db9ff06f          	j	80002de0 <__printf+0x3f8>
    8000302c:	00600793          	li	a5,6
    80003030:	00500c93          	li	s9,5
    80003034:	dadff06f          	j	80002de0 <__printf+0x3f8>
    80003038:	00600793          	li	a5,6
    8000303c:	00500c93          	li	s9,5
    80003040:	c09ff06f          	j	80002c48 <__printf+0x260>
    80003044:	00800793          	li	a5,8
    80003048:	00700c93          	li	s9,7
    8000304c:	bfdff06f          	j	80002c48 <__printf+0x260>
    80003050:	00100793          	li	a5,1
    80003054:	d91ff06f          	j	80002de4 <__printf+0x3fc>
    80003058:	00100793          	li	a5,1
    8000305c:	bf1ff06f          	j	80002c4c <__printf+0x264>
    80003060:	00900793          	li	a5,9
    80003064:	00800c93          	li	s9,8
    80003068:	be1ff06f          	j	80002c48 <__printf+0x260>
    8000306c:	00002517          	auipc	a0,0x2
    80003070:	1bc50513          	addi	a0,a0,444 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	918080e7          	jalr	-1768(ra) # 8000298c <panic>

000000008000307c <printfinit>:
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00004497          	auipc	s1,0x4
    80003094:	9e048493          	addi	s1,s1,-1568 # 80006a70 <pr>
    80003098:	00048513          	mv	a0,s1
    8000309c:	00002597          	auipc	a1,0x2
    800030a0:	19c58593          	addi	a1,a1,412 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	5f4080e7          	jalr	1524(ra) # 80003698 <initlock>
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	0004ac23          	sw	zero,24(s1)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <uartinit>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813423          	sd	s0,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	100007b7          	lui	a5,0x10000
    800030d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800030d8:	f8000713          	li	a4,-128
    800030dc:	00e781a3          	sb	a4,3(a5)
    800030e0:	00300713          	li	a4,3
    800030e4:	00e78023          	sb	a4,0(a5)
    800030e8:	000780a3          	sb	zero,1(a5)
    800030ec:	00e781a3          	sb	a4,3(a5)
    800030f0:	00700693          	li	a3,7
    800030f4:	00d78123          	sb	a3,2(a5)
    800030f8:	00e780a3          	sb	a4,1(a5)
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <uartputc>:
    80003108:	00002797          	auipc	a5,0x2
    8000310c:	7007a783          	lw	a5,1792(a5) # 80005808 <panicked>
    80003110:	00078463          	beqz	a5,80003118 <uartputc+0x10>
    80003114:	0000006f          	j	80003114 <uartputc+0xc>
    80003118:	fd010113          	addi	sp,sp,-48
    8000311c:	02813023          	sd	s0,32(sp)
    80003120:	00913c23          	sd	s1,24(sp)
    80003124:	01213823          	sd	s2,16(sp)
    80003128:	01313423          	sd	s3,8(sp)
    8000312c:	02113423          	sd	ra,40(sp)
    80003130:	03010413          	addi	s0,sp,48
    80003134:	00002917          	auipc	s2,0x2
    80003138:	6dc90913          	addi	s2,s2,1756 # 80005810 <uart_tx_r>
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	00002497          	auipc	s1,0x2
    80003144:	6d848493          	addi	s1,s1,1752 # 80005818 <uart_tx_w>
    80003148:	0004b703          	ld	a4,0(s1)
    8000314c:	02078693          	addi	a3,a5,32
    80003150:	00050993          	mv	s3,a0
    80003154:	02e69c63          	bne	a3,a4,8000318c <uartputc+0x84>
    80003158:	00001097          	auipc	ra,0x1
    8000315c:	834080e7          	jalr	-1996(ra) # 8000398c <push_on>
    80003160:	00093783          	ld	a5,0(s2)
    80003164:	0004b703          	ld	a4,0(s1)
    80003168:	02078793          	addi	a5,a5,32
    8000316c:	00e79463          	bne	a5,a4,80003174 <uartputc+0x6c>
    80003170:	0000006f          	j	80003170 <uartputc+0x68>
    80003174:	00001097          	auipc	ra,0x1
    80003178:	88c080e7          	jalr	-1908(ra) # 80003a00 <pop_on>
    8000317c:	00093783          	ld	a5,0(s2)
    80003180:	0004b703          	ld	a4,0(s1)
    80003184:	02078693          	addi	a3,a5,32
    80003188:	fce688e3          	beq	a3,a4,80003158 <uartputc+0x50>
    8000318c:	01f77693          	andi	a3,a4,31
    80003190:	00004597          	auipc	a1,0x4
    80003194:	90058593          	addi	a1,a1,-1792 # 80006a90 <uart_tx_buf>
    80003198:	00d586b3          	add	a3,a1,a3
    8000319c:	00170713          	addi	a4,a4,1
    800031a0:	01368023          	sb	s3,0(a3)
    800031a4:	00e4b023          	sd	a4,0(s1)
    800031a8:	10000637          	lui	a2,0x10000
    800031ac:	02f71063          	bne	a4,a5,800031cc <uartputc+0xc4>
    800031b0:	0340006f          	j	800031e4 <uartputc+0xdc>
    800031b4:	00074703          	lbu	a4,0(a4)
    800031b8:	00f93023          	sd	a5,0(s2)
    800031bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031c0:	00093783          	ld	a5,0(s2)
    800031c4:	0004b703          	ld	a4,0(s1)
    800031c8:	00f70e63          	beq	a4,a5,800031e4 <uartputc+0xdc>
    800031cc:	00564683          	lbu	a3,5(a2)
    800031d0:	01f7f713          	andi	a4,a5,31
    800031d4:	00e58733          	add	a4,a1,a4
    800031d8:	0206f693          	andi	a3,a3,32
    800031dc:	00178793          	addi	a5,a5,1
    800031e0:	fc069ae3          	bnez	a3,800031b4 <uartputc+0xac>
    800031e4:	02813083          	ld	ra,40(sp)
    800031e8:	02013403          	ld	s0,32(sp)
    800031ec:	01813483          	ld	s1,24(sp)
    800031f0:	01013903          	ld	s2,16(sp)
    800031f4:	00813983          	ld	s3,8(sp)
    800031f8:	03010113          	addi	sp,sp,48
    800031fc:	00008067          	ret

0000000080003200 <uartputc_sync>:
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00813423          	sd	s0,8(sp)
    80003208:	01010413          	addi	s0,sp,16
    8000320c:	00002717          	auipc	a4,0x2
    80003210:	5fc72703          	lw	a4,1532(a4) # 80005808 <panicked>
    80003214:	02071663          	bnez	a4,80003240 <uartputc_sync+0x40>
    80003218:	00050793          	mv	a5,a0
    8000321c:	100006b7          	lui	a3,0x10000
    80003220:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003224:	02077713          	andi	a4,a4,32
    80003228:	fe070ce3          	beqz	a4,80003220 <uartputc_sync+0x20>
    8000322c:	0ff7f793          	andi	a5,a5,255
    80003230:	00f68023          	sb	a5,0(a3)
    80003234:	00813403          	ld	s0,8(sp)
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00008067          	ret
    80003240:	0000006f          	j	80003240 <uartputc_sync+0x40>

0000000080003244 <uartstart>:
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00813423          	sd	s0,8(sp)
    8000324c:	01010413          	addi	s0,sp,16
    80003250:	00002617          	auipc	a2,0x2
    80003254:	5c060613          	addi	a2,a2,1472 # 80005810 <uart_tx_r>
    80003258:	00002517          	auipc	a0,0x2
    8000325c:	5c050513          	addi	a0,a0,1472 # 80005818 <uart_tx_w>
    80003260:	00063783          	ld	a5,0(a2)
    80003264:	00053703          	ld	a4,0(a0)
    80003268:	04f70263          	beq	a4,a5,800032ac <uartstart+0x68>
    8000326c:	100005b7          	lui	a1,0x10000
    80003270:	00004817          	auipc	a6,0x4
    80003274:	82080813          	addi	a6,a6,-2016 # 80006a90 <uart_tx_buf>
    80003278:	01c0006f          	j	80003294 <uartstart+0x50>
    8000327c:	0006c703          	lbu	a4,0(a3)
    80003280:	00f63023          	sd	a5,0(a2)
    80003284:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003288:	00063783          	ld	a5,0(a2)
    8000328c:	00053703          	ld	a4,0(a0)
    80003290:	00f70e63          	beq	a4,a5,800032ac <uartstart+0x68>
    80003294:	01f7f713          	andi	a4,a5,31
    80003298:	00e806b3          	add	a3,a6,a4
    8000329c:	0055c703          	lbu	a4,5(a1)
    800032a0:	00178793          	addi	a5,a5,1
    800032a4:	02077713          	andi	a4,a4,32
    800032a8:	fc071ae3          	bnez	a4,8000327c <uartstart+0x38>
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <uartgetc>:
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	10000737          	lui	a4,0x10000
    800032c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032cc:	0017f793          	andi	a5,a5,1
    800032d0:	00078c63          	beqz	a5,800032e8 <uartgetc+0x30>
    800032d4:	00074503          	lbu	a0,0(a4)
    800032d8:	0ff57513          	andi	a0,a0,255
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	fff00513          	li	a0,-1
    800032ec:	ff1ff06f          	j	800032dc <uartgetc+0x24>

00000000800032f0 <uartintr>:
    800032f0:	100007b7          	lui	a5,0x10000
    800032f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032f8:	0017f793          	andi	a5,a5,1
    800032fc:	0a078463          	beqz	a5,800033a4 <uartintr+0xb4>
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	02010413          	addi	s0,sp,32
    80003314:	100004b7          	lui	s1,0x10000
    80003318:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000331c:	0ff57513          	andi	a0,a0,255
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	534080e7          	jalr	1332(ra) # 80002854 <consoleintr>
    80003328:	0054c783          	lbu	a5,5(s1)
    8000332c:	0017f793          	andi	a5,a5,1
    80003330:	fe0794e3          	bnez	a5,80003318 <uartintr+0x28>
    80003334:	00002617          	auipc	a2,0x2
    80003338:	4dc60613          	addi	a2,a2,1244 # 80005810 <uart_tx_r>
    8000333c:	00002517          	auipc	a0,0x2
    80003340:	4dc50513          	addi	a0,a0,1244 # 80005818 <uart_tx_w>
    80003344:	00063783          	ld	a5,0(a2)
    80003348:	00053703          	ld	a4,0(a0)
    8000334c:	04f70263          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003350:	100005b7          	lui	a1,0x10000
    80003354:	00003817          	auipc	a6,0x3
    80003358:	73c80813          	addi	a6,a6,1852 # 80006a90 <uart_tx_buf>
    8000335c:	01c0006f          	j	80003378 <uartintr+0x88>
    80003360:	0006c703          	lbu	a4,0(a3)
    80003364:	00f63023          	sd	a5,0(a2)
    80003368:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000336c:	00063783          	ld	a5,0(a2)
    80003370:	00053703          	ld	a4,0(a0)
    80003374:	00f70e63          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003378:	01f7f713          	andi	a4,a5,31
    8000337c:	00e806b3          	add	a3,a6,a4
    80003380:	0055c703          	lbu	a4,5(a1)
    80003384:	00178793          	addi	a5,a5,1
    80003388:	02077713          	andi	a4,a4,32
    8000338c:	fc071ae3          	bnez	a4,80003360 <uartintr+0x70>
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	02010113          	addi	sp,sp,32
    800033a0:	00008067          	ret
    800033a4:	00002617          	auipc	a2,0x2
    800033a8:	46c60613          	addi	a2,a2,1132 # 80005810 <uart_tx_r>
    800033ac:	00002517          	auipc	a0,0x2
    800033b0:	46c50513          	addi	a0,a0,1132 # 80005818 <uart_tx_w>
    800033b4:	00063783          	ld	a5,0(a2)
    800033b8:	00053703          	ld	a4,0(a0)
    800033bc:	04f70263          	beq	a4,a5,80003400 <uartintr+0x110>
    800033c0:	100005b7          	lui	a1,0x10000
    800033c4:	00003817          	auipc	a6,0x3
    800033c8:	6cc80813          	addi	a6,a6,1740 # 80006a90 <uart_tx_buf>
    800033cc:	01c0006f          	j	800033e8 <uartintr+0xf8>
    800033d0:	0006c703          	lbu	a4,0(a3)
    800033d4:	00f63023          	sd	a5,0(a2)
    800033d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033dc:	00063783          	ld	a5,0(a2)
    800033e0:	00053703          	ld	a4,0(a0)
    800033e4:	02f70063          	beq	a4,a5,80003404 <uartintr+0x114>
    800033e8:	01f7f713          	andi	a4,a5,31
    800033ec:	00e806b3          	add	a3,a6,a4
    800033f0:	0055c703          	lbu	a4,5(a1)
    800033f4:	00178793          	addi	a5,a5,1
    800033f8:	02077713          	andi	a4,a4,32
    800033fc:	fc071ae3          	bnez	a4,800033d0 <uartintr+0xe0>
    80003400:	00008067          	ret
    80003404:	00008067          	ret

0000000080003408 <kinit>:
    80003408:	fc010113          	addi	sp,sp,-64
    8000340c:	02913423          	sd	s1,40(sp)
    80003410:	fffff7b7          	lui	a5,0xfffff
    80003414:	00004497          	auipc	s1,0x4
    80003418:	6ab48493          	addi	s1,s1,1707 # 80007abf <end+0xfff>
    8000341c:	02813823          	sd	s0,48(sp)
    80003420:	01313c23          	sd	s3,24(sp)
    80003424:	00f4f4b3          	and	s1,s1,a5
    80003428:	02113c23          	sd	ra,56(sp)
    8000342c:	03213023          	sd	s2,32(sp)
    80003430:	01413823          	sd	s4,16(sp)
    80003434:	01513423          	sd	s5,8(sp)
    80003438:	04010413          	addi	s0,sp,64
    8000343c:	000017b7          	lui	a5,0x1
    80003440:	01100993          	li	s3,17
    80003444:	00f487b3          	add	a5,s1,a5
    80003448:	01b99993          	slli	s3,s3,0x1b
    8000344c:	06f9e063          	bltu	s3,a5,800034ac <kinit+0xa4>
    80003450:	00003a97          	auipc	s5,0x3
    80003454:	670a8a93          	addi	s5,s5,1648 # 80006ac0 <end>
    80003458:	0754ec63          	bltu	s1,s5,800034d0 <kinit+0xc8>
    8000345c:	0734fa63          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003460:	00088a37          	lui	s4,0x88
    80003464:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003468:	00002917          	auipc	s2,0x2
    8000346c:	3b890913          	addi	s2,s2,952 # 80005820 <kmem>
    80003470:	00ca1a13          	slli	s4,s4,0xc
    80003474:	0140006f          	j	80003488 <kinit+0x80>
    80003478:	000017b7          	lui	a5,0x1
    8000347c:	00f484b3          	add	s1,s1,a5
    80003480:	0554e863          	bltu	s1,s5,800034d0 <kinit+0xc8>
    80003484:	0534f663          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003488:	00001637          	lui	a2,0x1
    8000348c:	00100593          	li	a1,1
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	5e4080e7          	jalr	1508(ra) # 80003a78 <__memset>
    8000349c:	00093783          	ld	a5,0(s2)
    800034a0:	00f4b023          	sd	a5,0(s1)
    800034a4:	00993023          	sd	s1,0(s2)
    800034a8:	fd4498e3          	bne	s1,s4,80003478 <kinit+0x70>
    800034ac:	03813083          	ld	ra,56(sp)
    800034b0:	03013403          	ld	s0,48(sp)
    800034b4:	02813483          	ld	s1,40(sp)
    800034b8:	02013903          	ld	s2,32(sp)
    800034bc:	01813983          	ld	s3,24(sp)
    800034c0:	01013a03          	ld	s4,16(sp)
    800034c4:	00813a83          	ld	s5,8(sp)
    800034c8:	04010113          	addi	sp,sp,64
    800034cc:	00008067          	ret
    800034d0:	00002517          	auipc	a0,0x2
    800034d4:	d8850513          	addi	a0,a0,-632 # 80005258 <digits+0x18>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	4b4080e7          	jalr	1204(ra) # 8000298c <panic>

00000000800034e0 <freerange>:
    800034e0:	fc010113          	addi	sp,sp,-64
    800034e4:	000017b7          	lui	a5,0x1
    800034e8:	02913423          	sd	s1,40(sp)
    800034ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034f0:	009504b3          	add	s1,a0,s1
    800034f4:	fffff537          	lui	a0,0xfffff
    800034f8:	02813823          	sd	s0,48(sp)
    800034fc:	02113c23          	sd	ra,56(sp)
    80003500:	03213023          	sd	s2,32(sp)
    80003504:	01313c23          	sd	s3,24(sp)
    80003508:	01413823          	sd	s4,16(sp)
    8000350c:	01513423          	sd	s5,8(sp)
    80003510:	01613023          	sd	s6,0(sp)
    80003514:	04010413          	addi	s0,sp,64
    80003518:	00a4f4b3          	and	s1,s1,a0
    8000351c:	00f487b3          	add	a5,s1,a5
    80003520:	06f5e463          	bltu	a1,a5,80003588 <freerange+0xa8>
    80003524:	00003a97          	auipc	s5,0x3
    80003528:	59ca8a93          	addi	s5,s5,1436 # 80006ac0 <end>
    8000352c:	0954e263          	bltu	s1,s5,800035b0 <freerange+0xd0>
    80003530:	01100993          	li	s3,17
    80003534:	01b99993          	slli	s3,s3,0x1b
    80003538:	0734fc63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    8000353c:	00058a13          	mv	s4,a1
    80003540:	00002917          	auipc	s2,0x2
    80003544:	2e090913          	addi	s2,s2,736 # 80005820 <kmem>
    80003548:	00002b37          	lui	s6,0x2
    8000354c:	0140006f          	j	80003560 <freerange+0x80>
    80003550:	000017b7          	lui	a5,0x1
    80003554:	00f484b3          	add	s1,s1,a5
    80003558:	0554ec63          	bltu	s1,s5,800035b0 <freerange+0xd0>
    8000355c:	0534fa63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    80003560:	00001637          	lui	a2,0x1
    80003564:	00100593          	li	a1,1
    80003568:	00048513          	mv	a0,s1
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	50c080e7          	jalr	1292(ra) # 80003a78 <__memset>
    80003574:	00093703          	ld	a4,0(s2)
    80003578:	016487b3          	add	a5,s1,s6
    8000357c:	00e4b023          	sd	a4,0(s1)
    80003580:	00993023          	sd	s1,0(s2)
    80003584:	fcfa76e3          	bgeu	s4,a5,80003550 <freerange+0x70>
    80003588:	03813083          	ld	ra,56(sp)
    8000358c:	03013403          	ld	s0,48(sp)
    80003590:	02813483          	ld	s1,40(sp)
    80003594:	02013903          	ld	s2,32(sp)
    80003598:	01813983          	ld	s3,24(sp)
    8000359c:	01013a03          	ld	s4,16(sp)
    800035a0:	00813a83          	ld	s5,8(sp)
    800035a4:	00013b03          	ld	s6,0(sp)
    800035a8:	04010113          	addi	sp,sp,64
    800035ac:	00008067          	ret
    800035b0:	00002517          	auipc	a0,0x2
    800035b4:	ca850513          	addi	a0,a0,-856 # 80005258 <digits+0x18>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	3d4080e7          	jalr	980(ra) # 8000298c <panic>

00000000800035c0 <kfree>:
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	02010413          	addi	s0,sp,32
    800035d4:	03451793          	slli	a5,a0,0x34
    800035d8:	04079c63          	bnez	a5,80003630 <kfree+0x70>
    800035dc:	00003797          	auipc	a5,0x3
    800035e0:	4e478793          	addi	a5,a5,1252 # 80006ac0 <end>
    800035e4:	00050493          	mv	s1,a0
    800035e8:	04f56463          	bltu	a0,a5,80003630 <kfree+0x70>
    800035ec:	01100793          	li	a5,17
    800035f0:	01b79793          	slli	a5,a5,0x1b
    800035f4:	02f57e63          	bgeu	a0,a5,80003630 <kfree+0x70>
    800035f8:	00001637          	lui	a2,0x1
    800035fc:	00100593          	li	a1,1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	478080e7          	jalr	1144(ra) # 80003a78 <__memset>
    80003608:	00002797          	auipc	a5,0x2
    8000360c:	21878793          	addi	a5,a5,536 # 80005820 <kmem>
    80003610:	0007b703          	ld	a4,0(a5)
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00e4b023          	sd	a4,0(s1)
    80003620:	0097b023          	sd	s1,0(a5)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret
    80003630:	00002517          	auipc	a0,0x2
    80003634:	c2850513          	addi	a0,a0,-984 # 80005258 <digits+0x18>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	354080e7          	jalr	852(ra) # 8000298c <panic>

0000000080003640 <kalloc>:
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	00002797          	auipc	a5,0x2
    80003658:	1cc78793          	addi	a5,a5,460 # 80005820 <kmem>
    8000365c:	0007b483          	ld	s1,0(a5)
    80003660:	02048063          	beqz	s1,80003680 <kalloc+0x40>
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00001637          	lui	a2,0x1
    8000366c:	00500593          	li	a1,5
    80003670:	00048513          	mv	a0,s1
    80003674:	00e7b023          	sd	a4,0(a5)
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	400080e7          	jalr	1024(ra) # 80003a78 <__memset>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00048513          	mv	a0,s1
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	02010113          	addi	sp,sp,32
    80003694:	00008067          	ret

0000000080003698 <initlock>:
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00813423          	sd	s0,8(sp)
    800036a0:	01010413          	addi	s0,sp,16
    800036a4:	00813403          	ld	s0,8(sp)
    800036a8:	00b53423          	sd	a1,8(a0)
    800036ac:	00052023          	sw	zero,0(a0)
    800036b0:	00053823          	sd	zero,16(a0)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <acquire>:
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	01213023          	sd	s2,0(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    800036d8:	10002973          	csrr	s2,sstatus
    800036dc:	100027f3          	csrr	a5,sstatus
    800036e0:	ffd7f793          	andi	a5,a5,-3
    800036e4:	10079073          	csrw	sstatus,a5
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8e0080e7          	jalr	-1824(ra) # 80001fc8 <mycpu>
    800036f0:	07852783          	lw	a5,120(a0)
    800036f4:	06078e63          	beqz	a5,80003770 <acquire+0xb4>
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	8d0080e7          	jalr	-1840(ra) # 80001fc8 <mycpu>
    80003700:	07852783          	lw	a5,120(a0)
    80003704:	0004a703          	lw	a4,0(s1)
    80003708:	0017879b          	addiw	a5,a5,1
    8000370c:	06f52c23          	sw	a5,120(a0)
    80003710:	04071063          	bnez	a4,80003750 <acquire+0x94>
    80003714:	00100713          	li	a4,1
    80003718:	00070793          	mv	a5,a4
    8000371c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003720:	0007879b          	sext.w	a5,a5
    80003724:	fe079ae3          	bnez	a5,80003718 <acquire+0x5c>
    80003728:	0ff0000f          	fence
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	89c080e7          	jalr	-1892(ra) # 80001fc8 <mycpu>
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00a4b823          	sd	a0,16(s1)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	00813483          	ld	s1,8(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret
    80003750:	0104b903          	ld	s2,16(s1)
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	874080e7          	jalr	-1932(ra) # 80001fc8 <mycpu>
    8000375c:	faa91ce3          	bne	s2,a0,80003714 <acquire+0x58>
    80003760:	00002517          	auipc	a0,0x2
    80003764:	b0050513          	addi	a0,a0,-1280 # 80005260 <digits+0x20>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	224080e7          	jalr	548(ra) # 8000298c <panic>
    80003770:	00195913          	srli	s2,s2,0x1
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	854080e7          	jalr	-1964(ra) # 80001fc8 <mycpu>
    8000377c:	00197913          	andi	s2,s2,1
    80003780:	07252e23          	sw	s2,124(a0)
    80003784:	f75ff06f          	j	800036f8 <acquire+0x3c>

0000000080003788 <release>:
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00113c23          	sd	ra,24(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	01213023          	sd	s2,0(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	00052783          	lw	a5,0(a0)
    800037a4:	00079a63          	bnez	a5,800037b8 <release+0x30>
    800037a8:	00002517          	auipc	a0,0x2
    800037ac:	ac050513          	addi	a0,a0,-1344 # 80005268 <digits+0x28>
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	1dc080e7          	jalr	476(ra) # 8000298c <panic>
    800037b8:	01053903          	ld	s2,16(a0)
    800037bc:	00050493          	mv	s1,a0
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	808080e7          	jalr	-2040(ra) # 80001fc8 <mycpu>
    800037c8:	fea910e3          	bne	s2,a0,800037a8 <release+0x20>
    800037cc:	0004b823          	sd	zero,16(s1)
    800037d0:	0ff0000f          	fence
    800037d4:	0f50000f          	fence	iorw,ow
    800037d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	7ec080e7          	jalr	2028(ra) # 80001fc8 <mycpu>
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	0027f793          	andi	a5,a5,2
    800037ec:	04079a63          	bnez	a5,80003840 <release+0xb8>
    800037f0:	07852783          	lw	a5,120(a0)
    800037f4:	02f05e63          	blez	a5,80003830 <release+0xa8>
    800037f8:	fff7871b          	addiw	a4,a5,-1
    800037fc:	06e52c23          	sw	a4,120(a0)
    80003800:	00071c63          	bnez	a4,80003818 <release+0x90>
    80003804:	07c52783          	lw	a5,124(a0)
    80003808:	00078863          	beqz	a5,80003818 <release+0x90>
    8000380c:	100027f3          	csrr	a5,sstatus
    80003810:	0027e793          	ori	a5,a5,2
    80003814:	10079073          	csrw	sstatus,a5
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	00013903          	ld	s2,0(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    80003830:	00002517          	auipc	a0,0x2
    80003834:	a5850513          	addi	a0,a0,-1448 # 80005288 <digits+0x48>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	154080e7          	jalr	340(ra) # 8000298c <panic>
    80003840:	00002517          	auipc	a0,0x2
    80003844:	a3050513          	addi	a0,a0,-1488 # 80005270 <digits+0x30>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	144080e7          	jalr	324(ra) # 8000298c <panic>

0000000080003850 <holding>:
    80003850:	00052783          	lw	a5,0(a0)
    80003854:	00079663          	bnez	a5,80003860 <holding+0x10>
    80003858:	00000513          	li	a0,0
    8000385c:	00008067          	ret
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	01053483          	ld	s1,16(a0)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	750080e7          	jalr	1872(ra) # 80001fc8 <mycpu>
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	40a48533          	sub	a0,s1,a0
    8000388c:	00153513          	seqz	a0,a0
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret

000000008000389c <push_off>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	100024f3          	csrr	s1,sstatus
    800038b4:	100027f3          	csrr	a5,sstatus
    800038b8:	ffd7f793          	andi	a5,a5,-3
    800038bc:	10079073          	csrw	sstatus,a5
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	708080e7          	jalr	1800(ra) # 80001fc8 <mycpu>
    800038c8:	07852783          	lw	a5,120(a0)
    800038cc:	02078663          	beqz	a5,800038f8 <push_off+0x5c>
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	6f8080e7          	jalr	1784(ra) # 80001fc8 <mycpu>
    800038d8:	07852783          	lw	a5,120(a0)
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	0017879b          	addiw	a5,a5,1
    800038e8:	06f52c23          	sw	a5,120(a0)
    800038ec:	00813483          	ld	s1,8(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret
    800038f8:	0014d493          	srli	s1,s1,0x1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	6cc080e7          	jalr	1740(ra) # 80001fc8 <mycpu>
    80003904:	0014f493          	andi	s1,s1,1
    80003908:	06952e23          	sw	s1,124(a0)
    8000390c:	fc5ff06f          	j	800038d0 <push_off+0x34>

0000000080003910 <pop_off>:
    80003910:	ff010113          	addi	sp,sp,-16
    80003914:	00813023          	sd	s0,0(sp)
    80003918:	00113423          	sd	ra,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	6a8080e7          	jalr	1704(ra) # 80001fc8 <mycpu>
    80003928:	100027f3          	csrr	a5,sstatus
    8000392c:	0027f793          	andi	a5,a5,2
    80003930:	04079663          	bnez	a5,8000397c <pop_off+0x6c>
    80003934:	07852783          	lw	a5,120(a0)
    80003938:	02f05a63          	blez	a5,8000396c <pop_off+0x5c>
    8000393c:	fff7871b          	addiw	a4,a5,-1
    80003940:	06e52c23          	sw	a4,120(a0)
    80003944:	00071c63          	bnez	a4,8000395c <pop_off+0x4c>
    80003948:	07c52783          	lw	a5,124(a0)
    8000394c:	00078863          	beqz	a5,8000395c <pop_off+0x4c>
    80003950:	100027f3          	csrr	a5,sstatus
    80003954:	0027e793          	ori	a5,a5,2
    80003958:	10079073          	csrw	sstatus,a5
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	91c50513          	addi	a0,a0,-1764 # 80005288 <digits+0x48>
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	018080e7          	jalr	24(ra) # 8000298c <panic>
    8000397c:	00002517          	auipc	a0,0x2
    80003980:	8f450513          	addi	a0,a0,-1804 # 80005270 <digits+0x30>
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	008080e7          	jalr	8(ra) # 8000298c <panic>

000000008000398c <push_on>:
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	100024f3          	csrr	s1,sstatus
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	0027e793          	ori	a5,a5,2
    800039ac:	10079073          	csrw	sstatus,a5
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	618080e7          	jalr	1560(ra) # 80001fc8 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	02078663          	beqz	a5,800039e8 <push_on+0x5c>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	608080e7          	jalr	1544(ra) # 80001fc8 <mycpu>
    800039c8:	07852783          	lw	a5,120(a0)
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	0017879b          	addiw	a5,a5,1
    800039d8:	06f52c23          	sw	a5,120(a0)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    800039e8:	0014d493          	srli	s1,s1,0x1
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	5dc080e7          	jalr	1500(ra) # 80001fc8 <mycpu>
    800039f4:	0014f493          	andi	s1,s1,1
    800039f8:	06952e23          	sw	s1,124(a0)
    800039fc:	fc5ff06f          	j	800039c0 <push_on+0x34>

0000000080003a00 <pop_on>:
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	5b8080e7          	jalr	1464(ra) # 80001fc8 <mycpu>
    80003a18:	100027f3          	csrr	a5,sstatus
    80003a1c:	0027f793          	andi	a5,a5,2
    80003a20:	04078463          	beqz	a5,80003a68 <pop_on+0x68>
    80003a24:	07852783          	lw	a5,120(a0)
    80003a28:	02f05863          	blez	a5,80003a58 <pop_on+0x58>
    80003a2c:	fff7879b          	addiw	a5,a5,-1
    80003a30:	06f52c23          	sw	a5,120(a0)
    80003a34:	07853783          	ld	a5,120(a0)
    80003a38:	00079863          	bnez	a5,80003a48 <pop_on+0x48>
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	ffd7f793          	andi	a5,a5,-3
    80003a44:	10079073          	csrw	sstatus,a5
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret
    80003a58:	00002517          	auipc	a0,0x2
    80003a5c:	85850513          	addi	a0,a0,-1960 # 800052b0 <digits+0x70>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	f2c080e7          	jalr	-212(ra) # 8000298c <panic>
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	82850513          	addi	a0,a0,-2008 # 80005290 <digits+0x50>
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	f1c080e7          	jalr	-228(ra) # 8000298c <panic>

0000000080003a78 <__memset>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813423          	sd	s0,8(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	1a060e63          	beqz	a2,80003c40 <__memset+0x1c8>
    80003a88:	40a007b3          	neg	a5,a0
    80003a8c:	0077f793          	andi	a5,a5,7
    80003a90:	00778693          	addi	a3,a5,7
    80003a94:	00b00813          	li	a6,11
    80003a98:	0ff5f593          	andi	a1,a1,255
    80003a9c:	fff6071b          	addiw	a4,a2,-1
    80003aa0:	1b06e663          	bltu	a3,a6,80003c4c <__memset+0x1d4>
    80003aa4:	1cd76463          	bltu	a4,a3,80003c6c <__memset+0x1f4>
    80003aa8:	1a078e63          	beqz	a5,80003c64 <__memset+0x1ec>
    80003aac:	00b50023          	sb	a1,0(a0)
    80003ab0:	00100713          	li	a4,1
    80003ab4:	1ae78463          	beq	a5,a4,80003c5c <__memset+0x1e4>
    80003ab8:	00b500a3          	sb	a1,1(a0)
    80003abc:	00200713          	li	a4,2
    80003ac0:	1ae78a63          	beq	a5,a4,80003c74 <__memset+0x1fc>
    80003ac4:	00b50123          	sb	a1,2(a0)
    80003ac8:	00300713          	li	a4,3
    80003acc:	18e78463          	beq	a5,a4,80003c54 <__memset+0x1dc>
    80003ad0:	00b501a3          	sb	a1,3(a0)
    80003ad4:	00400713          	li	a4,4
    80003ad8:	1ae78263          	beq	a5,a4,80003c7c <__memset+0x204>
    80003adc:	00b50223          	sb	a1,4(a0)
    80003ae0:	00500713          	li	a4,5
    80003ae4:	1ae78063          	beq	a5,a4,80003c84 <__memset+0x20c>
    80003ae8:	00b502a3          	sb	a1,5(a0)
    80003aec:	00700713          	li	a4,7
    80003af0:	18e79e63          	bne	a5,a4,80003c8c <__memset+0x214>
    80003af4:	00b50323          	sb	a1,6(a0)
    80003af8:	00700e93          	li	t4,7
    80003afc:	00859713          	slli	a4,a1,0x8
    80003b00:	00e5e733          	or	a4,a1,a4
    80003b04:	01059e13          	slli	t3,a1,0x10
    80003b08:	01c76e33          	or	t3,a4,t3
    80003b0c:	01859313          	slli	t1,a1,0x18
    80003b10:	006e6333          	or	t1,t3,t1
    80003b14:	02059893          	slli	a7,a1,0x20
    80003b18:	40f60e3b          	subw	t3,a2,a5
    80003b1c:	011368b3          	or	a7,t1,a7
    80003b20:	02859813          	slli	a6,a1,0x28
    80003b24:	0108e833          	or	a6,a7,a6
    80003b28:	03059693          	slli	a3,a1,0x30
    80003b2c:	003e589b          	srliw	a7,t3,0x3
    80003b30:	00d866b3          	or	a3,a6,a3
    80003b34:	03859713          	slli	a4,a1,0x38
    80003b38:	00389813          	slli	a6,a7,0x3
    80003b3c:	00f507b3          	add	a5,a0,a5
    80003b40:	00e6e733          	or	a4,a3,a4
    80003b44:	000e089b          	sext.w	a7,t3
    80003b48:	00f806b3          	add	a3,a6,a5
    80003b4c:	00e7b023          	sd	a4,0(a5)
    80003b50:	00878793          	addi	a5,a5,8
    80003b54:	fed79ce3          	bne	a5,a3,80003b4c <__memset+0xd4>
    80003b58:	ff8e7793          	andi	a5,t3,-8
    80003b5c:	0007871b          	sext.w	a4,a5
    80003b60:	01d787bb          	addw	a5,a5,t4
    80003b64:	0ce88e63          	beq	a7,a4,80003c40 <__memset+0x1c8>
    80003b68:	00f50733          	add	a4,a0,a5
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0017871b          	addiw	a4,a5,1
    80003b74:	0cc77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0027871b          	addiw	a4,a5,2
    80003b84:	0ac77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0037871b          	addiw	a4,a5,3
    80003b94:	0ac77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0047871b          	addiw	a4,a5,4
    80003ba4:	08c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0057871b          	addiw	a4,a5,5
    80003bb4:	08c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0067871b          	addiw	a4,a5,6
    80003bc4:	06c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0077871b          	addiw	a4,a5,7
    80003bd4:	06c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0087871b          	addiw	a4,a5,8
    80003be4:	04c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0097871b          	addiw	a4,a5,9
    80003bf4:	04c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	00a7871b          	addiw	a4,a5,10
    80003c04:	02c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	00b7871b          	addiw	a4,a5,11
    80003c14:	02c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	00c7871b          	addiw	a4,a5,12
    80003c24:	00c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	00d7879b          	addiw	a5,a5,13
    80003c34:	00c7f663          	bgeu	a5,a2,80003c40 <__memset+0x1c8>
    80003c38:	00f507b3          	add	a5,a0,a5
    80003c3c:	00b78023          	sb	a1,0(a5)
    80003c40:	00813403          	ld	s0,8(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00b00693          	li	a3,11
    80003c50:	e55ff06f          	j	80003aa4 <__memset+0x2c>
    80003c54:	00300e93          	li	t4,3
    80003c58:	ea5ff06f          	j	80003afc <__memset+0x84>
    80003c5c:	00100e93          	li	t4,1
    80003c60:	e9dff06f          	j	80003afc <__memset+0x84>
    80003c64:	00000e93          	li	t4,0
    80003c68:	e95ff06f          	j	80003afc <__memset+0x84>
    80003c6c:	00000793          	li	a5,0
    80003c70:	ef9ff06f          	j	80003b68 <__memset+0xf0>
    80003c74:	00200e93          	li	t4,2
    80003c78:	e85ff06f          	j	80003afc <__memset+0x84>
    80003c7c:	00400e93          	li	t4,4
    80003c80:	e7dff06f          	j	80003afc <__memset+0x84>
    80003c84:	00500e93          	li	t4,5
    80003c88:	e75ff06f          	j	80003afc <__memset+0x84>
    80003c8c:	00600e93          	li	t4,6
    80003c90:	e6dff06f          	j	80003afc <__memset+0x84>

0000000080003c94 <__memmove>:
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00813423          	sd	s0,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	0e060863          	beqz	a2,80003d90 <__memmove+0xfc>
    80003ca4:	fff6069b          	addiw	a3,a2,-1
    80003ca8:	0006881b          	sext.w	a6,a3
    80003cac:	0ea5e863          	bltu	a1,a0,80003d9c <__memmove+0x108>
    80003cb0:	00758713          	addi	a4,a1,7
    80003cb4:	00a5e7b3          	or	a5,a1,a0
    80003cb8:	40a70733          	sub	a4,a4,a0
    80003cbc:	0077f793          	andi	a5,a5,7
    80003cc0:	00f73713          	sltiu	a4,a4,15
    80003cc4:	00174713          	xori	a4,a4,1
    80003cc8:	0017b793          	seqz	a5,a5
    80003ccc:	00e7f7b3          	and	a5,a5,a4
    80003cd0:	10078863          	beqz	a5,80003de0 <__memmove+0x14c>
    80003cd4:	00900793          	li	a5,9
    80003cd8:	1107f463          	bgeu	a5,a6,80003de0 <__memmove+0x14c>
    80003cdc:	0036581b          	srliw	a6,a2,0x3
    80003ce0:	fff8081b          	addiw	a6,a6,-1
    80003ce4:	02081813          	slli	a6,a6,0x20
    80003ce8:	01d85893          	srli	a7,a6,0x1d
    80003cec:	00858813          	addi	a6,a1,8
    80003cf0:	00058793          	mv	a5,a1
    80003cf4:	00050713          	mv	a4,a0
    80003cf8:	01088833          	add	a6,a7,a6
    80003cfc:	0007b883          	ld	a7,0(a5)
    80003d00:	00878793          	addi	a5,a5,8
    80003d04:	00870713          	addi	a4,a4,8
    80003d08:	ff173c23          	sd	a7,-8(a4)
    80003d0c:	ff0798e3          	bne	a5,a6,80003cfc <__memmove+0x68>
    80003d10:	ff867713          	andi	a4,a2,-8
    80003d14:	02071793          	slli	a5,a4,0x20
    80003d18:	0207d793          	srli	a5,a5,0x20
    80003d1c:	00f585b3          	add	a1,a1,a5
    80003d20:	40e686bb          	subw	a3,a3,a4
    80003d24:	00f507b3          	add	a5,a0,a5
    80003d28:	06e60463          	beq	a2,a4,80003d90 <__memmove+0xfc>
    80003d2c:	0005c703          	lbu	a4,0(a1)
    80003d30:	00e78023          	sb	a4,0(a5)
    80003d34:	04068e63          	beqz	a3,80003d90 <__memmove+0xfc>
    80003d38:	0015c603          	lbu	a2,1(a1)
    80003d3c:	00100713          	li	a4,1
    80003d40:	00c780a3          	sb	a2,1(a5)
    80003d44:	04e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d48:	0025c603          	lbu	a2,2(a1)
    80003d4c:	00200713          	li	a4,2
    80003d50:	00c78123          	sb	a2,2(a5)
    80003d54:	02e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d58:	0035c603          	lbu	a2,3(a1)
    80003d5c:	00300713          	li	a4,3
    80003d60:	00c781a3          	sb	a2,3(a5)
    80003d64:	02e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d68:	0045c603          	lbu	a2,4(a1)
    80003d6c:	00400713          	li	a4,4
    80003d70:	00c78223          	sb	a2,4(a5)
    80003d74:	00e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d78:	0055c603          	lbu	a2,5(a1)
    80003d7c:	00500713          	li	a4,5
    80003d80:	00c782a3          	sb	a2,5(a5)
    80003d84:	00e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d88:	0065c703          	lbu	a4,6(a1)
    80003d8c:	00e78323          	sb	a4,6(a5)
    80003d90:	00813403          	ld	s0,8(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    80003d9c:	02061713          	slli	a4,a2,0x20
    80003da0:	02075713          	srli	a4,a4,0x20
    80003da4:	00e587b3          	add	a5,a1,a4
    80003da8:	f0f574e3          	bgeu	a0,a5,80003cb0 <__memmove+0x1c>
    80003dac:	02069613          	slli	a2,a3,0x20
    80003db0:	02065613          	srli	a2,a2,0x20
    80003db4:	fff64613          	not	a2,a2
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00c78633          	add	a2,a5,a2
    80003dc0:	fff7c683          	lbu	a3,-1(a5)
    80003dc4:	fff78793          	addi	a5,a5,-1
    80003dc8:	fff70713          	addi	a4,a4,-1
    80003dcc:	00d70023          	sb	a3,0(a4)
    80003dd0:	fec798e3          	bne	a5,a2,80003dc0 <__memmove+0x12c>
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret
    80003de0:	02069713          	slli	a4,a3,0x20
    80003de4:	02075713          	srli	a4,a4,0x20
    80003de8:	00170713          	addi	a4,a4,1
    80003dec:	00e50733          	add	a4,a0,a4
    80003df0:	00050793          	mv	a5,a0
    80003df4:	0005c683          	lbu	a3,0(a1)
    80003df8:	00178793          	addi	a5,a5,1
    80003dfc:	00158593          	addi	a1,a1,1
    80003e00:	fed78fa3          	sb	a3,-1(a5)
    80003e04:	fee798e3          	bne	a5,a4,80003df4 <__memmove+0x160>
    80003e08:	f89ff06f          	j	80003d90 <__memmove+0xfc>

0000000080003e0c <__mem_free>:
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00813423          	sd	s0,8(sp)
    80003e14:	01010413          	addi	s0,sp,16
    80003e18:	00002597          	auipc	a1,0x2
    80003e1c:	a1058593          	addi	a1,a1,-1520 # 80005828 <freep>
    80003e20:	0005b783          	ld	a5,0(a1)
    80003e24:	ff050693          	addi	a3,a0,-16
    80003e28:	0007b703          	ld	a4,0(a5)
    80003e2c:	00d7fc63          	bgeu	a5,a3,80003e44 <__mem_free+0x38>
    80003e30:	00e6ee63          	bltu	a3,a4,80003e4c <__mem_free+0x40>
    80003e34:	00e7fc63          	bgeu	a5,a4,80003e4c <__mem_free+0x40>
    80003e38:	00070793          	mv	a5,a4
    80003e3c:	0007b703          	ld	a4,0(a5)
    80003e40:	fed7e8e3          	bltu	a5,a3,80003e30 <__mem_free+0x24>
    80003e44:	fee7eae3          	bltu	a5,a4,80003e38 <__mem_free+0x2c>
    80003e48:	fee6f8e3          	bgeu	a3,a4,80003e38 <__mem_free+0x2c>
    80003e4c:	ff852803          	lw	a6,-8(a0)
    80003e50:	02081613          	slli	a2,a6,0x20
    80003e54:	01c65613          	srli	a2,a2,0x1c
    80003e58:	00c68633          	add	a2,a3,a2
    80003e5c:	02c70a63          	beq	a4,a2,80003e90 <__mem_free+0x84>
    80003e60:	fee53823          	sd	a4,-16(a0)
    80003e64:	0087a503          	lw	a0,8(a5)
    80003e68:	02051613          	slli	a2,a0,0x20
    80003e6c:	01c65613          	srli	a2,a2,0x1c
    80003e70:	00c78633          	add	a2,a5,a2
    80003e74:	04c68263          	beq	a3,a2,80003eb8 <__mem_free+0xac>
    80003e78:	00813403          	ld	s0,8(sp)
    80003e7c:	00d7b023          	sd	a3,0(a5)
    80003e80:	00f5b023          	sd	a5,0(a1)
    80003e84:	00000513          	li	a0,0
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret
    80003e90:	00872603          	lw	a2,8(a4)
    80003e94:	00073703          	ld	a4,0(a4)
    80003e98:	0106083b          	addw	a6,a2,a6
    80003e9c:	ff052c23          	sw	a6,-8(a0)
    80003ea0:	fee53823          	sd	a4,-16(a0)
    80003ea4:	0087a503          	lw	a0,8(a5)
    80003ea8:	02051613          	slli	a2,a0,0x20
    80003eac:	01c65613          	srli	a2,a2,0x1c
    80003eb0:	00c78633          	add	a2,a5,a2
    80003eb4:	fcc692e3          	bne	a3,a2,80003e78 <__mem_free+0x6c>
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	0105053b          	addw	a0,a0,a6
    80003ec0:	00a7a423          	sw	a0,8(a5)
    80003ec4:	00e7b023          	sd	a4,0(a5)
    80003ec8:	00f5b023          	sd	a5,0(a1)
    80003ecc:	00000513          	li	a0,0
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <__mem_alloc>:
    80003ed8:	fc010113          	addi	sp,sp,-64
    80003edc:	02813823          	sd	s0,48(sp)
    80003ee0:	02913423          	sd	s1,40(sp)
    80003ee4:	03213023          	sd	s2,32(sp)
    80003ee8:	01513423          	sd	s5,8(sp)
    80003eec:	02113c23          	sd	ra,56(sp)
    80003ef0:	01313c23          	sd	s3,24(sp)
    80003ef4:	01413823          	sd	s4,16(sp)
    80003ef8:	01613023          	sd	s6,0(sp)
    80003efc:	04010413          	addi	s0,sp,64
    80003f00:	00002a97          	auipc	s5,0x2
    80003f04:	928a8a93          	addi	s5,s5,-1752 # 80005828 <freep>
    80003f08:	00f50913          	addi	s2,a0,15
    80003f0c:	000ab683          	ld	a3,0(s5)
    80003f10:	00495913          	srli	s2,s2,0x4
    80003f14:	0019049b          	addiw	s1,s2,1
    80003f18:	00048913          	mv	s2,s1
    80003f1c:	0c068c63          	beqz	a3,80003ff4 <__mem_alloc+0x11c>
    80003f20:	0006b503          	ld	a0,0(a3)
    80003f24:	00852703          	lw	a4,8(a0)
    80003f28:	10977063          	bgeu	a4,s1,80004028 <__mem_alloc+0x150>
    80003f2c:	000017b7          	lui	a5,0x1
    80003f30:	0009099b          	sext.w	s3,s2
    80003f34:	0af4e863          	bltu	s1,a5,80003fe4 <__mem_alloc+0x10c>
    80003f38:	02099a13          	slli	s4,s3,0x20
    80003f3c:	01ca5a13          	srli	s4,s4,0x1c
    80003f40:	fff00b13          	li	s6,-1
    80003f44:	0100006f          	j	80003f54 <__mem_alloc+0x7c>
    80003f48:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f4c:	00852703          	lw	a4,8(a0)
    80003f50:	04977463          	bgeu	a4,s1,80003f98 <__mem_alloc+0xc0>
    80003f54:	00050793          	mv	a5,a0
    80003f58:	fea698e3          	bne	a3,a0,80003f48 <__mem_alloc+0x70>
    80003f5c:	000a0513          	mv	a0,s4
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	1f0080e7          	jalr	496(ra) # 80004150 <kvmincrease>
    80003f68:	00050793          	mv	a5,a0
    80003f6c:	01050513          	addi	a0,a0,16
    80003f70:	07678e63          	beq	a5,s6,80003fec <__mem_alloc+0x114>
    80003f74:	0137a423          	sw	s3,8(a5)
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	e94080e7          	jalr	-364(ra) # 80003e0c <__mem_free>
    80003f80:	000ab783          	ld	a5,0(s5)
    80003f84:	06078463          	beqz	a5,80003fec <__mem_alloc+0x114>
    80003f88:	0007b503          	ld	a0,0(a5)
    80003f8c:	00078693          	mv	a3,a5
    80003f90:	00852703          	lw	a4,8(a0)
    80003f94:	fc9760e3          	bltu	a4,s1,80003f54 <__mem_alloc+0x7c>
    80003f98:	08e48263          	beq	s1,a4,8000401c <__mem_alloc+0x144>
    80003f9c:	4127073b          	subw	a4,a4,s2
    80003fa0:	02071693          	slli	a3,a4,0x20
    80003fa4:	01c6d693          	srli	a3,a3,0x1c
    80003fa8:	00e52423          	sw	a4,8(a0)
    80003fac:	00d50533          	add	a0,a0,a3
    80003fb0:	01252423          	sw	s2,8(a0)
    80003fb4:	00fab023          	sd	a5,0(s5)
    80003fb8:	01050513          	addi	a0,a0,16
    80003fbc:	03813083          	ld	ra,56(sp)
    80003fc0:	03013403          	ld	s0,48(sp)
    80003fc4:	02813483          	ld	s1,40(sp)
    80003fc8:	02013903          	ld	s2,32(sp)
    80003fcc:	01813983          	ld	s3,24(sp)
    80003fd0:	01013a03          	ld	s4,16(sp)
    80003fd4:	00813a83          	ld	s5,8(sp)
    80003fd8:	00013b03          	ld	s6,0(sp)
    80003fdc:	04010113          	addi	sp,sp,64
    80003fe0:	00008067          	ret
    80003fe4:	000019b7          	lui	s3,0x1
    80003fe8:	f51ff06f          	j	80003f38 <__mem_alloc+0x60>
    80003fec:	00000513          	li	a0,0
    80003ff0:	fcdff06f          	j	80003fbc <__mem_alloc+0xe4>
    80003ff4:	00003797          	auipc	a5,0x3
    80003ff8:	abc78793          	addi	a5,a5,-1348 # 80006ab0 <base>
    80003ffc:	00078513          	mv	a0,a5
    80004000:	00fab023          	sd	a5,0(s5)
    80004004:	00f7b023          	sd	a5,0(a5)
    80004008:	00000713          	li	a4,0
    8000400c:	00003797          	auipc	a5,0x3
    80004010:	aa07a623          	sw	zero,-1364(a5) # 80006ab8 <base+0x8>
    80004014:	00050693          	mv	a3,a0
    80004018:	f11ff06f          	j	80003f28 <__mem_alloc+0x50>
    8000401c:	00053703          	ld	a4,0(a0)
    80004020:	00e7b023          	sd	a4,0(a5)
    80004024:	f91ff06f          	j	80003fb4 <__mem_alloc+0xdc>
    80004028:	00068793          	mv	a5,a3
    8000402c:	f6dff06f          	j	80003f98 <__mem_alloc+0xc0>

0000000080004030 <__putc>:
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00050793          	mv	a5,a0
    80004044:	fef40593          	addi	a1,s0,-17
    80004048:	00100613          	li	a2,1
    8000404c:	00000513          	li	a0,0
    80004050:	fef407a3          	sb	a5,-17(s0)
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	918080e7          	jalr	-1768(ra) # 8000296c <console_write>
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	02010113          	addi	sp,sp,32
    80004068:	00008067          	ret

000000008000406c <__getc>:
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	02010413          	addi	s0,sp,32
    8000407c:	fe840593          	addi	a1,s0,-24
    80004080:	00100613          	li	a2,1
    80004084:	00000513          	li	a0,0
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	8c4080e7          	jalr	-1852(ra) # 8000294c <console_read>
    80004090:	fe844503          	lbu	a0,-24(s0)
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <console_handler>:
    800040a4:	fe010113          	addi	sp,sp,-32
    800040a8:	00813823          	sd	s0,16(sp)
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	00913423          	sd	s1,8(sp)
    800040b4:	02010413          	addi	s0,sp,32
    800040b8:	14202773          	csrr	a4,scause
    800040bc:	100027f3          	csrr	a5,sstatus
    800040c0:	0027f793          	andi	a5,a5,2
    800040c4:	06079e63          	bnez	a5,80004140 <console_handler+0x9c>
    800040c8:	00074c63          	bltz	a4,800040e0 <console_handler+0x3c>
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	00813483          	ld	s1,8(sp)
    800040d8:	02010113          	addi	sp,sp,32
    800040dc:	00008067          	ret
    800040e0:	0ff77713          	andi	a4,a4,255
    800040e4:	00900793          	li	a5,9
    800040e8:	fef712e3          	bne	a4,a5,800040cc <console_handler+0x28>
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	4b8080e7          	jalr	1208(ra) # 800025a4 <plic_claim>
    800040f4:	00a00793          	li	a5,10
    800040f8:	00050493          	mv	s1,a0
    800040fc:	02f50c63          	beq	a0,a5,80004134 <console_handler+0x90>
    80004100:	fc0506e3          	beqz	a0,800040cc <console_handler+0x28>
    80004104:	00050593          	mv	a1,a0
    80004108:	00001517          	auipc	a0,0x1
    8000410c:	0b050513          	addi	a0,a0,176 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	8d8080e7          	jalr	-1832(ra) # 800029e8 <__printf>
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	00048513          	mv	a0,s1
    80004124:	00813483          	ld	s1,8(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	ffffe317          	auipc	t1,0xffffe
    80004130:	4b030067          	jr	1200(t1) # 800025dc <plic_complete>
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	1bc080e7          	jalr	444(ra) # 800032f0 <uartintr>
    8000413c:	fddff06f          	j	80004118 <console_handler+0x74>
    80004140:	00001517          	auipc	a0,0x1
    80004144:	17850513          	addi	a0,a0,376 # 800052b8 <digits+0x78>
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	844080e7          	jalr	-1980(ra) # 8000298c <panic>

0000000080004150 <kvmincrease>:
    80004150:	fe010113          	addi	sp,sp,-32
    80004154:	01213023          	sd	s2,0(sp)
    80004158:	00001937          	lui	s2,0x1
    8000415c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	01250933          	add	s2,a0,s2
    80004174:	00c95913          	srli	s2,s2,0xc
    80004178:	02090863          	beqz	s2,800041a8 <kvmincrease+0x58>
    8000417c:	00000493          	li	s1,0
    80004180:	00148493          	addi	s1,s1,1
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	4bc080e7          	jalr	1212(ra) # 80003640 <kalloc>
    8000418c:	fe991ae3          	bne	s2,s1,80004180 <kvmincrease+0x30>
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	00813483          	ld	s1,8(sp)
    8000419c:	00013903          	ld	s2,0(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret
    800041a8:	01813083          	ld	ra,24(sp)
    800041ac:	01013403          	ld	s0,16(sp)
    800041b0:	00813483          	ld	s1,8(sp)
    800041b4:	00013903          	ld	s2,0(sp)
    800041b8:	00000513          	li	a0,0
    800041bc:	02010113          	addi	sp,sp,32
    800041c0:	00008067          	ret
	...
