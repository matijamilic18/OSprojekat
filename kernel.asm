
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9f013103          	ld	sp,-1552(sp) # 800059f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	35c020ef          	jal	ra,80002378 <start>

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
    80001084:	35d000ef          	jal	ra,80001be0 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001180 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    80001180:	ff010113          	addi	sp,sp,-16
    80001184:	00813423          	sd	s0,8(sp)
    80001188:	01010413          	addi	s0,sp,16

    __asm__ volatile ("mv a1,%0" : : "r"(size));
    8000118c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_ALLOC));
    80001190:	00100793          	li	a5,1
    80001194:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001198:	00000073          	ecall


    void* retp;
    __asm__ volatile ("mv %0, a0" : "=r" (retp));
    8000119c:	00050513          	mv	a0,a0

    return retp;
}
    800011a0:	00813403          	ld	s0,8(sp)
    800011a4:	01010113          	addi	sp,sp,16
    800011a8:	00008067          	ret

00000000800011ac <_Z8mem_freePv>:

int mem_free(void * address) {
    800011ac:	ff010113          	addi	sp,sp,-16
    800011b0:	00813423          	sd	s0,8(sp)
    800011b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1,%0" : : "r"(address));
    800011b8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_FREE));
    800011bc:	00200793          	li	a5,2
    800011c0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011c4:	00000073          	ecall


    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));
    800011c8:	00050513          	mv	a0,a0

    return  retValue;
}
    800011cc:	0005051b          	sext.w	a0,a0
    800011d0:	00813403          	ld	s0,8(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret

00000000800011dc <_Z11thread_exitv>:

int thread_exit() {
    800011dc:	ff010113          	addi	sp,sp,-16
    800011e0:	00813423          	sd	s0,8(sp)
    800011e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_EXIT));
    800011e8:	01200793          	li	a5,18
    800011ec:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011f0:	00000073          	ecall


    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));
    800011f4:	00050513          	mv	a0,a0

    return  retValue;
}
    800011f8:	0005051b          	sext.w	a0,a0
    800011fc:	00813403          	ld	s0,8(sp)
    80001200:	01010113          	addi	sp,sp,16
    80001204:	00008067          	ret

0000000080001208 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001208:	ff010113          	addi	sp,sp,-16
    8000120c:	00813423          	sd	s0,8(sp)
    80001210:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001214:	00050593          	mv	a1,a0

    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_JOIN));
    80001218:	01400793          	li	a5,20
    8000121c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001220:	00000073          	ecall
}
    80001224:	00813403          	ld	s0,8(sp)
    80001228:	01010113          	addi	sp,sp,16
    8000122c:	00008067          	ret

0000000080001230 <_ZL9fibonaccim>:
    }
    newsem->signal();
}

static uint64 fibonacci(uint64 n)
{
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	01213023          	sd	s2,0(sp)
    80001244:	02010413          	addi	s0,sp,32
    80001248:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000124c:	00100793          	li	a5,1
    80001250:	02a7f863          	bgeu	a5,a0,80001280 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001254:	00a00793          	li	a5,10
    80001258:	02f577b3          	remu	a5,a0,a5
    8000125c:	02078e63          	beqz	a5,80001298 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001260:	fff48513          	addi	a0,s1,-1
    80001264:	00000097          	auipc	ra,0x0
    80001268:	fcc080e7          	jalr	-52(ra) # 80001230 <_ZL9fibonaccim>
    8000126c:	00050913          	mv	s2,a0
    80001270:	ffe48513          	addi	a0,s1,-2
    80001274:	00000097          	auipc	ra,0x0
    80001278:	fbc080e7          	jalr	-68(ra) # 80001230 <_ZL9fibonaccim>
    8000127c:	00a90533          	add	a0,s2,a0
}
    80001280:	01813083          	ld	ra,24(sp)
    80001284:	01013403          	ld	s0,16(sp)
    80001288:	00813483          	ld	s1,8(sp)
    8000128c:	00013903          	ld	s2,0(sp)
    80001290:	02010113          	addi	sp,sp,32
    80001294:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	670080e7          	jalr	1648(ra) # 80001908 <_ZN3TCB5yieldEv>
    800012a0:	fc1ff06f          	j	80001260 <_ZL9fibonaccim+0x30>

00000000800012a4 <_Z11workerBodyAv>:
{
    800012a4:	fe010113          	addi	sp,sp,-32
    800012a8:	00113c23          	sd	ra,24(sp)
    800012ac:	00813823          	sd	s0,16(sp)
    800012b0:	00913423          	sd	s1,8(sp)
    800012b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800012b8:	00000493          	li	s1,0
    800012bc:	0300006f          	j	800012ec <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800012c0:	00168693          	addi	a3,a3,1
    800012c4:	000027b7          	lui	a5,0x2
    800012c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012cc:	00d7ee63          	bltu	a5,a3,800012e8 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800012d0:	00000713          	li	a4,0
    800012d4:	000077b7          	lui	a5,0x7
    800012d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012dc:	fee7e2e3          	bltu	a5,a4,800012c0 <_Z11workerBodyAv+0x1c>
    800012e0:	00170713          	addi	a4,a4,1
    800012e4:	ff1ff06f          	j	800012d4 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800012e8:	00148493          	addi	s1,s1,1
    800012ec:	00900793          	li	a5,9
    800012f0:	0297ec63          	bltu	a5,s1,80001328 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800012f4:	00004517          	auipc	a0,0x4
    800012f8:	d0c50513          	addi	a0,a0,-756 # 80005000 <kvmincrease+0x880>
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	fa8080e7          	jalr	-88(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    80001304:	00048513          	mv	a0,s1
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	fe0080e7          	jalr	-32(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    80001310:	00004517          	auipc	a0,0x4
    80001314:	dc050513          	addi	a0,a0,-576 # 800050d0 <kvmincrease+0x950>
    80001318:	00001097          	auipc	ra,0x1
    8000131c:	f8c080e7          	jalr	-116(ra) # 800022a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001320:	00000693          	li	a3,0
    80001324:	fa1ff06f          	j	800012c4 <_Z11workerBodyAv+0x20>
}
    80001328:	01813083          	ld	ra,24(sp)
    8000132c:	01013403          	ld	s0,16(sp)
    80001330:	00813483          	ld	s1,8(sp)
    80001334:	02010113          	addi	sp,sp,32
    80001338:	00008067          	ret

000000008000133c <_Z11workerBodyBv>:
{
    8000133c:	fe010113          	addi	sp,sp,-32
    80001340:	00113c23          	sd	ra,24(sp)
    80001344:	00813823          	sd	s0,16(sp)
    80001348:	00913423          	sd	s1,8(sp)
    8000134c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001350:	00000493          	li	s1,0
    80001354:	0300006f          	j	80001384 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001358:	00168693          	addi	a3,a3,1
    8000135c:	000027b7          	lui	a5,0x2
    80001360:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001364:	00d7ee63          	bltu	a5,a3,80001380 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001368:	00000713          	li	a4,0
    8000136c:	000077b7          	lui	a5,0x7
    80001370:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001374:	fee7e2e3          	bltu	a5,a4,80001358 <_Z11workerBodyBv+0x1c>
    80001378:	00170713          	addi	a4,a4,1
    8000137c:	ff1ff06f          	j	8000136c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001380:	00148493          	addi	s1,s1,1
    80001384:	00f00793          	li	a5,15
    80001388:	0297ec63          	bltu	a5,s1,800013c0 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    8000138c:	00004517          	auipc	a0,0x4
    80001390:	c7c50513          	addi	a0,a0,-900 # 80005008 <kvmincrease+0x888>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	f10080e7          	jalr	-240(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    8000139c:	00048513          	mv	a0,s1
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	f48080e7          	jalr	-184(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	d2850513          	addi	a0,a0,-728 # 800050d0 <kvmincrease+0x950>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	ef4080e7          	jalr	-268(ra) # 800022a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013b8:	00000693          	li	a3,0
    800013bc:	fa1ff06f          	j	8000135c <_Z11workerBodyBv+0x20>
    newsem->signal();
    800013c0:	00004797          	auipc	a5,0x4
    800013c4:	6387b783          	ld	a5,1592(a5) # 800059f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800013c8:	0007b503          	ld	a0,0(a5)
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	ce0080e7          	jalr	-800(ra) # 800020ac <_ZN4_sem6signalEv>
}
    800013d4:	01813083          	ld	ra,24(sp)
    800013d8:	01013403          	ld	s0,16(sp)
    800013dc:	00813483          	ld	s1,8(sp)
    800013e0:	02010113          	addi	sp,sp,32
    800013e4:	00008067          	ret

00000000800013e8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800013e8:	fe010113          	addi	sp,sp,-32
    800013ec:	00113c23          	sd	ra,24(sp)
    800013f0:	00813823          	sd	s0,16(sp)
    800013f4:	00913423          	sd	s1,8(sp)
    800013f8:	01213023          	sd	s2,0(sp)
    800013fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001400:	00000493          	li	s1,0
    80001404:	0380006f          	j	8000143c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001408:	00004517          	auipc	a0,0x4
    8000140c:	c0850513          	addi	a0,a0,-1016 # 80005010 <kvmincrease+0x890>
    80001410:	00001097          	auipc	ra,0x1
    80001414:	e94080e7          	jalr	-364(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    80001418:	00048513          	mv	a0,s1
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	ecc080e7          	jalr	-308(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	cac50513          	addi	a0,a0,-852 # 800050d0 <kvmincrease+0x950>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	e78080e7          	jalr	-392(ra) # 800022a4 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001434:	0014849b          	addiw	s1,s1,1
    80001438:	0ff4f493          	andi	s1,s1,255
    8000143c:	00200793          	li	a5,2
    80001440:	fc97f4e3          	bgeu	a5,s1,80001408 <_Z11workerBodyCv+0x20>
    }
    newsem->wait();
    80001444:	00004797          	auipc	a5,0x4
    80001448:	5b47b783          	ld	a5,1460(a5) # 800059f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000144c:	0007b503          	ld	a0,0(a5)
    80001450:	00001097          	auipc	ra,0x1
    80001454:	b58080e7          	jalr	-1192(ra) # 80001fa8 <_ZN4_sem4waitEv>
    printString("C: yield\n");
    80001458:	00004517          	auipc	a0,0x4
    8000145c:	bc050513          	addi	a0,a0,-1088 # 80005018 <kvmincrease+0x898>
    80001460:	00001097          	auipc	ra,0x1
    80001464:	e44080e7          	jalr	-444(ra) # 800022a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001468:	00700313          	li	t1,7
    TCB::yield();
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	49c080e7          	jalr	1180(ra) # 80001908 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001474:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001478:	00004517          	auipc	a0,0x4
    8000147c:	bb050513          	addi	a0,a0,-1104 # 80005028 <kvmincrease+0x8a8>
    80001480:	00001097          	auipc	ra,0x1
    80001484:	e24080e7          	jalr	-476(ra) # 800022a4 <_Z11printStringPKc>
    printInteger(t1);
    80001488:	00090513          	mv	a0,s2
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	e5c080e7          	jalr	-420(ra) # 800022e8 <_Z12printIntegerm>
    printString("\n");
    80001494:	00004517          	auipc	a0,0x4
    80001498:	c3c50513          	addi	a0,a0,-964 # 800050d0 <kvmincrease+0x950>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	e08080e7          	jalr	-504(ra) # 800022a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014a4:	00c00513          	li	a0,12
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	d88080e7          	jalr	-632(ra) # 80001230 <_ZL9fibonaccim>
    800014b0:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014b4:	00004517          	auipc	a0,0x4
    800014b8:	b7c50513          	addi	a0,a0,-1156 # 80005030 <kvmincrease+0x8b0>
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	de8080e7          	jalr	-536(ra) # 800022a4 <_Z11printStringPKc>
    printInteger(result);
    800014c4:	00090513          	mv	a0,s2
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	e20080e7          	jalr	-480(ra) # 800022e8 <_Z12printIntegerm>
    printString("\n");
    800014d0:	00004517          	auipc	a0,0x4
    800014d4:	c0050513          	addi	a0,a0,-1024 # 800050d0 <kvmincrease+0x950>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	dcc080e7          	jalr	-564(ra) # 800022a4 <_Z11printStringPKc>
    800014e0:	0380006f          	j	80001518 <_Z11workerBodyCv+0x130>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014e4:	00004517          	auipc	a0,0x4
    800014e8:	b2c50513          	addi	a0,a0,-1236 # 80005010 <kvmincrease+0x890>
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	db8080e7          	jalr	-584(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    800014f4:	00048513          	mv	a0,s1
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	df0080e7          	jalr	-528(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    80001500:	00004517          	auipc	a0,0x4
    80001504:	bd050513          	addi	a0,a0,-1072 # 800050d0 <kvmincrease+0x950>
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	d9c080e7          	jalr	-612(ra) # 800022a4 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001510:	0014849b          	addiw	s1,s1,1
    80001514:	0ff4f493          	andi	s1,s1,255
    80001518:	00500793          	li	a5,5
    8000151c:	fc97f4e3          	bgeu	a5,s1,800014e4 <_Z11workerBodyCv+0xfc>
    }
//    TCB::yield();
}
    80001520:	01813083          	ld	ra,24(sp)
    80001524:	01013403          	ld	s0,16(sp)
    80001528:	00813483          	ld	s1,8(sp)
    8000152c:	00013903          	ld	s2,0(sp)
    80001530:	02010113          	addi	sp,sp,32
    80001534:	00008067          	ret

0000000080001538 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001538:	fe010113          	addi	sp,sp,-32
    8000153c:	00113c23          	sd	ra,24(sp)
    80001540:	00813823          	sd	s0,16(sp)
    80001544:	00913423          	sd	s1,8(sp)
    80001548:	01213023          	sd	s2,0(sp)
    8000154c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001550:	00a00493          	li	s1,10
    80001554:	0380006f          	j	8000158c <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001558:	00004517          	auipc	a0,0x4
    8000155c:	ae850513          	addi	a0,a0,-1304 # 80005040 <kvmincrease+0x8c0>
    80001560:	00001097          	auipc	ra,0x1
    80001564:	d44080e7          	jalr	-700(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    80001568:	00048513          	mv	a0,s1
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	d7c080e7          	jalr	-644(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    80001574:	00004517          	auipc	a0,0x4
    80001578:	b5c50513          	addi	a0,a0,-1188 # 800050d0 <kvmincrease+0x950>
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	d28080e7          	jalr	-728(ra) # 800022a4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001584:	0014849b          	addiw	s1,s1,1
    80001588:	0ff4f493          	andi	s1,s1,255
    8000158c:	00c00793          	li	a5,12
    80001590:	fc97f4e3          	bgeu	a5,s1,80001558 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001594:	00004517          	auipc	a0,0x4
    80001598:	ab450513          	addi	a0,a0,-1356 # 80005048 <kvmincrease+0x8c8>
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	d08080e7          	jalr	-760(ra) # 800022a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015a4:	00500313          	li	t1,5
    TCB::yield();
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	360080e7          	jalr	864(ra) # 80001908 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015b0:	01000513          	li	a0,16
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c7c080e7          	jalr	-900(ra) # 80001230 <_ZL9fibonaccim>
    800015bc:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	a9850513          	addi	a0,a0,-1384 # 80005058 <kvmincrease+0x8d8>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	cdc080e7          	jalr	-804(ra) # 800022a4 <_Z11printStringPKc>
    printInteger(result);
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	d14080e7          	jalr	-748(ra) # 800022e8 <_Z12printIntegerm>
    printString("\n");
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	af450513          	addi	a0,a0,-1292 # 800050d0 <kvmincrease+0x950>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	cc0080e7          	jalr	-832(ra) # 800022a4 <_Z11printStringPKc>
    800015ec:	0380006f          	j	80001624 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015f0:	00004517          	auipc	a0,0x4
    800015f4:	a5050513          	addi	a0,a0,-1456 # 80005040 <kvmincrease+0x8c0>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	cac080e7          	jalr	-852(ra) # 800022a4 <_Z11printStringPKc>
        printInteger(i);
    80001600:	00048513          	mv	a0,s1
    80001604:	00001097          	auipc	ra,0x1
    80001608:	ce4080e7          	jalr	-796(ra) # 800022e8 <_Z12printIntegerm>
        printString("\n");
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	ac450513          	addi	a0,a0,-1340 # 800050d0 <kvmincrease+0x950>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	c90080e7          	jalr	-880(ra) # 800022a4 <_Z11printStringPKc>
    for (; i < 16; i++)
    8000161c:	0014849b          	addiw	s1,s1,1
    80001620:	0ff4f493          	andi	s1,s1,255
    80001624:	00f00793          	li	a5,15
    80001628:	fc97f4e3          	bgeu	a5,s1,800015f0 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	00813483          	ld	s1,8(sp)
    80001638:	00013903          	ld	s2,0(sp)
    8000163c:	02010113          	addi	sp,sp,32
    80001640:	00008067          	ret

0000000080001644 <main>:
#include "../h/syscall_c.hpp"
#include "../h/_sem.hpp"
thread_t handle1;
_sem* newsem;
void main()
{
    80001644:	fb010113          	addi	sp,sp,-80
    80001648:	04113423          	sd	ra,72(sp)
    8000164c:	04813023          	sd	s0,64(sp)
    80001650:	02913c23          	sd	s1,56(sp)
    80001654:	03213823          	sd	s2,48(sp)
    80001658:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000165c:	00004797          	auipc	a5,0x4
    80001660:	3747b783          	ld	a5,884(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001664:	10579073          	csrw	stvec,a5

    TCB *threads[5];
    newsem=new _sem(0);
    80001668:	03000513          	li	a0,48
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	4ac080e7          	jalr	1196(ra) # 80001b18 <_Znwm>

    Elem *head, *tail;
    Elem* iterator = nullptr;
    int size=0;
public:
    List() : head(0), tail(0) {}
    80001674:	00053823          	sd	zero,16(a0)
    80001678:	00053c23          	sd	zero,24(a0)
    8000167c:	02053023          	sd	zero,32(a0)
    80001680:	02052423          	sw	zero,40(a0)
#include "tcb.hpp"

class _sem {
public:
    _sem(int initValue) {
        val=initValue;
    80001684:	00052223          	sw	zero,4(a0)
        blockedThreads=0;
    80001688:	00052023          	sw	zero,0(a0)
        closed=false;
    8000168c:	00050423          	sb	zero,8(a0)
    80001690:	00004497          	auipc	s1,0x4
    80001694:	3d048493          	addi	s1,s1,976 # 80005a60 <newsem>
    80001698:	00a4b023          	sd	a0,0(s1)
    thread_create(&threads[0], nullptr, nullptr);
    8000169c:	00000613          	li	a2,0
    800016a0:	00000593          	li	a1,0
    800016a4:	fb840513          	addi	a0,s0,-72
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	a7c080e7          	jalr	-1412(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800016b0:	fb843703          	ld	a4,-72(s0)
    800016b4:	00004797          	auipc	a5,0x4
    800016b8:	34c7b783          	ld	a5,844(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016bc:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    800016c0:	00000613          	li	a2,0
    800016c4:	00004597          	auipc	a1,0x4
    800016c8:	3245b583          	ld	a1,804(a1) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016cc:	fc040513          	addi	a0,s0,-64
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	a54080e7          	jalr	-1452(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800016d8:	00004517          	auipc	a0,0x4
    800016dc:	99050513          	addi	a0,a0,-1648 # 80005068 <kvmincrease+0x8e8>
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	bc4080e7          	jalr	-1084(ra) # 800022a4 <_Z11printStringPKc>
    thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    800016e8:	00000613          	li	a2,0
    800016ec:	00004597          	auipc	a1,0x4
    800016f0:	2ec5b583          	ld	a1,748(a1) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800016f4:	fc840513          	addi	a0,s0,-56
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	a2c080e7          	jalr	-1492(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001700:	00004517          	auipc	a0,0x4
    80001704:	98050513          	addi	a0,a0,-1664 # 80005080 <kvmincrease+0x900>
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	b9c080e7          	jalr	-1124(ra) # 800022a4 <_Z11printStringPKc>
    thread_create(&threads[3], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    80001710:	00000613          	li	a2,0
    80001714:	00004597          	auipc	a1,0x4
    80001718:	2f45b583          	ld	a1,756(a1) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000171c:	fd040513          	addi	a0,s0,-48
    80001720:	00000097          	auipc	ra,0x0
    80001724:	a04080e7          	jalr	-1532(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001728:	00004517          	auipc	a0,0x4
    8000172c:	97050513          	addi	a0,a0,-1680 # 80005098 <kvmincrease+0x918>
    80001730:	00001097          	auipc	ra,0x1
    80001734:	b74080e7          	jalr	-1164(ra) # 800022a4 <_Z11printStringPKc>
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    80001738:	00000613          	li	a2,0
    8000173c:	00004597          	auipc	a1,0x4
    80001740:	2d45b583          	ld	a1,724(a1) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001744:	fd840513          	addi	a0,s0,-40
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	9dc080e7          	jalr	-1572(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001750:	00004517          	auipc	a0,0x4
    80001754:	96050513          	addi	a0,a0,-1696 # 800050b0 <kvmincrease+0x930>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	b4c080e7          	jalr	-1204(ra) # 800022a4 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001760:	00200793          	li	a5,2
    80001764:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    handle1 = threads[1];
    80001768:	fc043783          	ld	a5,-64(s0)
    8000176c:	00f4b423          	sd	a5,8(s1)
    80001770:	00c0006f          	j	8000177c <main+0x138>
   while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	9e8080e7          	jalr	-1560(ra) # 8000115c <_Z15thread_dispatchv>
   while (!(threads[1]->isFinished() &&
    8000177c:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { if (stack!= nullptr) delete[] stack; }

    bool isFinished() const { return finished; }
    80001780:	0307c783          	lbu	a5,48(a5)
    80001784:	fe0788e3          	beqz	a5,80001774 <main+0x130>
             threads[2]->isFinished() &&
    80001788:	fc843783          	ld	a5,-56(s0)
    8000178c:	0307c783          	lbu	a5,48(a5)
   while (!(threads[1]->isFinished() &&
    80001790:	fe0782e3          	beqz	a5,80001774 <main+0x130>
             threads[3]->isFinished() &&
    80001794:	fd043783          	ld	a5,-48(s0)
    80001798:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    8000179c:	fc078ce3          	beqz	a5,80001774 <main+0x130>
             threads[4]->isFinished()))
    800017a0:	fd843783          	ld	a5,-40(s0)
    800017a4:	0307c783          	lbu	a5,48(a5)
   while (!(threads[1]->isFinished() &&
    800017a8:	fc0786e3          	beqz	a5,80001774 <main+0x130>
    800017ac:	00100493          	li	s1,1
    800017b0:	0140006f          	j	800017c4 <main+0x180>
    }

   for (int i=1;i<5;i++){
       delete threads[i];
    800017b4:	00090513          	mv	a0,s2
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	3b0080e7          	jalr	944(ra) # 80001b68 <_ZdlPv>
   for (int i=1;i<5;i++){
    800017c0:	0014849b          	addiw	s1,s1,1
    800017c4:	00400793          	li	a5,4
    800017c8:	0297c663          	blt	a5,s1,800017f4 <main+0x1b0>
       delete threads[i];
    800017cc:	00349793          	slli	a5,s1,0x3
    800017d0:	fe040713          	addi	a4,s0,-32
    800017d4:	00f707b3          	add	a5,a4,a5
    800017d8:	fd87b903          	ld	s2,-40(a5)
    800017dc:	fe0902e3          	beqz	s2,800017c0 <main+0x17c>
    ~TCB() { if (stack!= nullptr) delete[] stack; }
    800017e0:	01093503          	ld	a0,16(s2)
    800017e4:	fc0508e3          	beqz	a0,800017b4 <main+0x170>
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	3a8080e7          	jalr	936(ra) # 80001b90 <_ZdaPv>
    800017f0:	fc5ff06f          	j	800017b4 <main+0x170>
   }

    printString("Finished\n");
    800017f4:	00004517          	auipc	a0,0x4
    800017f8:	8d450513          	addi	a0,a0,-1836 # 800050c8 <kvmincrease+0x948>
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	aa8080e7          	jalr	-1368(ra) # 800022a4 <_Z11printStringPKc>

    return;
}
    80001804:	04813083          	ld	ra,72(sp)
    80001808:	04013403          	ld	s0,64(sp)
    8000180c:	03813483          	ld	s1,56(sp)
    80001810:	03013903          	ld	s2,48(sp)
    80001814:	05010113          	addi	sp,sp,80
    80001818:	00008067          	ret

000000008000181c <_ZN3TCB12createThreadEPFvPvES0_>:

uint64 TCB::timeSliceCounter = 0;


TCB *TCB::createThread(Body body, void* arg)
{
    8000181c:	fd010113          	addi	sp,sp,-48
    80001820:	02113423          	sd	ra,40(sp)
    80001824:	02813023          	sd	s0,32(sp)
    80001828:	00913c23          	sd	s1,24(sp)
    8000182c:	01213823          	sd	s2,16(sp)
    80001830:	01313423          	sd	s3,8(sp)
    80001834:	03010413          	addi	s0,sp,48
    80001838:	00050913          	mv	s2,a0
    8000183c:	00058993          	mv	s3,a1
    return new TCB(body,arg, TIME_SLICE);
    80001840:	05800513          	li	a0,88
    80001844:	00000097          	auipc	ra,0x0
    80001848:	2d4080e7          	jalr	724(ra) # 80001b18 <_Znwm>
    8000184c:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            blocked(false)
    80001850:	01353023          	sd	s3,0(a0)
    80001854:	01253423          	sd	s2,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001858:	00090a63          	beqz	s2,8000186c <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    8000185c:	00002537          	lui	a0,0x2
    80001860:	00000097          	auipc	ra,0x0
    80001864:	2e0080e7          	jalr	736(ra) # 80001b40 <_Znam>
    80001868:	0080006f          	j	80001870 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    8000186c:	00000513          	li	a0,0
            blocked(false)
    80001870:	00a4b823          	sd	a0,16(s1)
    80001874:	00000797          	auipc	a5,0x0
    80001878:	24078793          	addi	a5,a5,576 # 80001ab4 <_ZN3TCB13threadWrapperEv>
    8000187c:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001880:	04050263          	beqz	a0,800018c4 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80001884:	000027b7          	lui	a5,0x2
    80001888:	00f507b3          	add	a5,a0,a5
            blocked(false)
    8000188c:	02f4b023          	sd	a5,32(s1)
    80001890:	00200793          	li	a5,2
    80001894:	02f4b423          	sd	a5,40(s1)
    80001898:	02048823          	sb	zero,48(s1)
    8000189c:	020488a3          	sb	zero,49(s1)
    800018a0:	0204bc23          	sd	zero,56(s1)
    800018a4:	0404b023          	sd	zero,64(s1)
    800018a8:	0404b423          	sd	zero,72(s1)
    800018ac:	0404a823          	sw	zero,80(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800018b0:	02090c63          	beqz	s2,800018e8 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
    800018b4:	00048513          	mv	a0,s1
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	938080e7          	jalr	-1736(ra) # 800021f0 <_ZN9Scheduler3putEP3TCB>
    800018c0:	0280006f          	j	800018e8 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800018c4:	00000793          	li	a5,0
    800018c8:	fc5ff06f          	j	8000188c <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    800018cc:	00050913          	mv	s2,a0
    800018d0:	00048513          	mv	a0,s1
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	294080e7          	jalr	660(ra) # 80001b68 <_ZdlPv>
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00005097          	auipc	ra,0x5
    800018e4:	288080e7          	jalr	648(ra) # 80006b68 <_Unwind_Resume>
}
    800018e8:	00048513          	mv	a0,s1
    800018ec:	02813083          	ld	ra,40(sp)
    800018f0:	02013403          	ld	s0,32(sp)
    800018f4:	01813483          	ld	s1,24(sp)
    800018f8:	01013903          	ld	s2,16(sp)
    800018fc:	00813983          	ld	s3,8(sp)
    80001900:	03010113          	addi	sp,sp,48
    80001904:	00008067          	ret

0000000080001908 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00113423          	sd	ra,8(sp)
    80001910:	00813023          	sd	s0,0(sp)
    80001914:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	844080e7          	jalr	-1980(ra) # 8000115c <_Z15thread_dispatchv>
}
    80001920:	00813083          	ld	ra,8(sp)
    80001924:	00013403          	ld	s0,0(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret

0000000080001930 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    80001930:	fe010113          	addi	sp,sp,-32
    80001934:	00113c23          	sd	ra,24(sp)
    80001938:	00813823          	sd	s0,16(sp)
    8000193c:	00913423          	sd	s1,8(sp)
    80001940:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001944:	00004497          	auipc	s1,0x4
    80001948:	12c4b483          	ld	s1,300(s1) # 80005a70 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000194c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()&& !old->isBlocked()) { Scheduler::put(old); }
    80001950:	00079663          	bnez	a5,8000195c <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked () {return blocked;}
    80001954:	0314c783          	lbu	a5,49(s1)
    80001958:	02078c63          	beqz	a5,80001990 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	818080e7          	jalr	-2024(ra) # 80002174 <_ZN9Scheduler3getEv>
    80001964:	00004797          	auipc	a5,0x4
    80001968:	10a7b623          	sd	a0,268(a5) # 80005a70 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    8000196c:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001970:	01848513          	addi	a0,s1,24
    80001974:	fffff097          	auipc	ra,0xfffff
    80001978:	79c080e7          	jalr	1948(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>


}
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	02010113          	addi	sp,sp,32
    8000198c:	00008067          	ret
    if (!old->isFinished()&& !old->isBlocked()) { Scheduler::put(old); }
    80001990:	00048513          	mv	a0,s1
    80001994:	00001097          	auipc	ra,0x1
    80001998:	85c080e7          	jalr	-1956(ra) # 800021f0 <_ZN9Scheduler3putEP3TCB>
    8000199c:	fc1ff06f          	j	8000195c <_ZN3TCB8dispatchEv+0x2c>

00000000800019a0 <_ZN3TCB5blockEPS_>:
    running->setFinished(true);
    running->unblock();
    TCB::yield();
}

void TCB::block(TCB *thread) {
    800019a0:	fd010113          	addi	sp,sp,-48
    800019a4:	02113423          	sd	ra,40(sp)
    800019a8:	02813023          	sd	s0,32(sp)
    800019ac:	00913c23          	sd	s1,24(sp)
    800019b0:	01213823          	sd	s2,16(sp)
    800019b4:	01313423          	sd	s3,8(sp)
    800019b8:	03010413          	addi	s0,sp,48
    800019bc:	00050913          	mv	s2,a0
    800019c0:	00058993          	mv	s3,a1

    blockedQueue.addLast(thread);
    800019c4:	03850493          	addi	s1,a0,56
        size++;
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800019c8:	01000513          	li	a0,16
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	14c080e7          	jalr	332(ra) # 80001b18 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800019d4:	01353023          	sd	s3,0(a0)
    800019d8:	00053423          	sd	zero,8(a0)
        if (tail)
    800019dc:	0084b783          	ld	a5,8(s1)
    800019e0:	02078a63          	beqz	a5,80001a14 <_ZN3TCB5blockEPS_+0x74>
        {
            tail->next = elem;
    800019e4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800019e8:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    800019ec:	0184a783          	lw	a5,24(s1)
    800019f0:	0017879b          	addiw	a5,a5,1
    800019f4:	00f4ac23          	sw	a5,24(s1)
}
    800019f8:	02813083          	ld	ra,40(sp)
    800019fc:	02013403          	ld	s0,32(sp)
    80001a00:	01813483          	ld	s1,24(sp)
    80001a04:	01013903          	ld	s2,16(sp)
    80001a08:	00813983          	ld	s3,8(sp)
    80001a0c:	03010113          	addi	sp,sp,48
    80001a10:	00008067          	ret
            head = tail = elem;
    80001a14:	00a4b423          	sd	a0,8(s1)
    80001a18:	02a93c23          	sd	a0,56(s2)
    80001a1c:	fd1ff06f          	j	800019ec <_ZN3TCB5blockEPS_+0x4c>

0000000080001a20 <_ZN3TCB7unblockEv>:

void TCB::unblock() {
    80001a20:	fd010113          	addi	sp,sp,-48
    80001a24:	02113423          	sd	ra,40(sp)
    80001a28:	02813023          	sd	s0,32(sp)
    80001a2c:	00913c23          	sd	s1,24(sp)
    80001a30:	01213823          	sd	s2,16(sp)
    80001a34:	01313423          	sd	s3,8(sp)
    80001a38:	03010413          	addi	s0,sp,48
    80001a3c:	00050493          	mv	s1,a0
    80001a40:	02c0006f          	j	80001a6c <_ZN3TCB7unblockEv+0x4c>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001a44:	00093423          	sd	zero,8(s2)

        T *ret = elem->data;
    80001a48:	00053983          	ld	s3,0(a0)
        delete elem;
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	11c080e7          	jalr	284(ra) # 80001b68 <_ZdlPv>
        size--;
    80001a54:	01892783          	lw	a5,24(s2)
    80001a58:	fff7879b          	addiw	a5,a5,-1
    80001a5c:	00f92c23          	sw	a5,24(s2)
    while(blockedQueue.getSize()>0){
        TCB* t=blockedQueue.removeFirst();
        Scheduler::put(t);
    80001a60:	00098513          	mv	a0,s3
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	78c080e7          	jalr	1932(ra) # 800021f0 <_ZN9Scheduler3putEP3TCB>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    int getSize(){return size;}
    80001a6c:	0504a783          	lw	a5,80(s1)
    while(blockedQueue.getSize()>0){
    80001a70:	02f05463          	blez	a5,80001a98 <_ZN3TCB7unblockEv+0x78>
        TCB* t=blockedQueue.removeFirst();
    80001a74:	03848913          	addi	s2,s1,56
        if (!head) { return 0; }
    80001a78:	0384b503          	ld	a0,56(s1)
    80001a7c:	00050a63          	beqz	a0,80001a90 <_ZN3TCB7unblockEv+0x70>
        head = head->next;
    80001a80:	00853783          	ld	a5,8(a0)
    80001a84:	02f4bc23          	sd	a5,56(s1)
        if (!head) { tail = 0; }
    80001a88:	fc0790e3          	bnez	a5,80001a48 <_ZN3TCB7unblockEv+0x28>
    80001a8c:	fb9ff06f          	j	80001a44 <_ZN3TCB7unblockEv+0x24>
        if (!head) { return 0; }
    80001a90:	00050993          	mv	s3,a0
    80001a94:	fcdff06f          	j	80001a60 <_ZN3TCB7unblockEv+0x40>
    }

}
    80001a98:	02813083          	ld	ra,40(sp)
    80001a9c:	02013403          	ld	s0,32(sp)
    80001aa0:	01813483          	ld	s1,24(sp)
    80001aa4:	01013903          	ld	s2,16(sp)
    80001aa8:	00813983          	ld	s3,8(sp)
    80001aac:	03010113          	addi	sp,sp,48
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN3TCB13threadWrapperEv>:
{
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	0f0080e7          	jalr	240(ra) # 80001bb8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001ad0:	00004497          	auipc	s1,0x4
    80001ad4:	fa048493          	addi	s1,s1,-96 # 80005a70 <_ZN3TCB7runningE>
    80001ad8:	0004b783          	ld	a5,0(s1)
    80001adc:	0087b703          	ld	a4,8(a5)
    80001ae0:	0007b503          	ld	a0,0(a5)
    80001ae4:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ae8:	0004b503          	ld	a0,0(s1)
    void setFinished(bool value) { finished = value; }
    80001aec:	00100793          	li	a5,1
    80001af0:	02f50823          	sb	a5,48(a0)
    running->unblock();
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	f2c080e7          	jalr	-212(ra) # 80001a20 <_ZN3TCB7unblockEv>
    TCB::yield();
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	e0c080e7          	jalr	-500(ra) # 80001908 <_ZN3TCB5yieldEv>
}
    80001b04:	01813083          	ld	ra,24(sp)
    80001b08:	01013403          	ld	s0,16(sp)
    80001b0c:	00813483          	ld	s1,8(sp)
    80001b10:	02010113          	addi	sp,sp,32
    80001b14:	00008067          	ret

0000000080001b18 <_Znwm>:
#include "../h/syscall_c.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00113423          	sd	ra,8(sp)
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	658080e7          	jalr	1624(ra) # 80001180 <_Z9mem_allocm>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_Znam>:

void *operator new[](size_t n)
{
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00113423          	sd	ra,8(sp)
    80001b48:	00813023          	sd	s0,0(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	630080e7          	jalr	1584(ra) # 80001180 <_Z9mem_allocm>
}
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	634080e7          	jalr	1588(ra) # 800011ac <_Z8mem_freePv>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	60c080e7          	jalr	1548(ra) # 800011ac <_Z8mem_freePv>
    80001ba8:	00813083          	ld	ra,8(sp)
    80001bac:	00013403          	ld	s0,0(sp)
    80001bb0:	01010113          	addi	sp,sp,16
    80001bb4:	00008067          	ret

0000000080001bb8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/mem.h"

void Riscv::popSppSpie()
{
    80001bb8:	ff010113          	addi	sp,sp,-16
    80001bbc:	00813423          	sd	s0,8(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    80001bc4:	02000793          	li	a5,32
    80001bc8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);

    __asm__ volatile("csrw sepc, ra");
    80001bcc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001bd0:	10200073          	sret
}
    80001bd4:	00813403          	ld	s0,8(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001be0:	f9010113          	addi	sp,sp,-112
    80001be4:	06113423          	sd	ra,104(sp)
    80001be8:	06813023          	sd	s0,96(sp)
    80001bec:	04913c23          	sd	s1,88(sp)
    80001bf0:	05213823          	sd	s2,80(sp)
    80001bf4:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bf8:	141027f3          	csrr	a5,sepc
    80001bfc:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001c00:	fc043783          	ld	a5,-64(s0)

    uint64 volatile sepc = r_sepc();
    80001c04:	fcf43c23          	sd	a5,-40(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c08:	100027f3          	csrr	a5,sstatus
    80001c0c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001c10:	fb843783          	ld	a5,-72(s0)
    uint64 volatile sstatus= r_sstatus();
    80001c14:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c18:	142027f3          	csrr	a5,scause
    80001c1c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80001c20:	fb043783          	ld	a5,-80(s0)
    uint64 volatile scause = r_scause();
    80001c24:	fcf43423          	sd	a5,-56(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001c28:	fc843703          	ld	a4,-56(s0)
    80001c2c:	00800793          	li	a5,8
    80001c30:	04f70463          	beq	a4,a5,80001c78 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
    80001c34:	fc843703          	ld	a4,-56(s0)
    80001c38:	00900793          	li	a5,9
    80001c3c:	02f70e63          	beq	a4,a5,80001c78 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);*/
    }
    else if (scause == 0x8000000000000001UL)
    80001c40:	fc843703          	ld	a4,-56(s0)
    80001c44:	fff00793          	li	a5,-1
    80001c48:	03f79793          	slli	a5,a5,0x3f
    80001c4c:	00178793          	addi	a5,a5,1
    80001c50:	18f70a63          	beq	a4,a5,80001de4 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            TCB::dispatch();
        }
        mc_sip(SIP_SSIP);

    }
    else if (scause == 0x8000000000000009UL)
    80001c54:	fc843703          	ld	a4,-56(s0)
    80001c58:	fff00793          	li	a5,-1
    80001c5c:	03f79793          	slli	a5,a5,0x3f
    80001c60:	00978793          	addi	a5,a5,9
    80001c64:	1cf70863          	beq	a4,a5,80001e34 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        __putc('g');
    80001c68:	06700513          	li	a0,103
    80001c6c:	00003097          	auipc	ra,0x3
    80001c70:	9f4080e7          	jalr	-1548(ra) # 80004660 <__putc>
    80001c74:	0c00006f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        __asm__ volatile("mv %0, a0" : "=r" (CODE));
    80001c78:	00050793          	mv	a5,a0
    80001c7c:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("mv %0, a1" : "=r" (arg1));
    80001c80:	00058793          	mv	a5,a1
    80001c84:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile("mv %0, a2" : "=r" (arg2));
    80001c88:	00060793          	mv	a5,a2
    80001c8c:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("mv %0, a3" : "=r" (arg3));
    80001c90:	00068793          	mv	a5,a3
    80001c94:	faf43423          	sd	a5,-88(s0)
        sepc= sepc +4;
    80001c98:	fd843783          	ld	a5,-40(s0)
    80001c9c:	00478793          	addi	a5,a5,4
    80001ca0:	fcf43c23          	sd	a5,-40(s0)
        if (CODE == SCALL_THREAD_CREATE){
    80001ca4:	f9043703          	ld	a4,-112(s0)
    80001ca8:	01100793          	li	a5,17
    80001cac:	06f70c63          	beq	a4,a5,80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
        }else if (CODE == SCALL_THREAD_DISPATCH){
    80001cb0:	f9043703          	ld	a4,-112(s0)
    80001cb4:	01300793          	li	a5,19
    80001cb8:	0cf70063          	beq	a4,a5,80001d78 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        }else if (CODE==MEM_ALLOC){
    80001cbc:	f9043703          	ld	a4,-112(s0)
    80001cc0:	00100793          	li	a5,1
    80001cc4:	0cf70663          	beq	a4,a5,80001d90 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
        }else if (CODE==MEM_FREE){
    80001cc8:	f9043703          	ld	a4,-112(s0)
    80001ccc:	00200793          	li	a5,2
    80001cd0:	0cf70a63          	beq	a4,a5,80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
        }else if (CODE==SCALL_THREAD_EXIT){
    80001cd4:	f9043703          	ld	a4,-112(s0)
    80001cd8:	01200793          	li	a5,18
    80001cdc:	0cf70e63          	beq	a4,a5,80001db8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        }else if (CODE== SCALL_THREAD_JOIN){
    80001ce0:	f9043703          	ld	a4,-112(s0)
    80001ce4:	01400793          	li	a5,20
    80001ce8:	04f71663          	bne	a4,a5,80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB* p= TCB::running;
    80001cec:	00004797          	auipc	a5,0x4
    80001cf0:	d147b783          	ld	a5,-748(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001cf4:	0007b483          	ld	s1,0(a5)
            TCB* target = (TCB*) arg1;
    80001cf8:	f9843503          	ld	a0,-104(s0)
    bool isFinished() const { return finished; }
    80001cfc:	0304c903          	lbu	s2,48(s1)
    void setFinished(bool value) { finished = value; }
    80001d00:	00100793          	li	a5,1
    80001d04:	02f48823          	sb	a5,48(s1)
            target->block(p);
    80001d08:	00048593          	mv	a1,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	c94080e7          	jalr	-876(ra) # 800019a0 <_ZN3TCB5blockEPS_>
            TCB::dispatch();
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	c1c080e7          	jalr	-996(ra) # 80001930 <_ZN3TCB8dispatchEv>
    80001d1c:	03248823          	sb	s2,48(s1)
    80001d20:	0140006f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            handle = (thread_t*) arg1;
    80001d24:	f9843483          	ld	s1,-104(s0)
            if (handle != nullptr){
    80001d28:	02049a63          	bnez	s1,80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                rett=-1;
    80001d2c:	fff00793          	li	a5,-1
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001d30:	04f43823          	sd	a5,80(s0)
    }
    w_sepc(sepc);
    80001d34:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d38:	14179073          	csrw	sepc,a5
    w_sstatus(sstatus);
    80001d3c:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d40:	10079073          	csrw	sstatus,a5
    80001d44:	06813083          	ld	ra,104(sp)
    80001d48:	06013403          	ld	s0,96(sp)
    80001d4c:	05813483          	ld	s1,88(sp)
    80001d50:	05013903          	ld	s2,80(sp)
    80001d54:	07010113          	addi	sp,sp,112
    80001d58:	00008067          	ret
                *handle = TCB::createThread(reinterpret_cast<void (*) (void*)>(arg2),(void*)arg3);
    80001d5c:	fa043503          	ld	a0,-96(s0)
    80001d60:	fa843583          	ld	a1,-88(s0)
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	ab8080e7          	jalr	-1352(ra) # 8000181c <_ZN3TCB12createThreadEPFvPvES0_>
    80001d6c:	00a4b023          	sd	a0,0(s1)
                rett=0;
    80001d70:	00000793          	li	a5,0
    80001d74:	fbdff06f          	j	80001d30 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            TCB::timeSliceCounter=0;
    80001d78:	00004797          	auipc	a5,0x4
    80001d7c:	c687b783          	ld	a5,-920(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d80:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	bac080e7          	jalr	-1108(ra) # 80001930 <_ZN3TCB8dispatchEv>
    80001d8c:	fa9ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            void* re = __mem_alloc(arg1);
    80001d90:	f9843503          	ld	a0,-104(s0)
    80001d94:	00002097          	auipc	ra,0x2
    80001d98:	774080e7          	jalr	1908(ra) # 80004508 <__mem_alloc>
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(re));
    80001d9c:	04a43823          	sd	a0,80(s0)
    80001da0:	f95ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            void* tmp = (void*) arg1;
    80001da4:	f9843503          	ld	a0,-104(s0)
            rett = __mem_free(tmp);
    80001da8:	00002097          	auipc	ra,0x2
    80001dac:	694080e7          	jalr	1684(ra) # 8000443c <__mem_free>
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001db0:	04a43823          	sd	a0,80(s0)
    80001db4:	f81ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::running->setFinished(true);
    80001db8:	00004797          	auipc	a5,0x4
    80001dbc:	c487b783          	ld	a5,-952(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001dc0:	0007b783          	ld	a5,0(a5)
    80001dc4:	00100713          	li	a4,1
    80001dc8:	02e78823          	sb	a4,48(a5)
            TCB::timeSliceCounter=0;
    80001dcc:	00004797          	auipc	a5,0x4
    80001dd0:	c147b783          	ld	a5,-1004(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dd4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	b58080e7          	jalr	-1192(ra) # 80001930 <_ZN3TCB8dispatchEv>
    80001de0:	f55ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        TCB::timeSliceCounter++;
    80001de4:	00004717          	auipc	a4,0x4
    80001de8:	bfc73703          	ld	a4,-1028(a4) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dec:	00073783          	ld	a5,0(a4)
    80001df0:	00178793          	addi	a5,a5,1
    80001df4:	00f73023          	sd	a5,0(a4)
        if (TCB::running != nullptr && TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001df8:	00004717          	auipc	a4,0x4
    80001dfc:	c0873703          	ld	a4,-1016(a4) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e00:	00073703          	ld	a4,0(a4)
    80001e04:	00070663          	beqz	a4,80001e10 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
    uint64 getTimeSlice() const { return timeSlice; }
    80001e08:	02873703          	ld	a4,40(a4)
    80001e0c:	00e7f863          	bgeu	a5,a4,80001e1c <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e10:	00200793          	li	a5,2
    80001e14:	1447b073          	csrc	sip,a5
}
    80001e18:	f1dff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::timeSliceCounter=0;
    80001e1c:	00004797          	auipc	a5,0x4
    80001e20:	bc47b783          	ld	a5,-1084(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e24:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	b08080e7          	jalr	-1272(ra) # 80001930 <_ZN3TCB8dispatchEv>
    80001e30:	fe1ff06f          	j	80001e10 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        console_handler();
    80001e34:	00003097          	auipc	ra,0x3
    80001e38:	8a0080e7          	jalr	-1888(ra) # 800046d4 <console_handler>
    80001e3c:	ef9ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>

0000000080001e40 <_ZN4_sem5closeEv>:
    if(++val<=0) deblock();
    return 0;
}

int _sem::close() {
    if (closed) return -1;
    80001e40:	00854783          	lbu	a5,8(a0)
    80001e44:	08079463          	bnez	a5,80001ecc <_ZN4_sem5closeEv+0x8c>
int _sem::close() {
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	01213023          	sd	s2,0(sp)
    80001e5c:	02010413          	addi	s0,sp,32
    80001e60:	00050493          	mv	s1,a0
    closed = true;
    80001e64:	00100793          	li	a5,1
    80001e68:	00f50423          	sb	a5,8(a0)
    80001e6c:	01c0006f          	j	80001e88 <_ZN4_sem5closeEv+0x48>
        if (!head) { tail = 0; }
    80001e70:	00093423          	sd	zero,8(s2)
        delete elem;
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	cf4080e7          	jalr	-780(ra) # 80001b68 <_ZdlPv>
        size--;
    80001e7c:	01892783          	lw	a5,24(s2)
    80001e80:	fff7879b          	addiw	a5,a5,-1
    80001e84:	00f92c23          	sw	a5,24(s2)
        if (!head) { return 0; }
    80001e88:	0104b783          	ld	a5,16(s1)
    80001e8c:	04078463          	beqz	a5,80001ed4 <_ZN4_sem5closeEv+0x94>
        return head->data;
    80001e90:	0007b783          	ld	a5,0(a5)
    while (blockedQ.peekFirst()){
    80001e94:	04078e63          	beqz	a5,80001ef0 <_ZN4_sem5closeEv+0xb0>
    void setBlocked (bool val){ blocked=val;}
    80001e98:	020788a3          	sb	zero,49(a5)
        if (!head) { return 0; }
    80001e9c:	0104b503          	ld	a0,16(s1)
    80001ea0:	00050463          	beqz	a0,80001ea8 <_ZN4_sem5closeEv+0x68>
        return head->data;
    80001ea4:	00053503          	ld	a0,0(a0)
        blockedQ.peekFirst()->setBlocked(false);
        Scheduler::put(blockedQ.peekFirst());
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	348080e7          	jalr	840(ra) # 800021f0 <_ZN9Scheduler3putEP3TCB>
        blockedQ.removeFirst();
    80001eb0:	01048913          	addi	s2,s1,16
        if (!head) { return 0; }
    80001eb4:	0104b503          	ld	a0,16(s1)
    80001eb8:	fc0508e3          	beqz	a0,80001e88 <_ZN4_sem5closeEv+0x48>
        head = head->next;
    80001ebc:	00853783          	ld	a5,8(a0)
    80001ec0:	00f4b823          	sd	a5,16(s1)
        if (!head) { tail = 0; }
    80001ec4:	fa0798e3          	bnez	a5,80001e74 <_ZN4_sem5closeEv+0x34>
    80001ec8:	fa9ff06f          	j	80001e70 <_ZN4_sem5closeEv+0x30>
    if (closed) return -1;
    80001ecc:	fff00513          	li	a0,-1
    }
    return 0;
}
    80001ed0:	00008067          	ret
    return 0;
    80001ed4:	00000513          	li	a0,0
}
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	00013903          	ld	s2,0(sp)
    80001ee8:	02010113          	addi	sp,sp,32
    80001eec:	00008067          	ret
    return 0;
    80001ef0:	00000513          	li	a0,0
    80001ef4:	fe5ff06f          	j	80001ed8 <_ZN4_sem5closeEv+0x98>

0000000080001ef8 <_ZN4_sem5blockEv>:

void _sem::block() {
    80001ef8:	fd010113          	addi	sp,sp,-48
    80001efc:	02113423          	sd	ra,40(sp)
    80001f00:	02813023          	sd	s0,32(sp)
    80001f04:	00913c23          	sd	s1,24(sp)
    80001f08:	01213823          	sd	s2,16(sp)
    80001f0c:	01313423          	sd	s3,8(sp)
    80001f10:	03010413          	addi	s0,sp,48
    80001f14:	00050493          	mv	s1,a0
    blockedThreads++;
    80001f18:	00052783          	lw	a5,0(a0)
    80001f1c:	0017879b          	addiw	a5,a5,1
    80001f20:	00f52023          	sw	a5,0(a0)
    blockedQ.addLast(TCB::running);
    80001f24:	01050913          	addi	s2,a0,16
    80001f28:	00004797          	auipc	a5,0x4
    80001f2c:	ad87b783          	ld	a5,-1320(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001f30:	0007b983          	ld	s3,0(a5)
        Elem *elem = new Elem(data, 0);
    80001f34:	01000513          	li	a0,16
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	be0080e7          	jalr	-1056(ra) # 80001b18 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001f40:	01353023          	sd	s3,0(a0)
    80001f44:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f48:	00893783          	ld	a5,8(s2)
    80001f4c:	04078863          	beqz	a5,80001f9c <_ZN4_sem5blockEv+0xa4>
            tail->next = elem;
    80001f50:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f54:	00a93423          	sd	a0,8(s2)
        size++;
    80001f58:	01892783          	lw	a5,24(s2)
    80001f5c:	0017879b          	addiw	a5,a5,1
    80001f60:	00f92c23          	sw	a5,24(s2)
    TCB::running->setBlocked(true);
    80001f64:	00004797          	auipc	a5,0x4
    80001f68:	a9c7b783          	ld	a5,-1380(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001f6c:	0007b783          	ld	a5,0(a5)
    80001f70:	00100713          	li	a4,1
    80001f74:	02e788a3          	sb	a4,49(a5)
    thread_dispatch();
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	1e4080e7          	jalr	484(ra) # 8000115c <_Z15thread_dispatchv>
}
    80001f80:	02813083          	ld	ra,40(sp)
    80001f84:	02013403          	ld	s0,32(sp)
    80001f88:	01813483          	ld	s1,24(sp)
    80001f8c:	01013903          	ld	s2,16(sp)
    80001f90:	00813983          	ld	s3,8(sp)
    80001f94:	03010113          	addi	sp,sp,48
    80001f98:	00008067          	ret
            head = tail = elem;
    80001f9c:	00a93423          	sd	a0,8(s2)
    80001fa0:	00a4b823          	sd	a0,16(s1)
    80001fa4:	fb5ff06f          	j	80001f58 <_ZN4_sem5blockEv+0x60>

0000000080001fa8 <_ZN4_sem4waitEv>:
int _sem::wait() {
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00113c23          	sd	ra,24(sp)
    80001fb0:	00813823          	sd	s0,16(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	00050493          	mv	s1,a0
    if (--val<0){
    80001fc0:	00452783          	lw	a5,4(a0)
    80001fc4:	fff7879b          	addiw	a5,a5,-1
    80001fc8:	00f52223          	sw	a5,4(a0)
    80001fcc:	02079713          	slli	a4,a5,0x20
    80001fd0:	02074463          	bltz	a4,80001ff8 <_ZN4_sem4waitEv+0x50>
    if (!closed){
    80001fd4:	0084c783          	lbu	a5,8(s1)
    80001fd8:	02078e63          	beqz	a5,80002014 <_ZN4_sem4waitEv+0x6c>
    }else if (blockedThreads==0){
    80001fdc:	0004a503          	lw	a0,0(s1)
    80001fe0:	02051263          	bnez	a0,80002004 <_ZN4_sem4waitEv+0x5c>
}
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	02010113          	addi	sp,sp,32
    80001ff4:	00008067          	ret
        block();
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	f00080e7          	jalr	-256(ra) # 80001ef8 <_ZN4_sem5blockEv>
    80002000:	fd5ff06f          	j	80001fd4 <_ZN4_sem4waitEv+0x2c>
        blockedThreads--;
    80002004:	fff5051b          	addiw	a0,a0,-1
    80002008:	00a4a023          	sw	a0,0(s1)
        return -1;
    8000200c:	fff00513          	li	a0,-1
    80002010:	fd5ff06f          	j	80001fe4 <_ZN4_sem4waitEv+0x3c>
        return 0;
    80002014:	00000513          	li	a0,0
    80002018:	fcdff06f          	j	80001fe4 <_ZN4_sem4waitEv+0x3c>

000000008000201c <_ZN4_sem7deblockEv>:

void _sem::deblock() {
    8000201c:	fe010113          	addi	sp,sp,-32
    80002020:	00113c23          	sd	ra,24(sp)
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00913423          	sd	s1,8(sp)
    8000202c:	01213023          	sd	s2,0(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	00050793          	mv	a5,a0
    blockedThreads--;
    80002038:	00052703          	lw	a4,0(a0)
    8000203c:	fff7071b          	addiw	a4,a4,-1
    80002040:	00e52023          	sw	a4,0(a0)
    TCB* tmp= blockedQ.removeFirst();
    80002044:	01050493          	addi	s1,a0,16
        if (!head) { return 0; }
    80002048:	01053503          	ld	a0,16(a0)
    8000204c:	04050c63          	beqz	a0,800020a4 <_ZN4_sem7deblockEv+0x88>
        head = head->next;
    80002050:	00853703          	ld	a4,8(a0)
    80002054:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80002058:	04070263          	beqz	a4,8000209c <_ZN4_sem7deblockEv+0x80>
        T *ret = elem->data;
    8000205c:	00053903          	ld	s2,0(a0)
        delete elem;
    80002060:	00000097          	auipc	ra,0x0
    80002064:	b08080e7          	jalr	-1272(ra) # 80001b68 <_ZdlPv>
        size--;
    80002068:	0184a783          	lw	a5,24(s1)
    8000206c:	fff7879b          	addiw	a5,a5,-1
    80002070:	00f4ac23          	sw	a5,24(s1)
    80002074:	020908a3          	sb	zero,49(s2)
    tmp->setBlocked(false);
    Scheduler::put(tmp);
    80002078:	00090513          	mv	a0,s2
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	174080e7          	jalr	372(ra) # 800021f0 <_ZN9Scheduler3putEP3TCB>
}
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	00013903          	ld	s2,0(sp)
    80002094:	02010113          	addi	sp,sp,32
    80002098:	00008067          	ret
        if (!head) { tail = 0; }
    8000209c:	0004b423          	sd	zero,8(s1)
    800020a0:	fbdff06f          	j	8000205c <_ZN4_sem7deblockEv+0x40>
        if (!head) { return 0; }
    800020a4:	00050913          	mv	s2,a0
    800020a8:	fcdff06f          	j	80002074 <_ZN4_sem7deblockEv+0x58>

00000000800020ac <_ZN4_sem6signalEv>:
    if (closed) return -1;
    800020ac:	00854783          	lbu	a5,8(a0)
    800020b0:	04079663          	bnez	a5,800020fc <_ZN4_sem6signalEv+0x50>
    if(++val<=0) deblock();
    800020b4:	00452783          	lw	a5,4(a0)
    800020b8:	0017879b          	addiw	a5,a5,1
    800020bc:	0007871b          	sext.w	a4,a5
    800020c0:	00f52223          	sw	a5,4(a0)
    800020c4:	00e05663          	blez	a4,800020d0 <_ZN4_sem6signalEv+0x24>
    return 0;
    800020c8:	00000513          	li	a0,0
}
    800020cc:	00008067          	ret
int _sem::signal() {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00113423          	sd	ra,8(sp)
    800020d8:	00813023          	sd	s0,0(sp)
    800020dc:	01010413          	addi	s0,sp,16
    if(++val<=0) deblock();
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	f3c080e7          	jalr	-196(ra) # 8000201c <_ZN4_sem7deblockEv>
    return 0;
    800020e8:	00000513          	li	a0,0
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
    if (closed) return -1;
    800020fc:	fff00513          	li	a0,-1
    80002100:	00008067          	ret

0000000080002104 <_ZN4_semD1Ev>:

_sem::~_sem() {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00113423          	sd	ra,8(sp)
    8000210c:	00813023          	sd	s0,0(sp)
    80002110:	01010413          	addi	s0,sp,16
    close();
    80002114:	00000097          	auipc	ra,0x0
    80002118:	d2c080e7          	jalr	-724(ra) # 80001e40 <_ZN4_sem5closeEv>
}
    8000211c:	00813083          	ld	ra,8(sp)
    80002120:	00013403          	ld	s0,0(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	00100793          	li	a5,1
    8000213c:	00f50863          	beq	a0,a5,8000214c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
    8000214c:	000107b7          	lui	a5,0x10
    80002150:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002154:	fef596e3          	bne	a1,a5,80002140 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002158:	00004797          	auipc	a5,0x4
    8000215c:	92878793          	addi	a5,a5,-1752 # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
    80002160:	0007b023          	sd	zero,0(a5)
    80002164:	0007b423          	sd	zero,8(a5)
    80002168:	0007b823          	sd	zero,16(a5)
    8000216c:	0007ac23          	sw	zero,24(a5)
    80002170:	fd1ff06f          	j	80002140 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002174 <_ZN9Scheduler3getEv>:
{
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002188:	00004517          	auipc	a0,0x4
    8000218c:	8f853503          	ld	a0,-1800(a0) # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
    80002190:	04050c63          	beqz	a0,800021e8 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80002194:	00853783          	ld	a5,8(a0)
    80002198:	00004717          	auipc	a4,0x4
    8000219c:	8ef73423          	sd	a5,-1816(a4) # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800021a0:	02078e63          	beqz	a5,800021dc <_ZN9Scheduler3getEv+0x68>
        T *ret = elem->data;
    800021a4:	00053483          	ld	s1,0(a0)
        delete elem;
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	9c0080e7          	jalr	-1600(ra) # 80001b68 <_ZdlPv>
        size--;
    800021b0:	00004717          	auipc	a4,0x4
    800021b4:	8d070713          	addi	a4,a4,-1840 # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
    800021b8:	01872783          	lw	a5,24(a4)
    800021bc:	fff7879b          	addiw	a5,a5,-1
    800021c0:	00f72c23          	sw	a5,24(a4)
}
    800021c4:	00048513          	mv	a0,s1
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	01013403          	ld	s0,16(sp)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
        if (!head) { tail = 0; }
    800021dc:	00004797          	auipc	a5,0x4
    800021e0:	8a07b623          	sd	zero,-1876(a5) # 80005a88 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800021e4:	fc1ff06f          	j	800021a4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800021e8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800021ec:	fd9ff06f          	j	800021c4 <_ZN9Scheduler3getEv+0x50>

00000000800021f0 <_ZN9Scheduler3putEP3TCB>:
{
    800021f0:	fe010113          	addi	sp,sp,-32
    800021f4:	00113c23          	sd	ra,24(sp)
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	02010413          	addi	s0,sp,32
    80002204:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002208:	01000513          	li	a0,16
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	90c080e7          	jalr	-1780(ra) # 80001b18 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002214:	00953023          	sd	s1,0(a0)
    80002218:	00053423          	sd	zero,8(a0)
        if (tail)
    8000221c:	00004797          	auipc	a5,0x4
    80002220:	86c7b783          	ld	a5,-1940(a5) # 80005a88 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002224:	02078c63          	beqz	a5,8000225c <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002228:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000222c:	00004797          	auipc	a5,0x4
    80002230:	84a7be23          	sd	a0,-1956(a5) # 80005a88 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002234:	00004717          	auipc	a4,0x4
    80002238:	84c70713          	addi	a4,a4,-1972 # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
    8000223c:	01872783          	lw	a5,24(a4)
    80002240:	0017879b          	addiw	a5,a5,1
    80002244:	00f72c23          	sw	a5,24(a4)
}
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00008067          	ret
            head = tail = elem;
    8000225c:	00004797          	auipc	a5,0x4
    80002260:	82478793          	addi	a5,a5,-2012 # 80005a80 <_ZN9Scheduler16readyThreadQueueE>
    80002264:	00a7b423          	sd	a0,8(a5)
    80002268:	00a7b023          	sd	a0,0(a5)
    8000226c:	fc9ff06f          	j	80002234 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002270 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00113423          	sd	ra,8(sp)
    80002278:	00813023          	sd	s0,0(sp)
    8000227c:	01010413          	addi	s0,sp,16
    80002280:	000105b7          	lui	a1,0x10
    80002284:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002288:	00100513          	li	a0,1
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	ea0080e7          	jalr	-352(ra) # 8000212c <_Z41__static_initialization_and_destruction_0ii>
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	02010413          	addi	s0,sp,32
    800022b8:	00050493          	mv	s1,a0

    while (*string != '\0')
    800022bc:	0004c503          	lbu	a0,0(s1)
    800022c0:	00050a63          	beqz	a0,800022d4 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	39c080e7          	jalr	924(ra) # 80004660 <__putc>
        string++;
    800022cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800022d0:	fedff06f          	j	800022bc <_Z11printStringPKc+0x18>
    }
}
    800022d4:	01813083          	ld	ra,24(sp)
    800022d8:	01013403          	ld	s0,16(sp)
    800022dc:	00813483          	ld	s1,8(sp)
    800022e0:	02010113          	addi	sp,sp,32
    800022e4:	00008067          	ret

00000000800022e8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800022e8:	fd010113          	addi	sp,sp,-48
    800022ec:	02113423          	sd	ra,40(sp)
    800022f0:	02813023          	sd	s0,32(sp)
    800022f4:	00913c23          	sd	s1,24(sp)
    800022f8:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800022fc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002300:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002304:	00a00613          	li	a2,10
    80002308:	02c5773b          	remuw	a4,a0,a2
    8000230c:	02071693          	slli	a3,a4,0x20
    80002310:	0206d693          	srli	a3,a3,0x20
    80002314:	00003717          	auipc	a4,0x3
    80002318:	dc470713          	addi	a4,a4,-572 # 800050d8 <_ZZ12printIntegermE6digits>
    8000231c:	00d70733          	add	a4,a4,a3
    80002320:	00074703          	lbu	a4,0(a4)
    80002324:	fe040693          	addi	a3,s0,-32
    80002328:	009687b3          	add	a5,a3,s1
    8000232c:	0014849b          	addiw	s1,s1,1
    80002330:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002334:	0005071b          	sext.w	a4,a0
    80002338:	02c5553b          	divuw	a0,a0,a2
    8000233c:	00900793          	li	a5,9
    80002340:	fce7e2e3          	bltu	a5,a4,80002304 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002344:	fff4849b          	addiw	s1,s1,-1
    80002348:	0004ce63          	bltz	s1,80002364 <_Z12printIntegerm+0x7c>
    8000234c:	fe040793          	addi	a5,s0,-32
    80002350:	009787b3          	add	a5,a5,s1
    80002354:	ff07c503          	lbu	a0,-16(a5)
    80002358:	00002097          	auipc	ra,0x2
    8000235c:	308080e7          	jalr	776(ra) # 80004660 <__putc>
    80002360:	fe5ff06f          	j	80002344 <_Z12printIntegerm+0x5c>
    80002364:	02813083          	ld	ra,40(sp)
    80002368:	02013403          	ld	s0,32(sp)
    8000236c:	01813483          	ld	s1,24(sp)
    80002370:	03010113          	addi	sp,sp,48
    80002374:	00008067          	ret

0000000080002378 <start>:
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00813423          	sd	s0,8(sp)
    80002380:	01010413          	addi	s0,sp,16
    80002384:	300027f3          	csrr	a5,mstatus
    80002388:	ffffe737          	lui	a4,0xffffe
    8000238c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7aef>
    80002390:	00e7f7b3          	and	a5,a5,a4
    80002394:	00001737          	lui	a4,0x1
    80002398:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000239c:	00e7e7b3          	or	a5,a5,a4
    800023a0:	30079073          	csrw	mstatus,a5
    800023a4:	00000797          	auipc	a5,0x0
    800023a8:	16078793          	addi	a5,a5,352 # 80002504 <system_main>
    800023ac:	34179073          	csrw	mepc,a5
    800023b0:	00000793          	li	a5,0
    800023b4:	18079073          	csrw	satp,a5
    800023b8:	000107b7          	lui	a5,0x10
    800023bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023c0:	30279073          	csrw	medeleg,a5
    800023c4:	30379073          	csrw	mideleg,a5
    800023c8:	104027f3          	csrr	a5,sie
    800023cc:	2227e793          	ori	a5,a5,546
    800023d0:	10479073          	csrw	sie,a5
    800023d4:	fff00793          	li	a5,-1
    800023d8:	00a7d793          	srli	a5,a5,0xa
    800023dc:	3b079073          	csrw	pmpaddr0,a5
    800023e0:	00f00793          	li	a5,15
    800023e4:	3a079073          	csrw	pmpcfg0,a5
    800023e8:	f14027f3          	csrr	a5,mhartid
    800023ec:	0200c737          	lui	a4,0x200c
    800023f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023f4:	0007869b          	sext.w	a3,a5
    800023f8:	00269713          	slli	a4,a3,0x2
    800023fc:	000f4637          	lui	a2,0xf4
    80002400:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002404:	00d70733          	add	a4,a4,a3
    80002408:	0037979b          	slliw	a5,a5,0x3
    8000240c:	020046b7          	lui	a3,0x2004
    80002410:	00d787b3          	add	a5,a5,a3
    80002414:	00c585b3          	add	a1,a1,a2
    80002418:	00371693          	slli	a3,a4,0x3
    8000241c:	00003717          	auipc	a4,0x3
    80002420:	68470713          	addi	a4,a4,1668 # 80005aa0 <timer_scratch>
    80002424:	00b7b023          	sd	a1,0(a5)
    80002428:	00d70733          	add	a4,a4,a3
    8000242c:	00f73c23          	sd	a5,24(a4)
    80002430:	02c73023          	sd	a2,32(a4)
    80002434:	34071073          	csrw	mscratch,a4
    80002438:	00000797          	auipc	a5,0x0
    8000243c:	6e878793          	addi	a5,a5,1768 # 80002b20 <timervec>
    80002440:	30579073          	csrw	mtvec,a5
    80002444:	300027f3          	csrr	a5,mstatus
    80002448:	0087e793          	ori	a5,a5,8
    8000244c:	30079073          	csrw	mstatus,a5
    80002450:	304027f3          	csrr	a5,mie
    80002454:	0807e793          	ori	a5,a5,128
    80002458:	30479073          	csrw	mie,a5
    8000245c:	f14027f3          	csrr	a5,mhartid
    80002460:	0007879b          	sext.w	a5,a5
    80002464:	00078213          	mv	tp,a5
    80002468:	30200073          	mret
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <timerinit>:
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813423          	sd	s0,8(sp)
    80002480:	01010413          	addi	s0,sp,16
    80002484:	f14027f3          	csrr	a5,mhartid
    80002488:	0200c737          	lui	a4,0x200c
    8000248c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002490:	0007869b          	sext.w	a3,a5
    80002494:	00269713          	slli	a4,a3,0x2
    80002498:	000f4637          	lui	a2,0xf4
    8000249c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024a0:	00d70733          	add	a4,a4,a3
    800024a4:	0037979b          	slliw	a5,a5,0x3
    800024a8:	020046b7          	lui	a3,0x2004
    800024ac:	00d787b3          	add	a5,a5,a3
    800024b0:	00c585b3          	add	a1,a1,a2
    800024b4:	00371693          	slli	a3,a4,0x3
    800024b8:	00003717          	auipc	a4,0x3
    800024bc:	5e870713          	addi	a4,a4,1512 # 80005aa0 <timer_scratch>
    800024c0:	00b7b023          	sd	a1,0(a5)
    800024c4:	00d70733          	add	a4,a4,a3
    800024c8:	00f73c23          	sd	a5,24(a4)
    800024cc:	02c73023          	sd	a2,32(a4)
    800024d0:	34071073          	csrw	mscratch,a4
    800024d4:	00000797          	auipc	a5,0x0
    800024d8:	64c78793          	addi	a5,a5,1612 # 80002b20 <timervec>
    800024dc:	30579073          	csrw	mtvec,a5
    800024e0:	300027f3          	csrr	a5,mstatus
    800024e4:	0087e793          	ori	a5,a5,8
    800024e8:	30079073          	csrw	mstatus,a5
    800024ec:	304027f3          	csrr	a5,mie
    800024f0:	0807e793          	ori	a5,a5,128
    800024f4:	30479073          	csrw	mie,a5
    800024f8:	00813403          	ld	s0,8(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <system_main>:
    80002504:	fe010113          	addi	sp,sp,-32
    80002508:	00813823          	sd	s0,16(sp)
    8000250c:	00913423          	sd	s1,8(sp)
    80002510:	00113c23          	sd	ra,24(sp)
    80002514:	02010413          	addi	s0,sp,32
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	0c4080e7          	jalr	196(ra) # 800025dc <cpuid>
    80002520:	00003497          	auipc	s1,0x3
    80002524:	51048493          	addi	s1,s1,1296 # 80005a30 <started>
    80002528:	02050263          	beqz	a0,8000254c <system_main+0x48>
    8000252c:	0004a783          	lw	a5,0(s1)
    80002530:	0007879b          	sext.w	a5,a5
    80002534:	fe078ce3          	beqz	a5,8000252c <system_main+0x28>
    80002538:	0ff0000f          	fence
    8000253c:	00003517          	auipc	a0,0x3
    80002540:	bdc50513          	addi	a0,a0,-1060 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80002544:	00001097          	auipc	ra,0x1
    80002548:	a78080e7          	jalr	-1416(ra) # 80002fbc <panic>
    8000254c:	00001097          	auipc	ra,0x1
    80002550:	9cc080e7          	jalr	-1588(ra) # 80002f18 <consoleinit>
    80002554:	00001097          	auipc	ra,0x1
    80002558:	158080e7          	jalr	344(ra) # 800036ac <printfinit>
    8000255c:	00003517          	auipc	a0,0x3
    80002560:	b7450513          	addi	a0,a0,-1164 # 800050d0 <kvmincrease+0x950>
    80002564:	00001097          	auipc	ra,0x1
    80002568:	ab4080e7          	jalr	-1356(ra) # 80003018 <__printf>
    8000256c:	00003517          	auipc	a0,0x3
    80002570:	b7c50513          	addi	a0,a0,-1156 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80002574:	00001097          	auipc	ra,0x1
    80002578:	aa4080e7          	jalr	-1372(ra) # 80003018 <__printf>
    8000257c:	00003517          	auipc	a0,0x3
    80002580:	b5450513          	addi	a0,a0,-1196 # 800050d0 <kvmincrease+0x950>
    80002584:	00001097          	auipc	ra,0x1
    80002588:	a94080e7          	jalr	-1388(ra) # 80003018 <__printf>
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	4ac080e7          	jalr	1196(ra) # 80003a38 <kinit>
    80002594:	00000097          	auipc	ra,0x0
    80002598:	148080e7          	jalr	328(ra) # 800026dc <trapinit>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	16c080e7          	jalr	364(ra) # 80002708 <trapinithart>
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	5bc080e7          	jalr	1468(ra) # 80002b60 <plicinit>
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	5dc080e7          	jalr	1500(ra) # 80002b88 <plicinithart>
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	078080e7          	jalr	120(ra) # 8000262c <userinit>
    800025bc:	0ff0000f          	fence
    800025c0:	00100793          	li	a5,1
    800025c4:	00003517          	auipc	a0,0x3
    800025c8:	b3c50513          	addi	a0,a0,-1220 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    800025cc:	00f4a023          	sw	a5,0(s1)
    800025d0:	00001097          	auipc	ra,0x1
    800025d4:	a48080e7          	jalr	-1464(ra) # 80003018 <__printf>
    800025d8:	0000006f          	j	800025d8 <system_main+0xd4>

00000000800025dc <cpuid>:
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00813423          	sd	s0,8(sp)
    800025e4:	01010413          	addi	s0,sp,16
    800025e8:	00020513          	mv	a0,tp
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	0005051b          	sext.w	a0,a0
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <mycpu>:
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    80002608:	00020793          	mv	a5,tp
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	0007879b          	sext.w	a5,a5
    80002614:	00779793          	slli	a5,a5,0x7
    80002618:	00004517          	auipc	a0,0x4
    8000261c:	4b850513          	addi	a0,a0,1208 # 80006ad0 <cpus>
    80002620:	00f50533          	add	a0,a0,a5
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <userinit>:
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    80002638:	00813403          	ld	s0,8(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	fffff317          	auipc	t1,0xfffff
    80002644:	00430067          	jr	4(t1) # 80001644 <main>

0000000080002648 <either_copyout>:
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813023          	sd	s0,0(sp)
    80002650:	00113423          	sd	ra,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	02051663          	bnez	a0,80002684 <either_copyout+0x3c>
    8000265c:	00058513          	mv	a0,a1
    80002660:	00060593          	mv	a1,a2
    80002664:	0006861b          	sext.w	a2,a3
    80002668:	00002097          	auipc	ra,0x2
    8000266c:	c5c080e7          	jalr	-932(ra) # 800042c4 <__memmove>
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	00000513          	li	a0,0
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret
    80002684:	00003517          	auipc	a0,0x3
    80002688:	abc50513          	addi	a0,a0,-1348 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	930080e7          	jalr	-1744(ra) # 80002fbc <panic>

0000000080002694 <either_copyin>:
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	02059463          	bnez	a1,800026cc <either_copyin+0x38>
    800026a8:	00060593          	mv	a1,a2
    800026ac:	0006861b          	sext.w	a2,a3
    800026b0:	00002097          	auipc	ra,0x2
    800026b4:	c14080e7          	jalr	-1004(ra) # 800042c4 <__memmove>
    800026b8:	00813083          	ld	ra,8(sp)
    800026bc:	00013403          	ld	s0,0(sp)
    800026c0:	00000513          	li	a0,0
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret
    800026cc:	00003517          	auipc	a0,0x3
    800026d0:	a9c50513          	addi	a0,a0,-1380 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	8e8080e7          	jalr	-1816(ra) # 80002fbc <panic>

00000000800026dc <trapinit>:
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00813403          	ld	s0,8(sp)
    800026ec:	00003597          	auipc	a1,0x3
    800026f0:	aa458593          	addi	a1,a1,-1372 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    800026f4:	00004517          	auipc	a0,0x4
    800026f8:	45c50513          	addi	a0,a0,1116 # 80006b50 <tickslock>
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00001317          	auipc	t1,0x1
    80002704:	5c830067          	jr	1480(t1) # 80003cc8 <initlock>

0000000080002708 <trapinithart>:
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00813423          	sd	s0,8(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00000797          	auipc	a5,0x0
    80002718:	2fc78793          	addi	a5,a5,764 # 80002a10 <kernelvec>
    8000271c:	10579073          	csrw	stvec,a5
    80002720:	00813403          	ld	s0,8(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <usertrap>:
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <usertrapret>:
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    80002750:	00813403          	ld	s0,8(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <kerneltrap>:
    8000275c:	fe010113          	addi	sp,sp,-32
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00913423          	sd	s1,8(sp)
    8000276c:	02010413          	addi	s0,sp,32
    80002770:	142025f3          	csrr	a1,scause
    80002774:	100027f3          	csrr	a5,sstatus
    80002778:	0027f793          	andi	a5,a5,2
    8000277c:	10079c63          	bnez	a5,80002894 <kerneltrap+0x138>
    80002780:	142027f3          	csrr	a5,scause
    80002784:	0207ce63          	bltz	a5,800027c0 <kerneltrap+0x64>
    80002788:	00003517          	auipc	a0,0x3
    8000278c:	a5050513          	addi	a0,a0,-1456 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    80002790:	00001097          	auipc	ra,0x1
    80002794:	888080e7          	jalr	-1912(ra) # 80003018 <__printf>
    80002798:	141025f3          	csrr	a1,sepc
    8000279c:	14302673          	csrr	a2,stval
    800027a0:	00003517          	auipc	a0,0x3
    800027a4:	a4850513          	addi	a0,a0,-1464 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    800027a8:	00001097          	auipc	ra,0x1
    800027ac:	870080e7          	jalr	-1936(ra) # 80003018 <__printf>
    800027b0:	00003517          	auipc	a0,0x3
    800027b4:	a5050513          	addi	a0,a0,-1456 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	804080e7          	jalr	-2044(ra) # 80002fbc <panic>
    800027c0:	0ff7f713          	andi	a4,a5,255
    800027c4:	00900693          	li	a3,9
    800027c8:	04d70063          	beq	a4,a3,80002808 <kerneltrap+0xac>
    800027cc:	fff00713          	li	a4,-1
    800027d0:	03f71713          	slli	a4,a4,0x3f
    800027d4:	00170713          	addi	a4,a4,1
    800027d8:	fae798e3          	bne	a5,a4,80002788 <kerneltrap+0x2c>
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	e00080e7          	jalr	-512(ra) # 800025dc <cpuid>
    800027e4:	06050663          	beqz	a0,80002850 <kerneltrap+0xf4>
    800027e8:	144027f3          	csrr	a5,sip
    800027ec:	ffd7f793          	andi	a5,a5,-3
    800027f0:	14479073          	csrw	sip,a5
    800027f4:	01813083          	ld	ra,24(sp)
    800027f8:	01013403          	ld	s0,16(sp)
    800027fc:	00813483          	ld	s1,8(sp)
    80002800:	02010113          	addi	sp,sp,32
    80002804:	00008067          	ret
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	3cc080e7          	jalr	972(ra) # 80002bd4 <plic_claim>
    80002810:	00a00793          	li	a5,10
    80002814:	00050493          	mv	s1,a0
    80002818:	06f50863          	beq	a0,a5,80002888 <kerneltrap+0x12c>
    8000281c:	fc050ce3          	beqz	a0,800027f4 <kerneltrap+0x98>
    80002820:	00050593          	mv	a1,a0
    80002824:	00003517          	auipc	a0,0x3
    80002828:	99450513          	addi	a0,a0,-1644 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	7ec080e7          	jalr	2028(ra) # 80003018 <__printf>
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	01813083          	ld	ra,24(sp)
    8000283c:	00048513          	mv	a0,s1
    80002840:	00813483          	ld	s1,8(sp)
    80002844:	02010113          	addi	sp,sp,32
    80002848:	00000317          	auipc	t1,0x0
    8000284c:	3c430067          	jr	964(t1) # 80002c0c <plic_complete>
    80002850:	00004517          	auipc	a0,0x4
    80002854:	30050513          	addi	a0,a0,768 # 80006b50 <tickslock>
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	494080e7          	jalr	1172(ra) # 80003cec <acquire>
    80002860:	00003717          	auipc	a4,0x3
    80002864:	1d470713          	addi	a4,a4,468 # 80005a34 <ticks>
    80002868:	00072783          	lw	a5,0(a4)
    8000286c:	00004517          	auipc	a0,0x4
    80002870:	2e450513          	addi	a0,a0,740 # 80006b50 <tickslock>
    80002874:	0017879b          	addiw	a5,a5,1
    80002878:	00f72023          	sw	a5,0(a4)
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	53c080e7          	jalr	1340(ra) # 80003db8 <release>
    80002884:	f65ff06f          	j	800027e8 <kerneltrap+0x8c>
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	098080e7          	jalr	152(ra) # 80003920 <uartintr>
    80002890:	fa5ff06f          	j	80002834 <kerneltrap+0xd8>
    80002894:	00003517          	auipc	a0,0x3
    80002898:	90450513          	addi	a0,a0,-1788 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	720080e7          	jalr	1824(ra) # 80002fbc <panic>

00000000800028a4 <clockintr>:
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	00113c23          	sd	ra,24(sp)
    800028b4:	02010413          	addi	s0,sp,32
    800028b8:	00004497          	auipc	s1,0x4
    800028bc:	29848493          	addi	s1,s1,664 # 80006b50 <tickslock>
    800028c0:	00048513          	mv	a0,s1
    800028c4:	00001097          	auipc	ra,0x1
    800028c8:	428080e7          	jalr	1064(ra) # 80003cec <acquire>
    800028cc:	00003717          	auipc	a4,0x3
    800028d0:	16870713          	addi	a4,a4,360 # 80005a34 <ticks>
    800028d4:	00072783          	lw	a5,0(a4)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	00048513          	mv	a0,s1
    800028e4:	0017879b          	addiw	a5,a5,1
    800028e8:	00813483          	ld	s1,8(sp)
    800028ec:	00f72023          	sw	a5,0(a4)
    800028f0:	02010113          	addi	sp,sp,32
    800028f4:	00001317          	auipc	t1,0x1
    800028f8:	4c430067          	jr	1220(t1) # 80003db8 <release>

00000000800028fc <devintr>:
    800028fc:	142027f3          	csrr	a5,scause
    80002900:	00000513          	li	a0,0
    80002904:	0007c463          	bltz	a5,8000290c <devintr+0x10>
    80002908:	00008067          	ret
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00113c23          	sd	ra,24(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	0ff7f713          	andi	a4,a5,255
    80002924:	00900693          	li	a3,9
    80002928:	04d70c63          	beq	a4,a3,80002980 <devintr+0x84>
    8000292c:	fff00713          	li	a4,-1
    80002930:	03f71713          	slli	a4,a4,0x3f
    80002934:	00170713          	addi	a4,a4,1
    80002938:	00e78c63          	beq	a5,a4,80002950 <devintr+0x54>
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret
    80002950:	00000097          	auipc	ra,0x0
    80002954:	c8c080e7          	jalr	-884(ra) # 800025dc <cpuid>
    80002958:	06050663          	beqz	a0,800029c4 <devintr+0xc8>
    8000295c:	144027f3          	csrr	a5,sip
    80002960:	ffd7f793          	andi	a5,a5,-3
    80002964:	14479073          	csrw	sip,a5
    80002968:	01813083          	ld	ra,24(sp)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	00200513          	li	a0,2
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret
    80002980:	00000097          	auipc	ra,0x0
    80002984:	254080e7          	jalr	596(ra) # 80002bd4 <plic_claim>
    80002988:	00a00793          	li	a5,10
    8000298c:	00050493          	mv	s1,a0
    80002990:	06f50663          	beq	a0,a5,800029fc <devintr+0x100>
    80002994:	00100513          	li	a0,1
    80002998:	fa0482e3          	beqz	s1,8000293c <devintr+0x40>
    8000299c:	00048593          	mv	a1,s1
    800029a0:	00003517          	auipc	a0,0x3
    800029a4:	81850513          	addi	a0,a0,-2024 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	670080e7          	jalr	1648(ra) # 80003018 <__printf>
    800029b0:	00048513          	mv	a0,s1
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	258080e7          	jalr	600(ra) # 80002c0c <plic_complete>
    800029bc:	00100513          	li	a0,1
    800029c0:	f7dff06f          	j	8000293c <devintr+0x40>
    800029c4:	00004517          	auipc	a0,0x4
    800029c8:	18c50513          	addi	a0,a0,396 # 80006b50 <tickslock>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	320080e7          	jalr	800(ra) # 80003cec <acquire>
    800029d4:	00003717          	auipc	a4,0x3
    800029d8:	06070713          	addi	a4,a4,96 # 80005a34 <ticks>
    800029dc:	00072783          	lw	a5,0(a4)
    800029e0:	00004517          	auipc	a0,0x4
    800029e4:	17050513          	addi	a0,a0,368 # 80006b50 <tickslock>
    800029e8:	0017879b          	addiw	a5,a5,1
    800029ec:	00f72023          	sw	a5,0(a4)
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	3c8080e7          	jalr	968(ra) # 80003db8 <release>
    800029f8:	f65ff06f          	j	8000295c <devintr+0x60>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	f24080e7          	jalr	-220(ra) # 80003920 <uartintr>
    80002a04:	fadff06f          	j	800029b0 <devintr+0xb4>
	...

0000000080002a10 <kernelvec>:
    80002a10:	f0010113          	addi	sp,sp,-256
    80002a14:	00113023          	sd	ra,0(sp)
    80002a18:	00213423          	sd	sp,8(sp)
    80002a1c:	00313823          	sd	gp,16(sp)
    80002a20:	00413c23          	sd	tp,24(sp)
    80002a24:	02513023          	sd	t0,32(sp)
    80002a28:	02613423          	sd	t1,40(sp)
    80002a2c:	02713823          	sd	t2,48(sp)
    80002a30:	02813c23          	sd	s0,56(sp)
    80002a34:	04913023          	sd	s1,64(sp)
    80002a38:	04a13423          	sd	a0,72(sp)
    80002a3c:	04b13823          	sd	a1,80(sp)
    80002a40:	04c13c23          	sd	a2,88(sp)
    80002a44:	06d13023          	sd	a3,96(sp)
    80002a48:	06e13423          	sd	a4,104(sp)
    80002a4c:	06f13823          	sd	a5,112(sp)
    80002a50:	07013c23          	sd	a6,120(sp)
    80002a54:	09113023          	sd	a7,128(sp)
    80002a58:	09213423          	sd	s2,136(sp)
    80002a5c:	09313823          	sd	s3,144(sp)
    80002a60:	09413c23          	sd	s4,152(sp)
    80002a64:	0b513023          	sd	s5,160(sp)
    80002a68:	0b613423          	sd	s6,168(sp)
    80002a6c:	0b713823          	sd	s7,176(sp)
    80002a70:	0b813c23          	sd	s8,184(sp)
    80002a74:	0d913023          	sd	s9,192(sp)
    80002a78:	0da13423          	sd	s10,200(sp)
    80002a7c:	0db13823          	sd	s11,208(sp)
    80002a80:	0dc13c23          	sd	t3,216(sp)
    80002a84:	0fd13023          	sd	t4,224(sp)
    80002a88:	0fe13423          	sd	t5,232(sp)
    80002a8c:	0ff13823          	sd	t6,240(sp)
    80002a90:	ccdff0ef          	jal	ra,8000275c <kerneltrap>
    80002a94:	00013083          	ld	ra,0(sp)
    80002a98:	00813103          	ld	sp,8(sp)
    80002a9c:	01013183          	ld	gp,16(sp)
    80002aa0:	02013283          	ld	t0,32(sp)
    80002aa4:	02813303          	ld	t1,40(sp)
    80002aa8:	03013383          	ld	t2,48(sp)
    80002aac:	03813403          	ld	s0,56(sp)
    80002ab0:	04013483          	ld	s1,64(sp)
    80002ab4:	04813503          	ld	a0,72(sp)
    80002ab8:	05013583          	ld	a1,80(sp)
    80002abc:	05813603          	ld	a2,88(sp)
    80002ac0:	06013683          	ld	a3,96(sp)
    80002ac4:	06813703          	ld	a4,104(sp)
    80002ac8:	07013783          	ld	a5,112(sp)
    80002acc:	07813803          	ld	a6,120(sp)
    80002ad0:	08013883          	ld	a7,128(sp)
    80002ad4:	08813903          	ld	s2,136(sp)
    80002ad8:	09013983          	ld	s3,144(sp)
    80002adc:	09813a03          	ld	s4,152(sp)
    80002ae0:	0a013a83          	ld	s5,160(sp)
    80002ae4:	0a813b03          	ld	s6,168(sp)
    80002ae8:	0b013b83          	ld	s7,176(sp)
    80002aec:	0b813c03          	ld	s8,184(sp)
    80002af0:	0c013c83          	ld	s9,192(sp)
    80002af4:	0c813d03          	ld	s10,200(sp)
    80002af8:	0d013d83          	ld	s11,208(sp)
    80002afc:	0d813e03          	ld	t3,216(sp)
    80002b00:	0e013e83          	ld	t4,224(sp)
    80002b04:	0e813f03          	ld	t5,232(sp)
    80002b08:	0f013f83          	ld	t6,240(sp)
    80002b0c:	10010113          	addi	sp,sp,256
    80002b10:	10200073          	sret
    80002b14:	00000013          	nop
    80002b18:	00000013          	nop
    80002b1c:	00000013          	nop

0000000080002b20 <timervec>:
    80002b20:	34051573          	csrrw	a0,mscratch,a0
    80002b24:	00b53023          	sd	a1,0(a0)
    80002b28:	00c53423          	sd	a2,8(a0)
    80002b2c:	00d53823          	sd	a3,16(a0)
    80002b30:	01853583          	ld	a1,24(a0)
    80002b34:	02053603          	ld	a2,32(a0)
    80002b38:	0005b683          	ld	a3,0(a1)
    80002b3c:	00c686b3          	add	a3,a3,a2
    80002b40:	00d5b023          	sd	a3,0(a1)
    80002b44:	00200593          	li	a1,2
    80002b48:	14459073          	csrw	sip,a1
    80002b4c:	01053683          	ld	a3,16(a0)
    80002b50:	00853603          	ld	a2,8(a0)
    80002b54:	00053583          	ld	a1,0(a0)
    80002b58:	34051573          	csrrw	a0,mscratch,a0
    80002b5c:	30200073          	mret

0000000080002b60 <plicinit>:
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00813423          	sd	s0,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00813403          	ld	s0,8(sp)
    80002b70:	0c0007b7          	lui	a5,0xc000
    80002b74:	00100713          	li	a4,1
    80002b78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002b7c:	00e7a223          	sw	a4,4(a5)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <plicinithart>:
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	00113423          	sd	ra,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	a44080e7          	jalr	-1468(ra) # 800025dc <cpuid>
    80002ba0:	0085171b          	slliw	a4,a0,0x8
    80002ba4:	0c0027b7          	lui	a5,0xc002
    80002ba8:	00e787b3          	add	a5,a5,a4
    80002bac:	40200713          	li	a4,1026
    80002bb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	00d5151b          	slliw	a0,a0,0xd
    80002bc0:	0c2017b7          	lui	a5,0xc201
    80002bc4:	00a78533          	add	a0,a5,a0
    80002bc8:	00052023          	sw	zero,0(a0)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <plic_claim>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813023          	sd	s0,0(sp)
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	01010413          	addi	s0,sp,16
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	9f8080e7          	jalr	-1544(ra) # 800025dc <cpuid>
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	00d5151b          	slliw	a0,a0,0xd
    80002bf8:	0c2017b7          	lui	a5,0xc201
    80002bfc:	00a78533          	add	a0,a5,a0
    80002c00:	00452503          	lw	a0,4(a0)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <plic_complete>:
    80002c0c:	fe010113          	addi	sp,sp,-32
    80002c10:	00813823          	sd	s0,16(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	02010413          	addi	s0,sp,32
    80002c20:	00050493          	mv	s1,a0
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	9b8080e7          	jalr	-1608(ra) # 800025dc <cpuid>
    80002c2c:	01813083          	ld	ra,24(sp)
    80002c30:	01013403          	ld	s0,16(sp)
    80002c34:	00d5179b          	slliw	a5,a0,0xd
    80002c38:	0c201737          	lui	a4,0xc201
    80002c3c:	00f707b3          	add	a5,a4,a5
    80002c40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	02010113          	addi	sp,sp,32
    80002c4c:	00008067          	ret

0000000080002c50 <consolewrite>:
    80002c50:	fb010113          	addi	sp,sp,-80
    80002c54:	04813023          	sd	s0,64(sp)
    80002c58:	04113423          	sd	ra,72(sp)
    80002c5c:	02913c23          	sd	s1,56(sp)
    80002c60:	03213823          	sd	s2,48(sp)
    80002c64:	03313423          	sd	s3,40(sp)
    80002c68:	03413023          	sd	s4,32(sp)
    80002c6c:	01513c23          	sd	s5,24(sp)
    80002c70:	05010413          	addi	s0,sp,80
    80002c74:	06c05c63          	blez	a2,80002cec <consolewrite+0x9c>
    80002c78:	00060993          	mv	s3,a2
    80002c7c:	00050a13          	mv	s4,a0
    80002c80:	00058493          	mv	s1,a1
    80002c84:	00000913          	li	s2,0
    80002c88:	fff00a93          	li	s5,-1
    80002c8c:	01c0006f          	j	80002ca8 <consolewrite+0x58>
    80002c90:	fbf44503          	lbu	a0,-65(s0)
    80002c94:	0019091b          	addiw	s2,s2,1
    80002c98:	00148493          	addi	s1,s1,1
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	a9c080e7          	jalr	-1380(ra) # 80003738 <uartputc>
    80002ca4:	03298063          	beq	s3,s2,80002cc4 <consolewrite+0x74>
    80002ca8:	00048613          	mv	a2,s1
    80002cac:	00100693          	li	a3,1
    80002cb0:	000a0593          	mv	a1,s4
    80002cb4:	fbf40513          	addi	a0,s0,-65
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	9dc080e7          	jalr	-1572(ra) # 80002694 <either_copyin>
    80002cc0:	fd5518e3          	bne	a0,s5,80002c90 <consolewrite+0x40>
    80002cc4:	04813083          	ld	ra,72(sp)
    80002cc8:	04013403          	ld	s0,64(sp)
    80002ccc:	03813483          	ld	s1,56(sp)
    80002cd0:	02813983          	ld	s3,40(sp)
    80002cd4:	02013a03          	ld	s4,32(sp)
    80002cd8:	01813a83          	ld	s5,24(sp)
    80002cdc:	00090513          	mv	a0,s2
    80002ce0:	03013903          	ld	s2,48(sp)
    80002ce4:	05010113          	addi	sp,sp,80
    80002ce8:	00008067          	ret
    80002cec:	00000913          	li	s2,0
    80002cf0:	fd5ff06f          	j	80002cc4 <consolewrite+0x74>

0000000080002cf4 <consoleread>:
    80002cf4:	f9010113          	addi	sp,sp,-112
    80002cf8:	06813023          	sd	s0,96(sp)
    80002cfc:	04913c23          	sd	s1,88(sp)
    80002d00:	05213823          	sd	s2,80(sp)
    80002d04:	05313423          	sd	s3,72(sp)
    80002d08:	05413023          	sd	s4,64(sp)
    80002d0c:	03513c23          	sd	s5,56(sp)
    80002d10:	03613823          	sd	s6,48(sp)
    80002d14:	03713423          	sd	s7,40(sp)
    80002d18:	03813023          	sd	s8,32(sp)
    80002d1c:	06113423          	sd	ra,104(sp)
    80002d20:	01913c23          	sd	s9,24(sp)
    80002d24:	07010413          	addi	s0,sp,112
    80002d28:	00060b93          	mv	s7,a2
    80002d2c:	00050913          	mv	s2,a0
    80002d30:	00058c13          	mv	s8,a1
    80002d34:	00060b1b          	sext.w	s6,a2
    80002d38:	00004497          	auipc	s1,0x4
    80002d3c:	e4048493          	addi	s1,s1,-448 # 80006b78 <cons>
    80002d40:	00400993          	li	s3,4
    80002d44:	fff00a13          	li	s4,-1
    80002d48:	00a00a93          	li	s5,10
    80002d4c:	05705e63          	blez	s7,80002da8 <consoleread+0xb4>
    80002d50:	09c4a703          	lw	a4,156(s1)
    80002d54:	0984a783          	lw	a5,152(s1)
    80002d58:	0007071b          	sext.w	a4,a4
    80002d5c:	08e78463          	beq	a5,a4,80002de4 <consoleread+0xf0>
    80002d60:	07f7f713          	andi	a4,a5,127
    80002d64:	00e48733          	add	a4,s1,a4
    80002d68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002d6c:	0017869b          	addiw	a3,a5,1
    80002d70:	08d4ac23          	sw	a3,152(s1)
    80002d74:	00070c9b          	sext.w	s9,a4
    80002d78:	0b370663          	beq	a4,s3,80002e24 <consoleread+0x130>
    80002d7c:	00100693          	li	a3,1
    80002d80:	f9f40613          	addi	a2,s0,-97
    80002d84:	000c0593          	mv	a1,s8
    80002d88:	00090513          	mv	a0,s2
    80002d8c:	f8e40fa3          	sb	a4,-97(s0)
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	8b8080e7          	jalr	-1864(ra) # 80002648 <either_copyout>
    80002d98:	01450863          	beq	a0,s4,80002da8 <consoleread+0xb4>
    80002d9c:	001c0c13          	addi	s8,s8,1
    80002da0:	fffb8b9b          	addiw	s7,s7,-1
    80002da4:	fb5c94e3          	bne	s9,s5,80002d4c <consoleread+0x58>
    80002da8:	000b851b          	sext.w	a0,s7
    80002dac:	06813083          	ld	ra,104(sp)
    80002db0:	06013403          	ld	s0,96(sp)
    80002db4:	05813483          	ld	s1,88(sp)
    80002db8:	05013903          	ld	s2,80(sp)
    80002dbc:	04813983          	ld	s3,72(sp)
    80002dc0:	04013a03          	ld	s4,64(sp)
    80002dc4:	03813a83          	ld	s5,56(sp)
    80002dc8:	02813b83          	ld	s7,40(sp)
    80002dcc:	02013c03          	ld	s8,32(sp)
    80002dd0:	01813c83          	ld	s9,24(sp)
    80002dd4:	40ab053b          	subw	a0,s6,a0
    80002dd8:	03013b03          	ld	s6,48(sp)
    80002ddc:	07010113          	addi	sp,sp,112
    80002de0:	00008067          	ret
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	1d8080e7          	jalr	472(ra) # 80003fbc <push_on>
    80002dec:	0984a703          	lw	a4,152(s1)
    80002df0:	09c4a783          	lw	a5,156(s1)
    80002df4:	0007879b          	sext.w	a5,a5
    80002df8:	fef70ce3          	beq	a4,a5,80002df0 <consoleread+0xfc>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	234080e7          	jalr	564(ra) # 80004030 <pop_on>
    80002e04:	0984a783          	lw	a5,152(s1)
    80002e08:	07f7f713          	andi	a4,a5,127
    80002e0c:	00e48733          	add	a4,s1,a4
    80002e10:	01874703          	lbu	a4,24(a4)
    80002e14:	0017869b          	addiw	a3,a5,1
    80002e18:	08d4ac23          	sw	a3,152(s1)
    80002e1c:	00070c9b          	sext.w	s9,a4
    80002e20:	f5371ee3          	bne	a4,s3,80002d7c <consoleread+0x88>
    80002e24:	000b851b          	sext.w	a0,s7
    80002e28:	f96bf2e3          	bgeu	s7,s6,80002dac <consoleread+0xb8>
    80002e2c:	08f4ac23          	sw	a5,152(s1)
    80002e30:	f7dff06f          	j	80002dac <consoleread+0xb8>

0000000080002e34 <consputc>:
    80002e34:	10000793          	li	a5,256
    80002e38:	00f50663          	beq	a0,a5,80002e44 <consputc+0x10>
    80002e3c:	00001317          	auipc	t1,0x1
    80002e40:	9f430067          	jr	-1548(t1) # 80003830 <uartputc_sync>
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00113423          	sd	ra,8(sp)
    80002e4c:	00813023          	sd	s0,0(sp)
    80002e50:	01010413          	addi	s0,sp,16
    80002e54:	00800513          	li	a0,8
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	9d8080e7          	jalr	-1576(ra) # 80003830 <uartputc_sync>
    80002e60:	02000513          	li	a0,32
    80002e64:	00001097          	auipc	ra,0x1
    80002e68:	9cc080e7          	jalr	-1588(ra) # 80003830 <uartputc_sync>
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	00813083          	ld	ra,8(sp)
    80002e74:	00800513          	li	a0,8
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00001317          	auipc	t1,0x1
    80002e80:	9b430067          	jr	-1612(t1) # 80003830 <uartputc_sync>

0000000080002e84 <consoleintr>:
    80002e84:	fe010113          	addi	sp,sp,-32
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	01213023          	sd	s2,0(sp)
    80002e94:	00113c23          	sd	ra,24(sp)
    80002e98:	02010413          	addi	s0,sp,32
    80002e9c:	00004917          	auipc	s2,0x4
    80002ea0:	cdc90913          	addi	s2,s2,-804 # 80006b78 <cons>
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	00090513          	mv	a0,s2
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	e40080e7          	jalr	-448(ra) # 80003cec <acquire>
    80002eb4:	02048c63          	beqz	s1,80002eec <consoleintr+0x68>
    80002eb8:	0a092783          	lw	a5,160(s2)
    80002ebc:	09892703          	lw	a4,152(s2)
    80002ec0:	07f00693          	li	a3,127
    80002ec4:	40e7873b          	subw	a4,a5,a4
    80002ec8:	02e6e263          	bltu	a3,a4,80002eec <consoleintr+0x68>
    80002ecc:	00d00713          	li	a4,13
    80002ed0:	04e48063          	beq	s1,a4,80002f10 <consoleintr+0x8c>
    80002ed4:	07f7f713          	andi	a4,a5,127
    80002ed8:	00e90733          	add	a4,s2,a4
    80002edc:	0017879b          	addiw	a5,a5,1
    80002ee0:	0af92023          	sw	a5,160(s2)
    80002ee4:	00970c23          	sb	s1,24(a4)
    80002ee8:	08f92e23          	sw	a5,156(s2)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	00013903          	ld	s2,0(sp)
    80002efc:	00004517          	auipc	a0,0x4
    80002f00:	c7c50513          	addi	a0,a0,-900 # 80006b78 <cons>
    80002f04:	02010113          	addi	sp,sp,32
    80002f08:	00001317          	auipc	t1,0x1
    80002f0c:	eb030067          	jr	-336(t1) # 80003db8 <release>
    80002f10:	00a00493          	li	s1,10
    80002f14:	fc1ff06f          	j	80002ed4 <consoleintr+0x50>

0000000080002f18 <consoleinit>:
    80002f18:	fe010113          	addi	sp,sp,-32
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	00813823          	sd	s0,16(sp)
    80002f24:	00913423          	sd	s1,8(sp)
    80002f28:	02010413          	addi	s0,sp,32
    80002f2c:	00004497          	auipc	s1,0x4
    80002f30:	c4c48493          	addi	s1,s1,-948 # 80006b78 <cons>
    80002f34:	00048513          	mv	a0,s1
    80002f38:	00002597          	auipc	a1,0x2
    80002f3c:	2d858593          	addi	a1,a1,728 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002f40:	00001097          	auipc	ra,0x1
    80002f44:	d88080e7          	jalr	-632(ra) # 80003cc8 <initlock>
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	7ac080e7          	jalr	1964(ra) # 800036f4 <uartinit>
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00000797          	auipc	a5,0x0
    80002f5c:	d9c78793          	addi	a5,a5,-612 # 80002cf4 <consoleread>
    80002f60:	0af4bc23          	sd	a5,184(s1)
    80002f64:	00000797          	auipc	a5,0x0
    80002f68:	cec78793          	addi	a5,a5,-788 # 80002c50 <consolewrite>
    80002f6c:	0cf4b023          	sd	a5,192(s1)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret

0000000080002f7c <console_read>:
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00813423          	sd	s0,8(sp)
    80002f84:	01010413          	addi	s0,sp,16
    80002f88:	00813403          	ld	s0,8(sp)
    80002f8c:	00004317          	auipc	t1,0x4
    80002f90:	ca433303          	ld	t1,-860(t1) # 80006c30 <devsw+0x10>
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00030067          	jr	t1

0000000080002f9c <console_write>:
    80002f9c:	ff010113          	addi	sp,sp,-16
    80002fa0:	00813423          	sd	s0,8(sp)
    80002fa4:	01010413          	addi	s0,sp,16
    80002fa8:	00813403          	ld	s0,8(sp)
    80002fac:	00004317          	auipc	t1,0x4
    80002fb0:	c8c33303          	ld	t1,-884(t1) # 80006c38 <devsw+0x18>
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00030067          	jr	t1

0000000080002fbc <panic>:
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
    80002fd4:	00002517          	auipc	a0,0x2
    80002fd8:	24450513          	addi	a0,a0,580 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    80002fdc:	00004797          	auipc	a5,0x4
    80002fe0:	ce07ae23          	sw	zero,-772(a5) # 80006cd8 <pr+0x18>
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	034080e7          	jalr	52(ra) # 80003018 <__printf>
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	028080e7          	jalr	40(ra) # 80003018 <__printf>
    80002ff8:	00002517          	auipc	a0,0x2
    80002ffc:	0d850513          	addi	a0,a0,216 # 800050d0 <kvmincrease+0x950>
    80003000:	00000097          	auipc	ra,0x0
    80003004:	018080e7          	jalr	24(ra) # 80003018 <__printf>
    80003008:	00100793          	li	a5,1
    8000300c:	00003717          	auipc	a4,0x3
    80003010:	a2f72623          	sw	a5,-1492(a4) # 80005a38 <panicked>
    80003014:	0000006f          	j	80003014 <panic+0x58>

0000000080003018 <__printf>:
    80003018:	f3010113          	addi	sp,sp,-208
    8000301c:	08813023          	sd	s0,128(sp)
    80003020:	07313423          	sd	s3,104(sp)
    80003024:	09010413          	addi	s0,sp,144
    80003028:	05813023          	sd	s8,64(sp)
    8000302c:	08113423          	sd	ra,136(sp)
    80003030:	06913c23          	sd	s1,120(sp)
    80003034:	07213823          	sd	s2,112(sp)
    80003038:	07413023          	sd	s4,96(sp)
    8000303c:	05513c23          	sd	s5,88(sp)
    80003040:	05613823          	sd	s6,80(sp)
    80003044:	05713423          	sd	s7,72(sp)
    80003048:	03913c23          	sd	s9,56(sp)
    8000304c:	03a13823          	sd	s10,48(sp)
    80003050:	03b13423          	sd	s11,40(sp)
    80003054:	00004317          	auipc	t1,0x4
    80003058:	c6c30313          	addi	t1,t1,-916 # 80006cc0 <pr>
    8000305c:	01832c03          	lw	s8,24(t1)
    80003060:	00b43423          	sd	a1,8(s0)
    80003064:	00c43823          	sd	a2,16(s0)
    80003068:	00d43c23          	sd	a3,24(s0)
    8000306c:	02e43023          	sd	a4,32(s0)
    80003070:	02f43423          	sd	a5,40(s0)
    80003074:	03043823          	sd	a6,48(s0)
    80003078:	03143c23          	sd	a7,56(s0)
    8000307c:	00050993          	mv	s3,a0
    80003080:	4a0c1663          	bnez	s8,8000352c <__printf+0x514>
    80003084:	60098c63          	beqz	s3,8000369c <__printf+0x684>
    80003088:	0009c503          	lbu	a0,0(s3)
    8000308c:	00840793          	addi	a5,s0,8
    80003090:	f6f43c23          	sd	a5,-136(s0)
    80003094:	00000493          	li	s1,0
    80003098:	22050063          	beqz	a0,800032b8 <__printf+0x2a0>
    8000309c:	00002a37          	lui	s4,0x2
    800030a0:	00018ab7          	lui	s5,0x18
    800030a4:	000f4b37          	lui	s6,0xf4
    800030a8:	00989bb7          	lui	s7,0x989
    800030ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800030b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800030b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800030b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800030bc:	00148c9b          	addiw	s9,s1,1
    800030c0:	02500793          	li	a5,37
    800030c4:	01998933          	add	s2,s3,s9
    800030c8:	38f51263          	bne	a0,a5,8000344c <__printf+0x434>
    800030cc:	00094783          	lbu	a5,0(s2)
    800030d0:	00078c9b          	sext.w	s9,a5
    800030d4:	1e078263          	beqz	a5,800032b8 <__printf+0x2a0>
    800030d8:	0024849b          	addiw	s1,s1,2
    800030dc:	07000713          	li	a4,112
    800030e0:	00998933          	add	s2,s3,s1
    800030e4:	38e78a63          	beq	a5,a4,80003478 <__printf+0x460>
    800030e8:	20f76863          	bltu	a4,a5,800032f8 <__printf+0x2e0>
    800030ec:	42a78863          	beq	a5,a0,8000351c <__printf+0x504>
    800030f0:	06400713          	li	a4,100
    800030f4:	40e79663          	bne	a5,a4,80003500 <__printf+0x4e8>
    800030f8:	f7843783          	ld	a5,-136(s0)
    800030fc:	0007a603          	lw	a2,0(a5)
    80003100:	00878793          	addi	a5,a5,8
    80003104:	f6f43c23          	sd	a5,-136(s0)
    80003108:	42064a63          	bltz	a2,8000353c <__printf+0x524>
    8000310c:	00a00713          	li	a4,10
    80003110:	02e677bb          	remuw	a5,a2,a4
    80003114:	00002d97          	auipc	s11,0x2
    80003118:	12cd8d93          	addi	s11,s11,300 # 80005240 <digits>
    8000311c:	00900593          	li	a1,9
    80003120:	0006051b          	sext.w	a0,a2
    80003124:	00000c93          	li	s9,0
    80003128:	02079793          	slli	a5,a5,0x20
    8000312c:	0207d793          	srli	a5,a5,0x20
    80003130:	00fd87b3          	add	a5,s11,a5
    80003134:	0007c783          	lbu	a5,0(a5)
    80003138:	02e656bb          	divuw	a3,a2,a4
    8000313c:	f8f40023          	sb	a5,-128(s0)
    80003140:	14c5d863          	bge	a1,a2,80003290 <__printf+0x278>
    80003144:	06300593          	li	a1,99
    80003148:	00100c93          	li	s9,1
    8000314c:	02e6f7bb          	remuw	a5,a3,a4
    80003150:	02079793          	slli	a5,a5,0x20
    80003154:	0207d793          	srli	a5,a5,0x20
    80003158:	00fd87b3          	add	a5,s11,a5
    8000315c:	0007c783          	lbu	a5,0(a5)
    80003160:	02e6d73b          	divuw	a4,a3,a4
    80003164:	f8f400a3          	sb	a5,-127(s0)
    80003168:	12a5f463          	bgeu	a1,a0,80003290 <__printf+0x278>
    8000316c:	00a00693          	li	a3,10
    80003170:	00900593          	li	a1,9
    80003174:	02d777bb          	remuw	a5,a4,a3
    80003178:	02079793          	slli	a5,a5,0x20
    8000317c:	0207d793          	srli	a5,a5,0x20
    80003180:	00fd87b3          	add	a5,s11,a5
    80003184:	0007c503          	lbu	a0,0(a5)
    80003188:	02d757bb          	divuw	a5,a4,a3
    8000318c:	f8a40123          	sb	a0,-126(s0)
    80003190:	48e5f263          	bgeu	a1,a4,80003614 <__printf+0x5fc>
    80003194:	06300513          	li	a0,99
    80003198:	02d7f5bb          	remuw	a1,a5,a3
    8000319c:	02059593          	slli	a1,a1,0x20
    800031a0:	0205d593          	srli	a1,a1,0x20
    800031a4:	00bd85b3          	add	a1,s11,a1
    800031a8:	0005c583          	lbu	a1,0(a1)
    800031ac:	02d7d7bb          	divuw	a5,a5,a3
    800031b0:	f8b401a3          	sb	a1,-125(s0)
    800031b4:	48e57263          	bgeu	a0,a4,80003638 <__printf+0x620>
    800031b8:	3e700513          	li	a0,999
    800031bc:	02d7f5bb          	remuw	a1,a5,a3
    800031c0:	02059593          	slli	a1,a1,0x20
    800031c4:	0205d593          	srli	a1,a1,0x20
    800031c8:	00bd85b3          	add	a1,s11,a1
    800031cc:	0005c583          	lbu	a1,0(a1)
    800031d0:	02d7d7bb          	divuw	a5,a5,a3
    800031d4:	f8b40223          	sb	a1,-124(s0)
    800031d8:	46e57663          	bgeu	a0,a4,80003644 <__printf+0x62c>
    800031dc:	02d7f5bb          	remuw	a1,a5,a3
    800031e0:	02059593          	slli	a1,a1,0x20
    800031e4:	0205d593          	srli	a1,a1,0x20
    800031e8:	00bd85b3          	add	a1,s11,a1
    800031ec:	0005c583          	lbu	a1,0(a1)
    800031f0:	02d7d7bb          	divuw	a5,a5,a3
    800031f4:	f8b402a3          	sb	a1,-123(s0)
    800031f8:	46ea7863          	bgeu	s4,a4,80003668 <__printf+0x650>
    800031fc:	02d7f5bb          	remuw	a1,a5,a3
    80003200:	02059593          	slli	a1,a1,0x20
    80003204:	0205d593          	srli	a1,a1,0x20
    80003208:	00bd85b3          	add	a1,s11,a1
    8000320c:	0005c583          	lbu	a1,0(a1)
    80003210:	02d7d7bb          	divuw	a5,a5,a3
    80003214:	f8b40323          	sb	a1,-122(s0)
    80003218:	3eeaf863          	bgeu	s5,a4,80003608 <__printf+0x5f0>
    8000321c:	02d7f5bb          	remuw	a1,a5,a3
    80003220:	02059593          	slli	a1,a1,0x20
    80003224:	0205d593          	srli	a1,a1,0x20
    80003228:	00bd85b3          	add	a1,s11,a1
    8000322c:	0005c583          	lbu	a1,0(a1)
    80003230:	02d7d7bb          	divuw	a5,a5,a3
    80003234:	f8b403a3          	sb	a1,-121(s0)
    80003238:	42eb7e63          	bgeu	s6,a4,80003674 <__printf+0x65c>
    8000323c:	02d7f5bb          	remuw	a1,a5,a3
    80003240:	02059593          	slli	a1,a1,0x20
    80003244:	0205d593          	srli	a1,a1,0x20
    80003248:	00bd85b3          	add	a1,s11,a1
    8000324c:	0005c583          	lbu	a1,0(a1)
    80003250:	02d7d7bb          	divuw	a5,a5,a3
    80003254:	f8b40423          	sb	a1,-120(s0)
    80003258:	42ebfc63          	bgeu	s7,a4,80003690 <__printf+0x678>
    8000325c:	02079793          	slli	a5,a5,0x20
    80003260:	0207d793          	srli	a5,a5,0x20
    80003264:	00fd8db3          	add	s11,s11,a5
    80003268:	000dc703          	lbu	a4,0(s11)
    8000326c:	00a00793          	li	a5,10
    80003270:	00900c93          	li	s9,9
    80003274:	f8e404a3          	sb	a4,-119(s0)
    80003278:	00065c63          	bgez	a2,80003290 <__printf+0x278>
    8000327c:	f9040713          	addi	a4,s0,-112
    80003280:	00f70733          	add	a4,a4,a5
    80003284:	02d00693          	li	a3,45
    80003288:	fed70823          	sb	a3,-16(a4)
    8000328c:	00078c93          	mv	s9,a5
    80003290:	f8040793          	addi	a5,s0,-128
    80003294:	01978cb3          	add	s9,a5,s9
    80003298:	f7f40d13          	addi	s10,s0,-129
    8000329c:	000cc503          	lbu	a0,0(s9)
    800032a0:	fffc8c93          	addi	s9,s9,-1
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	b90080e7          	jalr	-1136(ra) # 80002e34 <consputc>
    800032ac:	ffac98e3          	bne	s9,s10,8000329c <__printf+0x284>
    800032b0:	00094503          	lbu	a0,0(s2)
    800032b4:	e00514e3          	bnez	a0,800030bc <__printf+0xa4>
    800032b8:	1a0c1663          	bnez	s8,80003464 <__printf+0x44c>
    800032bc:	08813083          	ld	ra,136(sp)
    800032c0:	08013403          	ld	s0,128(sp)
    800032c4:	07813483          	ld	s1,120(sp)
    800032c8:	07013903          	ld	s2,112(sp)
    800032cc:	06813983          	ld	s3,104(sp)
    800032d0:	06013a03          	ld	s4,96(sp)
    800032d4:	05813a83          	ld	s5,88(sp)
    800032d8:	05013b03          	ld	s6,80(sp)
    800032dc:	04813b83          	ld	s7,72(sp)
    800032e0:	04013c03          	ld	s8,64(sp)
    800032e4:	03813c83          	ld	s9,56(sp)
    800032e8:	03013d03          	ld	s10,48(sp)
    800032ec:	02813d83          	ld	s11,40(sp)
    800032f0:	0d010113          	addi	sp,sp,208
    800032f4:	00008067          	ret
    800032f8:	07300713          	li	a4,115
    800032fc:	1ce78a63          	beq	a5,a4,800034d0 <__printf+0x4b8>
    80003300:	07800713          	li	a4,120
    80003304:	1ee79e63          	bne	a5,a4,80003500 <__printf+0x4e8>
    80003308:	f7843783          	ld	a5,-136(s0)
    8000330c:	0007a703          	lw	a4,0(a5)
    80003310:	00878793          	addi	a5,a5,8
    80003314:	f6f43c23          	sd	a5,-136(s0)
    80003318:	28074263          	bltz	a4,8000359c <__printf+0x584>
    8000331c:	00002d97          	auipc	s11,0x2
    80003320:	f24d8d93          	addi	s11,s11,-220 # 80005240 <digits>
    80003324:	00f77793          	andi	a5,a4,15
    80003328:	00fd87b3          	add	a5,s11,a5
    8000332c:	0007c683          	lbu	a3,0(a5)
    80003330:	00f00613          	li	a2,15
    80003334:	0007079b          	sext.w	a5,a4
    80003338:	f8d40023          	sb	a3,-128(s0)
    8000333c:	0047559b          	srliw	a1,a4,0x4
    80003340:	0047569b          	srliw	a3,a4,0x4
    80003344:	00000c93          	li	s9,0
    80003348:	0ee65063          	bge	a2,a4,80003428 <__printf+0x410>
    8000334c:	00f6f693          	andi	a3,a3,15
    80003350:	00dd86b3          	add	a3,s11,a3
    80003354:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003358:	0087d79b          	srliw	a5,a5,0x8
    8000335c:	00100c93          	li	s9,1
    80003360:	f8d400a3          	sb	a3,-127(s0)
    80003364:	0cb67263          	bgeu	a2,a1,80003428 <__printf+0x410>
    80003368:	00f7f693          	andi	a3,a5,15
    8000336c:	00dd86b3          	add	a3,s11,a3
    80003370:	0006c583          	lbu	a1,0(a3)
    80003374:	00f00613          	li	a2,15
    80003378:	0047d69b          	srliw	a3,a5,0x4
    8000337c:	f8b40123          	sb	a1,-126(s0)
    80003380:	0047d593          	srli	a1,a5,0x4
    80003384:	28f67e63          	bgeu	a2,a5,80003620 <__printf+0x608>
    80003388:	00f6f693          	andi	a3,a3,15
    8000338c:	00dd86b3          	add	a3,s11,a3
    80003390:	0006c503          	lbu	a0,0(a3)
    80003394:	0087d813          	srli	a6,a5,0x8
    80003398:	0087d69b          	srliw	a3,a5,0x8
    8000339c:	f8a401a3          	sb	a0,-125(s0)
    800033a0:	28b67663          	bgeu	a2,a1,8000362c <__printf+0x614>
    800033a4:	00f6f693          	andi	a3,a3,15
    800033a8:	00dd86b3          	add	a3,s11,a3
    800033ac:	0006c583          	lbu	a1,0(a3)
    800033b0:	00c7d513          	srli	a0,a5,0xc
    800033b4:	00c7d69b          	srliw	a3,a5,0xc
    800033b8:	f8b40223          	sb	a1,-124(s0)
    800033bc:	29067a63          	bgeu	a2,a6,80003650 <__printf+0x638>
    800033c0:	00f6f693          	andi	a3,a3,15
    800033c4:	00dd86b3          	add	a3,s11,a3
    800033c8:	0006c583          	lbu	a1,0(a3)
    800033cc:	0107d813          	srli	a6,a5,0x10
    800033d0:	0107d69b          	srliw	a3,a5,0x10
    800033d4:	f8b402a3          	sb	a1,-123(s0)
    800033d8:	28a67263          	bgeu	a2,a0,8000365c <__printf+0x644>
    800033dc:	00f6f693          	andi	a3,a3,15
    800033e0:	00dd86b3          	add	a3,s11,a3
    800033e4:	0006c683          	lbu	a3,0(a3)
    800033e8:	0147d79b          	srliw	a5,a5,0x14
    800033ec:	f8d40323          	sb	a3,-122(s0)
    800033f0:	21067663          	bgeu	a2,a6,800035fc <__printf+0x5e4>
    800033f4:	02079793          	slli	a5,a5,0x20
    800033f8:	0207d793          	srli	a5,a5,0x20
    800033fc:	00fd8db3          	add	s11,s11,a5
    80003400:	000dc683          	lbu	a3,0(s11)
    80003404:	00800793          	li	a5,8
    80003408:	00700c93          	li	s9,7
    8000340c:	f8d403a3          	sb	a3,-121(s0)
    80003410:	00075c63          	bgez	a4,80003428 <__printf+0x410>
    80003414:	f9040713          	addi	a4,s0,-112
    80003418:	00f70733          	add	a4,a4,a5
    8000341c:	02d00693          	li	a3,45
    80003420:	fed70823          	sb	a3,-16(a4)
    80003424:	00078c93          	mv	s9,a5
    80003428:	f8040793          	addi	a5,s0,-128
    8000342c:	01978cb3          	add	s9,a5,s9
    80003430:	f7f40d13          	addi	s10,s0,-129
    80003434:	000cc503          	lbu	a0,0(s9)
    80003438:	fffc8c93          	addi	s9,s9,-1
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	9f8080e7          	jalr	-1544(ra) # 80002e34 <consputc>
    80003444:	ff9d18e3          	bne	s10,s9,80003434 <__printf+0x41c>
    80003448:	0100006f          	j	80003458 <__printf+0x440>
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	9e8080e7          	jalr	-1560(ra) # 80002e34 <consputc>
    80003454:	000c8493          	mv	s1,s9
    80003458:	00094503          	lbu	a0,0(s2)
    8000345c:	c60510e3          	bnez	a0,800030bc <__printf+0xa4>
    80003460:	e40c0ee3          	beqz	s8,800032bc <__printf+0x2a4>
    80003464:	00004517          	auipc	a0,0x4
    80003468:	85c50513          	addi	a0,a0,-1956 # 80006cc0 <pr>
    8000346c:	00001097          	auipc	ra,0x1
    80003470:	94c080e7          	jalr	-1716(ra) # 80003db8 <release>
    80003474:	e49ff06f          	j	800032bc <__printf+0x2a4>
    80003478:	f7843783          	ld	a5,-136(s0)
    8000347c:	03000513          	li	a0,48
    80003480:	01000d13          	li	s10,16
    80003484:	00878713          	addi	a4,a5,8
    80003488:	0007bc83          	ld	s9,0(a5)
    8000348c:	f6e43c23          	sd	a4,-136(s0)
    80003490:	00000097          	auipc	ra,0x0
    80003494:	9a4080e7          	jalr	-1628(ra) # 80002e34 <consputc>
    80003498:	07800513          	li	a0,120
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	998080e7          	jalr	-1640(ra) # 80002e34 <consputc>
    800034a4:	00002d97          	auipc	s11,0x2
    800034a8:	d9cd8d93          	addi	s11,s11,-612 # 80005240 <digits>
    800034ac:	03ccd793          	srli	a5,s9,0x3c
    800034b0:	00fd87b3          	add	a5,s11,a5
    800034b4:	0007c503          	lbu	a0,0(a5)
    800034b8:	fffd0d1b          	addiw	s10,s10,-1
    800034bc:	004c9c93          	slli	s9,s9,0x4
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	974080e7          	jalr	-1676(ra) # 80002e34 <consputc>
    800034c8:	fe0d12e3          	bnez	s10,800034ac <__printf+0x494>
    800034cc:	f8dff06f          	j	80003458 <__printf+0x440>
    800034d0:	f7843783          	ld	a5,-136(s0)
    800034d4:	0007bc83          	ld	s9,0(a5)
    800034d8:	00878793          	addi	a5,a5,8
    800034dc:	f6f43c23          	sd	a5,-136(s0)
    800034e0:	000c9a63          	bnez	s9,800034f4 <__printf+0x4dc>
    800034e4:	1080006f          	j	800035ec <__printf+0x5d4>
    800034e8:	001c8c93          	addi	s9,s9,1
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	948080e7          	jalr	-1720(ra) # 80002e34 <consputc>
    800034f4:	000cc503          	lbu	a0,0(s9)
    800034f8:	fe0518e3          	bnez	a0,800034e8 <__printf+0x4d0>
    800034fc:	f5dff06f          	j	80003458 <__printf+0x440>
    80003500:	02500513          	li	a0,37
    80003504:	00000097          	auipc	ra,0x0
    80003508:	930080e7          	jalr	-1744(ra) # 80002e34 <consputc>
    8000350c:	000c8513          	mv	a0,s9
    80003510:	00000097          	auipc	ra,0x0
    80003514:	924080e7          	jalr	-1756(ra) # 80002e34 <consputc>
    80003518:	f41ff06f          	j	80003458 <__printf+0x440>
    8000351c:	02500513          	li	a0,37
    80003520:	00000097          	auipc	ra,0x0
    80003524:	914080e7          	jalr	-1772(ra) # 80002e34 <consputc>
    80003528:	f31ff06f          	j	80003458 <__printf+0x440>
    8000352c:	00030513          	mv	a0,t1
    80003530:	00000097          	auipc	ra,0x0
    80003534:	7bc080e7          	jalr	1980(ra) # 80003cec <acquire>
    80003538:	b4dff06f          	j	80003084 <__printf+0x6c>
    8000353c:	40c0053b          	negw	a0,a2
    80003540:	00a00713          	li	a4,10
    80003544:	02e576bb          	remuw	a3,a0,a4
    80003548:	00002d97          	auipc	s11,0x2
    8000354c:	cf8d8d93          	addi	s11,s11,-776 # 80005240 <digits>
    80003550:	ff700593          	li	a1,-9
    80003554:	02069693          	slli	a3,a3,0x20
    80003558:	0206d693          	srli	a3,a3,0x20
    8000355c:	00dd86b3          	add	a3,s11,a3
    80003560:	0006c683          	lbu	a3,0(a3)
    80003564:	02e557bb          	divuw	a5,a0,a4
    80003568:	f8d40023          	sb	a3,-128(s0)
    8000356c:	10b65e63          	bge	a2,a1,80003688 <__printf+0x670>
    80003570:	06300593          	li	a1,99
    80003574:	02e7f6bb          	remuw	a3,a5,a4
    80003578:	02069693          	slli	a3,a3,0x20
    8000357c:	0206d693          	srli	a3,a3,0x20
    80003580:	00dd86b3          	add	a3,s11,a3
    80003584:	0006c683          	lbu	a3,0(a3)
    80003588:	02e7d73b          	divuw	a4,a5,a4
    8000358c:	00200793          	li	a5,2
    80003590:	f8d400a3          	sb	a3,-127(s0)
    80003594:	bca5ece3          	bltu	a1,a0,8000316c <__printf+0x154>
    80003598:	ce5ff06f          	j	8000327c <__printf+0x264>
    8000359c:	40e007bb          	negw	a5,a4
    800035a0:	00002d97          	auipc	s11,0x2
    800035a4:	ca0d8d93          	addi	s11,s11,-864 # 80005240 <digits>
    800035a8:	00f7f693          	andi	a3,a5,15
    800035ac:	00dd86b3          	add	a3,s11,a3
    800035b0:	0006c583          	lbu	a1,0(a3)
    800035b4:	ff100613          	li	a2,-15
    800035b8:	0047d69b          	srliw	a3,a5,0x4
    800035bc:	f8b40023          	sb	a1,-128(s0)
    800035c0:	0047d59b          	srliw	a1,a5,0x4
    800035c4:	0ac75e63          	bge	a4,a2,80003680 <__printf+0x668>
    800035c8:	00f6f693          	andi	a3,a3,15
    800035cc:	00dd86b3          	add	a3,s11,a3
    800035d0:	0006c603          	lbu	a2,0(a3)
    800035d4:	00f00693          	li	a3,15
    800035d8:	0087d79b          	srliw	a5,a5,0x8
    800035dc:	f8c400a3          	sb	a2,-127(s0)
    800035e0:	d8b6e4e3          	bltu	a3,a1,80003368 <__printf+0x350>
    800035e4:	00200793          	li	a5,2
    800035e8:	e2dff06f          	j	80003414 <__printf+0x3fc>
    800035ec:	00002c97          	auipc	s9,0x2
    800035f0:	c34c8c93          	addi	s9,s9,-972 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    800035f4:	02800513          	li	a0,40
    800035f8:	ef1ff06f          	j	800034e8 <__printf+0x4d0>
    800035fc:	00700793          	li	a5,7
    80003600:	00600c93          	li	s9,6
    80003604:	e0dff06f          	j	80003410 <__printf+0x3f8>
    80003608:	00700793          	li	a5,7
    8000360c:	00600c93          	li	s9,6
    80003610:	c69ff06f          	j	80003278 <__printf+0x260>
    80003614:	00300793          	li	a5,3
    80003618:	00200c93          	li	s9,2
    8000361c:	c5dff06f          	j	80003278 <__printf+0x260>
    80003620:	00300793          	li	a5,3
    80003624:	00200c93          	li	s9,2
    80003628:	de9ff06f          	j	80003410 <__printf+0x3f8>
    8000362c:	00400793          	li	a5,4
    80003630:	00300c93          	li	s9,3
    80003634:	dddff06f          	j	80003410 <__printf+0x3f8>
    80003638:	00400793          	li	a5,4
    8000363c:	00300c93          	li	s9,3
    80003640:	c39ff06f          	j	80003278 <__printf+0x260>
    80003644:	00500793          	li	a5,5
    80003648:	00400c93          	li	s9,4
    8000364c:	c2dff06f          	j	80003278 <__printf+0x260>
    80003650:	00500793          	li	a5,5
    80003654:	00400c93          	li	s9,4
    80003658:	db9ff06f          	j	80003410 <__printf+0x3f8>
    8000365c:	00600793          	li	a5,6
    80003660:	00500c93          	li	s9,5
    80003664:	dadff06f          	j	80003410 <__printf+0x3f8>
    80003668:	00600793          	li	a5,6
    8000366c:	00500c93          	li	s9,5
    80003670:	c09ff06f          	j	80003278 <__printf+0x260>
    80003674:	00800793          	li	a5,8
    80003678:	00700c93          	li	s9,7
    8000367c:	bfdff06f          	j	80003278 <__printf+0x260>
    80003680:	00100793          	li	a5,1
    80003684:	d91ff06f          	j	80003414 <__printf+0x3fc>
    80003688:	00100793          	li	a5,1
    8000368c:	bf1ff06f          	j	8000327c <__printf+0x264>
    80003690:	00900793          	li	a5,9
    80003694:	00800c93          	li	s9,8
    80003698:	be1ff06f          	j	80003278 <__printf+0x260>
    8000369c:	00002517          	auipc	a0,0x2
    800036a0:	b8c50513          	addi	a0,a0,-1140 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	918080e7          	jalr	-1768(ra) # 80002fbc <panic>

00000000800036ac <printfinit>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00003497          	auipc	s1,0x3
    800036c4:	60048493          	addi	s1,s1,1536 # 80006cc0 <pr>
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00002597          	auipc	a1,0x2
    800036d0:	b6c58593          	addi	a1,a1,-1172 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	5f4080e7          	jalr	1524(ra) # 80003cc8 <initlock>
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	0004ac23          	sw	zero,24(s1)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	02010113          	addi	sp,sp,32
    800036f0:	00008067          	ret

00000000800036f4 <uartinit>:
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00813423          	sd	s0,8(sp)
    800036fc:	01010413          	addi	s0,sp,16
    80003700:	100007b7          	lui	a5,0x10000
    80003704:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003708:	f8000713          	li	a4,-128
    8000370c:	00e781a3          	sb	a4,3(a5)
    80003710:	00300713          	li	a4,3
    80003714:	00e78023          	sb	a4,0(a5)
    80003718:	000780a3          	sb	zero,1(a5)
    8000371c:	00e781a3          	sb	a4,3(a5)
    80003720:	00700693          	li	a3,7
    80003724:	00d78123          	sb	a3,2(a5)
    80003728:	00e780a3          	sb	a4,1(a5)
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <uartputc>:
    80003738:	00002797          	auipc	a5,0x2
    8000373c:	3007a783          	lw	a5,768(a5) # 80005a38 <panicked>
    80003740:	00078463          	beqz	a5,80003748 <uartputc+0x10>
    80003744:	0000006f          	j	80003744 <uartputc+0xc>
    80003748:	fd010113          	addi	sp,sp,-48
    8000374c:	02813023          	sd	s0,32(sp)
    80003750:	00913c23          	sd	s1,24(sp)
    80003754:	01213823          	sd	s2,16(sp)
    80003758:	01313423          	sd	s3,8(sp)
    8000375c:	02113423          	sd	ra,40(sp)
    80003760:	03010413          	addi	s0,sp,48
    80003764:	00002917          	auipc	s2,0x2
    80003768:	2dc90913          	addi	s2,s2,732 # 80005a40 <uart_tx_r>
    8000376c:	00093783          	ld	a5,0(s2)
    80003770:	00002497          	auipc	s1,0x2
    80003774:	2d848493          	addi	s1,s1,728 # 80005a48 <uart_tx_w>
    80003778:	0004b703          	ld	a4,0(s1)
    8000377c:	02078693          	addi	a3,a5,32
    80003780:	00050993          	mv	s3,a0
    80003784:	02e69c63          	bne	a3,a4,800037bc <uartputc+0x84>
    80003788:	00001097          	auipc	ra,0x1
    8000378c:	834080e7          	jalr	-1996(ra) # 80003fbc <push_on>
    80003790:	00093783          	ld	a5,0(s2)
    80003794:	0004b703          	ld	a4,0(s1)
    80003798:	02078793          	addi	a5,a5,32
    8000379c:	00e79463          	bne	a5,a4,800037a4 <uartputc+0x6c>
    800037a0:	0000006f          	j	800037a0 <uartputc+0x68>
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	88c080e7          	jalr	-1908(ra) # 80004030 <pop_on>
    800037ac:	00093783          	ld	a5,0(s2)
    800037b0:	0004b703          	ld	a4,0(s1)
    800037b4:	02078693          	addi	a3,a5,32
    800037b8:	fce688e3          	beq	a3,a4,80003788 <uartputc+0x50>
    800037bc:	01f77693          	andi	a3,a4,31
    800037c0:	00003597          	auipc	a1,0x3
    800037c4:	52058593          	addi	a1,a1,1312 # 80006ce0 <uart_tx_buf>
    800037c8:	00d586b3          	add	a3,a1,a3
    800037cc:	00170713          	addi	a4,a4,1
    800037d0:	01368023          	sb	s3,0(a3)
    800037d4:	00e4b023          	sd	a4,0(s1)
    800037d8:	10000637          	lui	a2,0x10000
    800037dc:	02f71063          	bne	a4,a5,800037fc <uartputc+0xc4>
    800037e0:	0340006f          	j	80003814 <uartputc+0xdc>
    800037e4:	00074703          	lbu	a4,0(a4)
    800037e8:	00f93023          	sd	a5,0(s2)
    800037ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800037f0:	00093783          	ld	a5,0(s2)
    800037f4:	0004b703          	ld	a4,0(s1)
    800037f8:	00f70e63          	beq	a4,a5,80003814 <uartputc+0xdc>
    800037fc:	00564683          	lbu	a3,5(a2)
    80003800:	01f7f713          	andi	a4,a5,31
    80003804:	00e58733          	add	a4,a1,a4
    80003808:	0206f693          	andi	a3,a3,32
    8000380c:	00178793          	addi	a5,a5,1
    80003810:	fc069ae3          	bnez	a3,800037e4 <uartputc+0xac>
    80003814:	02813083          	ld	ra,40(sp)
    80003818:	02013403          	ld	s0,32(sp)
    8000381c:	01813483          	ld	s1,24(sp)
    80003820:	01013903          	ld	s2,16(sp)
    80003824:	00813983          	ld	s3,8(sp)
    80003828:	03010113          	addi	sp,sp,48
    8000382c:	00008067          	ret

0000000080003830 <uartputc_sync>:
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813423          	sd	s0,8(sp)
    80003838:	01010413          	addi	s0,sp,16
    8000383c:	00002717          	auipc	a4,0x2
    80003840:	1fc72703          	lw	a4,508(a4) # 80005a38 <panicked>
    80003844:	02071663          	bnez	a4,80003870 <uartputc_sync+0x40>
    80003848:	00050793          	mv	a5,a0
    8000384c:	100006b7          	lui	a3,0x10000
    80003850:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003854:	02077713          	andi	a4,a4,32
    80003858:	fe070ce3          	beqz	a4,80003850 <uartputc_sync+0x20>
    8000385c:	0ff7f793          	andi	a5,a5,255
    80003860:	00f68023          	sb	a5,0(a3)
    80003864:	00813403          	ld	s0,8(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret
    80003870:	0000006f          	j	80003870 <uartputc_sync+0x40>

0000000080003874 <uartstart>:
    80003874:	ff010113          	addi	sp,sp,-16
    80003878:	00813423          	sd	s0,8(sp)
    8000387c:	01010413          	addi	s0,sp,16
    80003880:	00002617          	auipc	a2,0x2
    80003884:	1c060613          	addi	a2,a2,448 # 80005a40 <uart_tx_r>
    80003888:	00002517          	auipc	a0,0x2
    8000388c:	1c050513          	addi	a0,a0,448 # 80005a48 <uart_tx_w>
    80003890:	00063783          	ld	a5,0(a2)
    80003894:	00053703          	ld	a4,0(a0)
    80003898:	04f70263          	beq	a4,a5,800038dc <uartstart+0x68>
    8000389c:	100005b7          	lui	a1,0x10000
    800038a0:	00003817          	auipc	a6,0x3
    800038a4:	44080813          	addi	a6,a6,1088 # 80006ce0 <uart_tx_buf>
    800038a8:	01c0006f          	j	800038c4 <uartstart+0x50>
    800038ac:	0006c703          	lbu	a4,0(a3)
    800038b0:	00f63023          	sd	a5,0(a2)
    800038b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038b8:	00063783          	ld	a5,0(a2)
    800038bc:	00053703          	ld	a4,0(a0)
    800038c0:	00f70e63          	beq	a4,a5,800038dc <uartstart+0x68>
    800038c4:	01f7f713          	andi	a4,a5,31
    800038c8:	00e806b3          	add	a3,a6,a4
    800038cc:	0055c703          	lbu	a4,5(a1)
    800038d0:	00178793          	addi	a5,a5,1
    800038d4:	02077713          	andi	a4,a4,32
    800038d8:	fc071ae3          	bnez	a4,800038ac <uartstart+0x38>
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <uartgetc>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813423          	sd	s0,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	10000737          	lui	a4,0x10000
    800038f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800038fc:	0017f793          	andi	a5,a5,1
    80003900:	00078c63          	beqz	a5,80003918 <uartgetc+0x30>
    80003904:	00074503          	lbu	a0,0(a4)
    80003908:	0ff57513          	andi	a0,a0,255
    8000390c:	00813403          	ld	s0,8(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret
    80003918:	fff00513          	li	a0,-1
    8000391c:	ff1ff06f          	j	8000390c <uartgetc+0x24>

0000000080003920 <uartintr>:
    80003920:	100007b7          	lui	a5,0x10000
    80003924:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003928:	0017f793          	andi	a5,a5,1
    8000392c:	0a078463          	beqz	a5,800039d4 <uartintr+0xb4>
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	100004b7          	lui	s1,0x10000
    80003948:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000394c:	0ff57513          	andi	a0,a0,255
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	534080e7          	jalr	1332(ra) # 80002e84 <consoleintr>
    80003958:	0054c783          	lbu	a5,5(s1)
    8000395c:	0017f793          	andi	a5,a5,1
    80003960:	fe0794e3          	bnez	a5,80003948 <uartintr+0x28>
    80003964:	00002617          	auipc	a2,0x2
    80003968:	0dc60613          	addi	a2,a2,220 # 80005a40 <uart_tx_r>
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	0dc50513          	addi	a0,a0,220 # 80005a48 <uart_tx_w>
    80003974:	00063783          	ld	a5,0(a2)
    80003978:	00053703          	ld	a4,0(a0)
    8000397c:	04f70263          	beq	a4,a5,800039c0 <uartintr+0xa0>
    80003980:	100005b7          	lui	a1,0x10000
    80003984:	00003817          	auipc	a6,0x3
    80003988:	35c80813          	addi	a6,a6,860 # 80006ce0 <uart_tx_buf>
    8000398c:	01c0006f          	j	800039a8 <uartintr+0x88>
    80003990:	0006c703          	lbu	a4,0(a3)
    80003994:	00f63023          	sd	a5,0(a2)
    80003998:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000399c:	00063783          	ld	a5,0(a2)
    800039a0:	00053703          	ld	a4,0(a0)
    800039a4:	00f70e63          	beq	a4,a5,800039c0 <uartintr+0xa0>
    800039a8:	01f7f713          	andi	a4,a5,31
    800039ac:	00e806b3          	add	a3,a6,a4
    800039b0:	0055c703          	lbu	a4,5(a1)
    800039b4:	00178793          	addi	a5,a5,1
    800039b8:	02077713          	andi	a4,a4,32
    800039bc:	fc071ae3          	bnez	a4,80003990 <uartintr+0x70>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret
    800039d4:	00002617          	auipc	a2,0x2
    800039d8:	06c60613          	addi	a2,a2,108 # 80005a40 <uart_tx_r>
    800039dc:	00002517          	auipc	a0,0x2
    800039e0:	06c50513          	addi	a0,a0,108 # 80005a48 <uart_tx_w>
    800039e4:	00063783          	ld	a5,0(a2)
    800039e8:	00053703          	ld	a4,0(a0)
    800039ec:	04f70263          	beq	a4,a5,80003a30 <uartintr+0x110>
    800039f0:	100005b7          	lui	a1,0x10000
    800039f4:	00003817          	auipc	a6,0x3
    800039f8:	2ec80813          	addi	a6,a6,748 # 80006ce0 <uart_tx_buf>
    800039fc:	01c0006f          	j	80003a18 <uartintr+0xf8>
    80003a00:	0006c703          	lbu	a4,0(a3)
    80003a04:	00f63023          	sd	a5,0(a2)
    80003a08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a0c:	00063783          	ld	a5,0(a2)
    80003a10:	00053703          	ld	a4,0(a0)
    80003a14:	02f70063          	beq	a4,a5,80003a34 <uartintr+0x114>
    80003a18:	01f7f713          	andi	a4,a5,31
    80003a1c:	00e806b3          	add	a3,a6,a4
    80003a20:	0055c703          	lbu	a4,5(a1)
    80003a24:	00178793          	addi	a5,a5,1
    80003a28:	02077713          	andi	a4,a4,32
    80003a2c:	fc071ae3          	bnez	a4,80003a00 <uartintr+0xe0>
    80003a30:	00008067          	ret
    80003a34:	00008067          	ret

0000000080003a38 <kinit>:
    80003a38:	fc010113          	addi	sp,sp,-64
    80003a3c:	02913423          	sd	s1,40(sp)
    80003a40:	fffff7b7          	lui	a5,0xfffff
    80003a44:	00004497          	auipc	s1,0x4
    80003a48:	2cb48493          	addi	s1,s1,715 # 80007d0f <end+0xfff>
    80003a4c:	02813823          	sd	s0,48(sp)
    80003a50:	01313c23          	sd	s3,24(sp)
    80003a54:	00f4f4b3          	and	s1,s1,a5
    80003a58:	02113c23          	sd	ra,56(sp)
    80003a5c:	03213023          	sd	s2,32(sp)
    80003a60:	01413823          	sd	s4,16(sp)
    80003a64:	01513423          	sd	s5,8(sp)
    80003a68:	04010413          	addi	s0,sp,64
    80003a6c:	000017b7          	lui	a5,0x1
    80003a70:	01100993          	li	s3,17
    80003a74:	00f487b3          	add	a5,s1,a5
    80003a78:	01b99993          	slli	s3,s3,0x1b
    80003a7c:	06f9e063          	bltu	s3,a5,80003adc <kinit+0xa4>
    80003a80:	00003a97          	auipc	s5,0x3
    80003a84:	290a8a93          	addi	s5,s5,656 # 80006d10 <end>
    80003a88:	0754ec63          	bltu	s1,s5,80003b00 <kinit+0xc8>
    80003a8c:	0734fa63          	bgeu	s1,s3,80003b00 <kinit+0xc8>
    80003a90:	00088a37          	lui	s4,0x88
    80003a94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003a98:	00002917          	auipc	s2,0x2
    80003a9c:	fb890913          	addi	s2,s2,-72 # 80005a50 <kmem>
    80003aa0:	00ca1a13          	slli	s4,s4,0xc
    80003aa4:	0140006f          	j	80003ab8 <kinit+0x80>
    80003aa8:	000017b7          	lui	a5,0x1
    80003aac:	00f484b3          	add	s1,s1,a5
    80003ab0:	0554e863          	bltu	s1,s5,80003b00 <kinit+0xc8>
    80003ab4:	0534f663          	bgeu	s1,s3,80003b00 <kinit+0xc8>
    80003ab8:	00001637          	lui	a2,0x1
    80003abc:	00100593          	li	a1,1
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00000097          	auipc	ra,0x0
    80003ac8:	5e4080e7          	jalr	1508(ra) # 800040a8 <__memset>
    80003acc:	00093783          	ld	a5,0(s2)
    80003ad0:	00f4b023          	sd	a5,0(s1)
    80003ad4:	00993023          	sd	s1,0(s2)
    80003ad8:	fd4498e3          	bne	s1,s4,80003aa8 <kinit+0x70>
    80003adc:	03813083          	ld	ra,56(sp)
    80003ae0:	03013403          	ld	s0,48(sp)
    80003ae4:	02813483          	ld	s1,40(sp)
    80003ae8:	02013903          	ld	s2,32(sp)
    80003aec:	01813983          	ld	s3,24(sp)
    80003af0:	01013a03          	ld	s4,16(sp)
    80003af4:	00813a83          	ld	s5,8(sp)
    80003af8:	04010113          	addi	sp,sp,64
    80003afc:	00008067          	ret
    80003b00:	00001517          	auipc	a0,0x1
    80003b04:	75850513          	addi	a0,a0,1880 # 80005258 <digits+0x18>
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	4b4080e7          	jalr	1204(ra) # 80002fbc <panic>

0000000080003b10 <freerange>:
    80003b10:	fc010113          	addi	sp,sp,-64
    80003b14:	000017b7          	lui	a5,0x1
    80003b18:	02913423          	sd	s1,40(sp)
    80003b1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b20:	009504b3          	add	s1,a0,s1
    80003b24:	fffff537          	lui	a0,0xfffff
    80003b28:	02813823          	sd	s0,48(sp)
    80003b2c:	02113c23          	sd	ra,56(sp)
    80003b30:	03213023          	sd	s2,32(sp)
    80003b34:	01313c23          	sd	s3,24(sp)
    80003b38:	01413823          	sd	s4,16(sp)
    80003b3c:	01513423          	sd	s5,8(sp)
    80003b40:	01613023          	sd	s6,0(sp)
    80003b44:	04010413          	addi	s0,sp,64
    80003b48:	00a4f4b3          	and	s1,s1,a0
    80003b4c:	00f487b3          	add	a5,s1,a5
    80003b50:	06f5e463          	bltu	a1,a5,80003bb8 <freerange+0xa8>
    80003b54:	00003a97          	auipc	s5,0x3
    80003b58:	1bca8a93          	addi	s5,s5,444 # 80006d10 <end>
    80003b5c:	0954e263          	bltu	s1,s5,80003be0 <freerange+0xd0>
    80003b60:	01100993          	li	s3,17
    80003b64:	01b99993          	slli	s3,s3,0x1b
    80003b68:	0734fc63          	bgeu	s1,s3,80003be0 <freerange+0xd0>
    80003b6c:	00058a13          	mv	s4,a1
    80003b70:	00002917          	auipc	s2,0x2
    80003b74:	ee090913          	addi	s2,s2,-288 # 80005a50 <kmem>
    80003b78:	00002b37          	lui	s6,0x2
    80003b7c:	0140006f          	j	80003b90 <freerange+0x80>
    80003b80:	000017b7          	lui	a5,0x1
    80003b84:	00f484b3          	add	s1,s1,a5
    80003b88:	0554ec63          	bltu	s1,s5,80003be0 <freerange+0xd0>
    80003b8c:	0534fa63          	bgeu	s1,s3,80003be0 <freerange+0xd0>
    80003b90:	00001637          	lui	a2,0x1
    80003b94:	00100593          	li	a1,1
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	50c080e7          	jalr	1292(ra) # 800040a8 <__memset>
    80003ba4:	00093703          	ld	a4,0(s2)
    80003ba8:	016487b3          	add	a5,s1,s6
    80003bac:	00e4b023          	sd	a4,0(s1)
    80003bb0:	00993023          	sd	s1,0(s2)
    80003bb4:	fcfa76e3          	bgeu	s4,a5,80003b80 <freerange+0x70>
    80003bb8:	03813083          	ld	ra,56(sp)
    80003bbc:	03013403          	ld	s0,48(sp)
    80003bc0:	02813483          	ld	s1,40(sp)
    80003bc4:	02013903          	ld	s2,32(sp)
    80003bc8:	01813983          	ld	s3,24(sp)
    80003bcc:	01013a03          	ld	s4,16(sp)
    80003bd0:	00813a83          	ld	s5,8(sp)
    80003bd4:	00013b03          	ld	s6,0(sp)
    80003bd8:	04010113          	addi	sp,sp,64
    80003bdc:	00008067          	ret
    80003be0:	00001517          	auipc	a0,0x1
    80003be4:	67850513          	addi	a0,a0,1656 # 80005258 <digits+0x18>
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	3d4080e7          	jalr	980(ra) # 80002fbc <panic>

0000000080003bf0 <kfree>:
    80003bf0:	fe010113          	addi	sp,sp,-32
    80003bf4:	00813823          	sd	s0,16(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00913423          	sd	s1,8(sp)
    80003c00:	02010413          	addi	s0,sp,32
    80003c04:	03451793          	slli	a5,a0,0x34
    80003c08:	04079c63          	bnez	a5,80003c60 <kfree+0x70>
    80003c0c:	00003797          	auipc	a5,0x3
    80003c10:	10478793          	addi	a5,a5,260 # 80006d10 <end>
    80003c14:	00050493          	mv	s1,a0
    80003c18:	04f56463          	bltu	a0,a5,80003c60 <kfree+0x70>
    80003c1c:	01100793          	li	a5,17
    80003c20:	01b79793          	slli	a5,a5,0x1b
    80003c24:	02f57e63          	bgeu	a0,a5,80003c60 <kfree+0x70>
    80003c28:	00001637          	lui	a2,0x1
    80003c2c:	00100593          	li	a1,1
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	478080e7          	jalr	1144(ra) # 800040a8 <__memset>
    80003c38:	00002797          	auipc	a5,0x2
    80003c3c:	e1878793          	addi	a5,a5,-488 # 80005a50 <kmem>
    80003c40:	0007b703          	ld	a4,0(a5)
    80003c44:	01813083          	ld	ra,24(sp)
    80003c48:	01013403          	ld	s0,16(sp)
    80003c4c:	00e4b023          	sd	a4,0(s1)
    80003c50:	0097b023          	sd	s1,0(a5)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	5f850513          	addi	a0,a0,1528 # 80005258 <digits+0x18>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	354080e7          	jalr	852(ra) # 80002fbc <panic>

0000000080003c70 <kalloc>:
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	00113c23          	sd	ra,24(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	00002797          	auipc	a5,0x2
    80003c88:	dcc78793          	addi	a5,a5,-564 # 80005a50 <kmem>
    80003c8c:	0007b483          	ld	s1,0(a5)
    80003c90:	02048063          	beqz	s1,80003cb0 <kalloc+0x40>
    80003c94:	0004b703          	ld	a4,0(s1)
    80003c98:	00001637          	lui	a2,0x1
    80003c9c:	00500593          	li	a1,5
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00e7b023          	sd	a4,0(a5)
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	400080e7          	jalr	1024(ra) # 800040a8 <__memset>
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret

0000000080003cc8 <initlock>:
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00813423          	sd	s0,8(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	00b53423          	sd	a1,8(a0)
    80003cdc:	00052023          	sw	zero,0(a0)
    80003ce0:	00053823          	sd	zero,16(a0)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <acquire>:
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	00050493          	mv	s1,a0
    80003d08:	10002973          	csrr	s2,sstatus
    80003d0c:	100027f3          	csrr	a5,sstatus
    80003d10:	ffd7f793          	andi	a5,a5,-3
    80003d14:	10079073          	csrw	sstatus,a5
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	8e4080e7          	jalr	-1820(ra) # 800025fc <mycpu>
    80003d20:	07852783          	lw	a5,120(a0)
    80003d24:	06078e63          	beqz	a5,80003da0 <acquire+0xb4>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	8d4080e7          	jalr	-1836(ra) # 800025fc <mycpu>
    80003d30:	07852783          	lw	a5,120(a0)
    80003d34:	0004a703          	lw	a4,0(s1)
    80003d38:	0017879b          	addiw	a5,a5,1
    80003d3c:	06f52c23          	sw	a5,120(a0)
    80003d40:	04071063          	bnez	a4,80003d80 <acquire+0x94>
    80003d44:	00100713          	li	a4,1
    80003d48:	00070793          	mv	a5,a4
    80003d4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003d50:	0007879b          	sext.w	a5,a5
    80003d54:	fe079ae3          	bnez	a5,80003d48 <acquire+0x5c>
    80003d58:	0ff0000f          	fence
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	8a0080e7          	jalr	-1888(ra) # 800025fc <mycpu>
    80003d64:	01813083          	ld	ra,24(sp)
    80003d68:	01013403          	ld	s0,16(sp)
    80003d6c:	00a4b823          	sd	a0,16(s1)
    80003d70:	00013903          	ld	s2,0(sp)
    80003d74:	00813483          	ld	s1,8(sp)
    80003d78:	02010113          	addi	sp,sp,32
    80003d7c:	00008067          	ret
    80003d80:	0104b903          	ld	s2,16(s1)
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	878080e7          	jalr	-1928(ra) # 800025fc <mycpu>
    80003d8c:	faa91ce3          	bne	s2,a0,80003d44 <acquire+0x58>
    80003d90:	00001517          	auipc	a0,0x1
    80003d94:	4d050513          	addi	a0,a0,1232 # 80005260 <digits+0x20>
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	224080e7          	jalr	548(ra) # 80002fbc <panic>
    80003da0:	00195913          	srli	s2,s2,0x1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	858080e7          	jalr	-1960(ra) # 800025fc <mycpu>
    80003dac:	00197913          	andi	s2,s2,1
    80003db0:	07252e23          	sw	s2,124(a0)
    80003db4:	f75ff06f          	j	80003d28 <acquire+0x3c>

0000000080003db8 <release>:
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00052783          	lw	a5,0(a0)
    80003dd4:	00079a63          	bnez	a5,80003de8 <release+0x30>
    80003dd8:	00001517          	auipc	a0,0x1
    80003ddc:	49050513          	addi	a0,a0,1168 # 80005268 <digits+0x28>
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	1dc080e7          	jalr	476(ra) # 80002fbc <panic>
    80003de8:	01053903          	ld	s2,16(a0)
    80003dec:	00050493          	mv	s1,a0
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	80c080e7          	jalr	-2036(ra) # 800025fc <mycpu>
    80003df8:	fea910e3          	bne	s2,a0,80003dd8 <release+0x20>
    80003dfc:	0004b823          	sd	zero,16(s1)
    80003e00:	0ff0000f          	fence
    80003e04:	0f50000f          	fence	iorw,ow
    80003e08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	7f0080e7          	jalr	2032(ra) # 800025fc <mycpu>
    80003e14:	100027f3          	csrr	a5,sstatus
    80003e18:	0027f793          	andi	a5,a5,2
    80003e1c:	04079a63          	bnez	a5,80003e70 <release+0xb8>
    80003e20:	07852783          	lw	a5,120(a0)
    80003e24:	02f05e63          	blez	a5,80003e60 <release+0xa8>
    80003e28:	fff7871b          	addiw	a4,a5,-1
    80003e2c:	06e52c23          	sw	a4,120(a0)
    80003e30:	00071c63          	bnez	a4,80003e48 <release+0x90>
    80003e34:	07c52783          	lw	a5,124(a0)
    80003e38:	00078863          	beqz	a5,80003e48 <release+0x90>
    80003e3c:	100027f3          	csrr	a5,sstatus
    80003e40:	0027e793          	ori	a5,a5,2
    80003e44:	10079073          	csrw	sstatus,a5
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	00013903          	ld	s2,0(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret
    80003e60:	00001517          	auipc	a0,0x1
    80003e64:	42850513          	addi	a0,a0,1064 # 80005288 <digits+0x48>
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	154080e7          	jalr	340(ra) # 80002fbc <panic>
    80003e70:	00001517          	auipc	a0,0x1
    80003e74:	40050513          	addi	a0,a0,1024 # 80005270 <digits+0x30>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	144080e7          	jalr	324(ra) # 80002fbc <panic>

0000000080003e80 <holding>:
    80003e80:	00052783          	lw	a5,0(a0)
    80003e84:	00079663          	bnez	a5,80003e90 <holding+0x10>
    80003e88:	00000513          	li	a0,0
    80003e8c:	00008067          	ret
    80003e90:	fe010113          	addi	sp,sp,-32
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	00113c23          	sd	ra,24(sp)
    80003ea0:	02010413          	addi	s0,sp,32
    80003ea4:	01053483          	ld	s1,16(a0)
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	754080e7          	jalr	1876(ra) # 800025fc <mycpu>
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	40a48533          	sub	a0,s1,a0
    80003ebc:	00153513          	seqz	a0,a0
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	00008067          	ret

0000000080003ecc <push_off>:
    80003ecc:	fe010113          	addi	sp,sp,-32
    80003ed0:	00813823          	sd	s0,16(sp)
    80003ed4:	00113c23          	sd	ra,24(sp)
    80003ed8:	00913423          	sd	s1,8(sp)
    80003edc:	02010413          	addi	s0,sp,32
    80003ee0:	100024f3          	csrr	s1,sstatus
    80003ee4:	100027f3          	csrr	a5,sstatus
    80003ee8:	ffd7f793          	andi	a5,a5,-3
    80003eec:	10079073          	csrw	sstatus,a5
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	70c080e7          	jalr	1804(ra) # 800025fc <mycpu>
    80003ef8:	07852783          	lw	a5,120(a0)
    80003efc:	02078663          	beqz	a5,80003f28 <push_off+0x5c>
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	6fc080e7          	jalr	1788(ra) # 800025fc <mycpu>
    80003f08:	07852783          	lw	a5,120(a0)
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	0017879b          	addiw	a5,a5,1
    80003f18:	06f52c23          	sw	a5,120(a0)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	02010113          	addi	sp,sp,32
    80003f24:	00008067          	ret
    80003f28:	0014d493          	srli	s1,s1,0x1
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	6d0080e7          	jalr	1744(ra) # 800025fc <mycpu>
    80003f34:	0014f493          	andi	s1,s1,1
    80003f38:	06952e23          	sw	s1,124(a0)
    80003f3c:	fc5ff06f          	j	80003f00 <push_off+0x34>

0000000080003f40 <pop_off>:
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813023          	sd	s0,0(sp)
    80003f48:	00113423          	sd	ra,8(sp)
    80003f4c:	01010413          	addi	s0,sp,16
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	6ac080e7          	jalr	1708(ra) # 800025fc <mycpu>
    80003f58:	100027f3          	csrr	a5,sstatus
    80003f5c:	0027f793          	andi	a5,a5,2
    80003f60:	04079663          	bnez	a5,80003fac <pop_off+0x6c>
    80003f64:	07852783          	lw	a5,120(a0)
    80003f68:	02f05a63          	blez	a5,80003f9c <pop_off+0x5c>
    80003f6c:	fff7871b          	addiw	a4,a5,-1
    80003f70:	06e52c23          	sw	a4,120(a0)
    80003f74:	00071c63          	bnez	a4,80003f8c <pop_off+0x4c>
    80003f78:	07c52783          	lw	a5,124(a0)
    80003f7c:	00078863          	beqz	a5,80003f8c <pop_off+0x4c>
    80003f80:	100027f3          	csrr	a5,sstatus
    80003f84:	0027e793          	ori	a5,a5,2
    80003f88:	10079073          	csrw	sstatus,a5
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret
    80003f9c:	00001517          	auipc	a0,0x1
    80003fa0:	2ec50513          	addi	a0,a0,748 # 80005288 <digits+0x48>
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	018080e7          	jalr	24(ra) # 80002fbc <panic>
    80003fac:	00001517          	auipc	a0,0x1
    80003fb0:	2c450513          	addi	a0,a0,708 # 80005270 <digits+0x30>
    80003fb4:	fffff097          	auipc	ra,0xfffff
    80003fb8:	008080e7          	jalr	8(ra) # 80002fbc <panic>

0000000080003fbc <push_on>:
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00813823          	sd	s0,16(sp)
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	02010413          	addi	s0,sp,32
    80003fd0:	100024f3          	csrr	s1,sstatus
    80003fd4:	100027f3          	csrr	a5,sstatus
    80003fd8:	0027e793          	ori	a5,a5,2
    80003fdc:	10079073          	csrw	sstatus,a5
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	61c080e7          	jalr	1564(ra) # 800025fc <mycpu>
    80003fe8:	07852783          	lw	a5,120(a0)
    80003fec:	02078663          	beqz	a5,80004018 <push_on+0x5c>
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	60c080e7          	jalr	1548(ra) # 800025fc <mycpu>
    80003ff8:	07852783          	lw	a5,120(a0)
    80003ffc:	01813083          	ld	ra,24(sp)
    80004000:	01013403          	ld	s0,16(sp)
    80004004:	0017879b          	addiw	a5,a5,1
    80004008:	06f52c23          	sw	a5,120(a0)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret
    80004018:	0014d493          	srli	s1,s1,0x1
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	5e0080e7          	jalr	1504(ra) # 800025fc <mycpu>
    80004024:	0014f493          	andi	s1,s1,1
    80004028:	06952e23          	sw	s1,124(a0)
    8000402c:	fc5ff06f          	j	80003ff0 <push_on+0x34>

0000000080004030 <pop_on>:
    80004030:	ff010113          	addi	sp,sp,-16
    80004034:	00813023          	sd	s0,0(sp)
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	5bc080e7          	jalr	1468(ra) # 800025fc <mycpu>
    80004048:	100027f3          	csrr	a5,sstatus
    8000404c:	0027f793          	andi	a5,a5,2
    80004050:	04078463          	beqz	a5,80004098 <pop_on+0x68>
    80004054:	07852783          	lw	a5,120(a0)
    80004058:	02f05863          	blez	a5,80004088 <pop_on+0x58>
    8000405c:	fff7879b          	addiw	a5,a5,-1
    80004060:	06f52c23          	sw	a5,120(a0)
    80004064:	07853783          	ld	a5,120(a0)
    80004068:	00079863          	bnez	a5,80004078 <pop_on+0x48>
    8000406c:	100027f3          	csrr	a5,sstatus
    80004070:	ffd7f793          	andi	a5,a5,-3
    80004074:	10079073          	csrw	sstatus,a5
    80004078:	00813083          	ld	ra,8(sp)
    8000407c:	00013403          	ld	s0,0(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret
    80004088:	00001517          	auipc	a0,0x1
    8000408c:	22850513          	addi	a0,a0,552 # 800052b0 <digits+0x70>
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	f2c080e7          	jalr	-212(ra) # 80002fbc <panic>
    80004098:	00001517          	auipc	a0,0x1
    8000409c:	1f850513          	addi	a0,a0,504 # 80005290 <digits+0x50>
    800040a0:	fffff097          	auipc	ra,0xfffff
    800040a4:	f1c080e7          	jalr	-228(ra) # 80002fbc <panic>

00000000800040a8 <__memset>:
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00813423          	sd	s0,8(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	1a060e63          	beqz	a2,80004270 <__memset+0x1c8>
    800040b8:	40a007b3          	neg	a5,a0
    800040bc:	0077f793          	andi	a5,a5,7
    800040c0:	00778693          	addi	a3,a5,7
    800040c4:	00b00813          	li	a6,11
    800040c8:	0ff5f593          	andi	a1,a1,255
    800040cc:	fff6071b          	addiw	a4,a2,-1
    800040d0:	1b06e663          	bltu	a3,a6,8000427c <__memset+0x1d4>
    800040d4:	1cd76463          	bltu	a4,a3,8000429c <__memset+0x1f4>
    800040d8:	1a078e63          	beqz	a5,80004294 <__memset+0x1ec>
    800040dc:	00b50023          	sb	a1,0(a0)
    800040e0:	00100713          	li	a4,1
    800040e4:	1ae78463          	beq	a5,a4,8000428c <__memset+0x1e4>
    800040e8:	00b500a3          	sb	a1,1(a0)
    800040ec:	00200713          	li	a4,2
    800040f0:	1ae78a63          	beq	a5,a4,800042a4 <__memset+0x1fc>
    800040f4:	00b50123          	sb	a1,2(a0)
    800040f8:	00300713          	li	a4,3
    800040fc:	18e78463          	beq	a5,a4,80004284 <__memset+0x1dc>
    80004100:	00b501a3          	sb	a1,3(a0)
    80004104:	00400713          	li	a4,4
    80004108:	1ae78263          	beq	a5,a4,800042ac <__memset+0x204>
    8000410c:	00b50223          	sb	a1,4(a0)
    80004110:	00500713          	li	a4,5
    80004114:	1ae78063          	beq	a5,a4,800042b4 <__memset+0x20c>
    80004118:	00b502a3          	sb	a1,5(a0)
    8000411c:	00700713          	li	a4,7
    80004120:	18e79e63          	bne	a5,a4,800042bc <__memset+0x214>
    80004124:	00b50323          	sb	a1,6(a0)
    80004128:	00700e93          	li	t4,7
    8000412c:	00859713          	slli	a4,a1,0x8
    80004130:	00e5e733          	or	a4,a1,a4
    80004134:	01059e13          	slli	t3,a1,0x10
    80004138:	01c76e33          	or	t3,a4,t3
    8000413c:	01859313          	slli	t1,a1,0x18
    80004140:	006e6333          	or	t1,t3,t1
    80004144:	02059893          	slli	a7,a1,0x20
    80004148:	40f60e3b          	subw	t3,a2,a5
    8000414c:	011368b3          	or	a7,t1,a7
    80004150:	02859813          	slli	a6,a1,0x28
    80004154:	0108e833          	or	a6,a7,a6
    80004158:	03059693          	slli	a3,a1,0x30
    8000415c:	003e589b          	srliw	a7,t3,0x3
    80004160:	00d866b3          	or	a3,a6,a3
    80004164:	03859713          	slli	a4,a1,0x38
    80004168:	00389813          	slli	a6,a7,0x3
    8000416c:	00f507b3          	add	a5,a0,a5
    80004170:	00e6e733          	or	a4,a3,a4
    80004174:	000e089b          	sext.w	a7,t3
    80004178:	00f806b3          	add	a3,a6,a5
    8000417c:	00e7b023          	sd	a4,0(a5)
    80004180:	00878793          	addi	a5,a5,8
    80004184:	fed79ce3          	bne	a5,a3,8000417c <__memset+0xd4>
    80004188:	ff8e7793          	andi	a5,t3,-8
    8000418c:	0007871b          	sext.w	a4,a5
    80004190:	01d787bb          	addw	a5,a5,t4
    80004194:	0ce88e63          	beq	a7,a4,80004270 <__memset+0x1c8>
    80004198:	00f50733          	add	a4,a0,a5
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	0017871b          	addiw	a4,a5,1
    800041a4:	0cc77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	0027871b          	addiw	a4,a5,2
    800041b4:	0ac77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	0037871b          	addiw	a4,a5,3
    800041c4:	0ac77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041c8:	00e50733          	add	a4,a0,a4
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	0047871b          	addiw	a4,a5,4
    800041d4:	08c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	0057871b          	addiw	a4,a5,5
    800041e4:	08c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0067871b          	addiw	a4,a5,6
    800041f4:	06c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0077871b          	addiw	a4,a5,7
    80004204:	06c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0087871b          	addiw	a4,a5,8
    80004214:	04c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0097871b          	addiw	a4,a5,9
    80004224:	04c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	00a7871b          	addiw	a4,a5,10
    80004234:	02c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	00b7871b          	addiw	a4,a5,11
    80004244:	02c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	00c7871b          	addiw	a4,a5,12
    80004254:	00c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	00d7879b          	addiw	a5,a5,13
    80004264:	00c7f663          	bgeu	a5,a2,80004270 <__memset+0x1c8>
    80004268:	00f507b3          	add	a5,a0,a5
    8000426c:	00b78023          	sb	a1,0(a5)
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret
    8000427c:	00b00693          	li	a3,11
    80004280:	e55ff06f          	j	800040d4 <__memset+0x2c>
    80004284:	00300e93          	li	t4,3
    80004288:	ea5ff06f          	j	8000412c <__memset+0x84>
    8000428c:	00100e93          	li	t4,1
    80004290:	e9dff06f          	j	8000412c <__memset+0x84>
    80004294:	00000e93          	li	t4,0
    80004298:	e95ff06f          	j	8000412c <__memset+0x84>
    8000429c:	00000793          	li	a5,0
    800042a0:	ef9ff06f          	j	80004198 <__memset+0xf0>
    800042a4:	00200e93          	li	t4,2
    800042a8:	e85ff06f          	j	8000412c <__memset+0x84>
    800042ac:	00400e93          	li	t4,4
    800042b0:	e7dff06f          	j	8000412c <__memset+0x84>
    800042b4:	00500e93          	li	t4,5
    800042b8:	e75ff06f          	j	8000412c <__memset+0x84>
    800042bc:	00600e93          	li	t4,6
    800042c0:	e6dff06f          	j	8000412c <__memset+0x84>

00000000800042c4 <__memmove>:
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00813423          	sd	s0,8(sp)
    800042cc:	01010413          	addi	s0,sp,16
    800042d0:	0e060863          	beqz	a2,800043c0 <__memmove+0xfc>
    800042d4:	fff6069b          	addiw	a3,a2,-1
    800042d8:	0006881b          	sext.w	a6,a3
    800042dc:	0ea5e863          	bltu	a1,a0,800043cc <__memmove+0x108>
    800042e0:	00758713          	addi	a4,a1,7
    800042e4:	00a5e7b3          	or	a5,a1,a0
    800042e8:	40a70733          	sub	a4,a4,a0
    800042ec:	0077f793          	andi	a5,a5,7
    800042f0:	00f73713          	sltiu	a4,a4,15
    800042f4:	00174713          	xori	a4,a4,1
    800042f8:	0017b793          	seqz	a5,a5
    800042fc:	00e7f7b3          	and	a5,a5,a4
    80004300:	10078863          	beqz	a5,80004410 <__memmove+0x14c>
    80004304:	00900793          	li	a5,9
    80004308:	1107f463          	bgeu	a5,a6,80004410 <__memmove+0x14c>
    8000430c:	0036581b          	srliw	a6,a2,0x3
    80004310:	fff8081b          	addiw	a6,a6,-1
    80004314:	02081813          	slli	a6,a6,0x20
    80004318:	01d85893          	srli	a7,a6,0x1d
    8000431c:	00858813          	addi	a6,a1,8
    80004320:	00058793          	mv	a5,a1
    80004324:	00050713          	mv	a4,a0
    80004328:	01088833          	add	a6,a7,a6
    8000432c:	0007b883          	ld	a7,0(a5)
    80004330:	00878793          	addi	a5,a5,8
    80004334:	00870713          	addi	a4,a4,8
    80004338:	ff173c23          	sd	a7,-8(a4)
    8000433c:	ff0798e3          	bne	a5,a6,8000432c <__memmove+0x68>
    80004340:	ff867713          	andi	a4,a2,-8
    80004344:	02071793          	slli	a5,a4,0x20
    80004348:	0207d793          	srli	a5,a5,0x20
    8000434c:	00f585b3          	add	a1,a1,a5
    80004350:	40e686bb          	subw	a3,a3,a4
    80004354:	00f507b3          	add	a5,a0,a5
    80004358:	06e60463          	beq	a2,a4,800043c0 <__memmove+0xfc>
    8000435c:	0005c703          	lbu	a4,0(a1)
    80004360:	00e78023          	sb	a4,0(a5)
    80004364:	04068e63          	beqz	a3,800043c0 <__memmove+0xfc>
    80004368:	0015c603          	lbu	a2,1(a1)
    8000436c:	00100713          	li	a4,1
    80004370:	00c780a3          	sb	a2,1(a5)
    80004374:	04e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004378:	0025c603          	lbu	a2,2(a1)
    8000437c:	00200713          	li	a4,2
    80004380:	00c78123          	sb	a2,2(a5)
    80004384:	02e68e63          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004388:	0035c603          	lbu	a2,3(a1)
    8000438c:	00300713          	li	a4,3
    80004390:	00c781a3          	sb	a2,3(a5)
    80004394:	02e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004398:	0045c603          	lbu	a2,4(a1)
    8000439c:	00400713          	li	a4,4
    800043a0:	00c78223          	sb	a2,4(a5)
    800043a4:	00e68e63          	beq	a3,a4,800043c0 <__memmove+0xfc>
    800043a8:	0055c603          	lbu	a2,5(a1)
    800043ac:	00500713          	li	a4,5
    800043b0:	00c782a3          	sb	a2,5(a5)
    800043b4:	00e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    800043b8:	0065c703          	lbu	a4,6(a1)
    800043bc:	00e78323          	sb	a4,6(a5)
    800043c0:	00813403          	ld	s0,8(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret
    800043cc:	02061713          	slli	a4,a2,0x20
    800043d0:	02075713          	srli	a4,a4,0x20
    800043d4:	00e587b3          	add	a5,a1,a4
    800043d8:	f0f574e3          	bgeu	a0,a5,800042e0 <__memmove+0x1c>
    800043dc:	02069613          	slli	a2,a3,0x20
    800043e0:	02065613          	srli	a2,a2,0x20
    800043e4:	fff64613          	not	a2,a2
    800043e8:	00e50733          	add	a4,a0,a4
    800043ec:	00c78633          	add	a2,a5,a2
    800043f0:	fff7c683          	lbu	a3,-1(a5)
    800043f4:	fff78793          	addi	a5,a5,-1
    800043f8:	fff70713          	addi	a4,a4,-1
    800043fc:	00d70023          	sb	a3,0(a4)
    80004400:	fec798e3          	bne	a5,a2,800043f0 <__memmove+0x12c>
    80004404:	00813403          	ld	s0,8(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret
    80004410:	02069713          	slli	a4,a3,0x20
    80004414:	02075713          	srli	a4,a4,0x20
    80004418:	00170713          	addi	a4,a4,1
    8000441c:	00e50733          	add	a4,a0,a4
    80004420:	00050793          	mv	a5,a0
    80004424:	0005c683          	lbu	a3,0(a1)
    80004428:	00178793          	addi	a5,a5,1
    8000442c:	00158593          	addi	a1,a1,1
    80004430:	fed78fa3          	sb	a3,-1(a5)
    80004434:	fee798e3          	bne	a5,a4,80004424 <__memmove+0x160>
    80004438:	f89ff06f          	j	800043c0 <__memmove+0xfc>

000000008000443c <__mem_free>:
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00813423          	sd	s0,8(sp)
    80004444:	01010413          	addi	s0,sp,16
    80004448:	00001597          	auipc	a1,0x1
    8000444c:	61058593          	addi	a1,a1,1552 # 80005a58 <freep>
    80004450:	0005b783          	ld	a5,0(a1)
    80004454:	ff050693          	addi	a3,a0,-16
    80004458:	0007b703          	ld	a4,0(a5)
    8000445c:	00d7fc63          	bgeu	a5,a3,80004474 <__mem_free+0x38>
    80004460:	00e6ee63          	bltu	a3,a4,8000447c <__mem_free+0x40>
    80004464:	00e7fc63          	bgeu	a5,a4,8000447c <__mem_free+0x40>
    80004468:	00070793          	mv	a5,a4
    8000446c:	0007b703          	ld	a4,0(a5)
    80004470:	fed7e8e3          	bltu	a5,a3,80004460 <__mem_free+0x24>
    80004474:	fee7eae3          	bltu	a5,a4,80004468 <__mem_free+0x2c>
    80004478:	fee6f8e3          	bgeu	a3,a4,80004468 <__mem_free+0x2c>
    8000447c:	ff852803          	lw	a6,-8(a0)
    80004480:	02081613          	slli	a2,a6,0x20
    80004484:	01c65613          	srli	a2,a2,0x1c
    80004488:	00c68633          	add	a2,a3,a2
    8000448c:	02c70a63          	beq	a4,a2,800044c0 <__mem_free+0x84>
    80004490:	fee53823          	sd	a4,-16(a0)
    80004494:	0087a503          	lw	a0,8(a5)
    80004498:	02051613          	slli	a2,a0,0x20
    8000449c:	01c65613          	srli	a2,a2,0x1c
    800044a0:	00c78633          	add	a2,a5,a2
    800044a4:	04c68263          	beq	a3,a2,800044e8 <__mem_free+0xac>
    800044a8:	00813403          	ld	s0,8(sp)
    800044ac:	00d7b023          	sd	a3,0(a5)
    800044b0:	00f5b023          	sd	a5,0(a1)
    800044b4:	00000513          	li	a0,0
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret
    800044c0:	00872603          	lw	a2,8(a4)
    800044c4:	00073703          	ld	a4,0(a4)
    800044c8:	0106083b          	addw	a6,a2,a6
    800044cc:	ff052c23          	sw	a6,-8(a0)
    800044d0:	fee53823          	sd	a4,-16(a0)
    800044d4:	0087a503          	lw	a0,8(a5)
    800044d8:	02051613          	slli	a2,a0,0x20
    800044dc:	01c65613          	srli	a2,a2,0x1c
    800044e0:	00c78633          	add	a2,a5,a2
    800044e4:	fcc692e3          	bne	a3,a2,800044a8 <__mem_free+0x6c>
    800044e8:	00813403          	ld	s0,8(sp)
    800044ec:	0105053b          	addw	a0,a0,a6
    800044f0:	00a7a423          	sw	a0,8(a5)
    800044f4:	00e7b023          	sd	a4,0(a5)
    800044f8:	00f5b023          	sd	a5,0(a1)
    800044fc:	00000513          	li	a0,0
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <__mem_alloc>:
    80004508:	fc010113          	addi	sp,sp,-64
    8000450c:	02813823          	sd	s0,48(sp)
    80004510:	02913423          	sd	s1,40(sp)
    80004514:	03213023          	sd	s2,32(sp)
    80004518:	01513423          	sd	s5,8(sp)
    8000451c:	02113c23          	sd	ra,56(sp)
    80004520:	01313c23          	sd	s3,24(sp)
    80004524:	01413823          	sd	s4,16(sp)
    80004528:	01613023          	sd	s6,0(sp)
    8000452c:	04010413          	addi	s0,sp,64
    80004530:	00001a97          	auipc	s5,0x1
    80004534:	528a8a93          	addi	s5,s5,1320 # 80005a58 <freep>
    80004538:	00f50913          	addi	s2,a0,15
    8000453c:	000ab683          	ld	a3,0(s5)
    80004540:	00495913          	srli	s2,s2,0x4
    80004544:	0019049b          	addiw	s1,s2,1
    80004548:	00048913          	mv	s2,s1
    8000454c:	0c068c63          	beqz	a3,80004624 <__mem_alloc+0x11c>
    80004550:	0006b503          	ld	a0,0(a3)
    80004554:	00852703          	lw	a4,8(a0)
    80004558:	10977063          	bgeu	a4,s1,80004658 <__mem_alloc+0x150>
    8000455c:	000017b7          	lui	a5,0x1
    80004560:	0009099b          	sext.w	s3,s2
    80004564:	0af4e863          	bltu	s1,a5,80004614 <__mem_alloc+0x10c>
    80004568:	02099a13          	slli	s4,s3,0x20
    8000456c:	01ca5a13          	srli	s4,s4,0x1c
    80004570:	fff00b13          	li	s6,-1
    80004574:	0100006f          	j	80004584 <__mem_alloc+0x7c>
    80004578:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000457c:	00852703          	lw	a4,8(a0)
    80004580:	04977463          	bgeu	a4,s1,800045c8 <__mem_alloc+0xc0>
    80004584:	00050793          	mv	a5,a0
    80004588:	fea698e3          	bne	a3,a0,80004578 <__mem_alloc+0x70>
    8000458c:	000a0513          	mv	a0,s4
    80004590:	00000097          	auipc	ra,0x0
    80004594:	1f0080e7          	jalr	496(ra) # 80004780 <kvmincrease>
    80004598:	00050793          	mv	a5,a0
    8000459c:	01050513          	addi	a0,a0,16
    800045a0:	07678e63          	beq	a5,s6,8000461c <__mem_alloc+0x114>
    800045a4:	0137a423          	sw	s3,8(a5)
    800045a8:	00000097          	auipc	ra,0x0
    800045ac:	e94080e7          	jalr	-364(ra) # 8000443c <__mem_free>
    800045b0:	000ab783          	ld	a5,0(s5)
    800045b4:	06078463          	beqz	a5,8000461c <__mem_alloc+0x114>
    800045b8:	0007b503          	ld	a0,0(a5)
    800045bc:	00078693          	mv	a3,a5
    800045c0:	00852703          	lw	a4,8(a0)
    800045c4:	fc9760e3          	bltu	a4,s1,80004584 <__mem_alloc+0x7c>
    800045c8:	08e48263          	beq	s1,a4,8000464c <__mem_alloc+0x144>
    800045cc:	4127073b          	subw	a4,a4,s2
    800045d0:	02071693          	slli	a3,a4,0x20
    800045d4:	01c6d693          	srli	a3,a3,0x1c
    800045d8:	00e52423          	sw	a4,8(a0)
    800045dc:	00d50533          	add	a0,a0,a3
    800045e0:	01252423          	sw	s2,8(a0)
    800045e4:	00fab023          	sd	a5,0(s5)
    800045e8:	01050513          	addi	a0,a0,16
    800045ec:	03813083          	ld	ra,56(sp)
    800045f0:	03013403          	ld	s0,48(sp)
    800045f4:	02813483          	ld	s1,40(sp)
    800045f8:	02013903          	ld	s2,32(sp)
    800045fc:	01813983          	ld	s3,24(sp)
    80004600:	01013a03          	ld	s4,16(sp)
    80004604:	00813a83          	ld	s5,8(sp)
    80004608:	00013b03          	ld	s6,0(sp)
    8000460c:	04010113          	addi	sp,sp,64
    80004610:	00008067          	ret
    80004614:	000019b7          	lui	s3,0x1
    80004618:	f51ff06f          	j	80004568 <__mem_alloc+0x60>
    8000461c:	00000513          	li	a0,0
    80004620:	fcdff06f          	j	800045ec <__mem_alloc+0xe4>
    80004624:	00002797          	auipc	a5,0x2
    80004628:	6dc78793          	addi	a5,a5,1756 # 80006d00 <base>
    8000462c:	00078513          	mv	a0,a5
    80004630:	00fab023          	sd	a5,0(s5)
    80004634:	00f7b023          	sd	a5,0(a5)
    80004638:	00000713          	li	a4,0
    8000463c:	00002797          	auipc	a5,0x2
    80004640:	6c07a623          	sw	zero,1740(a5) # 80006d08 <base+0x8>
    80004644:	00050693          	mv	a3,a0
    80004648:	f11ff06f          	j	80004558 <__mem_alloc+0x50>
    8000464c:	00053703          	ld	a4,0(a0)
    80004650:	00e7b023          	sd	a4,0(a5)
    80004654:	f91ff06f          	j	800045e4 <__mem_alloc+0xdc>
    80004658:	00068793          	mv	a5,a3
    8000465c:	f6dff06f          	j	800045c8 <__mem_alloc+0xc0>

0000000080004660 <__putc>:
    80004660:	fe010113          	addi	sp,sp,-32
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00113c23          	sd	ra,24(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	00050793          	mv	a5,a0
    80004674:	fef40593          	addi	a1,s0,-17
    80004678:	00100613          	li	a2,1
    8000467c:	00000513          	li	a0,0
    80004680:	fef407a3          	sb	a5,-17(s0)
    80004684:	fffff097          	auipc	ra,0xfffff
    80004688:	918080e7          	jalr	-1768(ra) # 80002f9c <console_write>
    8000468c:	01813083          	ld	ra,24(sp)
    80004690:	01013403          	ld	s0,16(sp)
    80004694:	02010113          	addi	sp,sp,32
    80004698:	00008067          	ret

000000008000469c <__getc>:
    8000469c:	fe010113          	addi	sp,sp,-32
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00113c23          	sd	ra,24(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	fe840593          	addi	a1,s0,-24
    800046b0:	00100613          	li	a2,1
    800046b4:	00000513          	li	a0,0
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	8c4080e7          	jalr	-1852(ra) # 80002f7c <console_read>
    800046c0:	fe844503          	lbu	a0,-24(s0)
    800046c4:	01813083          	ld	ra,24(sp)
    800046c8:	01013403          	ld	s0,16(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <console_handler>:
    800046d4:	fe010113          	addi	sp,sp,-32
    800046d8:	00813823          	sd	s0,16(sp)
    800046dc:	00113c23          	sd	ra,24(sp)
    800046e0:	00913423          	sd	s1,8(sp)
    800046e4:	02010413          	addi	s0,sp,32
    800046e8:	14202773          	csrr	a4,scause
    800046ec:	100027f3          	csrr	a5,sstatus
    800046f0:	0027f793          	andi	a5,a5,2
    800046f4:	06079e63          	bnez	a5,80004770 <console_handler+0x9c>
    800046f8:	00074c63          	bltz	a4,80004710 <console_handler+0x3c>
    800046fc:	01813083          	ld	ra,24(sp)
    80004700:	01013403          	ld	s0,16(sp)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret
    80004710:	0ff77713          	andi	a4,a4,255
    80004714:	00900793          	li	a5,9
    80004718:	fef712e3          	bne	a4,a5,800046fc <console_handler+0x28>
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	4b8080e7          	jalr	1208(ra) # 80002bd4 <plic_claim>
    80004724:	00a00793          	li	a5,10
    80004728:	00050493          	mv	s1,a0
    8000472c:	02f50c63          	beq	a0,a5,80004764 <console_handler+0x90>
    80004730:	fc0506e3          	beqz	a0,800046fc <console_handler+0x28>
    80004734:	00050593          	mv	a1,a0
    80004738:	00001517          	auipc	a0,0x1
    8000473c:	a8050513          	addi	a0,a0,-1408 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004740:	fffff097          	auipc	ra,0xfffff
    80004744:	8d8080e7          	jalr	-1832(ra) # 80003018 <__printf>
    80004748:	01013403          	ld	s0,16(sp)
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	00048513          	mv	a0,s1
    80004754:	00813483          	ld	s1,8(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	ffffe317          	auipc	t1,0xffffe
    80004760:	4b030067          	jr	1200(t1) # 80002c0c <plic_complete>
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	1bc080e7          	jalr	444(ra) # 80003920 <uartintr>
    8000476c:	fddff06f          	j	80004748 <console_handler+0x74>
    80004770:	00001517          	auipc	a0,0x1
    80004774:	b4850513          	addi	a0,a0,-1208 # 800052b8 <digits+0x78>
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	844080e7          	jalr	-1980(ra) # 80002fbc <panic>

0000000080004780 <kvmincrease>:
    80004780:	fe010113          	addi	sp,sp,-32
    80004784:	01213023          	sd	s2,0(sp)
    80004788:	00001937          	lui	s2,0x1
    8000478c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	00913423          	sd	s1,8(sp)
    8000479c:	02010413          	addi	s0,sp,32
    800047a0:	01250933          	add	s2,a0,s2
    800047a4:	00c95913          	srli	s2,s2,0xc
    800047a8:	02090863          	beqz	s2,800047d8 <kvmincrease+0x58>
    800047ac:	00000493          	li	s1,0
    800047b0:	00148493          	addi	s1,s1,1
    800047b4:	fffff097          	auipc	ra,0xfffff
    800047b8:	4bc080e7          	jalr	1212(ra) # 80003c70 <kalloc>
    800047bc:	fe991ae3          	bne	s2,s1,800047b0 <kvmincrease+0x30>
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	00013903          	ld	s2,0(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret
    800047d8:	01813083          	ld	ra,24(sp)
    800047dc:	01013403          	ld	s0,16(sp)
    800047e0:	00813483          	ld	s1,8(sp)
    800047e4:	00013903          	ld	s2,0(sp)
    800047e8:	00000513          	li	a0,0
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret
	...
