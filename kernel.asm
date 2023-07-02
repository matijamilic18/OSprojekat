
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7e013103          	ld	sp,2016(sp) # 800057e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	55d010ef          	jal	ra,80001d78 <start>

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
#include "../h/print.hpp"


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
    80001248:	dbc50513          	addi	a0,a0,-580 # 80005000 <kvmincrease+0xe80>
    8000124c:	00001097          	auipc	ra,0x1
    80001250:	a58080e7          	jalr	-1448(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001254:	00048513          	mv	a0,s1
    80001258:	00001097          	auipc	ra,0x1
    8000125c:	a90080e7          	jalr	-1392(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    80001260:	00004517          	auipc	a0,0x4
    80001264:	e9050513          	addi	a0,a0,-368 # 800050f0 <kvmincrease+0xf70>
    80001268:	00001097          	auipc	ra,0x1
    8000126c:	a3c080e7          	jalr	-1476(ra) # 80001ca4 <_Z11printStringPKc>
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
    800012e0:	d2c50513          	addi	a0,a0,-724 # 80005008 <kvmincrease+0xe88>
    800012e4:	00001097          	auipc	ra,0x1
    800012e8:	9c0080e7          	jalr	-1600(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    800012ec:	00048513          	mv	a0,s1
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	9f8080e7          	jalr	-1544(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    800012f8:	00004517          	auipc	a0,0x4
    800012fc:	df850513          	addi	a0,a0,-520 # 800050f0 <kvmincrease+0xf70>
    80001300:	00001097          	auipc	ra,0x1
    80001304:	9a4080e7          	jalr	-1628(ra) # 80001ca4 <_Z11printStringPKc>
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
    80001348:	ccc50513          	addi	a0,a0,-820 # 80005010 <kvmincrease+0xe90>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	958080e7          	jalr	-1704(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001354:	00048513          	mv	a0,s1
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	990080e7          	jalr	-1648(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d9050513          	addi	a0,a0,-624 # 800050f0 <kvmincrease+0xf70>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	93c080e7          	jalr	-1732(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001370:	0014849b          	addiw	s1,s1,1
    80001374:	0ff4f493          	andi	s1,s1,255
    80001378:	00200793          	li	a5,2
    8000137c:	fc97f4e3          	bgeu	a5,s1,80001344 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	c9850513          	addi	a0,a0,-872 # 80005018 <kvmincrease+0xe98>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	91c080e7          	jalr	-1764(ra) # 80001ca4 <_Z11printStringPKc>
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
    800013a4:	c8850513          	addi	a0,a0,-888 # 80005028 <kvmincrease+0xea8>
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	8fc080e7          	jalr	-1796(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(t1);
    800013b0:	00090513          	mv	a0,s2
    800013b4:	00001097          	auipc	ra,0x1
    800013b8:	934080e7          	jalr	-1740(ra) # 80001ce8 <_Z12printIntegerm>
    printString("\n");
    800013bc:	00004517          	auipc	a0,0x4
    800013c0:	d3450513          	addi	a0,a0,-716 # 800050f0 <kvmincrease+0xf70>
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	8e0080e7          	jalr	-1824(ra) # 80001ca4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800013cc:	00c00513          	li	a0,12
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	db0080e7          	jalr	-592(ra) # 80001180 <_ZL9fibonaccim>
    800013d8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800013dc:	00004517          	auipc	a0,0x4
    800013e0:	c5450513          	addi	a0,a0,-940 # 80005030 <kvmincrease+0xeb0>
    800013e4:	00001097          	auipc	ra,0x1
    800013e8:	8c0080e7          	jalr	-1856(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(result);
    800013ec:	00090513          	mv	a0,s2
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	8f8080e7          	jalr	-1800(ra) # 80001ce8 <_Z12printIntegerm>
    printString("\n");
    800013f8:	00004517          	auipc	a0,0x4
    800013fc:	cf850513          	addi	a0,a0,-776 # 800050f0 <kvmincrease+0xf70>
    80001400:	00001097          	auipc	ra,0x1
    80001404:	8a4080e7          	jalr	-1884(ra) # 80001ca4 <_Z11printStringPKc>
    80001408:	0380006f          	j	80001440 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000140c:	00004517          	auipc	a0,0x4
    80001410:	c0450513          	addi	a0,a0,-1020 # 80005010 <kvmincrease+0xe90>
    80001414:	00001097          	auipc	ra,0x1
    80001418:	890080e7          	jalr	-1904(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    8000141c:	00048513          	mv	a0,s1
    80001420:	00001097          	auipc	ra,0x1
    80001424:	8c8080e7          	jalr	-1848(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    80001428:	00004517          	auipc	a0,0x4
    8000142c:	cc850513          	addi	a0,a0,-824 # 800050f0 <kvmincrease+0xf70>
    80001430:	00001097          	auipc	ra,0x1
    80001434:	874080e7          	jalr	-1932(ra) # 80001ca4 <_Z11printStringPKc>
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
    80001484:	bc050513          	addi	a0,a0,-1088 # 80005040 <kvmincrease+0xec0>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	81c080e7          	jalr	-2020(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001490:	00048513          	mv	a0,s1
    80001494:	00001097          	auipc	ra,0x1
    80001498:	854080e7          	jalr	-1964(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	c5450513          	addi	a0,a0,-940 # 800050f0 <kvmincrease+0xf70>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	800080e7          	jalr	-2048(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 13; i++)
    800014ac:	0014849b          	addiw	s1,s1,1
    800014b0:	0ff4f493          	andi	s1,s1,255
    800014b4:	00c00793          	li	a5,12
    800014b8:	fc97f4e3          	bgeu	a5,s1,80001480 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	b8c50513          	addi	a0,a0,-1140 # 80005048 <kvmincrease+0xec8>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	7e0080e7          	jalr	2016(ra) # 80001ca4 <_Z11printStringPKc>
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
    800014ec:	b7050513          	addi	a0,a0,-1168 # 80005058 <kvmincrease+0xed8>
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	7b4080e7          	jalr	1972(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(result);
    800014f8:	00090513          	mv	a0,s2
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	7ec080e7          	jalr	2028(ra) # 80001ce8 <_Z12printIntegerm>
    printString("\n");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	bec50513          	addi	a0,a0,-1044 # 800050f0 <kvmincrease+0xf70>
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	798080e7          	jalr	1944(ra) # 80001ca4 <_Z11printStringPKc>
    80001514:	0380006f          	j	8000154c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b2850513          	addi	a0,a0,-1240 # 80005040 <kvmincrease+0xec0>
    80001520:	00000097          	auipc	ra,0x0
    80001524:	784080e7          	jalr	1924(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001528:	00048513          	mv	a0,s1
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	7bc080e7          	jalr	1980(ra) # 80001ce8 <_Z12printIntegerm>
        printString("\n");
    80001534:	00004517          	auipc	a0,0x4
    80001538:	bbc50513          	addi	a0,a0,-1092 # 800050f0 <kvmincrease+0xf70>
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	768080e7          	jalr	1896(ra) # 80001ca4 <_Z11printStringPKc>
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
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001584:	00004797          	auipc	a5,0x4
    80001588:	23c7b783          	ld	a5,572(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000158c:	10579073          	csrw	stvec,a5

    TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    80001590:	00000613          	li	a2,0
    80001594:	00000593          	li	a1,0
    80001598:	fb840513          	addi	a0,s0,-72
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	b88080e7          	jalr	-1144(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800015a4:	fb843703          	ld	a4,-72(s0)
    800015a8:	00004797          	auipc	a5,0x4
    800015ac:	2407b783          	ld	a5,576(a5) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015b0:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    800015b4:	00000613          	li	a2,0
    800015b8:	00004597          	auipc	a1,0x4
    800015bc:	2205b583          	ld	a1,544(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015c0:	fc040513          	addi	a0,s0,-64
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	b60080e7          	jalr	-1184(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800015cc:	00004517          	auipc	a0,0x4
    800015d0:	a9c50513          	addi	a0,a0,-1380 # 80005068 <kvmincrease+0xee8>
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	6d0080e7          	jalr	1744(ra) # 80001ca4 <_Z11printStringPKc>
    thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    800015dc:	00000613          	li	a2,0
    800015e0:	00004597          	auipc	a1,0x4
    800015e4:	1e85b583          	ld	a1,488(a1) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015e8:	fc840513          	addi	a0,s0,-56
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	b38080e7          	jalr	-1224(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	a8c50513          	addi	a0,a0,-1396 # 80005080 <kvmincrease+0xf00>
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	6a8080e7          	jalr	1704(ra) # 80001ca4 <_Z11printStringPKc>
    thread_create(&threads[3], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    80001604:	00000613          	li	a2,0
    80001608:	00004597          	auipc	a1,0x4
    8000160c:	1e85b583          	ld	a1,488(a1) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001610:	fd040513          	addi	a0,s0,-48
    80001614:	00000097          	auipc	ra,0x0
    80001618:	b10080e7          	jalr	-1264(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a7c50513          	addi	a0,a0,-1412 # 80005098 <kvmincrease+0xf18>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	680080e7          	jalr	1664(ra) # 80001ca4 <_Z11printStringPKc>
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    8000162c:	00000613          	li	a2,0
    80001630:	00004597          	auipc	a1,0x4
    80001634:	1c85b583          	ld	a1,456(a1) # 800057f8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001638:	fd840513          	addi	a0,s0,-40
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	ae8080e7          	jalr	-1304(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	a6c50513          	addi	a0,a0,-1428 # 800050b0 <kvmincrease+0xf30>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	658080e7          	jalr	1624(ra) # 80001ca4 <_Z11printStringPKc>
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
        thread_dispatch();
    80001660:	00000097          	auipc	ra,0x0
    80001664:	afc080e7          	jalr	-1284(ra) # 8000115c <_Z15thread_dispatchv>
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
    800016d8:	9f450513          	addi	a0,a0,-1548 # 800050c8 <kvmincrease+0xf48>
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	5c8080e7          	jalr	1480(ra) # 80001ca4 <_Z11printStringPKc>

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
    8000178c:	47c080e7          	jalr	1148(ra) # 80001c04 <_ZN9Scheduler3putEP3TCB>
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
    800017b4:	188080e7          	jalr	392(ra) # 80006938 <_Unwind_Resume>
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
    80001814:	04048493          	addi	s1,s1,64 # 80005850 <_ZN3TCB7runningE>
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
    80001868:	fec4b483          	ld	s1,-20(s1) # 80005850 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000186c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001870:	02078c63          	beqz	a5,800018a8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	328080e7          	jalr	808(ra) # 80001b9c <_ZN9Scheduler3getEv>
    8000187c:	00004797          	auipc	a5,0x4
    80001880:	fca7ba23          	sd	a0,-44(a5) # 80005850 <_ZN3TCB7runningE>
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
    800018b0:	358080e7          	jalr	856(ra) # 80001c04 <_ZN9Scheduler3putEP3TCB>
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
    800018cc:	640080e7          	jalr	1600(ra) # 80003f08 <__mem_alloc>
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
    800018f4:	618080e7          	jalr	1560(ra) # 80003f08 <__mem_alloc>
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
    8000191c:	524080e7          	jalr	1316(ra) # 80003e3c <__mem_free>
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
    80001944:	4fc080e7          	jalr	1276(ra) # 80003e3c <__mem_free>
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

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
    80001978:	fa010113          	addi	sp,sp,-96
    8000197c:	04113c23          	sd	ra,88(sp)
    80001980:	04813823          	sd	s0,80(sp)
    80001984:	04913423          	sd	s1,72(sp)
    80001988:	05213023          	sd	s2,64(sp)
    8000198c:	03313c23          	sd	s3,56(sp)
    80001990:	03413823          	sd	s4,48(sp)
    80001994:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001998:	141027f3          	csrr	a5,sepc
    8000199c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800019a0:	fb043783          	ld	a5,-80(s0)

    uint64 volatile sepc = r_sepc();
    800019a4:	fcf43423          	sd	a5,-56(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019a8:	100027f3          	csrr	a5,sstatus
    800019ac:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800019b0:	fa843783          	ld	a5,-88(s0)
    uint64 volatile sstatus= r_sstatus();
    800019b4:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800019b8:	142027f3          	csrr	a5,scause
    800019bc:	faf43023          	sd	a5,-96(s0)
    return scause;
    800019c0:	fa043783          	ld	a5,-96(s0)
    uint64 volatile scause = r_scause();
    800019c4:	faf43c23          	sd	a5,-72(s0)
    printInteger(scause);
    800019c8:	fb843503          	ld	a0,-72(s0)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	31c080e7          	jalr	796(ra) # 80001ce8 <_Z12printIntegerm>
    printString("\n");
    800019d4:	00003517          	auipc	a0,0x3
    800019d8:	71c50513          	addi	a0,a0,1820 # 800050f0 <kvmincrease+0xf70>
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	2c8080e7          	jalr	712(ra) # 80001ca4 <_Z11printStringPKc>

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800019e4:	fb843703          	ld	a4,-72(s0)
    800019e8:	00800793          	li	a5,8
    800019ec:	04f70463          	beq	a4,a5,80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    800019f0:	fb843703          	ld	a4,-72(s0)
    800019f4:	00900793          	li	a5,9
    800019f8:	02f70e63          	beq	a4,a5,80001a34 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);*/
    }
    else if (scause == 0x8000000000000001UL)
    800019fc:	fb843703          	ld	a4,-72(s0)
    80001a00:	fff00793          	li	a5,-1
    80001a04:	03f79793          	slli	a5,a5,0x3f
    80001a08:	00178793          	addi	a5,a5,1
    80001a0c:	0ef70463          	beq	a4,a5,80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        {
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        }
    else if (scause == 0x8000000000000009UL)
    80001a10:	fb843703          	ld	a4,-72(s0)
    80001a14:	fff00793          	li	a5,-1
    80001a18:	03f79793          	slli	a5,a5,0x3f
    80001a1c:	00978793          	addi	a5,a5,9
    80001a20:	12f70863          	beq	a4,a5,80001b50 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        __putc('g');
    80001a24:	06700513          	li	a0,103
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	638080e7          	jalr	1592(ra) # 80004060 <__putc>
    80001a30:	0400006f          	j	80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        __asm__ volatile("mv %0, a0" : "=r" (CODE));
    80001a34:	00050493          	mv	s1,a0
        __asm__ volatile("mv %0, a1" : "=r" (arg1));
    80001a38:	00058913          	mv	s2,a1
        __asm__ volatile("mv %0, a2" : "=r" (arg2));
    80001a3c:	00060993          	mv	s3,a2
        __asm__ volatile("mv %0, a3" : "=r" (arg3));
    80001a40:	00068a13          	mv	s4,a3
        printString("ecall\n");
    80001a44:	00003517          	auipc	a0,0x3
    80001a48:	69450513          	addi	a0,a0,1684 # 800050d8 <kvmincrease+0xf58>
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	258080e7          	jalr	600(ra) # 80001ca4 <_Z11printStringPKc>
        sepc= sepc +4;
    80001a54:	fc843783          	ld	a5,-56(s0)
    80001a58:	00478793          	addi	a5,a5,4
    80001a5c:	fcf43423          	sd	a5,-56(s0)
        if (CODE == SCALL_THREAD_CREATE){
    80001a60:	01100793          	li	a5,17
    80001a64:	02f48e63          	beq	s1,a5,80001aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        }else if (CODE == SCALL_THREAD_DISPATCH){
    80001a68:	01300793          	li	a5,19
    80001a6c:	06f48863          	beq	s1,a5,80001adc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    }
    w_sepc(sepc);
    80001a70:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a74:	14179073          	csrw	sepc,a5
    w_sstatus(sstatus);
    80001a78:	fc043783          	ld	a5,-64(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a7c:	10079073          	csrw	sstatus,a5
    80001a80:	05813083          	ld	ra,88(sp)
    80001a84:	05013403          	ld	s0,80(sp)
    80001a88:	04813483          	ld	s1,72(sp)
    80001a8c:	04013903          	ld	s2,64(sp)
    80001a90:	03813983          	ld	s3,56(sp)
    80001a94:	03013a03          	ld	s4,48(sp)
    80001a98:	06010113          	addi	sp,sp,96
    80001a9c:	00008067          	ret
            printString("ThreadA created2\n");
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	64050513          	addi	a0,a0,1600 # 800050e0 <kvmincrease+0xf60>
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	1fc080e7          	jalr	508(ra) # 80001ca4 <_Z11printStringPKc>
            if (handle != nullptr){
    80001ab0:	00091863          	bnez	s2,80001ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                rett=-1;
    80001ab4:	fff00793          	li	a5,-1
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001ab8:	04f43823          	sd	a5,80(s0)
    80001abc:	fb5ff06f          	j	80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
                *handle = TCB::createThread(reinterpret_cast<void (*) (void*)>(arg2),(void*)arg3);
    80001ac0:	000a0593          	mv	a1,s4
    80001ac4:	00098513          	mv	a0,s3
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	c38080e7          	jalr	-968(ra) # 80001700 <_ZN3TCB12createThreadEPFvPvES0_>
    80001ad0:	00a93023          	sd	a0,0(s2)
                rett=0;
    80001ad4:	00000793          	li	a5,0
    80001ad8:	fe1ff06f          	j	80001ab8 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
            TCB::timeSliceCounter=0;
    80001adc:	00004797          	auipc	a5,0x4
    80001ae0:	cf47b783          	ld	a5,-780(a5) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ae4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	d68080e7          	jalr	-664(ra) # 80001850 <_ZN3TCB8dispatchEv>
    80001af0:	f81ff06f          	j	80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        printString("wooow\n");
    80001af4:	00003517          	auipc	a0,0x3
    80001af8:	60450513          	addi	a0,a0,1540 # 800050f8 <kvmincrease+0xf78>
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	1a8080e7          	jalr	424(ra) # 80001ca4 <_Z11printStringPKc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b04:	00200793          	li	a5,2
    80001b08:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001b0c:	00004717          	auipc	a4,0x4
    80001b10:	cc473703          	ld	a4,-828(a4) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b14:	00073783          	ld	a5,0(a4)
    80001b18:	00178793          	addi	a5,a5,1
    80001b1c:	00f73023          	sd	a5,0(a4)
        if (TCB::running != nullptr && TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001b20:	00004717          	auipc	a4,0x4
    80001b24:	cc873703          	ld	a4,-824(a4) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b28:	00073703          	ld	a4,0(a4)
    80001b2c:	f40702e3          	beqz	a4,80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    uint64 getTimeSlice() const { return timeSlice; }
    80001b30:	02873703          	ld	a4,40(a4)
    80001b34:	f2e7eee3          	bltu	a5,a4,80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
            TCB::timeSliceCounter=0;
    80001b38:	00004797          	auipc	a5,0x4
    80001b3c:	c987b783          	ld	a5,-872(a5) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b40:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	d0c080e7          	jalr	-756(ra) # 80001850 <_ZN3TCB8dispatchEv>
    80001b4c:	f25ff06f          	j	80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80001b50:	00002097          	auipc	ra,0x2
    80001b54:	584080e7          	jalr	1412(ra) # 800040d4 <console_handler>
    80001b58:	f19ff06f          	j	80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

0000000080001b5c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00813423          	sd	s0,8(sp)
    80001b64:	01010413          	addi	s0,sp,16
    80001b68:	00100793          	li	a5,1
    80001b6c:	00f50863          	beq	a0,a5,80001b7c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret
    80001b7c:	000107b7          	lui	a5,0x10
    80001b80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b84:	fef596e3          	bne	a1,a5,80001b70 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001b88:	00004797          	auipc	a5,0x4
    80001b8c:	cd878793          	addi	a5,a5,-808 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
    80001b90:	0007b023          	sd	zero,0(a5)
    80001b94:	0007b423          	sd	zero,8(a5)
    80001b98:	fd9ff06f          	j	80001b70 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b9c <_ZN9Scheduler3getEv>:
{
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	00913423          	sd	s1,8(sp)
    80001bac:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001bb0:	00004517          	auipc	a0,0x4
    80001bb4:	cb053503          	ld	a0,-848(a0) # 80005860 <_ZN9Scheduler16readyThreadQueueE>
    80001bb8:	04050263          	beqz	a0,80001bfc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001bbc:	00853783          	ld	a5,8(a0)
    80001bc0:	00004717          	auipc	a4,0x4
    80001bc4:	caf73023          	sd	a5,-864(a4) # 80005860 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001bc8:	02078463          	beqz	a5,80001bf0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001bcc:	00053483          	ld	s1,0(a0)
        delete elem;
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	d38080e7          	jalr	-712(ra) # 80001908 <_ZdlPv>
}
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	00813483          	ld	s1,8(sp)
    80001be8:	02010113          	addi	sp,sp,32
    80001bec:	00008067          	ret
        if (!head) { tail = 0; }
    80001bf0:	00004797          	auipc	a5,0x4
    80001bf4:	c607bc23          	sd	zero,-904(a5) # 80005868 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bf8:	fd5ff06f          	j	80001bcc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001bfc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001c00:	fd9ff06f          	j	80001bd8 <_ZN9Scheduler3getEv+0x3c>

0000000080001c04 <_ZN9Scheduler3putEP3TCB>:
{
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	02010413          	addi	s0,sp,32
    80001c18:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001c1c:	01000513          	li	a0,16
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	c98080e7          	jalr	-872(ra) # 800018b8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001c28:	00953023          	sd	s1,0(a0)
    80001c2c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001c30:	00004797          	auipc	a5,0x4
    80001c34:	c387b783          	ld	a5,-968(a5) # 80005868 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c38:	02078263          	beqz	a5,80001c5c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c3c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c40:	00004797          	auipc	a5,0x4
    80001c44:	c2a7b423          	sd	a0,-984(a5) # 80005868 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret
            head = tail = elem;
    80001c5c:	00004797          	auipc	a5,0x4
    80001c60:	c0478793          	addi	a5,a5,-1020 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
    80001c64:	00a7b423          	sd	a0,8(a5)
    80001c68:	00a7b023          	sd	a0,0(a5)
    80001c6c:	fddff06f          	j	80001c48 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c70 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    80001c80:	000105b7          	lui	a1,0x10
    80001c84:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c88:	00100513          	li	a0,1
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	ed0080e7          	jalr	-304(ra) # 80001b5c <_Z41__static_initialization_and_destruction_0ii>
    80001c94:	00813083          	ld	ra,8(sp)
    80001c98:	00013403          	ld	s0,0(sp)
    80001c9c:	01010113          	addi	sp,sp,16
    80001ca0:	00008067          	ret

0000000080001ca4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001ca4:	fe010113          	addi	sp,sp,-32
    80001ca8:	00113c23          	sd	ra,24(sp)
    80001cac:	00813823          	sd	s0,16(sp)
    80001cb0:	00913423          	sd	s1,8(sp)
    80001cb4:	02010413          	addi	s0,sp,32
    80001cb8:	00050493          	mv	s1,a0

    while (*string != '\0')
    80001cbc:	0004c503          	lbu	a0,0(s1)
    80001cc0:	00050a63          	beqz	a0,80001cd4 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80001cc4:	00002097          	auipc	ra,0x2
    80001cc8:	39c080e7          	jalr	924(ra) # 80004060 <__putc>
        string++;
    80001ccc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001cd0:	fedff06f          	j	80001cbc <_Z11printStringPKc+0x18>
    }
}
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ce8:	fd010113          	addi	sp,sp,-48
    80001cec:	02113423          	sd	ra,40(sp)
    80001cf0:	02813023          	sd	s0,32(sp)
    80001cf4:	00913c23          	sd	s1,24(sp)
    80001cf8:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001cfc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d00:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d04:	00a00613          	li	a2,10
    80001d08:	02c5773b          	remuw	a4,a0,a2
    80001d0c:	02071693          	slli	a3,a4,0x20
    80001d10:	0206d693          	srli	a3,a3,0x20
    80001d14:	00003717          	auipc	a4,0x3
    80001d18:	3ec70713          	addi	a4,a4,1004 # 80005100 <_ZZ12printIntegermE6digits>
    80001d1c:	00d70733          	add	a4,a4,a3
    80001d20:	00074703          	lbu	a4,0(a4)
    80001d24:	fe040693          	addi	a3,s0,-32
    80001d28:	009687b3          	add	a5,a3,s1
    80001d2c:	0014849b          	addiw	s1,s1,1
    80001d30:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d34:	0005071b          	sext.w	a4,a0
    80001d38:	02c5553b          	divuw	a0,a0,a2
    80001d3c:	00900793          	li	a5,9
    80001d40:	fce7e2e3          	bltu	a5,a4,80001d04 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001d44:	fff4849b          	addiw	s1,s1,-1
    80001d48:	0004ce63          	bltz	s1,80001d64 <_Z12printIntegerm+0x7c>
    80001d4c:	fe040793          	addi	a5,s0,-32
    80001d50:	009787b3          	add	a5,a5,s1
    80001d54:	ff07c503          	lbu	a0,-16(a5)
    80001d58:	00002097          	auipc	ra,0x2
    80001d5c:	308080e7          	jalr	776(ra) # 80004060 <__putc>
    80001d60:	fe5ff06f          	j	80001d44 <_Z12printIntegerm+0x5c>
    80001d64:	02813083          	ld	ra,40(sp)
    80001d68:	02013403          	ld	s0,32(sp)
    80001d6c:	01813483          	ld	s1,24(sp)
    80001d70:	03010113          	addi	sp,sp,48
    80001d74:	00008067          	ret

0000000080001d78 <start>:
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00813423          	sd	s0,8(sp)
    80001d80:	01010413          	addi	s0,sp,16
    80001d84:	300027f3          	csrr	a5,mstatus
    80001d88:	ffffe737          	lui	a4,0xffffe
    80001d8c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d1f>
    80001d90:	00e7f7b3          	and	a5,a5,a4
    80001d94:	00001737          	lui	a4,0x1
    80001d98:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d9c:	00e7e7b3          	or	a5,a5,a4
    80001da0:	30079073          	csrw	mstatus,a5
    80001da4:	00000797          	auipc	a5,0x0
    80001da8:	16078793          	addi	a5,a5,352 # 80001f04 <system_main>
    80001dac:	34179073          	csrw	mepc,a5
    80001db0:	00000793          	li	a5,0
    80001db4:	18079073          	csrw	satp,a5
    80001db8:	000107b7          	lui	a5,0x10
    80001dbc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dc0:	30279073          	csrw	medeleg,a5
    80001dc4:	30379073          	csrw	mideleg,a5
    80001dc8:	104027f3          	csrr	a5,sie
    80001dcc:	2227e793          	ori	a5,a5,546
    80001dd0:	10479073          	csrw	sie,a5
    80001dd4:	fff00793          	li	a5,-1
    80001dd8:	00a7d793          	srli	a5,a5,0xa
    80001ddc:	3b079073          	csrw	pmpaddr0,a5
    80001de0:	00f00793          	li	a5,15
    80001de4:	3a079073          	csrw	pmpcfg0,a5
    80001de8:	f14027f3          	csrr	a5,mhartid
    80001dec:	0200c737          	lui	a4,0x200c
    80001df0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001df4:	0007869b          	sext.w	a3,a5
    80001df8:	00269713          	slli	a4,a3,0x2
    80001dfc:	000f4637          	lui	a2,0xf4
    80001e00:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e04:	00d70733          	add	a4,a4,a3
    80001e08:	0037979b          	slliw	a5,a5,0x3
    80001e0c:	020046b7          	lui	a3,0x2004
    80001e10:	00d787b3          	add	a5,a5,a3
    80001e14:	00c585b3          	add	a1,a1,a2
    80001e18:	00371693          	slli	a3,a4,0x3
    80001e1c:	00004717          	auipc	a4,0x4
    80001e20:	a5470713          	addi	a4,a4,-1452 # 80005870 <timer_scratch>
    80001e24:	00b7b023          	sd	a1,0(a5)
    80001e28:	00d70733          	add	a4,a4,a3
    80001e2c:	00f73c23          	sd	a5,24(a4)
    80001e30:	02c73023          	sd	a2,32(a4)
    80001e34:	34071073          	csrw	mscratch,a4
    80001e38:	00000797          	auipc	a5,0x0
    80001e3c:	6e878793          	addi	a5,a5,1768 # 80002520 <timervec>
    80001e40:	30579073          	csrw	mtvec,a5
    80001e44:	300027f3          	csrr	a5,mstatus
    80001e48:	0087e793          	ori	a5,a5,8
    80001e4c:	30079073          	csrw	mstatus,a5
    80001e50:	304027f3          	csrr	a5,mie
    80001e54:	0807e793          	ori	a5,a5,128
    80001e58:	30479073          	csrw	mie,a5
    80001e5c:	f14027f3          	csrr	a5,mhartid
    80001e60:	0007879b          	sext.w	a5,a5
    80001e64:	00078213          	mv	tp,a5
    80001e68:	30200073          	mret
    80001e6c:	00813403          	ld	s0,8(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <timerinit>:
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    80001e84:	f14027f3          	csrr	a5,mhartid
    80001e88:	0200c737          	lui	a4,0x200c
    80001e8c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e90:	0007869b          	sext.w	a3,a5
    80001e94:	00269713          	slli	a4,a3,0x2
    80001e98:	000f4637          	lui	a2,0xf4
    80001e9c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ea0:	00d70733          	add	a4,a4,a3
    80001ea4:	0037979b          	slliw	a5,a5,0x3
    80001ea8:	020046b7          	lui	a3,0x2004
    80001eac:	00d787b3          	add	a5,a5,a3
    80001eb0:	00c585b3          	add	a1,a1,a2
    80001eb4:	00371693          	slli	a3,a4,0x3
    80001eb8:	00004717          	auipc	a4,0x4
    80001ebc:	9b870713          	addi	a4,a4,-1608 # 80005870 <timer_scratch>
    80001ec0:	00b7b023          	sd	a1,0(a5)
    80001ec4:	00d70733          	add	a4,a4,a3
    80001ec8:	00f73c23          	sd	a5,24(a4)
    80001ecc:	02c73023          	sd	a2,32(a4)
    80001ed0:	34071073          	csrw	mscratch,a4
    80001ed4:	00000797          	auipc	a5,0x0
    80001ed8:	64c78793          	addi	a5,a5,1612 # 80002520 <timervec>
    80001edc:	30579073          	csrw	mtvec,a5
    80001ee0:	300027f3          	csrr	a5,mstatus
    80001ee4:	0087e793          	ori	a5,a5,8
    80001ee8:	30079073          	csrw	mstatus,a5
    80001eec:	304027f3          	csrr	a5,mie
    80001ef0:	0807e793          	ori	a5,a5,128
    80001ef4:	30479073          	csrw	mie,a5
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <system_main>:
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	00113c23          	sd	ra,24(sp)
    80001f14:	02010413          	addi	s0,sp,32
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	0c4080e7          	jalr	196(ra) # 80001fdc <cpuid>
    80001f20:	00004497          	auipc	s1,0x4
    80001f24:	90048493          	addi	s1,s1,-1792 # 80005820 <started>
    80001f28:	02050263          	beqz	a0,80001f4c <system_main+0x48>
    80001f2c:	0004a783          	lw	a5,0(s1)
    80001f30:	0007879b          	sext.w	a5,a5
    80001f34:	fe078ce3          	beqz	a5,80001f2c <system_main+0x28>
    80001f38:	0ff0000f          	fence
    80001f3c:	00003517          	auipc	a0,0x3
    80001f40:	20450513          	addi	a0,a0,516 # 80005140 <_ZZ12printIntegermE6digits+0x40>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	a78080e7          	jalr	-1416(ra) # 800029bc <panic>
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	9cc080e7          	jalr	-1588(ra) # 80002918 <consoleinit>
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	158080e7          	jalr	344(ra) # 800030ac <printfinit>
    80001f5c:	00003517          	auipc	a0,0x3
    80001f60:	19450513          	addi	a0,a0,404 # 800050f0 <kvmincrease+0xf70>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	ab4080e7          	jalr	-1356(ra) # 80002a18 <__printf>
    80001f6c:	00003517          	auipc	a0,0x3
    80001f70:	1a450513          	addi	a0,a0,420 # 80005110 <_ZZ12printIntegermE6digits+0x10>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	aa4080e7          	jalr	-1372(ra) # 80002a18 <__printf>
    80001f7c:	00003517          	auipc	a0,0x3
    80001f80:	17450513          	addi	a0,a0,372 # 800050f0 <kvmincrease+0xf70>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	a94080e7          	jalr	-1388(ra) # 80002a18 <__printf>
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	4ac080e7          	jalr	1196(ra) # 80003438 <kinit>
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	148080e7          	jalr	328(ra) # 800020dc <trapinit>
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	16c080e7          	jalr	364(ra) # 80002108 <trapinithart>
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	5bc080e7          	jalr	1468(ra) # 80002560 <plicinit>
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	5dc080e7          	jalr	1500(ra) # 80002588 <plicinithart>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	078080e7          	jalr	120(ra) # 8000202c <userinit>
    80001fbc:	0ff0000f          	fence
    80001fc0:	00100793          	li	a5,1
    80001fc4:	00003517          	auipc	a0,0x3
    80001fc8:	16450513          	addi	a0,a0,356 # 80005128 <_ZZ12printIntegermE6digits+0x28>
    80001fcc:	00f4a023          	sw	a5,0(s1)
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	a48080e7          	jalr	-1464(ra) # 80002a18 <__printf>
    80001fd8:	0000006f          	j	80001fd8 <system_main+0xd4>

0000000080001fdc <cpuid>:
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00813423          	sd	s0,8(sp)
    80001fe4:	01010413          	addi	s0,sp,16
    80001fe8:	00020513          	mv	a0,tp
    80001fec:	00813403          	ld	s0,8(sp)
    80001ff0:	0005051b          	sext.w	a0,a0
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <mycpu>:
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00020793          	mv	a5,tp
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	0007879b          	sext.w	a5,a5
    80002014:	00779793          	slli	a5,a5,0x7
    80002018:	00005517          	auipc	a0,0x5
    8000201c:	88850513          	addi	a0,a0,-1912 # 800068a0 <cpus>
    80002020:	00f50533          	add	a0,a0,a5
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <userinit>:
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	00813403          	ld	s0,8(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	fffff317          	auipc	t1,0xfffff
    80002044:	52c30067          	jr	1324(t1) # 8000156c <main>

0000000080002048 <either_copyout>:
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	02051663          	bnez	a0,80002084 <either_copyout+0x3c>
    8000205c:	00058513          	mv	a0,a1
    80002060:	00060593          	mv	a1,a2
    80002064:	0006861b          	sext.w	a2,a3
    80002068:	00002097          	auipc	ra,0x2
    8000206c:	c5c080e7          	jalr	-932(ra) # 80003cc4 <__memmove>
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	00000513          	li	a0,0
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret
    80002084:	00003517          	auipc	a0,0x3
    80002088:	0e450513          	addi	a0,a0,228 # 80005168 <_ZZ12printIntegermE6digits+0x68>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	930080e7          	jalr	-1744(ra) # 800029bc <panic>

0000000080002094 <either_copyin>:
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    800020a4:	02059463          	bnez	a1,800020cc <either_copyin+0x38>
    800020a8:	00060593          	mv	a1,a2
    800020ac:	0006861b          	sext.w	a2,a3
    800020b0:	00002097          	auipc	ra,0x2
    800020b4:	c14080e7          	jalr	-1004(ra) # 80003cc4 <__memmove>
    800020b8:	00813083          	ld	ra,8(sp)
    800020bc:	00013403          	ld	s0,0(sp)
    800020c0:	00000513          	li	a0,0
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret
    800020cc:	00003517          	auipc	a0,0x3
    800020d0:	0c450513          	addi	a0,a0,196 # 80005190 <_ZZ12printIntegermE6digits+0x90>
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	8e8080e7          	jalr	-1816(ra) # 800029bc <panic>

00000000800020dc <trapinit>:
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    800020e8:	00813403          	ld	s0,8(sp)
    800020ec:	00003597          	auipc	a1,0x3
    800020f0:	0cc58593          	addi	a1,a1,204 # 800051b8 <_ZZ12printIntegermE6digits+0xb8>
    800020f4:	00005517          	auipc	a0,0x5
    800020f8:	82c50513          	addi	a0,a0,-2004 # 80006920 <tickslock>
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00001317          	auipc	t1,0x1
    80002104:	5c830067          	jr	1480(t1) # 800036c8 <initlock>

0000000080002108 <trapinithart>:
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813423          	sd	s0,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    80002114:	00000797          	auipc	a5,0x0
    80002118:	2fc78793          	addi	a5,a5,764 # 80002410 <kernelvec>
    8000211c:	10579073          	csrw	stvec,a5
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <usertrap>:
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <usertrapret>:
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <kerneltrap>:
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00113c23          	sd	ra,24(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	02010413          	addi	s0,sp,32
    80002170:	142025f3          	csrr	a1,scause
    80002174:	100027f3          	csrr	a5,sstatus
    80002178:	0027f793          	andi	a5,a5,2
    8000217c:	10079c63          	bnez	a5,80002294 <kerneltrap+0x138>
    80002180:	142027f3          	csrr	a5,scause
    80002184:	0207ce63          	bltz	a5,800021c0 <kerneltrap+0x64>
    80002188:	00003517          	auipc	a0,0x3
    8000218c:	07850513          	addi	a0,a0,120 # 80005200 <_ZZ12printIntegermE6digits+0x100>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	888080e7          	jalr	-1912(ra) # 80002a18 <__printf>
    80002198:	141025f3          	csrr	a1,sepc
    8000219c:	14302673          	csrr	a2,stval
    800021a0:	00003517          	auipc	a0,0x3
    800021a4:	07050513          	addi	a0,a0,112 # 80005210 <_ZZ12printIntegermE6digits+0x110>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	870080e7          	jalr	-1936(ra) # 80002a18 <__printf>
    800021b0:	00003517          	auipc	a0,0x3
    800021b4:	07850513          	addi	a0,a0,120 # 80005228 <_ZZ12printIntegermE6digits+0x128>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	804080e7          	jalr	-2044(ra) # 800029bc <panic>
    800021c0:	0ff7f713          	andi	a4,a5,255
    800021c4:	00900693          	li	a3,9
    800021c8:	04d70063          	beq	a4,a3,80002208 <kerneltrap+0xac>
    800021cc:	fff00713          	li	a4,-1
    800021d0:	03f71713          	slli	a4,a4,0x3f
    800021d4:	00170713          	addi	a4,a4,1
    800021d8:	fae798e3          	bne	a5,a4,80002188 <kerneltrap+0x2c>
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	e00080e7          	jalr	-512(ra) # 80001fdc <cpuid>
    800021e4:	06050663          	beqz	a0,80002250 <kerneltrap+0xf4>
    800021e8:	144027f3          	csrr	a5,sip
    800021ec:	ffd7f793          	andi	a5,a5,-3
    800021f0:	14479073          	csrw	sip,a5
    800021f4:	01813083          	ld	ra,24(sp)
    800021f8:	01013403          	ld	s0,16(sp)
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00008067          	ret
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	3cc080e7          	jalr	972(ra) # 800025d4 <plic_claim>
    80002210:	00a00793          	li	a5,10
    80002214:	00050493          	mv	s1,a0
    80002218:	06f50863          	beq	a0,a5,80002288 <kerneltrap+0x12c>
    8000221c:	fc050ce3          	beqz	a0,800021f4 <kerneltrap+0x98>
    80002220:	00050593          	mv	a1,a0
    80002224:	00003517          	auipc	a0,0x3
    80002228:	fbc50513          	addi	a0,a0,-68 # 800051e0 <_ZZ12printIntegermE6digits+0xe0>
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	7ec080e7          	jalr	2028(ra) # 80002a18 <__printf>
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	00048513          	mv	a0,s1
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00000317          	auipc	t1,0x0
    8000224c:	3c430067          	jr	964(t1) # 8000260c <plic_complete>
    80002250:	00004517          	auipc	a0,0x4
    80002254:	6d050513          	addi	a0,a0,1744 # 80006920 <tickslock>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	494080e7          	jalr	1172(ra) # 800036ec <acquire>
    80002260:	00003717          	auipc	a4,0x3
    80002264:	5c470713          	addi	a4,a4,1476 # 80005824 <ticks>
    80002268:	00072783          	lw	a5,0(a4)
    8000226c:	00004517          	auipc	a0,0x4
    80002270:	6b450513          	addi	a0,a0,1716 # 80006920 <tickslock>
    80002274:	0017879b          	addiw	a5,a5,1
    80002278:	00f72023          	sw	a5,0(a4)
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	53c080e7          	jalr	1340(ra) # 800037b8 <release>
    80002284:	f65ff06f          	j	800021e8 <kerneltrap+0x8c>
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	098080e7          	jalr	152(ra) # 80003320 <uartintr>
    80002290:	fa5ff06f          	j	80002234 <kerneltrap+0xd8>
    80002294:	00003517          	auipc	a0,0x3
    80002298:	f2c50513          	addi	a0,a0,-212 # 800051c0 <_ZZ12printIntegermE6digits+0xc0>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	720080e7          	jalr	1824(ra) # 800029bc <panic>

00000000800022a4 <clockintr>:
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00813823          	sd	s0,16(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	02010413          	addi	s0,sp,32
    800022b8:	00004497          	auipc	s1,0x4
    800022bc:	66848493          	addi	s1,s1,1640 # 80006920 <tickslock>
    800022c0:	00048513          	mv	a0,s1
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	428080e7          	jalr	1064(ra) # 800036ec <acquire>
    800022cc:	00003717          	auipc	a4,0x3
    800022d0:	55870713          	addi	a4,a4,1368 # 80005824 <ticks>
    800022d4:	00072783          	lw	a5,0(a4)
    800022d8:	01013403          	ld	s0,16(sp)
    800022dc:	01813083          	ld	ra,24(sp)
    800022e0:	00048513          	mv	a0,s1
    800022e4:	0017879b          	addiw	a5,a5,1
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	00f72023          	sw	a5,0(a4)
    800022f0:	02010113          	addi	sp,sp,32
    800022f4:	00001317          	auipc	t1,0x1
    800022f8:	4c430067          	jr	1220(t1) # 800037b8 <release>

00000000800022fc <devintr>:
    800022fc:	142027f3          	csrr	a5,scause
    80002300:	00000513          	li	a0,0
    80002304:	0007c463          	bltz	a5,8000230c <devintr+0x10>
    80002308:	00008067          	ret
    8000230c:	fe010113          	addi	sp,sp,-32
    80002310:	00813823          	sd	s0,16(sp)
    80002314:	00113c23          	sd	ra,24(sp)
    80002318:	00913423          	sd	s1,8(sp)
    8000231c:	02010413          	addi	s0,sp,32
    80002320:	0ff7f713          	andi	a4,a5,255
    80002324:	00900693          	li	a3,9
    80002328:	04d70c63          	beq	a4,a3,80002380 <devintr+0x84>
    8000232c:	fff00713          	li	a4,-1
    80002330:	03f71713          	slli	a4,a4,0x3f
    80002334:	00170713          	addi	a4,a4,1
    80002338:	00e78c63          	beq	a5,a4,80002350 <devintr+0x54>
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret
    80002350:	00000097          	auipc	ra,0x0
    80002354:	c8c080e7          	jalr	-884(ra) # 80001fdc <cpuid>
    80002358:	06050663          	beqz	a0,800023c4 <devintr+0xc8>
    8000235c:	144027f3          	csrr	a5,sip
    80002360:	ffd7f793          	andi	a5,a5,-3
    80002364:	14479073          	csrw	sip,a5
    80002368:	01813083          	ld	ra,24(sp)
    8000236c:	01013403          	ld	s0,16(sp)
    80002370:	00813483          	ld	s1,8(sp)
    80002374:	00200513          	li	a0,2
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00008067          	ret
    80002380:	00000097          	auipc	ra,0x0
    80002384:	254080e7          	jalr	596(ra) # 800025d4 <plic_claim>
    80002388:	00a00793          	li	a5,10
    8000238c:	00050493          	mv	s1,a0
    80002390:	06f50663          	beq	a0,a5,800023fc <devintr+0x100>
    80002394:	00100513          	li	a0,1
    80002398:	fa0482e3          	beqz	s1,8000233c <devintr+0x40>
    8000239c:	00048593          	mv	a1,s1
    800023a0:	00003517          	auipc	a0,0x3
    800023a4:	e4050513          	addi	a0,a0,-448 # 800051e0 <_ZZ12printIntegermE6digits+0xe0>
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	670080e7          	jalr	1648(ra) # 80002a18 <__printf>
    800023b0:	00048513          	mv	a0,s1
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	258080e7          	jalr	600(ra) # 8000260c <plic_complete>
    800023bc:	00100513          	li	a0,1
    800023c0:	f7dff06f          	j	8000233c <devintr+0x40>
    800023c4:	00004517          	auipc	a0,0x4
    800023c8:	55c50513          	addi	a0,a0,1372 # 80006920 <tickslock>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	320080e7          	jalr	800(ra) # 800036ec <acquire>
    800023d4:	00003717          	auipc	a4,0x3
    800023d8:	45070713          	addi	a4,a4,1104 # 80005824 <ticks>
    800023dc:	00072783          	lw	a5,0(a4)
    800023e0:	00004517          	auipc	a0,0x4
    800023e4:	54050513          	addi	a0,a0,1344 # 80006920 <tickslock>
    800023e8:	0017879b          	addiw	a5,a5,1
    800023ec:	00f72023          	sw	a5,0(a4)
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	3c8080e7          	jalr	968(ra) # 800037b8 <release>
    800023f8:	f65ff06f          	j	8000235c <devintr+0x60>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	f24080e7          	jalr	-220(ra) # 80003320 <uartintr>
    80002404:	fadff06f          	j	800023b0 <devintr+0xb4>
	...

0000000080002410 <kernelvec>:
    80002410:	f0010113          	addi	sp,sp,-256
    80002414:	00113023          	sd	ra,0(sp)
    80002418:	00213423          	sd	sp,8(sp)
    8000241c:	00313823          	sd	gp,16(sp)
    80002420:	00413c23          	sd	tp,24(sp)
    80002424:	02513023          	sd	t0,32(sp)
    80002428:	02613423          	sd	t1,40(sp)
    8000242c:	02713823          	sd	t2,48(sp)
    80002430:	02813c23          	sd	s0,56(sp)
    80002434:	04913023          	sd	s1,64(sp)
    80002438:	04a13423          	sd	a0,72(sp)
    8000243c:	04b13823          	sd	a1,80(sp)
    80002440:	04c13c23          	sd	a2,88(sp)
    80002444:	06d13023          	sd	a3,96(sp)
    80002448:	06e13423          	sd	a4,104(sp)
    8000244c:	06f13823          	sd	a5,112(sp)
    80002450:	07013c23          	sd	a6,120(sp)
    80002454:	09113023          	sd	a7,128(sp)
    80002458:	09213423          	sd	s2,136(sp)
    8000245c:	09313823          	sd	s3,144(sp)
    80002460:	09413c23          	sd	s4,152(sp)
    80002464:	0b513023          	sd	s5,160(sp)
    80002468:	0b613423          	sd	s6,168(sp)
    8000246c:	0b713823          	sd	s7,176(sp)
    80002470:	0b813c23          	sd	s8,184(sp)
    80002474:	0d913023          	sd	s9,192(sp)
    80002478:	0da13423          	sd	s10,200(sp)
    8000247c:	0db13823          	sd	s11,208(sp)
    80002480:	0dc13c23          	sd	t3,216(sp)
    80002484:	0fd13023          	sd	t4,224(sp)
    80002488:	0fe13423          	sd	t5,232(sp)
    8000248c:	0ff13823          	sd	t6,240(sp)
    80002490:	ccdff0ef          	jal	ra,8000215c <kerneltrap>
    80002494:	00013083          	ld	ra,0(sp)
    80002498:	00813103          	ld	sp,8(sp)
    8000249c:	01013183          	ld	gp,16(sp)
    800024a0:	02013283          	ld	t0,32(sp)
    800024a4:	02813303          	ld	t1,40(sp)
    800024a8:	03013383          	ld	t2,48(sp)
    800024ac:	03813403          	ld	s0,56(sp)
    800024b0:	04013483          	ld	s1,64(sp)
    800024b4:	04813503          	ld	a0,72(sp)
    800024b8:	05013583          	ld	a1,80(sp)
    800024bc:	05813603          	ld	a2,88(sp)
    800024c0:	06013683          	ld	a3,96(sp)
    800024c4:	06813703          	ld	a4,104(sp)
    800024c8:	07013783          	ld	a5,112(sp)
    800024cc:	07813803          	ld	a6,120(sp)
    800024d0:	08013883          	ld	a7,128(sp)
    800024d4:	08813903          	ld	s2,136(sp)
    800024d8:	09013983          	ld	s3,144(sp)
    800024dc:	09813a03          	ld	s4,152(sp)
    800024e0:	0a013a83          	ld	s5,160(sp)
    800024e4:	0a813b03          	ld	s6,168(sp)
    800024e8:	0b013b83          	ld	s7,176(sp)
    800024ec:	0b813c03          	ld	s8,184(sp)
    800024f0:	0c013c83          	ld	s9,192(sp)
    800024f4:	0c813d03          	ld	s10,200(sp)
    800024f8:	0d013d83          	ld	s11,208(sp)
    800024fc:	0d813e03          	ld	t3,216(sp)
    80002500:	0e013e83          	ld	t4,224(sp)
    80002504:	0e813f03          	ld	t5,232(sp)
    80002508:	0f013f83          	ld	t6,240(sp)
    8000250c:	10010113          	addi	sp,sp,256
    80002510:	10200073          	sret
    80002514:	00000013          	nop
    80002518:	00000013          	nop
    8000251c:	00000013          	nop

0000000080002520 <timervec>:
    80002520:	34051573          	csrrw	a0,mscratch,a0
    80002524:	00b53023          	sd	a1,0(a0)
    80002528:	00c53423          	sd	a2,8(a0)
    8000252c:	00d53823          	sd	a3,16(a0)
    80002530:	01853583          	ld	a1,24(a0)
    80002534:	02053603          	ld	a2,32(a0)
    80002538:	0005b683          	ld	a3,0(a1)
    8000253c:	00c686b3          	add	a3,a3,a2
    80002540:	00d5b023          	sd	a3,0(a1)
    80002544:	00200593          	li	a1,2
    80002548:	14459073          	csrw	sip,a1
    8000254c:	01053683          	ld	a3,16(a0)
    80002550:	00853603          	ld	a2,8(a0)
    80002554:	00053583          	ld	a1,0(a0)
    80002558:	34051573          	csrrw	a0,mscratch,a0
    8000255c:	30200073          	mret

0000000080002560 <plicinit>:
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    8000256c:	00813403          	ld	s0,8(sp)
    80002570:	0c0007b7          	lui	a5,0xc000
    80002574:	00100713          	li	a4,1
    80002578:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000257c:	00e7a223          	sw	a4,4(a5)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <plicinithart>:
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813023          	sd	s0,0(sp)
    80002590:	00113423          	sd	ra,8(sp)
    80002594:	01010413          	addi	s0,sp,16
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	a44080e7          	jalr	-1468(ra) # 80001fdc <cpuid>
    800025a0:	0085171b          	slliw	a4,a0,0x8
    800025a4:	0c0027b7          	lui	a5,0xc002
    800025a8:	00e787b3          	add	a5,a5,a4
    800025ac:	40200713          	li	a4,1026
    800025b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800025b4:	00813083          	ld	ra,8(sp)
    800025b8:	00013403          	ld	s0,0(sp)
    800025bc:	00d5151b          	slliw	a0,a0,0xd
    800025c0:	0c2017b7          	lui	a5,0xc201
    800025c4:	00a78533          	add	a0,a5,a0
    800025c8:	00052023          	sw	zero,0(a0)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <plic_claim>:
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	00113423          	sd	ra,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	9f8080e7          	jalr	-1544(ra) # 80001fdc <cpuid>
    800025ec:	00813083          	ld	ra,8(sp)
    800025f0:	00013403          	ld	s0,0(sp)
    800025f4:	00d5151b          	slliw	a0,a0,0xd
    800025f8:	0c2017b7          	lui	a5,0xc201
    800025fc:	00a78533          	add	a0,a5,a0
    80002600:	00452503          	lw	a0,4(a0)
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00008067          	ret

000000008000260c <plic_complete>:
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	02010413          	addi	s0,sp,32
    80002620:	00050493          	mv	s1,a0
    80002624:	00000097          	auipc	ra,0x0
    80002628:	9b8080e7          	jalr	-1608(ra) # 80001fdc <cpuid>
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00d5179b          	slliw	a5,a0,0xd
    80002638:	0c201737          	lui	a4,0xc201
    8000263c:	00f707b3          	add	a5,a4,a5
    80002640:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00008067          	ret

0000000080002650 <consolewrite>:
    80002650:	fb010113          	addi	sp,sp,-80
    80002654:	04813023          	sd	s0,64(sp)
    80002658:	04113423          	sd	ra,72(sp)
    8000265c:	02913c23          	sd	s1,56(sp)
    80002660:	03213823          	sd	s2,48(sp)
    80002664:	03313423          	sd	s3,40(sp)
    80002668:	03413023          	sd	s4,32(sp)
    8000266c:	01513c23          	sd	s5,24(sp)
    80002670:	05010413          	addi	s0,sp,80
    80002674:	06c05c63          	blez	a2,800026ec <consolewrite+0x9c>
    80002678:	00060993          	mv	s3,a2
    8000267c:	00050a13          	mv	s4,a0
    80002680:	00058493          	mv	s1,a1
    80002684:	00000913          	li	s2,0
    80002688:	fff00a93          	li	s5,-1
    8000268c:	01c0006f          	j	800026a8 <consolewrite+0x58>
    80002690:	fbf44503          	lbu	a0,-65(s0)
    80002694:	0019091b          	addiw	s2,s2,1
    80002698:	00148493          	addi	s1,s1,1
    8000269c:	00001097          	auipc	ra,0x1
    800026a0:	a9c080e7          	jalr	-1380(ra) # 80003138 <uartputc>
    800026a4:	03298063          	beq	s3,s2,800026c4 <consolewrite+0x74>
    800026a8:	00048613          	mv	a2,s1
    800026ac:	00100693          	li	a3,1
    800026b0:	000a0593          	mv	a1,s4
    800026b4:	fbf40513          	addi	a0,s0,-65
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	9dc080e7          	jalr	-1572(ra) # 80002094 <either_copyin>
    800026c0:	fd5518e3          	bne	a0,s5,80002690 <consolewrite+0x40>
    800026c4:	04813083          	ld	ra,72(sp)
    800026c8:	04013403          	ld	s0,64(sp)
    800026cc:	03813483          	ld	s1,56(sp)
    800026d0:	02813983          	ld	s3,40(sp)
    800026d4:	02013a03          	ld	s4,32(sp)
    800026d8:	01813a83          	ld	s5,24(sp)
    800026dc:	00090513          	mv	a0,s2
    800026e0:	03013903          	ld	s2,48(sp)
    800026e4:	05010113          	addi	sp,sp,80
    800026e8:	00008067          	ret
    800026ec:	00000913          	li	s2,0
    800026f0:	fd5ff06f          	j	800026c4 <consolewrite+0x74>

00000000800026f4 <consoleread>:
    800026f4:	f9010113          	addi	sp,sp,-112
    800026f8:	06813023          	sd	s0,96(sp)
    800026fc:	04913c23          	sd	s1,88(sp)
    80002700:	05213823          	sd	s2,80(sp)
    80002704:	05313423          	sd	s3,72(sp)
    80002708:	05413023          	sd	s4,64(sp)
    8000270c:	03513c23          	sd	s5,56(sp)
    80002710:	03613823          	sd	s6,48(sp)
    80002714:	03713423          	sd	s7,40(sp)
    80002718:	03813023          	sd	s8,32(sp)
    8000271c:	06113423          	sd	ra,104(sp)
    80002720:	01913c23          	sd	s9,24(sp)
    80002724:	07010413          	addi	s0,sp,112
    80002728:	00060b93          	mv	s7,a2
    8000272c:	00050913          	mv	s2,a0
    80002730:	00058c13          	mv	s8,a1
    80002734:	00060b1b          	sext.w	s6,a2
    80002738:	00004497          	auipc	s1,0x4
    8000273c:	21048493          	addi	s1,s1,528 # 80006948 <cons>
    80002740:	00400993          	li	s3,4
    80002744:	fff00a13          	li	s4,-1
    80002748:	00a00a93          	li	s5,10
    8000274c:	05705e63          	blez	s7,800027a8 <consoleread+0xb4>
    80002750:	09c4a703          	lw	a4,156(s1)
    80002754:	0984a783          	lw	a5,152(s1)
    80002758:	0007071b          	sext.w	a4,a4
    8000275c:	08e78463          	beq	a5,a4,800027e4 <consoleread+0xf0>
    80002760:	07f7f713          	andi	a4,a5,127
    80002764:	00e48733          	add	a4,s1,a4
    80002768:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000276c:	0017869b          	addiw	a3,a5,1
    80002770:	08d4ac23          	sw	a3,152(s1)
    80002774:	00070c9b          	sext.w	s9,a4
    80002778:	0b370663          	beq	a4,s3,80002824 <consoleread+0x130>
    8000277c:	00100693          	li	a3,1
    80002780:	f9f40613          	addi	a2,s0,-97
    80002784:	000c0593          	mv	a1,s8
    80002788:	00090513          	mv	a0,s2
    8000278c:	f8e40fa3          	sb	a4,-97(s0)
    80002790:	00000097          	auipc	ra,0x0
    80002794:	8b8080e7          	jalr	-1864(ra) # 80002048 <either_copyout>
    80002798:	01450863          	beq	a0,s4,800027a8 <consoleread+0xb4>
    8000279c:	001c0c13          	addi	s8,s8,1
    800027a0:	fffb8b9b          	addiw	s7,s7,-1
    800027a4:	fb5c94e3          	bne	s9,s5,8000274c <consoleread+0x58>
    800027a8:	000b851b          	sext.w	a0,s7
    800027ac:	06813083          	ld	ra,104(sp)
    800027b0:	06013403          	ld	s0,96(sp)
    800027b4:	05813483          	ld	s1,88(sp)
    800027b8:	05013903          	ld	s2,80(sp)
    800027bc:	04813983          	ld	s3,72(sp)
    800027c0:	04013a03          	ld	s4,64(sp)
    800027c4:	03813a83          	ld	s5,56(sp)
    800027c8:	02813b83          	ld	s7,40(sp)
    800027cc:	02013c03          	ld	s8,32(sp)
    800027d0:	01813c83          	ld	s9,24(sp)
    800027d4:	40ab053b          	subw	a0,s6,a0
    800027d8:	03013b03          	ld	s6,48(sp)
    800027dc:	07010113          	addi	sp,sp,112
    800027e0:	00008067          	ret
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	1d8080e7          	jalr	472(ra) # 800039bc <push_on>
    800027ec:	0984a703          	lw	a4,152(s1)
    800027f0:	09c4a783          	lw	a5,156(s1)
    800027f4:	0007879b          	sext.w	a5,a5
    800027f8:	fef70ce3          	beq	a4,a5,800027f0 <consoleread+0xfc>
    800027fc:	00001097          	auipc	ra,0x1
    80002800:	234080e7          	jalr	564(ra) # 80003a30 <pop_on>
    80002804:	0984a783          	lw	a5,152(s1)
    80002808:	07f7f713          	andi	a4,a5,127
    8000280c:	00e48733          	add	a4,s1,a4
    80002810:	01874703          	lbu	a4,24(a4)
    80002814:	0017869b          	addiw	a3,a5,1
    80002818:	08d4ac23          	sw	a3,152(s1)
    8000281c:	00070c9b          	sext.w	s9,a4
    80002820:	f5371ee3          	bne	a4,s3,8000277c <consoleread+0x88>
    80002824:	000b851b          	sext.w	a0,s7
    80002828:	f96bf2e3          	bgeu	s7,s6,800027ac <consoleread+0xb8>
    8000282c:	08f4ac23          	sw	a5,152(s1)
    80002830:	f7dff06f          	j	800027ac <consoleread+0xb8>

0000000080002834 <consputc>:
    80002834:	10000793          	li	a5,256
    80002838:	00f50663          	beq	a0,a5,80002844 <consputc+0x10>
    8000283c:	00001317          	auipc	t1,0x1
    80002840:	9f430067          	jr	-1548(t1) # 80003230 <uartputc_sync>
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	00800513          	li	a0,8
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	9d8080e7          	jalr	-1576(ra) # 80003230 <uartputc_sync>
    80002860:	02000513          	li	a0,32
    80002864:	00001097          	auipc	ra,0x1
    80002868:	9cc080e7          	jalr	-1588(ra) # 80003230 <uartputc_sync>
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	00813083          	ld	ra,8(sp)
    80002874:	00800513          	li	a0,8
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00001317          	auipc	t1,0x1
    80002880:	9b430067          	jr	-1612(t1) # 80003230 <uartputc_sync>

0000000080002884 <consoleintr>:
    80002884:	fe010113          	addi	sp,sp,-32
    80002888:	00813823          	sd	s0,16(sp)
    8000288c:	00913423          	sd	s1,8(sp)
    80002890:	01213023          	sd	s2,0(sp)
    80002894:	00113c23          	sd	ra,24(sp)
    80002898:	02010413          	addi	s0,sp,32
    8000289c:	00004917          	auipc	s2,0x4
    800028a0:	0ac90913          	addi	s2,s2,172 # 80006948 <cons>
    800028a4:	00050493          	mv	s1,a0
    800028a8:	00090513          	mv	a0,s2
    800028ac:	00001097          	auipc	ra,0x1
    800028b0:	e40080e7          	jalr	-448(ra) # 800036ec <acquire>
    800028b4:	02048c63          	beqz	s1,800028ec <consoleintr+0x68>
    800028b8:	0a092783          	lw	a5,160(s2)
    800028bc:	09892703          	lw	a4,152(s2)
    800028c0:	07f00693          	li	a3,127
    800028c4:	40e7873b          	subw	a4,a5,a4
    800028c8:	02e6e263          	bltu	a3,a4,800028ec <consoleintr+0x68>
    800028cc:	00d00713          	li	a4,13
    800028d0:	04e48063          	beq	s1,a4,80002910 <consoleintr+0x8c>
    800028d4:	07f7f713          	andi	a4,a5,127
    800028d8:	00e90733          	add	a4,s2,a4
    800028dc:	0017879b          	addiw	a5,a5,1
    800028e0:	0af92023          	sw	a5,160(s2)
    800028e4:	00970c23          	sb	s1,24(a4)
    800028e8:	08f92e23          	sw	a5,156(s2)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	00813483          	ld	s1,8(sp)
    800028f8:	00013903          	ld	s2,0(sp)
    800028fc:	00004517          	auipc	a0,0x4
    80002900:	04c50513          	addi	a0,a0,76 # 80006948 <cons>
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00001317          	auipc	t1,0x1
    8000290c:	eb030067          	jr	-336(t1) # 800037b8 <release>
    80002910:	00a00493          	li	s1,10
    80002914:	fc1ff06f          	j	800028d4 <consoleintr+0x50>

0000000080002918 <consoleinit>:
    80002918:	fe010113          	addi	sp,sp,-32
    8000291c:	00113c23          	sd	ra,24(sp)
    80002920:	00813823          	sd	s0,16(sp)
    80002924:	00913423          	sd	s1,8(sp)
    80002928:	02010413          	addi	s0,sp,32
    8000292c:	00004497          	auipc	s1,0x4
    80002930:	01c48493          	addi	s1,s1,28 # 80006948 <cons>
    80002934:	00048513          	mv	a0,s1
    80002938:	00003597          	auipc	a1,0x3
    8000293c:	90058593          	addi	a1,a1,-1792 # 80005238 <_ZZ12printIntegermE6digits+0x138>
    80002940:	00001097          	auipc	ra,0x1
    80002944:	d88080e7          	jalr	-632(ra) # 800036c8 <initlock>
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	7ac080e7          	jalr	1964(ra) # 800030f4 <uartinit>
    80002950:	01813083          	ld	ra,24(sp)
    80002954:	01013403          	ld	s0,16(sp)
    80002958:	00000797          	auipc	a5,0x0
    8000295c:	d9c78793          	addi	a5,a5,-612 # 800026f4 <consoleread>
    80002960:	0af4bc23          	sd	a5,184(s1)
    80002964:	00000797          	auipc	a5,0x0
    80002968:	cec78793          	addi	a5,a5,-788 # 80002650 <consolewrite>
    8000296c:	0cf4b023          	sd	a5,192(s1)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret

000000008000297c <console_read>:
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00813423          	sd	s0,8(sp)
    80002984:	01010413          	addi	s0,sp,16
    80002988:	00813403          	ld	s0,8(sp)
    8000298c:	00004317          	auipc	t1,0x4
    80002990:	07433303          	ld	t1,116(t1) # 80006a00 <devsw+0x10>
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00030067          	jr	t1

000000008000299c <console_write>:
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	00004317          	auipc	t1,0x4
    800029b0:	05c33303          	ld	t1,92(t1) # 80006a08 <devsw+0x18>
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00030067          	jr	t1

00000000800029bc <panic>:
    800029bc:	fe010113          	addi	sp,sp,-32
    800029c0:	00113c23          	sd	ra,24(sp)
    800029c4:	00813823          	sd	s0,16(sp)
    800029c8:	00913423          	sd	s1,8(sp)
    800029cc:	02010413          	addi	s0,sp,32
    800029d0:	00050493          	mv	s1,a0
    800029d4:	00003517          	auipc	a0,0x3
    800029d8:	86c50513          	addi	a0,a0,-1940 # 80005240 <_ZZ12printIntegermE6digits+0x140>
    800029dc:	00004797          	auipc	a5,0x4
    800029e0:	0c07a623          	sw	zero,204(a5) # 80006aa8 <pr+0x18>
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	034080e7          	jalr	52(ra) # 80002a18 <__printf>
    800029ec:	00048513          	mv	a0,s1
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	028080e7          	jalr	40(ra) # 80002a18 <__printf>
    800029f8:	00002517          	auipc	a0,0x2
    800029fc:	6f850513          	addi	a0,a0,1784 # 800050f0 <kvmincrease+0xf70>
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	018080e7          	jalr	24(ra) # 80002a18 <__printf>
    80002a08:	00100793          	li	a5,1
    80002a0c:	00003717          	auipc	a4,0x3
    80002a10:	e0f72e23          	sw	a5,-484(a4) # 80005828 <panicked>
    80002a14:	0000006f          	j	80002a14 <panic+0x58>

0000000080002a18 <__printf>:
    80002a18:	f3010113          	addi	sp,sp,-208
    80002a1c:	08813023          	sd	s0,128(sp)
    80002a20:	07313423          	sd	s3,104(sp)
    80002a24:	09010413          	addi	s0,sp,144
    80002a28:	05813023          	sd	s8,64(sp)
    80002a2c:	08113423          	sd	ra,136(sp)
    80002a30:	06913c23          	sd	s1,120(sp)
    80002a34:	07213823          	sd	s2,112(sp)
    80002a38:	07413023          	sd	s4,96(sp)
    80002a3c:	05513c23          	sd	s5,88(sp)
    80002a40:	05613823          	sd	s6,80(sp)
    80002a44:	05713423          	sd	s7,72(sp)
    80002a48:	03913c23          	sd	s9,56(sp)
    80002a4c:	03a13823          	sd	s10,48(sp)
    80002a50:	03b13423          	sd	s11,40(sp)
    80002a54:	00004317          	auipc	t1,0x4
    80002a58:	03c30313          	addi	t1,t1,60 # 80006a90 <pr>
    80002a5c:	01832c03          	lw	s8,24(t1)
    80002a60:	00b43423          	sd	a1,8(s0)
    80002a64:	00c43823          	sd	a2,16(s0)
    80002a68:	00d43c23          	sd	a3,24(s0)
    80002a6c:	02e43023          	sd	a4,32(s0)
    80002a70:	02f43423          	sd	a5,40(s0)
    80002a74:	03043823          	sd	a6,48(s0)
    80002a78:	03143c23          	sd	a7,56(s0)
    80002a7c:	00050993          	mv	s3,a0
    80002a80:	4a0c1663          	bnez	s8,80002f2c <__printf+0x514>
    80002a84:	60098c63          	beqz	s3,8000309c <__printf+0x684>
    80002a88:	0009c503          	lbu	a0,0(s3)
    80002a8c:	00840793          	addi	a5,s0,8
    80002a90:	f6f43c23          	sd	a5,-136(s0)
    80002a94:	00000493          	li	s1,0
    80002a98:	22050063          	beqz	a0,80002cb8 <__printf+0x2a0>
    80002a9c:	00002a37          	lui	s4,0x2
    80002aa0:	00018ab7          	lui	s5,0x18
    80002aa4:	000f4b37          	lui	s6,0xf4
    80002aa8:	00989bb7          	lui	s7,0x989
    80002aac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ab0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ab4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ab8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002abc:	00148c9b          	addiw	s9,s1,1
    80002ac0:	02500793          	li	a5,37
    80002ac4:	01998933          	add	s2,s3,s9
    80002ac8:	38f51263          	bne	a0,a5,80002e4c <__printf+0x434>
    80002acc:	00094783          	lbu	a5,0(s2)
    80002ad0:	00078c9b          	sext.w	s9,a5
    80002ad4:	1e078263          	beqz	a5,80002cb8 <__printf+0x2a0>
    80002ad8:	0024849b          	addiw	s1,s1,2
    80002adc:	07000713          	li	a4,112
    80002ae0:	00998933          	add	s2,s3,s1
    80002ae4:	38e78a63          	beq	a5,a4,80002e78 <__printf+0x460>
    80002ae8:	20f76863          	bltu	a4,a5,80002cf8 <__printf+0x2e0>
    80002aec:	42a78863          	beq	a5,a0,80002f1c <__printf+0x504>
    80002af0:	06400713          	li	a4,100
    80002af4:	40e79663          	bne	a5,a4,80002f00 <__printf+0x4e8>
    80002af8:	f7843783          	ld	a5,-136(s0)
    80002afc:	0007a603          	lw	a2,0(a5)
    80002b00:	00878793          	addi	a5,a5,8
    80002b04:	f6f43c23          	sd	a5,-136(s0)
    80002b08:	42064a63          	bltz	a2,80002f3c <__printf+0x524>
    80002b0c:	00a00713          	li	a4,10
    80002b10:	02e677bb          	remuw	a5,a2,a4
    80002b14:	00002d97          	auipc	s11,0x2
    80002b18:	754d8d93          	addi	s11,s11,1876 # 80005268 <digits>
    80002b1c:	00900593          	li	a1,9
    80002b20:	0006051b          	sext.w	a0,a2
    80002b24:	00000c93          	li	s9,0
    80002b28:	02079793          	slli	a5,a5,0x20
    80002b2c:	0207d793          	srli	a5,a5,0x20
    80002b30:	00fd87b3          	add	a5,s11,a5
    80002b34:	0007c783          	lbu	a5,0(a5)
    80002b38:	02e656bb          	divuw	a3,a2,a4
    80002b3c:	f8f40023          	sb	a5,-128(s0)
    80002b40:	14c5d863          	bge	a1,a2,80002c90 <__printf+0x278>
    80002b44:	06300593          	li	a1,99
    80002b48:	00100c93          	li	s9,1
    80002b4c:	02e6f7bb          	remuw	a5,a3,a4
    80002b50:	02079793          	slli	a5,a5,0x20
    80002b54:	0207d793          	srli	a5,a5,0x20
    80002b58:	00fd87b3          	add	a5,s11,a5
    80002b5c:	0007c783          	lbu	a5,0(a5)
    80002b60:	02e6d73b          	divuw	a4,a3,a4
    80002b64:	f8f400a3          	sb	a5,-127(s0)
    80002b68:	12a5f463          	bgeu	a1,a0,80002c90 <__printf+0x278>
    80002b6c:	00a00693          	li	a3,10
    80002b70:	00900593          	li	a1,9
    80002b74:	02d777bb          	remuw	a5,a4,a3
    80002b78:	02079793          	slli	a5,a5,0x20
    80002b7c:	0207d793          	srli	a5,a5,0x20
    80002b80:	00fd87b3          	add	a5,s11,a5
    80002b84:	0007c503          	lbu	a0,0(a5)
    80002b88:	02d757bb          	divuw	a5,a4,a3
    80002b8c:	f8a40123          	sb	a0,-126(s0)
    80002b90:	48e5f263          	bgeu	a1,a4,80003014 <__printf+0x5fc>
    80002b94:	06300513          	li	a0,99
    80002b98:	02d7f5bb          	remuw	a1,a5,a3
    80002b9c:	02059593          	slli	a1,a1,0x20
    80002ba0:	0205d593          	srli	a1,a1,0x20
    80002ba4:	00bd85b3          	add	a1,s11,a1
    80002ba8:	0005c583          	lbu	a1,0(a1)
    80002bac:	02d7d7bb          	divuw	a5,a5,a3
    80002bb0:	f8b401a3          	sb	a1,-125(s0)
    80002bb4:	48e57263          	bgeu	a0,a4,80003038 <__printf+0x620>
    80002bb8:	3e700513          	li	a0,999
    80002bbc:	02d7f5bb          	remuw	a1,a5,a3
    80002bc0:	02059593          	slli	a1,a1,0x20
    80002bc4:	0205d593          	srli	a1,a1,0x20
    80002bc8:	00bd85b3          	add	a1,s11,a1
    80002bcc:	0005c583          	lbu	a1,0(a1)
    80002bd0:	02d7d7bb          	divuw	a5,a5,a3
    80002bd4:	f8b40223          	sb	a1,-124(s0)
    80002bd8:	46e57663          	bgeu	a0,a4,80003044 <__printf+0x62c>
    80002bdc:	02d7f5bb          	remuw	a1,a5,a3
    80002be0:	02059593          	slli	a1,a1,0x20
    80002be4:	0205d593          	srli	a1,a1,0x20
    80002be8:	00bd85b3          	add	a1,s11,a1
    80002bec:	0005c583          	lbu	a1,0(a1)
    80002bf0:	02d7d7bb          	divuw	a5,a5,a3
    80002bf4:	f8b402a3          	sb	a1,-123(s0)
    80002bf8:	46ea7863          	bgeu	s4,a4,80003068 <__printf+0x650>
    80002bfc:	02d7f5bb          	remuw	a1,a5,a3
    80002c00:	02059593          	slli	a1,a1,0x20
    80002c04:	0205d593          	srli	a1,a1,0x20
    80002c08:	00bd85b3          	add	a1,s11,a1
    80002c0c:	0005c583          	lbu	a1,0(a1)
    80002c10:	02d7d7bb          	divuw	a5,a5,a3
    80002c14:	f8b40323          	sb	a1,-122(s0)
    80002c18:	3eeaf863          	bgeu	s5,a4,80003008 <__printf+0x5f0>
    80002c1c:	02d7f5bb          	remuw	a1,a5,a3
    80002c20:	02059593          	slli	a1,a1,0x20
    80002c24:	0205d593          	srli	a1,a1,0x20
    80002c28:	00bd85b3          	add	a1,s11,a1
    80002c2c:	0005c583          	lbu	a1,0(a1)
    80002c30:	02d7d7bb          	divuw	a5,a5,a3
    80002c34:	f8b403a3          	sb	a1,-121(s0)
    80002c38:	42eb7e63          	bgeu	s6,a4,80003074 <__printf+0x65c>
    80002c3c:	02d7f5bb          	remuw	a1,a5,a3
    80002c40:	02059593          	slli	a1,a1,0x20
    80002c44:	0205d593          	srli	a1,a1,0x20
    80002c48:	00bd85b3          	add	a1,s11,a1
    80002c4c:	0005c583          	lbu	a1,0(a1)
    80002c50:	02d7d7bb          	divuw	a5,a5,a3
    80002c54:	f8b40423          	sb	a1,-120(s0)
    80002c58:	42ebfc63          	bgeu	s7,a4,80003090 <__printf+0x678>
    80002c5c:	02079793          	slli	a5,a5,0x20
    80002c60:	0207d793          	srli	a5,a5,0x20
    80002c64:	00fd8db3          	add	s11,s11,a5
    80002c68:	000dc703          	lbu	a4,0(s11)
    80002c6c:	00a00793          	li	a5,10
    80002c70:	00900c93          	li	s9,9
    80002c74:	f8e404a3          	sb	a4,-119(s0)
    80002c78:	00065c63          	bgez	a2,80002c90 <__printf+0x278>
    80002c7c:	f9040713          	addi	a4,s0,-112
    80002c80:	00f70733          	add	a4,a4,a5
    80002c84:	02d00693          	li	a3,45
    80002c88:	fed70823          	sb	a3,-16(a4)
    80002c8c:	00078c93          	mv	s9,a5
    80002c90:	f8040793          	addi	a5,s0,-128
    80002c94:	01978cb3          	add	s9,a5,s9
    80002c98:	f7f40d13          	addi	s10,s0,-129
    80002c9c:	000cc503          	lbu	a0,0(s9)
    80002ca0:	fffc8c93          	addi	s9,s9,-1
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	b90080e7          	jalr	-1136(ra) # 80002834 <consputc>
    80002cac:	ffac98e3          	bne	s9,s10,80002c9c <__printf+0x284>
    80002cb0:	00094503          	lbu	a0,0(s2)
    80002cb4:	e00514e3          	bnez	a0,80002abc <__printf+0xa4>
    80002cb8:	1a0c1663          	bnez	s8,80002e64 <__printf+0x44c>
    80002cbc:	08813083          	ld	ra,136(sp)
    80002cc0:	08013403          	ld	s0,128(sp)
    80002cc4:	07813483          	ld	s1,120(sp)
    80002cc8:	07013903          	ld	s2,112(sp)
    80002ccc:	06813983          	ld	s3,104(sp)
    80002cd0:	06013a03          	ld	s4,96(sp)
    80002cd4:	05813a83          	ld	s5,88(sp)
    80002cd8:	05013b03          	ld	s6,80(sp)
    80002cdc:	04813b83          	ld	s7,72(sp)
    80002ce0:	04013c03          	ld	s8,64(sp)
    80002ce4:	03813c83          	ld	s9,56(sp)
    80002ce8:	03013d03          	ld	s10,48(sp)
    80002cec:	02813d83          	ld	s11,40(sp)
    80002cf0:	0d010113          	addi	sp,sp,208
    80002cf4:	00008067          	ret
    80002cf8:	07300713          	li	a4,115
    80002cfc:	1ce78a63          	beq	a5,a4,80002ed0 <__printf+0x4b8>
    80002d00:	07800713          	li	a4,120
    80002d04:	1ee79e63          	bne	a5,a4,80002f00 <__printf+0x4e8>
    80002d08:	f7843783          	ld	a5,-136(s0)
    80002d0c:	0007a703          	lw	a4,0(a5)
    80002d10:	00878793          	addi	a5,a5,8
    80002d14:	f6f43c23          	sd	a5,-136(s0)
    80002d18:	28074263          	bltz	a4,80002f9c <__printf+0x584>
    80002d1c:	00002d97          	auipc	s11,0x2
    80002d20:	54cd8d93          	addi	s11,s11,1356 # 80005268 <digits>
    80002d24:	00f77793          	andi	a5,a4,15
    80002d28:	00fd87b3          	add	a5,s11,a5
    80002d2c:	0007c683          	lbu	a3,0(a5)
    80002d30:	00f00613          	li	a2,15
    80002d34:	0007079b          	sext.w	a5,a4
    80002d38:	f8d40023          	sb	a3,-128(s0)
    80002d3c:	0047559b          	srliw	a1,a4,0x4
    80002d40:	0047569b          	srliw	a3,a4,0x4
    80002d44:	00000c93          	li	s9,0
    80002d48:	0ee65063          	bge	a2,a4,80002e28 <__printf+0x410>
    80002d4c:	00f6f693          	andi	a3,a3,15
    80002d50:	00dd86b3          	add	a3,s11,a3
    80002d54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d58:	0087d79b          	srliw	a5,a5,0x8
    80002d5c:	00100c93          	li	s9,1
    80002d60:	f8d400a3          	sb	a3,-127(s0)
    80002d64:	0cb67263          	bgeu	a2,a1,80002e28 <__printf+0x410>
    80002d68:	00f7f693          	andi	a3,a5,15
    80002d6c:	00dd86b3          	add	a3,s11,a3
    80002d70:	0006c583          	lbu	a1,0(a3)
    80002d74:	00f00613          	li	a2,15
    80002d78:	0047d69b          	srliw	a3,a5,0x4
    80002d7c:	f8b40123          	sb	a1,-126(s0)
    80002d80:	0047d593          	srli	a1,a5,0x4
    80002d84:	28f67e63          	bgeu	a2,a5,80003020 <__printf+0x608>
    80002d88:	00f6f693          	andi	a3,a3,15
    80002d8c:	00dd86b3          	add	a3,s11,a3
    80002d90:	0006c503          	lbu	a0,0(a3)
    80002d94:	0087d813          	srli	a6,a5,0x8
    80002d98:	0087d69b          	srliw	a3,a5,0x8
    80002d9c:	f8a401a3          	sb	a0,-125(s0)
    80002da0:	28b67663          	bgeu	a2,a1,8000302c <__printf+0x614>
    80002da4:	00f6f693          	andi	a3,a3,15
    80002da8:	00dd86b3          	add	a3,s11,a3
    80002dac:	0006c583          	lbu	a1,0(a3)
    80002db0:	00c7d513          	srli	a0,a5,0xc
    80002db4:	00c7d69b          	srliw	a3,a5,0xc
    80002db8:	f8b40223          	sb	a1,-124(s0)
    80002dbc:	29067a63          	bgeu	a2,a6,80003050 <__printf+0x638>
    80002dc0:	00f6f693          	andi	a3,a3,15
    80002dc4:	00dd86b3          	add	a3,s11,a3
    80002dc8:	0006c583          	lbu	a1,0(a3)
    80002dcc:	0107d813          	srli	a6,a5,0x10
    80002dd0:	0107d69b          	srliw	a3,a5,0x10
    80002dd4:	f8b402a3          	sb	a1,-123(s0)
    80002dd8:	28a67263          	bgeu	a2,a0,8000305c <__printf+0x644>
    80002ddc:	00f6f693          	andi	a3,a3,15
    80002de0:	00dd86b3          	add	a3,s11,a3
    80002de4:	0006c683          	lbu	a3,0(a3)
    80002de8:	0147d79b          	srliw	a5,a5,0x14
    80002dec:	f8d40323          	sb	a3,-122(s0)
    80002df0:	21067663          	bgeu	a2,a6,80002ffc <__printf+0x5e4>
    80002df4:	02079793          	slli	a5,a5,0x20
    80002df8:	0207d793          	srli	a5,a5,0x20
    80002dfc:	00fd8db3          	add	s11,s11,a5
    80002e00:	000dc683          	lbu	a3,0(s11)
    80002e04:	00800793          	li	a5,8
    80002e08:	00700c93          	li	s9,7
    80002e0c:	f8d403a3          	sb	a3,-121(s0)
    80002e10:	00075c63          	bgez	a4,80002e28 <__printf+0x410>
    80002e14:	f9040713          	addi	a4,s0,-112
    80002e18:	00f70733          	add	a4,a4,a5
    80002e1c:	02d00693          	li	a3,45
    80002e20:	fed70823          	sb	a3,-16(a4)
    80002e24:	00078c93          	mv	s9,a5
    80002e28:	f8040793          	addi	a5,s0,-128
    80002e2c:	01978cb3          	add	s9,a5,s9
    80002e30:	f7f40d13          	addi	s10,s0,-129
    80002e34:	000cc503          	lbu	a0,0(s9)
    80002e38:	fffc8c93          	addi	s9,s9,-1
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	9f8080e7          	jalr	-1544(ra) # 80002834 <consputc>
    80002e44:	ff9d18e3          	bne	s10,s9,80002e34 <__printf+0x41c>
    80002e48:	0100006f          	j	80002e58 <__printf+0x440>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	9e8080e7          	jalr	-1560(ra) # 80002834 <consputc>
    80002e54:	000c8493          	mv	s1,s9
    80002e58:	00094503          	lbu	a0,0(s2)
    80002e5c:	c60510e3          	bnez	a0,80002abc <__printf+0xa4>
    80002e60:	e40c0ee3          	beqz	s8,80002cbc <__printf+0x2a4>
    80002e64:	00004517          	auipc	a0,0x4
    80002e68:	c2c50513          	addi	a0,a0,-980 # 80006a90 <pr>
    80002e6c:	00001097          	auipc	ra,0x1
    80002e70:	94c080e7          	jalr	-1716(ra) # 800037b8 <release>
    80002e74:	e49ff06f          	j	80002cbc <__printf+0x2a4>
    80002e78:	f7843783          	ld	a5,-136(s0)
    80002e7c:	03000513          	li	a0,48
    80002e80:	01000d13          	li	s10,16
    80002e84:	00878713          	addi	a4,a5,8
    80002e88:	0007bc83          	ld	s9,0(a5)
    80002e8c:	f6e43c23          	sd	a4,-136(s0)
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	9a4080e7          	jalr	-1628(ra) # 80002834 <consputc>
    80002e98:	07800513          	li	a0,120
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	998080e7          	jalr	-1640(ra) # 80002834 <consputc>
    80002ea4:	00002d97          	auipc	s11,0x2
    80002ea8:	3c4d8d93          	addi	s11,s11,964 # 80005268 <digits>
    80002eac:	03ccd793          	srli	a5,s9,0x3c
    80002eb0:	00fd87b3          	add	a5,s11,a5
    80002eb4:	0007c503          	lbu	a0,0(a5)
    80002eb8:	fffd0d1b          	addiw	s10,s10,-1
    80002ebc:	004c9c93          	slli	s9,s9,0x4
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	974080e7          	jalr	-1676(ra) # 80002834 <consputc>
    80002ec8:	fe0d12e3          	bnez	s10,80002eac <__printf+0x494>
    80002ecc:	f8dff06f          	j	80002e58 <__printf+0x440>
    80002ed0:	f7843783          	ld	a5,-136(s0)
    80002ed4:	0007bc83          	ld	s9,0(a5)
    80002ed8:	00878793          	addi	a5,a5,8
    80002edc:	f6f43c23          	sd	a5,-136(s0)
    80002ee0:	000c9a63          	bnez	s9,80002ef4 <__printf+0x4dc>
    80002ee4:	1080006f          	j	80002fec <__printf+0x5d4>
    80002ee8:	001c8c93          	addi	s9,s9,1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	948080e7          	jalr	-1720(ra) # 80002834 <consputc>
    80002ef4:	000cc503          	lbu	a0,0(s9)
    80002ef8:	fe0518e3          	bnez	a0,80002ee8 <__printf+0x4d0>
    80002efc:	f5dff06f          	j	80002e58 <__printf+0x440>
    80002f00:	02500513          	li	a0,37
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	930080e7          	jalr	-1744(ra) # 80002834 <consputc>
    80002f0c:	000c8513          	mv	a0,s9
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	924080e7          	jalr	-1756(ra) # 80002834 <consputc>
    80002f18:	f41ff06f          	j	80002e58 <__printf+0x440>
    80002f1c:	02500513          	li	a0,37
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	914080e7          	jalr	-1772(ra) # 80002834 <consputc>
    80002f28:	f31ff06f          	j	80002e58 <__printf+0x440>
    80002f2c:	00030513          	mv	a0,t1
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	7bc080e7          	jalr	1980(ra) # 800036ec <acquire>
    80002f38:	b4dff06f          	j	80002a84 <__printf+0x6c>
    80002f3c:	40c0053b          	negw	a0,a2
    80002f40:	00a00713          	li	a4,10
    80002f44:	02e576bb          	remuw	a3,a0,a4
    80002f48:	00002d97          	auipc	s11,0x2
    80002f4c:	320d8d93          	addi	s11,s11,800 # 80005268 <digits>
    80002f50:	ff700593          	li	a1,-9
    80002f54:	02069693          	slli	a3,a3,0x20
    80002f58:	0206d693          	srli	a3,a3,0x20
    80002f5c:	00dd86b3          	add	a3,s11,a3
    80002f60:	0006c683          	lbu	a3,0(a3)
    80002f64:	02e557bb          	divuw	a5,a0,a4
    80002f68:	f8d40023          	sb	a3,-128(s0)
    80002f6c:	10b65e63          	bge	a2,a1,80003088 <__printf+0x670>
    80002f70:	06300593          	li	a1,99
    80002f74:	02e7f6bb          	remuw	a3,a5,a4
    80002f78:	02069693          	slli	a3,a3,0x20
    80002f7c:	0206d693          	srli	a3,a3,0x20
    80002f80:	00dd86b3          	add	a3,s11,a3
    80002f84:	0006c683          	lbu	a3,0(a3)
    80002f88:	02e7d73b          	divuw	a4,a5,a4
    80002f8c:	00200793          	li	a5,2
    80002f90:	f8d400a3          	sb	a3,-127(s0)
    80002f94:	bca5ece3          	bltu	a1,a0,80002b6c <__printf+0x154>
    80002f98:	ce5ff06f          	j	80002c7c <__printf+0x264>
    80002f9c:	40e007bb          	negw	a5,a4
    80002fa0:	00002d97          	auipc	s11,0x2
    80002fa4:	2c8d8d93          	addi	s11,s11,712 # 80005268 <digits>
    80002fa8:	00f7f693          	andi	a3,a5,15
    80002fac:	00dd86b3          	add	a3,s11,a3
    80002fb0:	0006c583          	lbu	a1,0(a3)
    80002fb4:	ff100613          	li	a2,-15
    80002fb8:	0047d69b          	srliw	a3,a5,0x4
    80002fbc:	f8b40023          	sb	a1,-128(s0)
    80002fc0:	0047d59b          	srliw	a1,a5,0x4
    80002fc4:	0ac75e63          	bge	a4,a2,80003080 <__printf+0x668>
    80002fc8:	00f6f693          	andi	a3,a3,15
    80002fcc:	00dd86b3          	add	a3,s11,a3
    80002fd0:	0006c603          	lbu	a2,0(a3)
    80002fd4:	00f00693          	li	a3,15
    80002fd8:	0087d79b          	srliw	a5,a5,0x8
    80002fdc:	f8c400a3          	sb	a2,-127(s0)
    80002fe0:	d8b6e4e3          	bltu	a3,a1,80002d68 <__printf+0x350>
    80002fe4:	00200793          	li	a5,2
    80002fe8:	e2dff06f          	j	80002e14 <__printf+0x3fc>
    80002fec:	00002c97          	auipc	s9,0x2
    80002ff0:	25cc8c93          	addi	s9,s9,604 # 80005248 <_ZZ12printIntegermE6digits+0x148>
    80002ff4:	02800513          	li	a0,40
    80002ff8:	ef1ff06f          	j	80002ee8 <__printf+0x4d0>
    80002ffc:	00700793          	li	a5,7
    80003000:	00600c93          	li	s9,6
    80003004:	e0dff06f          	j	80002e10 <__printf+0x3f8>
    80003008:	00700793          	li	a5,7
    8000300c:	00600c93          	li	s9,6
    80003010:	c69ff06f          	j	80002c78 <__printf+0x260>
    80003014:	00300793          	li	a5,3
    80003018:	00200c93          	li	s9,2
    8000301c:	c5dff06f          	j	80002c78 <__printf+0x260>
    80003020:	00300793          	li	a5,3
    80003024:	00200c93          	li	s9,2
    80003028:	de9ff06f          	j	80002e10 <__printf+0x3f8>
    8000302c:	00400793          	li	a5,4
    80003030:	00300c93          	li	s9,3
    80003034:	dddff06f          	j	80002e10 <__printf+0x3f8>
    80003038:	00400793          	li	a5,4
    8000303c:	00300c93          	li	s9,3
    80003040:	c39ff06f          	j	80002c78 <__printf+0x260>
    80003044:	00500793          	li	a5,5
    80003048:	00400c93          	li	s9,4
    8000304c:	c2dff06f          	j	80002c78 <__printf+0x260>
    80003050:	00500793          	li	a5,5
    80003054:	00400c93          	li	s9,4
    80003058:	db9ff06f          	j	80002e10 <__printf+0x3f8>
    8000305c:	00600793          	li	a5,6
    80003060:	00500c93          	li	s9,5
    80003064:	dadff06f          	j	80002e10 <__printf+0x3f8>
    80003068:	00600793          	li	a5,6
    8000306c:	00500c93          	li	s9,5
    80003070:	c09ff06f          	j	80002c78 <__printf+0x260>
    80003074:	00800793          	li	a5,8
    80003078:	00700c93          	li	s9,7
    8000307c:	bfdff06f          	j	80002c78 <__printf+0x260>
    80003080:	00100793          	li	a5,1
    80003084:	d91ff06f          	j	80002e14 <__printf+0x3fc>
    80003088:	00100793          	li	a5,1
    8000308c:	bf1ff06f          	j	80002c7c <__printf+0x264>
    80003090:	00900793          	li	a5,9
    80003094:	00800c93          	li	s9,8
    80003098:	be1ff06f          	j	80002c78 <__printf+0x260>
    8000309c:	00002517          	auipc	a0,0x2
    800030a0:	1b450513          	addi	a0,a0,436 # 80005250 <_ZZ12printIntegermE6digits+0x150>
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	918080e7          	jalr	-1768(ra) # 800029bc <panic>

00000000800030ac <printfinit>:
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	00113c23          	sd	ra,24(sp)
    800030bc:	02010413          	addi	s0,sp,32
    800030c0:	00004497          	auipc	s1,0x4
    800030c4:	9d048493          	addi	s1,s1,-1584 # 80006a90 <pr>
    800030c8:	00048513          	mv	a0,s1
    800030cc:	00002597          	auipc	a1,0x2
    800030d0:	19458593          	addi	a1,a1,404 # 80005260 <_ZZ12printIntegermE6digits+0x160>
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	5f4080e7          	jalr	1524(ra) # 800036c8 <initlock>
    800030dc:	01813083          	ld	ra,24(sp)
    800030e0:	01013403          	ld	s0,16(sp)
    800030e4:	0004ac23          	sw	zero,24(s1)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret

00000000800030f4 <uartinit>:
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00813423          	sd	s0,8(sp)
    800030fc:	01010413          	addi	s0,sp,16
    80003100:	100007b7          	lui	a5,0x10000
    80003104:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003108:	f8000713          	li	a4,-128
    8000310c:	00e781a3          	sb	a4,3(a5)
    80003110:	00300713          	li	a4,3
    80003114:	00e78023          	sb	a4,0(a5)
    80003118:	000780a3          	sb	zero,1(a5)
    8000311c:	00e781a3          	sb	a4,3(a5)
    80003120:	00700693          	li	a3,7
    80003124:	00d78123          	sb	a3,2(a5)
    80003128:	00e780a3          	sb	a4,1(a5)
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <uartputc>:
    80003138:	00002797          	auipc	a5,0x2
    8000313c:	6f07a783          	lw	a5,1776(a5) # 80005828 <panicked>
    80003140:	00078463          	beqz	a5,80003148 <uartputc+0x10>
    80003144:	0000006f          	j	80003144 <uartputc+0xc>
    80003148:	fd010113          	addi	sp,sp,-48
    8000314c:	02813023          	sd	s0,32(sp)
    80003150:	00913c23          	sd	s1,24(sp)
    80003154:	01213823          	sd	s2,16(sp)
    80003158:	01313423          	sd	s3,8(sp)
    8000315c:	02113423          	sd	ra,40(sp)
    80003160:	03010413          	addi	s0,sp,48
    80003164:	00002917          	auipc	s2,0x2
    80003168:	6cc90913          	addi	s2,s2,1740 # 80005830 <uart_tx_r>
    8000316c:	00093783          	ld	a5,0(s2)
    80003170:	00002497          	auipc	s1,0x2
    80003174:	6c848493          	addi	s1,s1,1736 # 80005838 <uart_tx_w>
    80003178:	0004b703          	ld	a4,0(s1)
    8000317c:	02078693          	addi	a3,a5,32
    80003180:	00050993          	mv	s3,a0
    80003184:	02e69c63          	bne	a3,a4,800031bc <uartputc+0x84>
    80003188:	00001097          	auipc	ra,0x1
    8000318c:	834080e7          	jalr	-1996(ra) # 800039bc <push_on>
    80003190:	00093783          	ld	a5,0(s2)
    80003194:	0004b703          	ld	a4,0(s1)
    80003198:	02078793          	addi	a5,a5,32
    8000319c:	00e79463          	bne	a5,a4,800031a4 <uartputc+0x6c>
    800031a0:	0000006f          	j	800031a0 <uartputc+0x68>
    800031a4:	00001097          	auipc	ra,0x1
    800031a8:	88c080e7          	jalr	-1908(ra) # 80003a30 <pop_on>
    800031ac:	00093783          	ld	a5,0(s2)
    800031b0:	0004b703          	ld	a4,0(s1)
    800031b4:	02078693          	addi	a3,a5,32
    800031b8:	fce688e3          	beq	a3,a4,80003188 <uartputc+0x50>
    800031bc:	01f77693          	andi	a3,a4,31
    800031c0:	00004597          	auipc	a1,0x4
    800031c4:	8f058593          	addi	a1,a1,-1808 # 80006ab0 <uart_tx_buf>
    800031c8:	00d586b3          	add	a3,a1,a3
    800031cc:	00170713          	addi	a4,a4,1
    800031d0:	01368023          	sb	s3,0(a3)
    800031d4:	00e4b023          	sd	a4,0(s1)
    800031d8:	10000637          	lui	a2,0x10000
    800031dc:	02f71063          	bne	a4,a5,800031fc <uartputc+0xc4>
    800031e0:	0340006f          	j	80003214 <uartputc+0xdc>
    800031e4:	00074703          	lbu	a4,0(a4)
    800031e8:	00f93023          	sd	a5,0(s2)
    800031ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031f0:	00093783          	ld	a5,0(s2)
    800031f4:	0004b703          	ld	a4,0(s1)
    800031f8:	00f70e63          	beq	a4,a5,80003214 <uartputc+0xdc>
    800031fc:	00564683          	lbu	a3,5(a2)
    80003200:	01f7f713          	andi	a4,a5,31
    80003204:	00e58733          	add	a4,a1,a4
    80003208:	0206f693          	andi	a3,a3,32
    8000320c:	00178793          	addi	a5,a5,1
    80003210:	fc069ae3          	bnez	a3,800031e4 <uartputc+0xac>
    80003214:	02813083          	ld	ra,40(sp)
    80003218:	02013403          	ld	s0,32(sp)
    8000321c:	01813483          	ld	s1,24(sp)
    80003220:	01013903          	ld	s2,16(sp)
    80003224:	00813983          	ld	s3,8(sp)
    80003228:	03010113          	addi	sp,sp,48
    8000322c:	00008067          	ret

0000000080003230 <uartputc_sync>:
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00813423          	sd	s0,8(sp)
    80003238:	01010413          	addi	s0,sp,16
    8000323c:	00002717          	auipc	a4,0x2
    80003240:	5ec72703          	lw	a4,1516(a4) # 80005828 <panicked>
    80003244:	02071663          	bnez	a4,80003270 <uartputc_sync+0x40>
    80003248:	00050793          	mv	a5,a0
    8000324c:	100006b7          	lui	a3,0x10000
    80003250:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003254:	02077713          	andi	a4,a4,32
    80003258:	fe070ce3          	beqz	a4,80003250 <uartputc_sync+0x20>
    8000325c:	0ff7f793          	andi	a5,a5,255
    80003260:	00f68023          	sb	a5,0(a3)
    80003264:	00813403          	ld	s0,8(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret
    80003270:	0000006f          	j	80003270 <uartputc_sync+0x40>

0000000080003274 <uartstart>:
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00813423          	sd	s0,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
    80003280:	00002617          	auipc	a2,0x2
    80003284:	5b060613          	addi	a2,a2,1456 # 80005830 <uart_tx_r>
    80003288:	00002517          	auipc	a0,0x2
    8000328c:	5b050513          	addi	a0,a0,1456 # 80005838 <uart_tx_w>
    80003290:	00063783          	ld	a5,0(a2)
    80003294:	00053703          	ld	a4,0(a0)
    80003298:	04f70263          	beq	a4,a5,800032dc <uartstart+0x68>
    8000329c:	100005b7          	lui	a1,0x10000
    800032a0:	00004817          	auipc	a6,0x4
    800032a4:	81080813          	addi	a6,a6,-2032 # 80006ab0 <uart_tx_buf>
    800032a8:	01c0006f          	j	800032c4 <uartstart+0x50>
    800032ac:	0006c703          	lbu	a4,0(a3)
    800032b0:	00f63023          	sd	a5,0(a2)
    800032b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032b8:	00063783          	ld	a5,0(a2)
    800032bc:	00053703          	ld	a4,0(a0)
    800032c0:	00f70e63          	beq	a4,a5,800032dc <uartstart+0x68>
    800032c4:	01f7f713          	andi	a4,a5,31
    800032c8:	00e806b3          	add	a3,a6,a4
    800032cc:	0055c703          	lbu	a4,5(a1)
    800032d0:	00178793          	addi	a5,a5,1
    800032d4:	02077713          	andi	a4,a4,32
    800032d8:	fc071ae3          	bnez	a4,800032ac <uartstart+0x38>
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret

00000000800032e8 <uartgetc>:
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813423          	sd	s0,8(sp)
    800032f0:	01010413          	addi	s0,sp,16
    800032f4:	10000737          	lui	a4,0x10000
    800032f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032fc:	0017f793          	andi	a5,a5,1
    80003300:	00078c63          	beqz	a5,80003318 <uartgetc+0x30>
    80003304:	00074503          	lbu	a0,0(a4)
    80003308:	0ff57513          	andi	a0,a0,255
    8000330c:	00813403          	ld	s0,8(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret
    80003318:	fff00513          	li	a0,-1
    8000331c:	ff1ff06f          	j	8000330c <uartgetc+0x24>

0000000080003320 <uartintr>:
    80003320:	100007b7          	lui	a5,0x10000
    80003324:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003328:	0017f793          	andi	a5,a5,1
    8000332c:	0a078463          	beqz	a5,800033d4 <uartintr+0xb4>
    80003330:	fe010113          	addi	sp,sp,-32
    80003334:	00813823          	sd	s0,16(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	00113c23          	sd	ra,24(sp)
    80003340:	02010413          	addi	s0,sp,32
    80003344:	100004b7          	lui	s1,0x10000
    80003348:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000334c:	0ff57513          	andi	a0,a0,255
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	534080e7          	jalr	1332(ra) # 80002884 <consoleintr>
    80003358:	0054c783          	lbu	a5,5(s1)
    8000335c:	0017f793          	andi	a5,a5,1
    80003360:	fe0794e3          	bnez	a5,80003348 <uartintr+0x28>
    80003364:	00002617          	auipc	a2,0x2
    80003368:	4cc60613          	addi	a2,a2,1228 # 80005830 <uart_tx_r>
    8000336c:	00002517          	auipc	a0,0x2
    80003370:	4cc50513          	addi	a0,a0,1228 # 80005838 <uart_tx_w>
    80003374:	00063783          	ld	a5,0(a2)
    80003378:	00053703          	ld	a4,0(a0)
    8000337c:	04f70263          	beq	a4,a5,800033c0 <uartintr+0xa0>
    80003380:	100005b7          	lui	a1,0x10000
    80003384:	00003817          	auipc	a6,0x3
    80003388:	72c80813          	addi	a6,a6,1836 # 80006ab0 <uart_tx_buf>
    8000338c:	01c0006f          	j	800033a8 <uartintr+0x88>
    80003390:	0006c703          	lbu	a4,0(a3)
    80003394:	00f63023          	sd	a5,0(a2)
    80003398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000339c:	00063783          	ld	a5,0(a2)
    800033a0:	00053703          	ld	a4,0(a0)
    800033a4:	00f70e63          	beq	a4,a5,800033c0 <uartintr+0xa0>
    800033a8:	01f7f713          	andi	a4,a5,31
    800033ac:	00e806b3          	add	a3,a6,a4
    800033b0:	0055c703          	lbu	a4,5(a1)
    800033b4:	00178793          	addi	a5,a5,1
    800033b8:	02077713          	andi	a4,a4,32
    800033bc:	fc071ae3          	bnez	a4,80003390 <uartintr+0x70>
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret
    800033d4:	00002617          	auipc	a2,0x2
    800033d8:	45c60613          	addi	a2,a2,1116 # 80005830 <uart_tx_r>
    800033dc:	00002517          	auipc	a0,0x2
    800033e0:	45c50513          	addi	a0,a0,1116 # 80005838 <uart_tx_w>
    800033e4:	00063783          	ld	a5,0(a2)
    800033e8:	00053703          	ld	a4,0(a0)
    800033ec:	04f70263          	beq	a4,a5,80003430 <uartintr+0x110>
    800033f0:	100005b7          	lui	a1,0x10000
    800033f4:	00003817          	auipc	a6,0x3
    800033f8:	6bc80813          	addi	a6,a6,1724 # 80006ab0 <uart_tx_buf>
    800033fc:	01c0006f          	j	80003418 <uartintr+0xf8>
    80003400:	0006c703          	lbu	a4,0(a3)
    80003404:	00f63023          	sd	a5,0(a2)
    80003408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000340c:	00063783          	ld	a5,0(a2)
    80003410:	00053703          	ld	a4,0(a0)
    80003414:	02f70063          	beq	a4,a5,80003434 <uartintr+0x114>
    80003418:	01f7f713          	andi	a4,a5,31
    8000341c:	00e806b3          	add	a3,a6,a4
    80003420:	0055c703          	lbu	a4,5(a1)
    80003424:	00178793          	addi	a5,a5,1
    80003428:	02077713          	andi	a4,a4,32
    8000342c:	fc071ae3          	bnez	a4,80003400 <uartintr+0xe0>
    80003430:	00008067          	ret
    80003434:	00008067          	ret

0000000080003438 <kinit>:
    80003438:	fc010113          	addi	sp,sp,-64
    8000343c:	02913423          	sd	s1,40(sp)
    80003440:	fffff7b7          	lui	a5,0xfffff
    80003444:	00004497          	auipc	s1,0x4
    80003448:	69b48493          	addi	s1,s1,1691 # 80007adf <end+0xfff>
    8000344c:	02813823          	sd	s0,48(sp)
    80003450:	01313c23          	sd	s3,24(sp)
    80003454:	00f4f4b3          	and	s1,s1,a5
    80003458:	02113c23          	sd	ra,56(sp)
    8000345c:	03213023          	sd	s2,32(sp)
    80003460:	01413823          	sd	s4,16(sp)
    80003464:	01513423          	sd	s5,8(sp)
    80003468:	04010413          	addi	s0,sp,64
    8000346c:	000017b7          	lui	a5,0x1
    80003470:	01100993          	li	s3,17
    80003474:	00f487b3          	add	a5,s1,a5
    80003478:	01b99993          	slli	s3,s3,0x1b
    8000347c:	06f9e063          	bltu	s3,a5,800034dc <kinit+0xa4>
    80003480:	00003a97          	auipc	s5,0x3
    80003484:	660a8a93          	addi	s5,s5,1632 # 80006ae0 <end>
    80003488:	0754ec63          	bltu	s1,s5,80003500 <kinit+0xc8>
    8000348c:	0734fa63          	bgeu	s1,s3,80003500 <kinit+0xc8>
    80003490:	00088a37          	lui	s4,0x88
    80003494:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003498:	00002917          	auipc	s2,0x2
    8000349c:	3a890913          	addi	s2,s2,936 # 80005840 <kmem>
    800034a0:	00ca1a13          	slli	s4,s4,0xc
    800034a4:	0140006f          	j	800034b8 <kinit+0x80>
    800034a8:	000017b7          	lui	a5,0x1
    800034ac:	00f484b3          	add	s1,s1,a5
    800034b0:	0554e863          	bltu	s1,s5,80003500 <kinit+0xc8>
    800034b4:	0534f663          	bgeu	s1,s3,80003500 <kinit+0xc8>
    800034b8:	00001637          	lui	a2,0x1
    800034bc:	00100593          	li	a1,1
    800034c0:	00048513          	mv	a0,s1
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	5e4080e7          	jalr	1508(ra) # 80003aa8 <__memset>
    800034cc:	00093783          	ld	a5,0(s2)
    800034d0:	00f4b023          	sd	a5,0(s1)
    800034d4:	00993023          	sd	s1,0(s2)
    800034d8:	fd4498e3          	bne	s1,s4,800034a8 <kinit+0x70>
    800034dc:	03813083          	ld	ra,56(sp)
    800034e0:	03013403          	ld	s0,48(sp)
    800034e4:	02813483          	ld	s1,40(sp)
    800034e8:	02013903          	ld	s2,32(sp)
    800034ec:	01813983          	ld	s3,24(sp)
    800034f0:	01013a03          	ld	s4,16(sp)
    800034f4:	00813a83          	ld	s5,8(sp)
    800034f8:	04010113          	addi	sp,sp,64
    800034fc:	00008067          	ret
    80003500:	00002517          	auipc	a0,0x2
    80003504:	d8050513          	addi	a0,a0,-640 # 80005280 <digits+0x18>
    80003508:	fffff097          	auipc	ra,0xfffff
    8000350c:	4b4080e7          	jalr	1204(ra) # 800029bc <panic>

0000000080003510 <freerange>:
    80003510:	fc010113          	addi	sp,sp,-64
    80003514:	000017b7          	lui	a5,0x1
    80003518:	02913423          	sd	s1,40(sp)
    8000351c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003520:	009504b3          	add	s1,a0,s1
    80003524:	fffff537          	lui	a0,0xfffff
    80003528:	02813823          	sd	s0,48(sp)
    8000352c:	02113c23          	sd	ra,56(sp)
    80003530:	03213023          	sd	s2,32(sp)
    80003534:	01313c23          	sd	s3,24(sp)
    80003538:	01413823          	sd	s4,16(sp)
    8000353c:	01513423          	sd	s5,8(sp)
    80003540:	01613023          	sd	s6,0(sp)
    80003544:	04010413          	addi	s0,sp,64
    80003548:	00a4f4b3          	and	s1,s1,a0
    8000354c:	00f487b3          	add	a5,s1,a5
    80003550:	06f5e463          	bltu	a1,a5,800035b8 <freerange+0xa8>
    80003554:	00003a97          	auipc	s5,0x3
    80003558:	58ca8a93          	addi	s5,s5,1420 # 80006ae0 <end>
    8000355c:	0954e263          	bltu	s1,s5,800035e0 <freerange+0xd0>
    80003560:	01100993          	li	s3,17
    80003564:	01b99993          	slli	s3,s3,0x1b
    80003568:	0734fc63          	bgeu	s1,s3,800035e0 <freerange+0xd0>
    8000356c:	00058a13          	mv	s4,a1
    80003570:	00002917          	auipc	s2,0x2
    80003574:	2d090913          	addi	s2,s2,720 # 80005840 <kmem>
    80003578:	00002b37          	lui	s6,0x2
    8000357c:	0140006f          	j	80003590 <freerange+0x80>
    80003580:	000017b7          	lui	a5,0x1
    80003584:	00f484b3          	add	s1,s1,a5
    80003588:	0554ec63          	bltu	s1,s5,800035e0 <freerange+0xd0>
    8000358c:	0534fa63          	bgeu	s1,s3,800035e0 <freerange+0xd0>
    80003590:	00001637          	lui	a2,0x1
    80003594:	00100593          	li	a1,1
    80003598:	00048513          	mv	a0,s1
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	50c080e7          	jalr	1292(ra) # 80003aa8 <__memset>
    800035a4:	00093703          	ld	a4,0(s2)
    800035a8:	016487b3          	add	a5,s1,s6
    800035ac:	00e4b023          	sd	a4,0(s1)
    800035b0:	00993023          	sd	s1,0(s2)
    800035b4:	fcfa76e3          	bgeu	s4,a5,80003580 <freerange+0x70>
    800035b8:	03813083          	ld	ra,56(sp)
    800035bc:	03013403          	ld	s0,48(sp)
    800035c0:	02813483          	ld	s1,40(sp)
    800035c4:	02013903          	ld	s2,32(sp)
    800035c8:	01813983          	ld	s3,24(sp)
    800035cc:	01013a03          	ld	s4,16(sp)
    800035d0:	00813a83          	ld	s5,8(sp)
    800035d4:	00013b03          	ld	s6,0(sp)
    800035d8:	04010113          	addi	sp,sp,64
    800035dc:	00008067          	ret
    800035e0:	00002517          	auipc	a0,0x2
    800035e4:	ca050513          	addi	a0,a0,-864 # 80005280 <digits+0x18>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	3d4080e7          	jalr	980(ra) # 800029bc <panic>

00000000800035f0 <kfree>:
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00113c23          	sd	ra,24(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	02010413          	addi	s0,sp,32
    80003604:	03451793          	slli	a5,a0,0x34
    80003608:	04079c63          	bnez	a5,80003660 <kfree+0x70>
    8000360c:	00003797          	auipc	a5,0x3
    80003610:	4d478793          	addi	a5,a5,1236 # 80006ae0 <end>
    80003614:	00050493          	mv	s1,a0
    80003618:	04f56463          	bltu	a0,a5,80003660 <kfree+0x70>
    8000361c:	01100793          	li	a5,17
    80003620:	01b79793          	slli	a5,a5,0x1b
    80003624:	02f57e63          	bgeu	a0,a5,80003660 <kfree+0x70>
    80003628:	00001637          	lui	a2,0x1
    8000362c:	00100593          	li	a1,1
    80003630:	00000097          	auipc	ra,0x0
    80003634:	478080e7          	jalr	1144(ra) # 80003aa8 <__memset>
    80003638:	00002797          	auipc	a5,0x2
    8000363c:	20878793          	addi	a5,a5,520 # 80005840 <kmem>
    80003640:	0007b703          	ld	a4,0(a5)
    80003644:	01813083          	ld	ra,24(sp)
    80003648:	01013403          	ld	s0,16(sp)
    8000364c:	00e4b023          	sd	a4,0(s1)
    80003650:	0097b023          	sd	s1,0(a5)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret
    80003660:	00002517          	auipc	a0,0x2
    80003664:	c2050513          	addi	a0,a0,-992 # 80005280 <digits+0x18>
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	354080e7          	jalr	852(ra) # 800029bc <panic>

0000000080003670 <kalloc>:
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	00002797          	auipc	a5,0x2
    80003688:	1bc78793          	addi	a5,a5,444 # 80005840 <kmem>
    8000368c:	0007b483          	ld	s1,0(a5)
    80003690:	02048063          	beqz	s1,800036b0 <kalloc+0x40>
    80003694:	0004b703          	ld	a4,0(s1)
    80003698:	00001637          	lui	a2,0x1
    8000369c:	00500593          	li	a1,5
    800036a0:	00048513          	mv	a0,s1
    800036a4:	00e7b023          	sd	a4,0(a5)
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	400080e7          	jalr	1024(ra) # 80003aa8 <__memset>
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	01013403          	ld	s0,16(sp)
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00813483          	ld	s1,8(sp)
    800036c0:	02010113          	addi	sp,sp,32
    800036c4:	00008067          	ret

00000000800036c8 <initlock>:
    800036c8:	ff010113          	addi	sp,sp,-16
    800036cc:	00813423          	sd	s0,8(sp)
    800036d0:	01010413          	addi	s0,sp,16
    800036d4:	00813403          	ld	s0,8(sp)
    800036d8:	00b53423          	sd	a1,8(a0)
    800036dc:	00052023          	sw	zero,0(a0)
    800036e0:	00053823          	sd	zero,16(a0)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <acquire>:
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00813823          	sd	s0,16(sp)
    800036f4:	00913423          	sd	s1,8(sp)
    800036f8:	00113c23          	sd	ra,24(sp)
    800036fc:	01213023          	sd	s2,0(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	00050493          	mv	s1,a0
    80003708:	10002973          	csrr	s2,sstatus
    8000370c:	100027f3          	csrr	a5,sstatus
    80003710:	ffd7f793          	andi	a5,a5,-3
    80003714:	10079073          	csrw	sstatus,a5
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	8e4080e7          	jalr	-1820(ra) # 80001ffc <mycpu>
    80003720:	07852783          	lw	a5,120(a0)
    80003724:	06078e63          	beqz	a5,800037a0 <acquire+0xb4>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	8d4080e7          	jalr	-1836(ra) # 80001ffc <mycpu>
    80003730:	07852783          	lw	a5,120(a0)
    80003734:	0004a703          	lw	a4,0(s1)
    80003738:	0017879b          	addiw	a5,a5,1
    8000373c:	06f52c23          	sw	a5,120(a0)
    80003740:	04071063          	bnez	a4,80003780 <acquire+0x94>
    80003744:	00100713          	li	a4,1
    80003748:	00070793          	mv	a5,a4
    8000374c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003750:	0007879b          	sext.w	a5,a5
    80003754:	fe079ae3          	bnez	a5,80003748 <acquire+0x5c>
    80003758:	0ff0000f          	fence
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	8a0080e7          	jalr	-1888(ra) # 80001ffc <mycpu>
    80003764:	01813083          	ld	ra,24(sp)
    80003768:	01013403          	ld	s0,16(sp)
    8000376c:	00a4b823          	sd	a0,16(s1)
    80003770:	00013903          	ld	s2,0(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret
    80003780:	0104b903          	ld	s2,16(s1)
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	878080e7          	jalr	-1928(ra) # 80001ffc <mycpu>
    8000378c:	faa91ce3          	bne	s2,a0,80003744 <acquire+0x58>
    80003790:	00002517          	auipc	a0,0x2
    80003794:	af850513          	addi	a0,a0,-1288 # 80005288 <digits+0x20>
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	224080e7          	jalr	548(ra) # 800029bc <panic>
    800037a0:	00195913          	srli	s2,s2,0x1
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	858080e7          	jalr	-1960(ra) # 80001ffc <mycpu>
    800037ac:	00197913          	andi	s2,s2,1
    800037b0:	07252e23          	sw	s2,124(a0)
    800037b4:	f75ff06f          	j	80003728 <acquire+0x3c>

00000000800037b8 <release>:
    800037b8:	fe010113          	addi	sp,sp,-32
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00113c23          	sd	ra,24(sp)
    800037c4:	00913423          	sd	s1,8(sp)
    800037c8:	01213023          	sd	s2,0(sp)
    800037cc:	02010413          	addi	s0,sp,32
    800037d0:	00052783          	lw	a5,0(a0)
    800037d4:	00079a63          	bnez	a5,800037e8 <release+0x30>
    800037d8:	00002517          	auipc	a0,0x2
    800037dc:	ab850513          	addi	a0,a0,-1352 # 80005290 <digits+0x28>
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	1dc080e7          	jalr	476(ra) # 800029bc <panic>
    800037e8:	01053903          	ld	s2,16(a0)
    800037ec:	00050493          	mv	s1,a0
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	80c080e7          	jalr	-2036(ra) # 80001ffc <mycpu>
    800037f8:	fea910e3          	bne	s2,a0,800037d8 <release+0x20>
    800037fc:	0004b823          	sd	zero,16(s1)
    80003800:	0ff0000f          	fence
    80003804:	0f50000f          	fence	iorw,ow
    80003808:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	7f0080e7          	jalr	2032(ra) # 80001ffc <mycpu>
    80003814:	100027f3          	csrr	a5,sstatus
    80003818:	0027f793          	andi	a5,a5,2
    8000381c:	04079a63          	bnez	a5,80003870 <release+0xb8>
    80003820:	07852783          	lw	a5,120(a0)
    80003824:	02f05e63          	blez	a5,80003860 <release+0xa8>
    80003828:	fff7871b          	addiw	a4,a5,-1
    8000382c:	06e52c23          	sw	a4,120(a0)
    80003830:	00071c63          	bnez	a4,80003848 <release+0x90>
    80003834:	07c52783          	lw	a5,124(a0)
    80003838:	00078863          	beqz	a5,80003848 <release+0x90>
    8000383c:	100027f3          	csrr	a5,sstatus
    80003840:	0027e793          	ori	a5,a5,2
    80003844:	10079073          	csrw	sstatus,a5
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	00013903          	ld	s2,0(sp)
    80003858:	02010113          	addi	sp,sp,32
    8000385c:	00008067          	ret
    80003860:	00002517          	auipc	a0,0x2
    80003864:	a5050513          	addi	a0,a0,-1456 # 800052b0 <digits+0x48>
    80003868:	fffff097          	auipc	ra,0xfffff
    8000386c:	154080e7          	jalr	340(ra) # 800029bc <panic>
    80003870:	00002517          	auipc	a0,0x2
    80003874:	a2850513          	addi	a0,a0,-1496 # 80005298 <digits+0x30>
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	144080e7          	jalr	324(ra) # 800029bc <panic>

0000000080003880 <holding>:
    80003880:	00052783          	lw	a5,0(a0)
    80003884:	00079663          	bnez	a5,80003890 <holding+0x10>
    80003888:	00000513          	li	a0,0
    8000388c:	00008067          	ret
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	01053483          	ld	s1,16(a0)
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	754080e7          	jalr	1876(ra) # 80001ffc <mycpu>
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	40a48533          	sub	a0,s1,a0
    800038bc:	00153513          	seqz	a0,a0
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <push_off>:
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00813823          	sd	s0,16(sp)
    800038d4:	00113c23          	sd	ra,24(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	100024f3          	csrr	s1,sstatus
    800038e4:	100027f3          	csrr	a5,sstatus
    800038e8:	ffd7f793          	andi	a5,a5,-3
    800038ec:	10079073          	csrw	sstatus,a5
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	70c080e7          	jalr	1804(ra) # 80001ffc <mycpu>
    800038f8:	07852783          	lw	a5,120(a0)
    800038fc:	02078663          	beqz	a5,80003928 <push_off+0x5c>
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	6fc080e7          	jalr	1788(ra) # 80001ffc <mycpu>
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
    80003930:	6d0080e7          	jalr	1744(ra) # 80001ffc <mycpu>
    80003934:	0014f493          	andi	s1,s1,1
    80003938:	06952e23          	sw	s1,124(a0)
    8000393c:	fc5ff06f          	j	80003900 <push_off+0x34>

0000000080003940 <pop_off>:
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00813023          	sd	s0,0(sp)
    80003948:	00113423          	sd	ra,8(sp)
    8000394c:	01010413          	addi	s0,sp,16
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	6ac080e7          	jalr	1708(ra) # 80001ffc <mycpu>
    80003958:	100027f3          	csrr	a5,sstatus
    8000395c:	0027f793          	andi	a5,a5,2
    80003960:	04079663          	bnez	a5,800039ac <pop_off+0x6c>
    80003964:	07852783          	lw	a5,120(a0)
    80003968:	02f05a63          	blez	a5,8000399c <pop_off+0x5c>
    8000396c:	fff7871b          	addiw	a4,a5,-1
    80003970:	06e52c23          	sw	a4,120(a0)
    80003974:	00071c63          	bnez	a4,8000398c <pop_off+0x4c>
    80003978:	07c52783          	lw	a5,124(a0)
    8000397c:	00078863          	beqz	a5,8000398c <pop_off+0x4c>
    80003980:	100027f3          	csrr	a5,sstatus
    80003984:	0027e793          	ori	a5,a5,2
    80003988:	10079073          	csrw	sstatus,a5
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret
    8000399c:	00002517          	auipc	a0,0x2
    800039a0:	91450513          	addi	a0,a0,-1772 # 800052b0 <digits+0x48>
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	018080e7          	jalr	24(ra) # 800029bc <panic>
    800039ac:	00002517          	auipc	a0,0x2
    800039b0:	8ec50513          	addi	a0,a0,-1812 # 80005298 <digits+0x30>
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	008080e7          	jalr	8(ra) # 800029bc <panic>

00000000800039bc <push_on>:
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	02010413          	addi	s0,sp,32
    800039d0:	100024f3          	csrr	s1,sstatus
    800039d4:	100027f3          	csrr	a5,sstatus
    800039d8:	0027e793          	ori	a5,a5,2
    800039dc:	10079073          	csrw	sstatus,a5
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	61c080e7          	jalr	1564(ra) # 80001ffc <mycpu>
    800039e8:	07852783          	lw	a5,120(a0)
    800039ec:	02078663          	beqz	a5,80003a18 <push_on+0x5c>
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	60c080e7          	jalr	1548(ra) # 80001ffc <mycpu>
    800039f8:	07852783          	lw	a5,120(a0)
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	0017879b          	addiw	a5,a5,1
    80003a08:	06f52c23          	sw	a5,120(a0)
    80003a0c:	00813483          	ld	s1,8(sp)
    80003a10:	02010113          	addi	sp,sp,32
    80003a14:	00008067          	ret
    80003a18:	0014d493          	srli	s1,s1,0x1
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	5e0080e7          	jalr	1504(ra) # 80001ffc <mycpu>
    80003a24:	0014f493          	andi	s1,s1,1
    80003a28:	06952e23          	sw	s1,124(a0)
    80003a2c:	fc5ff06f          	j	800039f0 <push_on+0x34>

0000000080003a30 <pop_on>:
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00813023          	sd	s0,0(sp)
    80003a38:	00113423          	sd	ra,8(sp)
    80003a3c:	01010413          	addi	s0,sp,16
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	5bc080e7          	jalr	1468(ra) # 80001ffc <mycpu>
    80003a48:	100027f3          	csrr	a5,sstatus
    80003a4c:	0027f793          	andi	a5,a5,2
    80003a50:	04078463          	beqz	a5,80003a98 <pop_on+0x68>
    80003a54:	07852783          	lw	a5,120(a0)
    80003a58:	02f05863          	blez	a5,80003a88 <pop_on+0x58>
    80003a5c:	fff7879b          	addiw	a5,a5,-1
    80003a60:	06f52c23          	sw	a5,120(a0)
    80003a64:	07853783          	ld	a5,120(a0)
    80003a68:	00079863          	bnez	a5,80003a78 <pop_on+0x48>
    80003a6c:	100027f3          	csrr	a5,sstatus
    80003a70:	ffd7f793          	andi	a5,a5,-3
    80003a74:	10079073          	csrw	sstatus,a5
    80003a78:	00813083          	ld	ra,8(sp)
    80003a7c:	00013403          	ld	s0,0(sp)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret
    80003a88:	00002517          	auipc	a0,0x2
    80003a8c:	85050513          	addi	a0,a0,-1968 # 800052d8 <digits+0x70>
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	f2c080e7          	jalr	-212(ra) # 800029bc <panic>
    80003a98:	00002517          	auipc	a0,0x2
    80003a9c:	82050513          	addi	a0,a0,-2016 # 800052b8 <digits+0x50>
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	f1c080e7          	jalr	-228(ra) # 800029bc <panic>

0000000080003aa8 <__memset>:
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00813423          	sd	s0,8(sp)
    80003ab0:	01010413          	addi	s0,sp,16
    80003ab4:	1a060e63          	beqz	a2,80003c70 <__memset+0x1c8>
    80003ab8:	40a007b3          	neg	a5,a0
    80003abc:	0077f793          	andi	a5,a5,7
    80003ac0:	00778693          	addi	a3,a5,7
    80003ac4:	00b00813          	li	a6,11
    80003ac8:	0ff5f593          	andi	a1,a1,255
    80003acc:	fff6071b          	addiw	a4,a2,-1
    80003ad0:	1b06e663          	bltu	a3,a6,80003c7c <__memset+0x1d4>
    80003ad4:	1cd76463          	bltu	a4,a3,80003c9c <__memset+0x1f4>
    80003ad8:	1a078e63          	beqz	a5,80003c94 <__memset+0x1ec>
    80003adc:	00b50023          	sb	a1,0(a0)
    80003ae0:	00100713          	li	a4,1
    80003ae4:	1ae78463          	beq	a5,a4,80003c8c <__memset+0x1e4>
    80003ae8:	00b500a3          	sb	a1,1(a0)
    80003aec:	00200713          	li	a4,2
    80003af0:	1ae78a63          	beq	a5,a4,80003ca4 <__memset+0x1fc>
    80003af4:	00b50123          	sb	a1,2(a0)
    80003af8:	00300713          	li	a4,3
    80003afc:	18e78463          	beq	a5,a4,80003c84 <__memset+0x1dc>
    80003b00:	00b501a3          	sb	a1,3(a0)
    80003b04:	00400713          	li	a4,4
    80003b08:	1ae78263          	beq	a5,a4,80003cac <__memset+0x204>
    80003b0c:	00b50223          	sb	a1,4(a0)
    80003b10:	00500713          	li	a4,5
    80003b14:	1ae78063          	beq	a5,a4,80003cb4 <__memset+0x20c>
    80003b18:	00b502a3          	sb	a1,5(a0)
    80003b1c:	00700713          	li	a4,7
    80003b20:	18e79e63          	bne	a5,a4,80003cbc <__memset+0x214>
    80003b24:	00b50323          	sb	a1,6(a0)
    80003b28:	00700e93          	li	t4,7
    80003b2c:	00859713          	slli	a4,a1,0x8
    80003b30:	00e5e733          	or	a4,a1,a4
    80003b34:	01059e13          	slli	t3,a1,0x10
    80003b38:	01c76e33          	or	t3,a4,t3
    80003b3c:	01859313          	slli	t1,a1,0x18
    80003b40:	006e6333          	or	t1,t3,t1
    80003b44:	02059893          	slli	a7,a1,0x20
    80003b48:	40f60e3b          	subw	t3,a2,a5
    80003b4c:	011368b3          	or	a7,t1,a7
    80003b50:	02859813          	slli	a6,a1,0x28
    80003b54:	0108e833          	or	a6,a7,a6
    80003b58:	03059693          	slli	a3,a1,0x30
    80003b5c:	003e589b          	srliw	a7,t3,0x3
    80003b60:	00d866b3          	or	a3,a6,a3
    80003b64:	03859713          	slli	a4,a1,0x38
    80003b68:	00389813          	slli	a6,a7,0x3
    80003b6c:	00f507b3          	add	a5,a0,a5
    80003b70:	00e6e733          	or	a4,a3,a4
    80003b74:	000e089b          	sext.w	a7,t3
    80003b78:	00f806b3          	add	a3,a6,a5
    80003b7c:	00e7b023          	sd	a4,0(a5)
    80003b80:	00878793          	addi	a5,a5,8
    80003b84:	fed79ce3          	bne	a5,a3,80003b7c <__memset+0xd4>
    80003b88:	ff8e7793          	andi	a5,t3,-8
    80003b8c:	0007871b          	sext.w	a4,a5
    80003b90:	01d787bb          	addw	a5,a5,t4
    80003b94:	0ce88e63          	beq	a7,a4,80003c70 <__memset+0x1c8>
    80003b98:	00f50733          	add	a4,a0,a5
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0017871b          	addiw	a4,a5,1
    80003ba4:	0cc77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0027871b          	addiw	a4,a5,2
    80003bb4:	0ac77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0037871b          	addiw	a4,a5,3
    80003bc4:	0ac77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0047871b          	addiw	a4,a5,4
    80003bd4:	08c77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0057871b          	addiw	a4,a5,5
    80003be4:	08c77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0067871b          	addiw	a4,a5,6
    80003bf4:	06c77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0077871b          	addiw	a4,a5,7
    80003c04:	06c77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0087871b          	addiw	a4,a5,8
    80003c14:	04c77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0097871b          	addiw	a4,a5,9
    80003c24:	04c77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	00a7871b          	addiw	a4,a5,10
    80003c34:	02c77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	00b7871b          	addiw	a4,a5,11
    80003c44:	02c77663          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	00c7871b          	addiw	a4,a5,12
    80003c54:	00c77e63          	bgeu	a4,a2,80003c70 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	00d7879b          	addiw	a5,a5,13
    80003c64:	00c7f663          	bgeu	a5,a2,80003c70 <__memset+0x1c8>
    80003c68:	00f507b3          	add	a5,a0,a5
    80003c6c:	00b78023          	sb	a1,0(a5)
    80003c70:	00813403          	ld	s0,8(sp)
    80003c74:	01010113          	addi	sp,sp,16
    80003c78:	00008067          	ret
    80003c7c:	00b00693          	li	a3,11
    80003c80:	e55ff06f          	j	80003ad4 <__memset+0x2c>
    80003c84:	00300e93          	li	t4,3
    80003c88:	ea5ff06f          	j	80003b2c <__memset+0x84>
    80003c8c:	00100e93          	li	t4,1
    80003c90:	e9dff06f          	j	80003b2c <__memset+0x84>
    80003c94:	00000e93          	li	t4,0
    80003c98:	e95ff06f          	j	80003b2c <__memset+0x84>
    80003c9c:	00000793          	li	a5,0
    80003ca0:	ef9ff06f          	j	80003b98 <__memset+0xf0>
    80003ca4:	00200e93          	li	t4,2
    80003ca8:	e85ff06f          	j	80003b2c <__memset+0x84>
    80003cac:	00400e93          	li	t4,4
    80003cb0:	e7dff06f          	j	80003b2c <__memset+0x84>
    80003cb4:	00500e93          	li	t4,5
    80003cb8:	e75ff06f          	j	80003b2c <__memset+0x84>
    80003cbc:	00600e93          	li	t4,6
    80003cc0:	e6dff06f          	j	80003b2c <__memset+0x84>

0000000080003cc4 <__memmove>:
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00813423          	sd	s0,8(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	0e060863          	beqz	a2,80003dc0 <__memmove+0xfc>
    80003cd4:	fff6069b          	addiw	a3,a2,-1
    80003cd8:	0006881b          	sext.w	a6,a3
    80003cdc:	0ea5e863          	bltu	a1,a0,80003dcc <__memmove+0x108>
    80003ce0:	00758713          	addi	a4,a1,7
    80003ce4:	00a5e7b3          	or	a5,a1,a0
    80003ce8:	40a70733          	sub	a4,a4,a0
    80003cec:	0077f793          	andi	a5,a5,7
    80003cf0:	00f73713          	sltiu	a4,a4,15
    80003cf4:	00174713          	xori	a4,a4,1
    80003cf8:	0017b793          	seqz	a5,a5
    80003cfc:	00e7f7b3          	and	a5,a5,a4
    80003d00:	10078863          	beqz	a5,80003e10 <__memmove+0x14c>
    80003d04:	00900793          	li	a5,9
    80003d08:	1107f463          	bgeu	a5,a6,80003e10 <__memmove+0x14c>
    80003d0c:	0036581b          	srliw	a6,a2,0x3
    80003d10:	fff8081b          	addiw	a6,a6,-1
    80003d14:	02081813          	slli	a6,a6,0x20
    80003d18:	01d85893          	srli	a7,a6,0x1d
    80003d1c:	00858813          	addi	a6,a1,8
    80003d20:	00058793          	mv	a5,a1
    80003d24:	00050713          	mv	a4,a0
    80003d28:	01088833          	add	a6,a7,a6
    80003d2c:	0007b883          	ld	a7,0(a5)
    80003d30:	00878793          	addi	a5,a5,8
    80003d34:	00870713          	addi	a4,a4,8
    80003d38:	ff173c23          	sd	a7,-8(a4)
    80003d3c:	ff0798e3          	bne	a5,a6,80003d2c <__memmove+0x68>
    80003d40:	ff867713          	andi	a4,a2,-8
    80003d44:	02071793          	slli	a5,a4,0x20
    80003d48:	0207d793          	srli	a5,a5,0x20
    80003d4c:	00f585b3          	add	a1,a1,a5
    80003d50:	40e686bb          	subw	a3,a3,a4
    80003d54:	00f507b3          	add	a5,a0,a5
    80003d58:	06e60463          	beq	a2,a4,80003dc0 <__memmove+0xfc>
    80003d5c:	0005c703          	lbu	a4,0(a1)
    80003d60:	00e78023          	sb	a4,0(a5)
    80003d64:	04068e63          	beqz	a3,80003dc0 <__memmove+0xfc>
    80003d68:	0015c603          	lbu	a2,1(a1)
    80003d6c:	00100713          	li	a4,1
    80003d70:	00c780a3          	sb	a2,1(a5)
    80003d74:	04e68663          	beq	a3,a4,80003dc0 <__memmove+0xfc>
    80003d78:	0025c603          	lbu	a2,2(a1)
    80003d7c:	00200713          	li	a4,2
    80003d80:	00c78123          	sb	a2,2(a5)
    80003d84:	02e68e63          	beq	a3,a4,80003dc0 <__memmove+0xfc>
    80003d88:	0035c603          	lbu	a2,3(a1)
    80003d8c:	00300713          	li	a4,3
    80003d90:	00c781a3          	sb	a2,3(a5)
    80003d94:	02e68663          	beq	a3,a4,80003dc0 <__memmove+0xfc>
    80003d98:	0045c603          	lbu	a2,4(a1)
    80003d9c:	00400713          	li	a4,4
    80003da0:	00c78223          	sb	a2,4(a5)
    80003da4:	00e68e63          	beq	a3,a4,80003dc0 <__memmove+0xfc>
    80003da8:	0055c603          	lbu	a2,5(a1)
    80003dac:	00500713          	li	a4,5
    80003db0:	00c782a3          	sb	a2,5(a5)
    80003db4:	00e68663          	beq	a3,a4,80003dc0 <__memmove+0xfc>
    80003db8:	0065c703          	lbu	a4,6(a1)
    80003dbc:	00e78323          	sb	a4,6(a5)
    80003dc0:	00813403          	ld	s0,8(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	00008067          	ret
    80003dcc:	02061713          	slli	a4,a2,0x20
    80003dd0:	02075713          	srli	a4,a4,0x20
    80003dd4:	00e587b3          	add	a5,a1,a4
    80003dd8:	f0f574e3          	bgeu	a0,a5,80003ce0 <__memmove+0x1c>
    80003ddc:	02069613          	slli	a2,a3,0x20
    80003de0:	02065613          	srli	a2,a2,0x20
    80003de4:	fff64613          	not	a2,a2
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00c78633          	add	a2,a5,a2
    80003df0:	fff7c683          	lbu	a3,-1(a5)
    80003df4:	fff78793          	addi	a5,a5,-1
    80003df8:	fff70713          	addi	a4,a4,-1
    80003dfc:	00d70023          	sb	a3,0(a4)
    80003e00:	fec798e3          	bne	a5,a2,80003df0 <__memmove+0x12c>
    80003e04:	00813403          	ld	s0,8(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret
    80003e10:	02069713          	slli	a4,a3,0x20
    80003e14:	02075713          	srli	a4,a4,0x20
    80003e18:	00170713          	addi	a4,a4,1
    80003e1c:	00e50733          	add	a4,a0,a4
    80003e20:	00050793          	mv	a5,a0
    80003e24:	0005c683          	lbu	a3,0(a1)
    80003e28:	00178793          	addi	a5,a5,1
    80003e2c:	00158593          	addi	a1,a1,1
    80003e30:	fed78fa3          	sb	a3,-1(a5)
    80003e34:	fee798e3          	bne	a5,a4,80003e24 <__memmove+0x160>
    80003e38:	f89ff06f          	j	80003dc0 <__memmove+0xfc>

0000000080003e3c <__mem_free>:
    80003e3c:	ff010113          	addi	sp,sp,-16
    80003e40:	00813423          	sd	s0,8(sp)
    80003e44:	01010413          	addi	s0,sp,16
    80003e48:	00002597          	auipc	a1,0x2
    80003e4c:	a0058593          	addi	a1,a1,-1536 # 80005848 <freep>
    80003e50:	0005b783          	ld	a5,0(a1)
    80003e54:	ff050693          	addi	a3,a0,-16
    80003e58:	0007b703          	ld	a4,0(a5)
    80003e5c:	00d7fc63          	bgeu	a5,a3,80003e74 <__mem_free+0x38>
    80003e60:	00e6ee63          	bltu	a3,a4,80003e7c <__mem_free+0x40>
    80003e64:	00e7fc63          	bgeu	a5,a4,80003e7c <__mem_free+0x40>
    80003e68:	00070793          	mv	a5,a4
    80003e6c:	0007b703          	ld	a4,0(a5)
    80003e70:	fed7e8e3          	bltu	a5,a3,80003e60 <__mem_free+0x24>
    80003e74:	fee7eae3          	bltu	a5,a4,80003e68 <__mem_free+0x2c>
    80003e78:	fee6f8e3          	bgeu	a3,a4,80003e68 <__mem_free+0x2c>
    80003e7c:	ff852803          	lw	a6,-8(a0)
    80003e80:	02081613          	slli	a2,a6,0x20
    80003e84:	01c65613          	srli	a2,a2,0x1c
    80003e88:	00c68633          	add	a2,a3,a2
    80003e8c:	02c70a63          	beq	a4,a2,80003ec0 <__mem_free+0x84>
    80003e90:	fee53823          	sd	a4,-16(a0)
    80003e94:	0087a503          	lw	a0,8(a5)
    80003e98:	02051613          	slli	a2,a0,0x20
    80003e9c:	01c65613          	srli	a2,a2,0x1c
    80003ea0:	00c78633          	add	a2,a5,a2
    80003ea4:	04c68263          	beq	a3,a2,80003ee8 <__mem_free+0xac>
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	00d7b023          	sd	a3,0(a5)
    80003eb0:	00f5b023          	sd	a5,0(a1)
    80003eb4:	00000513          	li	a0,0
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret
    80003ec0:	00872603          	lw	a2,8(a4)
    80003ec4:	00073703          	ld	a4,0(a4)
    80003ec8:	0106083b          	addw	a6,a2,a6
    80003ecc:	ff052c23          	sw	a6,-8(a0)
    80003ed0:	fee53823          	sd	a4,-16(a0)
    80003ed4:	0087a503          	lw	a0,8(a5)
    80003ed8:	02051613          	slli	a2,a0,0x20
    80003edc:	01c65613          	srli	a2,a2,0x1c
    80003ee0:	00c78633          	add	a2,a5,a2
    80003ee4:	fcc692e3          	bne	a3,a2,80003ea8 <__mem_free+0x6c>
    80003ee8:	00813403          	ld	s0,8(sp)
    80003eec:	0105053b          	addw	a0,a0,a6
    80003ef0:	00a7a423          	sw	a0,8(a5)
    80003ef4:	00e7b023          	sd	a4,0(a5)
    80003ef8:	00f5b023          	sd	a5,0(a1)
    80003efc:	00000513          	li	a0,0
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <__mem_alloc>:
    80003f08:	fc010113          	addi	sp,sp,-64
    80003f0c:	02813823          	sd	s0,48(sp)
    80003f10:	02913423          	sd	s1,40(sp)
    80003f14:	03213023          	sd	s2,32(sp)
    80003f18:	01513423          	sd	s5,8(sp)
    80003f1c:	02113c23          	sd	ra,56(sp)
    80003f20:	01313c23          	sd	s3,24(sp)
    80003f24:	01413823          	sd	s4,16(sp)
    80003f28:	01613023          	sd	s6,0(sp)
    80003f2c:	04010413          	addi	s0,sp,64
    80003f30:	00002a97          	auipc	s5,0x2
    80003f34:	918a8a93          	addi	s5,s5,-1768 # 80005848 <freep>
    80003f38:	00f50913          	addi	s2,a0,15
    80003f3c:	000ab683          	ld	a3,0(s5)
    80003f40:	00495913          	srli	s2,s2,0x4
    80003f44:	0019049b          	addiw	s1,s2,1
    80003f48:	00048913          	mv	s2,s1
    80003f4c:	0c068c63          	beqz	a3,80004024 <__mem_alloc+0x11c>
    80003f50:	0006b503          	ld	a0,0(a3)
    80003f54:	00852703          	lw	a4,8(a0)
    80003f58:	10977063          	bgeu	a4,s1,80004058 <__mem_alloc+0x150>
    80003f5c:	000017b7          	lui	a5,0x1
    80003f60:	0009099b          	sext.w	s3,s2
    80003f64:	0af4e863          	bltu	s1,a5,80004014 <__mem_alloc+0x10c>
    80003f68:	02099a13          	slli	s4,s3,0x20
    80003f6c:	01ca5a13          	srli	s4,s4,0x1c
    80003f70:	fff00b13          	li	s6,-1
    80003f74:	0100006f          	j	80003f84 <__mem_alloc+0x7c>
    80003f78:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f7c:	00852703          	lw	a4,8(a0)
    80003f80:	04977463          	bgeu	a4,s1,80003fc8 <__mem_alloc+0xc0>
    80003f84:	00050793          	mv	a5,a0
    80003f88:	fea698e3          	bne	a3,a0,80003f78 <__mem_alloc+0x70>
    80003f8c:	000a0513          	mv	a0,s4
    80003f90:	00000097          	auipc	ra,0x0
    80003f94:	1f0080e7          	jalr	496(ra) # 80004180 <kvmincrease>
    80003f98:	00050793          	mv	a5,a0
    80003f9c:	01050513          	addi	a0,a0,16
    80003fa0:	07678e63          	beq	a5,s6,8000401c <__mem_alloc+0x114>
    80003fa4:	0137a423          	sw	s3,8(a5)
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	e94080e7          	jalr	-364(ra) # 80003e3c <__mem_free>
    80003fb0:	000ab783          	ld	a5,0(s5)
    80003fb4:	06078463          	beqz	a5,8000401c <__mem_alloc+0x114>
    80003fb8:	0007b503          	ld	a0,0(a5)
    80003fbc:	00078693          	mv	a3,a5
    80003fc0:	00852703          	lw	a4,8(a0)
    80003fc4:	fc9760e3          	bltu	a4,s1,80003f84 <__mem_alloc+0x7c>
    80003fc8:	08e48263          	beq	s1,a4,8000404c <__mem_alloc+0x144>
    80003fcc:	4127073b          	subw	a4,a4,s2
    80003fd0:	02071693          	slli	a3,a4,0x20
    80003fd4:	01c6d693          	srli	a3,a3,0x1c
    80003fd8:	00e52423          	sw	a4,8(a0)
    80003fdc:	00d50533          	add	a0,a0,a3
    80003fe0:	01252423          	sw	s2,8(a0)
    80003fe4:	00fab023          	sd	a5,0(s5)
    80003fe8:	01050513          	addi	a0,a0,16
    80003fec:	03813083          	ld	ra,56(sp)
    80003ff0:	03013403          	ld	s0,48(sp)
    80003ff4:	02813483          	ld	s1,40(sp)
    80003ff8:	02013903          	ld	s2,32(sp)
    80003ffc:	01813983          	ld	s3,24(sp)
    80004000:	01013a03          	ld	s4,16(sp)
    80004004:	00813a83          	ld	s5,8(sp)
    80004008:	00013b03          	ld	s6,0(sp)
    8000400c:	04010113          	addi	sp,sp,64
    80004010:	00008067          	ret
    80004014:	000019b7          	lui	s3,0x1
    80004018:	f51ff06f          	j	80003f68 <__mem_alloc+0x60>
    8000401c:	00000513          	li	a0,0
    80004020:	fcdff06f          	j	80003fec <__mem_alloc+0xe4>
    80004024:	00003797          	auipc	a5,0x3
    80004028:	aac78793          	addi	a5,a5,-1364 # 80006ad0 <base>
    8000402c:	00078513          	mv	a0,a5
    80004030:	00fab023          	sd	a5,0(s5)
    80004034:	00f7b023          	sd	a5,0(a5)
    80004038:	00000713          	li	a4,0
    8000403c:	00003797          	auipc	a5,0x3
    80004040:	a807ae23          	sw	zero,-1380(a5) # 80006ad8 <base+0x8>
    80004044:	00050693          	mv	a3,a0
    80004048:	f11ff06f          	j	80003f58 <__mem_alloc+0x50>
    8000404c:	00053703          	ld	a4,0(a0)
    80004050:	00e7b023          	sd	a4,0(a5)
    80004054:	f91ff06f          	j	80003fe4 <__mem_alloc+0xdc>
    80004058:	00068793          	mv	a5,a3
    8000405c:	f6dff06f          	j	80003fc8 <__mem_alloc+0xc0>

0000000080004060 <__putc>:
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00113c23          	sd	ra,24(sp)
    8000406c:	02010413          	addi	s0,sp,32
    80004070:	00050793          	mv	a5,a0
    80004074:	fef40593          	addi	a1,s0,-17
    80004078:	00100613          	li	a2,1
    8000407c:	00000513          	li	a0,0
    80004080:	fef407a3          	sb	a5,-17(s0)
    80004084:	fffff097          	auipc	ra,0xfffff
    80004088:	918080e7          	jalr	-1768(ra) # 8000299c <console_write>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret

000000008000409c <__getc>:
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00813823          	sd	s0,16(sp)
    800040a4:	00113c23          	sd	ra,24(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	fe840593          	addi	a1,s0,-24
    800040b0:	00100613          	li	a2,1
    800040b4:	00000513          	li	a0,0
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	8c4080e7          	jalr	-1852(ra) # 8000297c <console_read>
    800040c0:	fe844503          	lbu	a0,-24(s0)
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	02010113          	addi	sp,sp,32
    800040d0:	00008067          	ret

00000000800040d4 <console_handler>:
    800040d4:	fe010113          	addi	sp,sp,-32
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00113c23          	sd	ra,24(sp)
    800040e0:	00913423          	sd	s1,8(sp)
    800040e4:	02010413          	addi	s0,sp,32
    800040e8:	14202773          	csrr	a4,scause
    800040ec:	100027f3          	csrr	a5,sstatus
    800040f0:	0027f793          	andi	a5,a5,2
    800040f4:	06079e63          	bnez	a5,80004170 <console_handler+0x9c>
    800040f8:	00074c63          	bltz	a4,80004110 <console_handler+0x3c>
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret
    80004110:	0ff77713          	andi	a4,a4,255
    80004114:	00900793          	li	a5,9
    80004118:	fef712e3          	bne	a4,a5,800040fc <console_handler+0x28>
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	4b8080e7          	jalr	1208(ra) # 800025d4 <plic_claim>
    80004124:	00a00793          	li	a5,10
    80004128:	00050493          	mv	s1,a0
    8000412c:	02f50c63          	beq	a0,a5,80004164 <console_handler+0x90>
    80004130:	fc0506e3          	beqz	a0,800040fc <console_handler+0x28>
    80004134:	00050593          	mv	a1,a0
    80004138:	00001517          	auipc	a0,0x1
    8000413c:	0a850513          	addi	a0,a0,168 # 800051e0 <_ZZ12printIntegermE6digits+0xe0>
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	8d8080e7          	jalr	-1832(ra) # 80002a18 <__printf>
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	00048513          	mv	a0,s1
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	ffffe317          	auipc	t1,0xffffe
    80004160:	4b030067          	jr	1200(t1) # 8000260c <plic_complete>
    80004164:	fffff097          	auipc	ra,0xfffff
    80004168:	1bc080e7          	jalr	444(ra) # 80003320 <uartintr>
    8000416c:	fddff06f          	j	80004148 <console_handler+0x74>
    80004170:	00001517          	auipc	a0,0x1
    80004174:	17050513          	addi	a0,a0,368 # 800052e0 <digits+0x78>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	844080e7          	jalr	-1980(ra) # 800029bc <panic>

0000000080004180 <kvmincrease>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	01213023          	sd	s2,0(sp)
    80004188:	00001937          	lui	s2,0x1
    8000418c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00113c23          	sd	ra,24(sp)
    80004198:	00913423          	sd	s1,8(sp)
    8000419c:	02010413          	addi	s0,sp,32
    800041a0:	01250933          	add	s2,a0,s2
    800041a4:	00c95913          	srli	s2,s2,0xc
    800041a8:	02090863          	beqz	s2,800041d8 <kvmincrease+0x58>
    800041ac:	00000493          	li	s1,0
    800041b0:	00148493          	addi	s1,s1,1
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	4bc080e7          	jalr	1212(ra) # 80003670 <kalloc>
    800041bc:	fe991ae3          	bne	s2,s1,800041b0 <kvmincrease+0x30>
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	00813483          	ld	s1,8(sp)
    800041cc:	00013903          	ld	s2,0(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret
    800041d8:	01813083          	ld	ra,24(sp)
    800041dc:	01013403          	ld	s0,16(sp)
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	00013903          	ld	s2,0(sp)
    800041e8:	00000513          	li	a0,0
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret
	...
