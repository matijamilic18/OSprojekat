
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8b813103          	ld	sp,-1864(sp) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	020020ef          	jal	ra,8000203c <start>

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
    80001084:	30d000ef          	jal	ra,80001b90 <_ZN5Riscv20handleSupervisorTrapEv>

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
    }
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
    8000129c:	628080e7          	jalr	1576(ra) # 800018c0 <_ZN3TCB5yieldEv>
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
    800012f8:	d0c50513          	addi	a0,a0,-756 # 80005000 <kvmincrease+0xbc0>
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	c6c080e7          	jalr	-916(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    80001304:	00048513          	mv	a0,s1
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	ca4080e7          	jalr	-860(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    80001310:	00004517          	auipc	a0,0x4
    80001314:	dc050513          	addi	a0,a0,-576 # 800050d0 <kvmincrease+0xc90>
    80001318:	00001097          	auipc	ra,0x1
    8000131c:	c50080e7          	jalr	-944(ra) # 80001f68 <_Z11printStringPKc>
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
    80001390:	c7c50513          	addi	a0,a0,-900 # 80005008 <kvmincrease+0xbc8>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	bd4080e7          	jalr	-1068(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    8000139c:	00048513          	mv	a0,s1
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	c0c080e7          	jalr	-1012(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	d2850513          	addi	a0,a0,-728 # 800050d0 <kvmincrease+0xc90>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	bb8080e7          	jalr	-1096(ra) # 80001f68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013b8:	00000693          	li	a3,0
    800013bc:	fa1ff06f          	j	8000135c <_Z11workerBodyBv+0x20>
}
    800013c0:	01813083          	ld	ra,24(sp)
    800013c4:	01013403          	ld	s0,16(sp)
    800013c8:	00813483          	ld	s1,8(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z11workerBodyCv>:

void workerBodyC()
{
    800013d4:	fe010113          	addi	sp,sp,-32
    800013d8:	00113c23          	sd	ra,24(sp)
    800013dc:	00813823          	sd	s0,16(sp)
    800013e0:	00913423          	sd	s1,8(sp)
    800013e4:	01213023          	sd	s2,0(sp)
    800013e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013ec:	00000493          	li	s1,0
    800013f0:	0380006f          	j	80001428 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	c1c50513          	addi	a0,a0,-996 # 80005010 <kvmincrease+0xbd0>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	b6c080e7          	jalr	-1172(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    80001404:	00048513          	mv	a0,s1
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	ba4080e7          	jalr	-1116(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	cc050513          	addi	a0,a0,-832 # 800050d0 <kvmincrease+0xc90>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	b50080e7          	jalr	-1200(ra) # 80001f68 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001420:	0014849b          	addiw	s1,s1,1
    80001424:	0ff4f493          	andi	s1,s1,255
    80001428:	00200793          	li	a5,2
    8000142c:	fc97f4e3          	bgeu	a5,s1,800013f4 <_Z11workerBodyCv+0x20>
    }

    thread_join(handle1);
    80001430:	00004797          	auipc	a5,0x4
    80001434:	4807b783          	ld	a5,1152(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001438:	0007b503          	ld	a0,0(a5)
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	dcc080e7          	jalr	-564(ra) # 80001208 <_Z11thread_joinP3TCB>
    printString("C: yield\n");
    80001444:	00004517          	auipc	a0,0x4
    80001448:	bd450513          	addi	a0,a0,-1068 # 80005018 <kvmincrease+0xbd8>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	b1c080e7          	jalr	-1252(ra) # 80001f68 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001454:	00700313          	li	t1,7
    TCB::yield();
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	468080e7          	jalr	1128(ra) # 800018c0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001460:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	bc450513          	addi	a0,a0,-1084 # 80005028 <kvmincrease+0xbe8>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	afc080e7          	jalr	-1284(ra) # 80001f68 <_Z11printStringPKc>
    printInteger(t1);
    80001474:	00090513          	mv	a0,s2
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	b34080e7          	jalr	-1228(ra) # 80001fac <_Z12printIntegerm>
    printString("\n");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	c5050513          	addi	a0,a0,-944 # 800050d0 <kvmincrease+0xc90>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	ae0080e7          	jalr	-1312(ra) # 80001f68 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001490:	00c00513          	li	a0,12
    80001494:	00000097          	auipc	ra,0x0
    80001498:	d9c080e7          	jalr	-612(ra) # 80001230 <_ZL9fibonaccim>
    8000149c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014a0:	00004517          	auipc	a0,0x4
    800014a4:	b9050513          	addi	a0,a0,-1136 # 80005030 <kvmincrease+0xbf0>
    800014a8:	00001097          	auipc	ra,0x1
    800014ac:	ac0080e7          	jalr	-1344(ra) # 80001f68 <_Z11printStringPKc>
    printInteger(result);
    800014b0:	00090513          	mv	a0,s2
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	af8080e7          	jalr	-1288(ra) # 80001fac <_Z12printIntegerm>
    printString("\n");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	c1450513          	addi	a0,a0,-1004 # 800050d0 <kvmincrease+0xc90>
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	aa4080e7          	jalr	-1372(ra) # 80001f68 <_Z11printStringPKc>
    800014cc:	0380006f          	j	80001504 <_Z11workerBodyCv+0x130>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014d0:	00004517          	auipc	a0,0x4
    800014d4:	b4050513          	addi	a0,a0,-1216 # 80005010 <kvmincrease+0xbd0>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	a90080e7          	jalr	-1392(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    800014e0:	00048513          	mv	a0,s1
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	ac8080e7          	jalr	-1336(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	be450513          	addi	a0,a0,-1052 # 800050d0 <kvmincrease+0xc90>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	a74080e7          	jalr	-1420(ra) # 80001f68 <_Z11printStringPKc>
    for (; i < 6; i++)
    800014fc:	0014849b          	addiw	s1,s1,1
    80001500:	0ff4f493          	andi	s1,s1,255
    80001504:	00500793          	li	a5,5
    80001508:	fc97f4e3          	bgeu	a5,s1,800014d0 <_Z11workerBodyCv+0xfc>
    }
//    TCB::yield();
}
    8000150c:	01813083          	ld	ra,24(sp)
    80001510:	01013403          	ld	s0,16(sp)
    80001514:	00813483          	ld	s1,8(sp)
    80001518:	00013903          	ld	s2,0(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00008067          	ret

0000000080001524 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001524:	fe010113          	addi	sp,sp,-32
    80001528:	00113c23          	sd	ra,24(sp)
    8000152c:	00813823          	sd	s0,16(sp)
    80001530:	00913423          	sd	s1,8(sp)
    80001534:	01213023          	sd	s2,0(sp)
    80001538:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000153c:	00a00493          	li	s1,10
    80001540:	0380006f          	j	80001578 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001544:	00004517          	auipc	a0,0x4
    80001548:	afc50513          	addi	a0,a0,-1284 # 80005040 <kvmincrease+0xc00>
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	a1c080e7          	jalr	-1508(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    80001554:	00048513          	mv	a0,s1
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	a54080e7          	jalr	-1452(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	b7050513          	addi	a0,a0,-1168 # 800050d0 <kvmincrease+0xc90>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	a00080e7          	jalr	-1536(ra) # 80001f68 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001570:	0014849b          	addiw	s1,s1,1
    80001574:	0ff4f493          	andi	s1,s1,255
    80001578:	00c00793          	li	a5,12
    8000157c:	fc97f4e3          	bgeu	a5,s1,80001544 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001580:	00004517          	auipc	a0,0x4
    80001584:	ac850513          	addi	a0,a0,-1336 # 80005048 <kvmincrease+0xc08>
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	9e0080e7          	jalr	-1568(ra) # 80001f68 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001590:	00500313          	li	t1,5
    TCB::yield();
    80001594:	00000097          	auipc	ra,0x0
    80001598:	32c080e7          	jalr	812(ra) # 800018c0 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000159c:	01000513          	li	a0,16
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	c90080e7          	jalr	-880(ra) # 80001230 <_ZL9fibonaccim>
    800015a8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015ac:	00004517          	auipc	a0,0x4
    800015b0:	aac50513          	addi	a0,a0,-1364 # 80005058 <kvmincrease+0xc18>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	9b4080e7          	jalr	-1612(ra) # 80001f68 <_Z11printStringPKc>
    printInteger(result);
    800015bc:	00090513          	mv	a0,s2
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	9ec080e7          	jalr	-1556(ra) # 80001fac <_Z12printIntegerm>
    printString("\n");
    800015c8:	00004517          	auipc	a0,0x4
    800015cc:	b0850513          	addi	a0,a0,-1272 # 800050d0 <kvmincrease+0xc90>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	998080e7          	jalr	-1640(ra) # 80001f68 <_Z11printStringPKc>
    800015d8:	0380006f          	j	80001610 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	a6450513          	addi	a0,a0,-1436 # 80005040 <kvmincrease+0xc00>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	984080e7          	jalr	-1660(ra) # 80001f68 <_Z11printStringPKc>
        printInteger(i);
    800015ec:	00048513          	mv	a0,s1
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	9bc080e7          	jalr	-1604(ra) # 80001fac <_Z12printIntegerm>
        printString("\n");
    800015f8:	00004517          	auipc	a0,0x4
    800015fc:	ad850513          	addi	a0,a0,-1320 # 800050d0 <kvmincrease+0xc90>
    80001600:	00001097          	auipc	ra,0x1
    80001604:	968080e7          	jalr	-1688(ra) # 80001f68 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001608:	0014849b          	addiw	s1,s1,1
    8000160c:	0ff4f493          	andi	s1,s1,255
    80001610:	00f00793          	li	a5,15
    80001614:	fc97f4e3          	bgeu	a5,s1,800015dc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    80001618:	01813083          	ld	ra,24(sp)
    8000161c:	01013403          	ld	s0,16(sp)
    80001620:	00813483          	ld	s1,8(sp)
    80001624:	00013903          	ld	s2,0(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret

0000000080001630 <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
thread_t handle1;
void main()
{
    80001630:	fb010113          	addi	sp,sp,-80
    80001634:	04113423          	sd	ra,72(sp)
    80001638:	04813023          	sd	s0,64(sp)
    8000163c:	02913c23          	sd	s1,56(sp)
    80001640:	03213823          	sd	s2,48(sp)
    80001644:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001648:	00004797          	auipc	a5,0x4
    8000164c:	2487b783          	ld	a5,584(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001650:	10579073          	csrw	stvec,a5

    TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    80001654:	00000613          	li	a2,0
    80001658:	00000593          	li	a1,0
    8000165c:	fb840513          	addi	a0,s0,-72
    80001660:	00000097          	auipc	ra,0x0
    80001664:	ac4080e7          	jalr	-1340(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001668:	fb843703          	ld	a4,-72(s0)
    8000166c:	00004797          	auipc	a5,0x4
    80001670:	2547b783          	ld	a5,596(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001674:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    80001678:	00000613          	li	a2,0
    8000167c:	00004597          	auipc	a1,0x4
    80001680:	22c5b583          	ld	a1,556(a1) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001684:	fc040513          	addi	a0,s0,-64
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	a9c080e7          	jalr	-1380(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001690:	00004517          	auipc	a0,0x4
    80001694:	9d850513          	addi	a0,a0,-1576 # 80005068 <kvmincrease+0xc28>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	8d0080e7          	jalr	-1840(ra) # 80001f68 <_Z11printStringPKc>
    thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    800016a0:	00000613          	li	a2,0
    800016a4:	00004597          	auipc	a1,0x4
    800016a8:	1f45b583          	ld	a1,500(a1) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x10>
    800016ac:	fc840513          	addi	a0,s0,-56
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	a74080e7          	jalr	-1420(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	9c850513          	addi	a0,a0,-1592 # 80005080 <kvmincrease+0xc40>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	8a8080e7          	jalr	-1880(ra) # 80001f68 <_Z11printStringPKc>
    thread_create(&threads[3], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    800016c8:	00000613          	li	a2,0
    800016cc:	00004597          	auipc	a1,0x4
    800016d0:	1fc5b583          	ld	a1,508(a1) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016d4:	fd040513          	addi	a0,s0,-48
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	a4c080e7          	jalr	-1460(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800016e0:	00004517          	auipc	a0,0x4
    800016e4:	9b850513          	addi	a0,a0,-1608 # 80005098 <kvmincrease+0xc58>
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	880080e7          	jalr	-1920(ra) # 80001f68 <_Z11printStringPKc>
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    800016f0:	00000613          	li	a2,0
    800016f4:	00004597          	auipc	a1,0x4
    800016f8:	1dc5b583          	ld	a1,476(a1) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016fc:	fd840513          	addi	a0,s0,-40
    80001700:	00000097          	auipc	ra,0x0
    80001704:	a24080e7          	jalr	-1500(ra) # 80001124 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001708:	00004517          	auipc	a0,0x4
    8000170c:	9a850513          	addi	a0,a0,-1624 # 800050b0 <kvmincrease+0xc70>
    80001710:	00001097          	auipc	ra,0x1
    80001714:	858080e7          	jalr	-1960(ra) # 80001f68 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001718:	00200793          	li	a5,2
    8000171c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    handle1 = threads[1];
    80001720:	fc043783          	ld	a5,-64(s0)
    80001724:	00004717          	auipc	a4,0x4
    80001728:	1ef73e23          	sd	a5,508(a4) # 80005920 <handle1>
    8000172c:	00c0006f          	j	80001738 <main+0x108>
   while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	a2c080e7          	jalr	-1492(ra) # 8000115c <_Z15thread_dispatchv>
   while (!(threads[1]->isFinished() &&
    80001738:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { if (stack!= nullptr) delete[] stack; }

    bool isFinished() const { return finished; }
    8000173c:	0307c783          	lbu	a5,48(a5)
    80001740:	fe0788e3          	beqz	a5,80001730 <main+0x100>
             threads[2]->isFinished() &&
    80001744:	fc843783          	ld	a5,-56(s0)
    80001748:	0307c783          	lbu	a5,48(a5)
   while (!(threads[1]->isFinished() &&
    8000174c:	fe0782e3          	beqz	a5,80001730 <main+0x100>
             threads[3]->isFinished() &&
    80001750:	fd043783          	ld	a5,-48(s0)
    80001754:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001758:	fc078ce3          	beqz	a5,80001730 <main+0x100>
             threads[4]->isFinished()))
    8000175c:	fd843783          	ld	a5,-40(s0)
    80001760:	0307c783          	lbu	a5,48(a5)
   while (!(threads[1]->isFinished() &&
    80001764:	fc0786e3          	beqz	a5,80001730 <main+0x100>
    80001768:	00100493          	li	s1,1
    8000176c:	0140006f          	j	80001780 <main+0x150>
    }

   for (int i=1;i<5;i++){
       delete threads[i];
    80001770:	00090513          	mv	a0,s2
    80001774:	00000097          	auipc	ra,0x0
    80001778:	3a4080e7          	jalr	932(ra) # 80001b18 <_ZdlPv>
   for (int i=1;i<5;i++){
    8000177c:	0014849b          	addiw	s1,s1,1
    80001780:	00400793          	li	a5,4
    80001784:	0297c663          	blt	a5,s1,800017b0 <main+0x180>
       delete threads[i];
    80001788:	00349793          	slli	a5,s1,0x3
    8000178c:	fe040713          	addi	a4,s0,-32
    80001790:	00f707b3          	add	a5,a4,a5
    80001794:	fd87b903          	ld	s2,-40(a5)
    80001798:	fe0902e3          	beqz	s2,8000177c <main+0x14c>
    ~TCB() { if (stack!= nullptr) delete[] stack; }
    8000179c:	01093503          	ld	a0,16(s2)
    800017a0:	fc0508e3          	beqz	a0,80001770 <main+0x140>
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	39c080e7          	jalr	924(ra) # 80001b40 <_ZdaPv>
    800017ac:	fc5ff06f          	j	80001770 <main+0x140>
   }

    printString("Finished\n");
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	91850513          	addi	a0,a0,-1768 # 800050c8 <kvmincrease+0xc88>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	7b0080e7          	jalr	1968(ra) # 80001f68 <_Z11printStringPKc>

    return;
}
    800017c0:	04813083          	ld	ra,72(sp)
    800017c4:	04013403          	ld	s0,64(sp)
    800017c8:	03813483          	ld	s1,56(sp)
    800017cc:	03013903          	ld	s2,48(sp)
    800017d0:	05010113          	addi	sp,sp,80
    800017d4:	00008067          	ret

00000000800017d8 <_ZN3TCB12createThreadEPFvPvES0_>:

uint64 TCB::timeSliceCounter = 0;


TCB *TCB::createThread(Body body, void* arg)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050913          	mv	s2,a0
    800017f8:	00058993          	mv	s3,a1
    return new TCB(body,arg, TIME_SLICE);
    800017fc:	05800513          	li	a0,88
    80001800:	00000097          	auipc	ra,0x0
    80001804:	2c8080e7          	jalr	712(ra) # 80001ac8 <_Znwm>
    80001808:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    8000180c:	01353023          	sd	s3,0(a0)
    80001810:	01253423          	sd	s2,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001814:	00090a63          	beqz	s2,80001828 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001818:	00002537          	lui	a0,0x2
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	2d4080e7          	jalr	724(ra) # 80001af0 <_Znam>
    80001824:	0080006f          	j	8000182c <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001828:	00000513          	li	a0,0
            finished(false)
    8000182c:	00a4b823          	sd	a0,16(s1)
    80001830:	00000797          	auipc	a5,0x0
    80001834:	23478793          	addi	a5,a5,564 # 80001a64 <_ZN3TCB13threadWrapperEv>
    80001838:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000183c:	04050063          	beqz	a0,8000187c <_ZN3TCB12createThreadEPFvPvES0_+0xa4>
    80001840:	000027b7          	lui	a5,0x2
    80001844:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001848:	02f4b023          	sd	a5,32(s1)
    8000184c:	00200793          	li	a5,2
    80001850:	02f4b423          	sd	a5,40(s1)
    80001854:	02048823          	sb	zero,48(s1)

    Elem *head, *tail;
    Elem* iterator = nullptr;
    int size=0;
public:
    List() : head(0), tail(0) {}
    80001858:	0204bc23          	sd	zero,56(s1)
    8000185c:	0404b023          	sd	zero,64(s1)
    80001860:	0404b423          	sd	zero,72(s1)
    80001864:	0404a823          	sw	zero,80(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001868:	02090c63          	beqz	s2,800018a0 <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
    8000186c:	00048513          	mv	a0,s1
    80001870:	00000097          	auipc	ra,0x0
    80001874:	644080e7          	jalr	1604(ra) # 80001eb4 <_ZN9Scheduler3putEP3TCB>
    80001878:	0280006f          	j	800018a0 <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000187c:	00000793          	li	a5,0
    80001880:	fc9ff06f          	j	80001848 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80001884:	00050913          	mv	s2,a0
    80001888:	00048513          	mv	a0,s1
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	28c080e7          	jalr	652(ra) # 80001b18 <_ZdlPv>
    80001894:	00090513          	mv	a0,s2
    80001898:	00005097          	auipc	ra,0x5
    8000189c:	190080e7          	jalr	400(ra) # 80006a28 <_Unwind_Resume>
}
    800018a0:	00048513          	mv	a0,s1
    800018a4:	02813083          	ld	ra,40(sp)
    800018a8:	02013403          	ld	s0,32(sp)
    800018ac:	01813483          	ld	s1,24(sp)
    800018b0:	01013903          	ld	s2,16(sp)
    800018b4:	00813983          	ld	s3,8(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	88c080e7          	jalr	-1908(ra) # 8000115c <_Z15thread_dispatchv>
}
    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    800018e8:	fe010113          	addi	sp,sp,-32
    800018ec:	00113c23          	sd	ra,24(sp)
    800018f0:	00813823          	sd	s0,16(sp)
    800018f4:	00913423          	sd	s1,8(sp)
    800018f8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800018fc:	00004497          	auipc	s1,0x4
    80001900:	02c4b483          	ld	s1,44(s1) # 80005928 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001904:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001908:	02078c63          	beqz	a5,80001940 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	52c080e7          	jalr	1324(ra) # 80001e38 <_ZN9Scheduler3getEv>
    80001914:	00004797          	auipc	a5,0x4
    80001918:	00a7ba23          	sd	a0,20(a5) # 80005928 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    8000191c:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001920:	01848513          	addi	a0,s1,24
    80001924:	fffff097          	auipc	ra,0xfffff
    80001928:	7ec080e7          	jalr	2028(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>


}
    8000192c:	01813083          	ld	ra,24(sp)
    80001930:	01013403          	ld	s0,16(sp)
    80001934:	00813483          	ld	s1,8(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001940:	00048513          	mv	a0,s1
    80001944:	00000097          	auipc	ra,0x0
    80001948:	570080e7          	jalr	1392(ra) # 80001eb4 <_ZN9Scheduler3putEP3TCB>
    8000194c:	fc1ff06f          	j	8000190c <_ZN3TCB8dispatchEv+0x24>

0000000080001950 <_ZN3TCB5blockEPS_>:
    running->setFinished(true);
    running->unblock();
    TCB::yield();
}

void TCB::block(TCB *thread) {
    80001950:	fd010113          	addi	sp,sp,-48
    80001954:	02113423          	sd	ra,40(sp)
    80001958:	02813023          	sd	s0,32(sp)
    8000195c:	00913c23          	sd	s1,24(sp)
    80001960:	01213823          	sd	s2,16(sp)
    80001964:	01313423          	sd	s3,8(sp)
    80001968:	03010413          	addi	s0,sp,48
    8000196c:	00050913          	mv	s2,a0
    80001970:	00058993          	mv	s3,a1

    blockedQueue.addLast(thread);
    80001974:	03850493          	addi	s1,a0,56
        size++;
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001978:	01000513          	li	a0,16
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	14c080e7          	jalr	332(ra) # 80001ac8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001984:	01353023          	sd	s3,0(a0)
    80001988:	00053423          	sd	zero,8(a0)
        if (tail)
    8000198c:	0084b783          	ld	a5,8(s1)
    80001990:	02078a63          	beqz	a5,800019c4 <_ZN3TCB5blockEPS_+0x74>
        {
            tail->next = elem;
    80001994:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001998:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    8000199c:	0184a783          	lw	a5,24(s1)
    800019a0:	0017879b          	addiw	a5,a5,1
    800019a4:	00f4ac23          	sw	a5,24(s1)
}
    800019a8:	02813083          	ld	ra,40(sp)
    800019ac:	02013403          	ld	s0,32(sp)
    800019b0:	01813483          	ld	s1,24(sp)
    800019b4:	01013903          	ld	s2,16(sp)
    800019b8:	00813983          	ld	s3,8(sp)
    800019bc:	03010113          	addi	sp,sp,48
    800019c0:	00008067          	ret
            head = tail = elem;
    800019c4:	00a4b423          	sd	a0,8(s1)
    800019c8:	02a93c23          	sd	a0,56(s2)
    800019cc:	fd1ff06f          	j	8000199c <_ZN3TCB5blockEPS_+0x4c>

00000000800019d0 <_ZN3TCB7unblockEv>:

void TCB::unblock() {
    800019d0:	fd010113          	addi	sp,sp,-48
    800019d4:	02113423          	sd	ra,40(sp)
    800019d8:	02813023          	sd	s0,32(sp)
    800019dc:	00913c23          	sd	s1,24(sp)
    800019e0:	01213823          	sd	s2,16(sp)
    800019e4:	01313423          	sd	s3,8(sp)
    800019e8:	03010413          	addi	s0,sp,48
    800019ec:	00050493          	mv	s1,a0
    800019f0:	02c0006f          	j	80001a1c <_ZN3TCB7unblockEv+0x4c>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    800019f4:	00093423          	sd	zero,8(s2)

        T *ret = elem->data;
    800019f8:	00053983          	ld	s3,0(a0)
        delete elem;
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	11c080e7          	jalr	284(ra) # 80001b18 <_ZdlPv>
        size--;
    80001a04:	01892783          	lw	a5,24(s2)
    80001a08:	fff7879b          	addiw	a5,a5,-1
    80001a0c:	00f92c23          	sw	a5,24(s2)
    while(blockedQueue.getSize()>0){
        TCB* t=blockedQueue.removeFirst();
        Scheduler::put(t);
    80001a10:	00098513          	mv	a0,s3
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	4a0080e7          	jalr	1184(ra) # 80001eb4 <_ZN9Scheduler3putEP3TCB>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    int getSize(){return size;}
    80001a1c:	0504a783          	lw	a5,80(s1)
    while(blockedQueue.getSize()>0){
    80001a20:	02f05463          	blez	a5,80001a48 <_ZN3TCB7unblockEv+0x78>
        TCB* t=blockedQueue.removeFirst();
    80001a24:	03848913          	addi	s2,s1,56
        if (!head) { return 0; }
    80001a28:	0384b503          	ld	a0,56(s1)
    80001a2c:	00050a63          	beqz	a0,80001a40 <_ZN3TCB7unblockEv+0x70>
        head = head->next;
    80001a30:	00853783          	ld	a5,8(a0)
    80001a34:	02f4bc23          	sd	a5,56(s1)
        if (!head) { tail = 0; }
    80001a38:	fc0790e3          	bnez	a5,800019f8 <_ZN3TCB7unblockEv+0x28>
    80001a3c:	fb9ff06f          	j	800019f4 <_ZN3TCB7unblockEv+0x24>
        if (!head) { return 0; }
    80001a40:	00050993          	mv	s3,a0
    80001a44:	fcdff06f          	j	80001a10 <_ZN3TCB7unblockEv+0x40>
    }

}
    80001a48:	02813083          	ld	ra,40(sp)
    80001a4c:	02013403          	ld	s0,32(sp)
    80001a50:	01813483          	ld	s1,24(sp)
    80001a54:	01013903          	ld	s2,16(sp)
    80001a58:	00813983          	ld	s3,8(sp)
    80001a5c:	03010113          	addi	sp,sp,48
    80001a60:	00008067          	ret

0000000080001a64 <_ZN3TCB13threadWrapperEv>:
{
    80001a64:	fe010113          	addi	sp,sp,-32
    80001a68:	00113c23          	sd	ra,24(sp)
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	0f0080e7          	jalr	240(ra) # 80001b68 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001a80:	00004497          	auipc	s1,0x4
    80001a84:	ea848493          	addi	s1,s1,-344 # 80005928 <_ZN3TCB7runningE>
    80001a88:	0004b783          	ld	a5,0(s1)
    80001a8c:	0087b703          	ld	a4,8(a5)
    80001a90:	0007b503          	ld	a0,0(a5)
    80001a94:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a98:	0004b503          	ld	a0,0(s1)
    void setFinished(bool value) { finished = value; }
    80001a9c:	00100793          	li	a5,1
    80001aa0:	02f50823          	sb	a5,48(a0)
    running->unblock();
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	f2c080e7          	jalr	-212(ra) # 800019d0 <_ZN3TCB7unblockEv>
    TCB::yield();
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	e14080e7          	jalr	-492(ra) # 800018c0 <_ZN3TCB5yieldEv>
}
    80001ab4:	01813083          	ld	ra,24(sp)
    80001ab8:	01013403          	ld	s0,16(sp)
    80001abc:	00813483          	ld	s1,8(sp)
    80001ac0:	02010113          	addi	sp,sp,32
    80001ac4:	00008067          	ret

0000000080001ac8 <_Znwm>:
#include "../h/syscall_c.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001ac8:	ff010113          	addi	sp,sp,-16
    80001acc:	00113423          	sd	ra,8(sp)
    80001ad0:	00813023          	sd	s0,0(sp)
    80001ad4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ad8:	fffff097          	auipc	ra,0xfffff
    80001adc:	6a8080e7          	jalr	1704(ra) # 80001180 <_Z9mem_allocm>
}
    80001ae0:	00813083          	ld	ra,8(sp)
    80001ae4:	00013403          	ld	s0,0(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret

0000000080001af0 <_Znam>:

void *operator new[](size_t n)
{
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00113423          	sd	ra,8(sp)
    80001af8:	00813023          	sd	s0,0(sp)
    80001afc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	680080e7          	jalr	1664(ra) # 80001180 <_Z9mem_allocm>
}
    80001b08:	00813083          	ld	ra,8(sp)
    80001b0c:	00013403          	ld	s0,0(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret

0000000080001b18 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00113423          	sd	ra,8(sp)
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	684080e7          	jalr	1668(ra) # 800011ac <_Z8mem_freePv>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00113423          	sd	ra,8(sp)
    80001b48:	00813023          	sd	s0,0(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	65c080e7          	jalr	1628(ra) # 800011ac <_Z8mem_freePv>
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/mem.h"

void Riscv::popSppSpie()
{
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16
    80001b74:	02000793          	li	a5,32
    80001b78:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);

    __asm__ volatile("csrw sepc, ra");
    80001b7c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001b80:	10200073          	sret
}
    80001b84:	00813403          	ld	s0,8(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001b90:	f9010113          	addi	sp,sp,-112
    80001b94:	06113423          	sd	ra,104(sp)
    80001b98:	06813023          	sd	s0,96(sp)
    80001b9c:	04913c23          	sd	s1,88(sp)
    80001ba0:	05213823          	sd	s2,80(sp)
    80001ba4:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ba8:	141027f3          	csrr	a5,sepc
    80001bac:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001bb0:	fc043783          	ld	a5,-64(s0)

    uint64 volatile sepc = r_sepc();
    80001bb4:	fcf43c23          	sd	a5,-40(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bb8:	100027f3          	csrr	a5,sstatus
    80001bbc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001bc0:	fb843783          	ld	a5,-72(s0)
    uint64 volatile sstatus= r_sstatus();
    80001bc4:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bc8:	142027f3          	csrr	a5,scause
    80001bcc:	faf43823          	sd	a5,-80(s0)
    return scause;
    80001bd0:	fb043783          	ld	a5,-80(s0)
    uint64 volatile scause = r_scause();
    80001bd4:	fcf43423          	sd	a5,-56(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001bd8:	fc843703          	ld	a4,-56(s0)
    80001bdc:	00800793          	li	a5,8
    80001be0:	04f70463          	beq	a4,a5,80001c28 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
    80001be4:	fc843703          	ld	a4,-56(s0)
    80001be8:	00900793          	li	a5,9
    80001bec:	02f70e63          	beq	a4,a5,80001c28 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);*/
    }
    else if (scause == 0x8000000000000001UL)
    80001bf0:	fc843703          	ld	a4,-56(s0)
    80001bf4:	fff00793          	li	a5,-1
    80001bf8:	03f79793          	slli	a5,a5,0x3f
    80001bfc:	00178793          	addi	a5,a5,1
    80001c00:	18f70a63          	beq	a4,a5,80001d94 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            TCB::dispatch();
        }
        mc_sip(SIP_SSIP);

    }
    else if (scause == 0x8000000000000009UL)
    80001c04:	fc843703          	ld	a4,-56(s0)
    80001c08:	fff00793          	li	a5,-1
    80001c0c:	03f79793          	slli	a5,a5,0x3f
    80001c10:	00978793          	addi	a5,a5,9
    80001c14:	1cf70863          	beq	a4,a5,80001de4 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        __putc('g');
    80001c18:	06700513          	li	a0,103
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	704080e7          	jalr	1796(ra) # 80004320 <__putc>
    80001c24:	0c00006f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        __asm__ volatile("mv %0, a0" : "=r" (CODE));
    80001c28:	00050793          	mv	a5,a0
    80001c2c:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("mv %0, a1" : "=r" (arg1));
    80001c30:	00058793          	mv	a5,a1
    80001c34:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile("mv %0, a2" : "=r" (arg2));
    80001c38:	00060793          	mv	a5,a2
    80001c3c:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("mv %0, a3" : "=r" (arg3));
    80001c40:	00068793          	mv	a5,a3
    80001c44:	faf43423          	sd	a5,-88(s0)
        sepc= sepc +4;
    80001c48:	fd843783          	ld	a5,-40(s0)
    80001c4c:	00478793          	addi	a5,a5,4
    80001c50:	fcf43c23          	sd	a5,-40(s0)
        if (CODE == SCALL_THREAD_CREATE){
    80001c54:	f9043703          	ld	a4,-112(s0)
    80001c58:	01100793          	li	a5,17
    80001c5c:	06f70c63          	beq	a4,a5,80001cd4 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
        }else if (CODE == SCALL_THREAD_DISPATCH){
    80001c60:	f9043703          	ld	a4,-112(s0)
    80001c64:	01300793          	li	a5,19
    80001c68:	0cf70063          	beq	a4,a5,80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        }else if (CODE==MEM_ALLOC){
    80001c6c:	f9043703          	ld	a4,-112(s0)
    80001c70:	00100793          	li	a5,1
    80001c74:	0cf70663          	beq	a4,a5,80001d40 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
        }else if (CODE==MEM_FREE){
    80001c78:	f9043703          	ld	a4,-112(s0)
    80001c7c:	00200793          	li	a5,2
    80001c80:	0cf70a63          	beq	a4,a5,80001d54 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
        }else if (CODE==SCALL_THREAD_EXIT){
    80001c84:	f9043703          	ld	a4,-112(s0)
    80001c88:	01200793          	li	a5,18
    80001c8c:	0cf70e63          	beq	a4,a5,80001d68 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        }else if (CODE== SCALL_THREAD_JOIN){
    80001c90:	f9043703          	ld	a4,-112(s0)
    80001c94:	01400793          	li	a5,20
    80001c98:	04f71663          	bne	a4,a5,80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB* p= TCB::running;
    80001c9c:	00004797          	auipc	a5,0x4
    80001ca0:	c247b783          	ld	a5,-988(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001ca4:	0007b483          	ld	s1,0(a5)
            TCB* target = (TCB*) arg1;
    80001ca8:	f9843503          	ld	a0,-104(s0)
    bool isFinished() const { return finished; }
    80001cac:	0304c903          	lbu	s2,48(s1)
    void setFinished(bool value) { finished = value; }
    80001cb0:	00100793          	li	a5,1
    80001cb4:	02f48823          	sb	a5,48(s1)
            target->block(p);
    80001cb8:	00048593          	mv	a1,s1
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	c94080e7          	jalr	-876(ra) # 80001950 <_ZN3TCB5blockEPS_>
            TCB::dispatch();
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	c24080e7          	jalr	-988(ra) # 800018e8 <_ZN3TCB8dispatchEv>
    80001ccc:	03248823          	sb	s2,48(s1)
    80001cd0:	0140006f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            handle = (thread_t*) arg1;
    80001cd4:	f9843483          	ld	s1,-104(s0)
            if (handle != nullptr){
    80001cd8:	02049a63          	bnez	s1,80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                rett=-1;
    80001cdc:	fff00793          	li	a5,-1
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001ce0:	04f43823          	sd	a5,80(s0)
    }
    w_sepc(sepc);
    80001ce4:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ce8:	14179073          	csrw	sepc,a5
    w_sstatus(sstatus);
    80001cec:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cf0:	10079073          	csrw	sstatus,a5
    80001cf4:	06813083          	ld	ra,104(sp)
    80001cf8:	06013403          	ld	s0,96(sp)
    80001cfc:	05813483          	ld	s1,88(sp)
    80001d00:	05013903          	ld	s2,80(sp)
    80001d04:	07010113          	addi	sp,sp,112
    80001d08:	00008067          	ret
                *handle = TCB::createThread(reinterpret_cast<void (*) (void*)>(arg2),(void*)arg3);
    80001d0c:	fa043503          	ld	a0,-96(s0)
    80001d10:	fa843583          	ld	a1,-88(s0)
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	ac4080e7          	jalr	-1340(ra) # 800017d8 <_ZN3TCB12createThreadEPFvPvES0_>
    80001d1c:	00a4b023          	sd	a0,0(s1)
                rett=0;
    80001d20:	00000793          	li	a5,0
    80001d24:	fbdff06f          	j	80001ce0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            TCB::timeSliceCounter=0;
    80001d28:	00004797          	auipc	a5,0x4
    80001d2c:	b787b783          	ld	a5,-1160(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d30:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	bb4080e7          	jalr	-1100(ra) # 800018e8 <_ZN3TCB8dispatchEv>
    80001d3c:	fa9ff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            void* re = __mem_alloc(arg1);
    80001d40:	f9843503          	ld	a0,-104(s0)
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	484080e7          	jalr	1156(ra) # 800041c8 <__mem_alloc>
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(re));
    80001d4c:	04a43823          	sd	a0,80(s0)
    80001d50:	f95ff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            void* tmp = (void*) arg1;
    80001d54:	f9843503          	ld	a0,-104(s0)
            rett = __mem_free(tmp);
    80001d58:	00002097          	auipc	ra,0x2
    80001d5c:	3a4080e7          	jalr	932(ra) # 800040fc <__mem_free>
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
    80001d60:	04a43823          	sd	a0,80(s0)
    80001d64:	f81ff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::running->setFinished(true);
    80001d68:	00004797          	auipc	a5,0x4
    80001d6c:	b587b783          	ld	a5,-1192(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d70:	0007b783          	ld	a5,0(a5)
    80001d74:	00100713          	li	a4,1
    80001d78:	02e78823          	sb	a4,48(a5)
            TCB::timeSliceCounter=0;
    80001d7c:	00004797          	auipc	a5,0x4
    80001d80:	b247b783          	ld	a5,-1244(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d84:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	b60080e7          	jalr	-1184(ra) # 800018e8 <_ZN3TCB8dispatchEv>
    80001d90:	f55ff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        TCB::timeSliceCounter++;
    80001d94:	00004717          	auipc	a4,0x4
    80001d98:	b0c73703          	ld	a4,-1268(a4) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d9c:	00073783          	ld	a5,0(a4)
    80001da0:	00178793          	addi	a5,a5,1
    80001da4:	00f73023          	sd	a5,0(a4)
        if (TCB::running != nullptr && TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001da8:	00004717          	auipc	a4,0x4
    80001dac:	b1873703          	ld	a4,-1256(a4) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001db0:	00073703          	ld	a4,0(a4)
    80001db4:	00070663          	beqz	a4,80001dc0 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
    uint64 getTimeSlice() const { return timeSlice; }
    80001db8:	02873703          	ld	a4,40(a4)
    80001dbc:	00e7f863          	bgeu	a5,a4,80001dcc <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001dc0:	00200793          	li	a5,2
    80001dc4:	1447b073          	csrc	sip,a5
}
    80001dc8:	f1dff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::timeSliceCounter=0;
    80001dcc:	00004797          	auipc	a5,0x4
    80001dd0:	ad47b783          	ld	a5,-1324(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dd4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	b10080e7          	jalr	-1264(ra) # 800018e8 <_ZN3TCB8dispatchEv>
    80001de0:	fe1ff06f          	j	80001dc0 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        console_handler();
    80001de4:	00002097          	auipc	ra,0x2
    80001de8:	5b0080e7          	jalr	1456(ra) # 80004394 <console_handler>
    80001dec:	ef9ff06f          	j	80001ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>

0000000080001df0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00813423          	sd	s0,8(sp)
    80001df8:	01010413          	addi	s0,sp,16
    80001dfc:	00100793          	li	a5,1
    80001e00:	00f50863          	beq	a0,a5,80001e10 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e04:	00813403          	ld	s0,8(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret
    80001e10:	000107b7          	lui	a5,0x10
    80001e14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e18:	fef596e3          	bne	a1,a5,80001e04 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001e1c:	00004797          	auipc	a5,0x4
    80001e20:	b1c78793          	addi	a5,a5,-1252 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001e24:	0007b023          	sd	zero,0(a5)
    80001e28:	0007b423          	sd	zero,8(a5)
    80001e2c:	0007b823          	sd	zero,16(a5)
    80001e30:	0007ac23          	sw	zero,24(a5)
    80001e34:	fd1ff06f          	j	80001e04 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e38 <_ZN9Scheduler3getEv>:
{
    80001e38:	fe010113          	addi	sp,sp,-32
    80001e3c:	00113c23          	sd	ra,24(sp)
    80001e40:	00813823          	sd	s0,16(sp)
    80001e44:	00913423          	sd	s1,8(sp)
    80001e48:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001e4c:	00004517          	auipc	a0,0x4
    80001e50:	aec53503          	ld	a0,-1300(a0) # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001e54:	04050c63          	beqz	a0,80001eac <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80001e58:	00853783          	ld	a5,8(a0)
    80001e5c:	00004717          	auipc	a4,0x4
    80001e60:	acf73e23          	sd	a5,-1316(a4) # 80005938 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001e64:	02078e63          	beqz	a5,80001ea0 <_ZN9Scheduler3getEv+0x68>
        T *ret = elem->data;
    80001e68:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	cac080e7          	jalr	-852(ra) # 80001b18 <_ZdlPv>
        size--;
    80001e74:	00004717          	auipc	a4,0x4
    80001e78:	ac470713          	addi	a4,a4,-1340 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001e7c:	01872783          	lw	a5,24(a4)
    80001e80:	fff7879b          	addiw	a5,a5,-1
    80001e84:	00f72c23          	sw	a5,24(a4)
}
    80001e88:	00048513          	mv	a0,s1
    80001e8c:	01813083          	ld	ra,24(sp)
    80001e90:	01013403          	ld	s0,16(sp)
    80001e94:	00813483          	ld	s1,8(sp)
    80001e98:	02010113          	addi	sp,sp,32
    80001e9c:	00008067          	ret
        if (!head) { tail = 0; }
    80001ea0:	00004797          	auipc	a5,0x4
    80001ea4:	aa07b023          	sd	zero,-1376(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ea8:	fc1ff06f          	j	80001e68 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001eac:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001eb0:	fd9ff06f          	j	80001e88 <_ZN9Scheduler3getEv+0x50>

0000000080001eb4 <_ZN9Scheduler3putEP3TCB>:
{
    80001eb4:	fe010113          	addi	sp,sp,-32
    80001eb8:	00113c23          	sd	ra,24(sp)
    80001ebc:	00813823          	sd	s0,16(sp)
    80001ec0:	00913423          	sd	s1,8(sp)
    80001ec4:	02010413          	addi	s0,sp,32
    80001ec8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001ecc:	01000513          	li	a0,16
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	bf8080e7          	jalr	-1032(ra) # 80001ac8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ed8:	00953023          	sd	s1,0(a0)
    80001edc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ee0:	00004797          	auipc	a5,0x4
    80001ee4:	a607b783          	ld	a5,-1440(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ee8:	02078c63          	beqz	a5,80001f20 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80001eec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ef0:	00004797          	auipc	a5,0x4
    80001ef4:	a4a7b823          	sd	a0,-1456(a5) # 80005940 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80001ef8:	00004717          	auipc	a4,0x4
    80001efc:	a4070713          	addi	a4,a4,-1472 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001f00:	01872783          	lw	a5,24(a4)
    80001f04:	0017879b          	addiw	a5,a5,1
    80001f08:	00f72c23          	sw	a5,24(a4)
}
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	01013403          	ld	s0,16(sp)
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	02010113          	addi	sp,sp,32
    80001f1c:	00008067          	ret
            head = tail = elem;
    80001f20:	00004797          	auipc	a5,0x4
    80001f24:	a1878793          	addi	a5,a5,-1512 # 80005938 <_ZN9Scheduler16readyThreadQueueE>
    80001f28:	00a7b423          	sd	a0,8(a5)
    80001f2c:	00a7b023          	sd	a0,0(a5)
    80001f30:	fc9ff06f          	j	80001ef8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001f34 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	000105b7          	lui	a1,0x10
    80001f48:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f4c:	00100513          	li	a0,1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	ea0080e7          	jalr	-352(ra) # 80001df0 <_Z41__static_initialization_and_destruction_0ii>
    80001f58:	00813083          	ld	ra,8(sp)
    80001f5c:	00013403          	ld	s0,0(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f68:	fe010113          	addi	sp,sp,-32
    80001f6c:	00113c23          	sd	ra,24(sp)
    80001f70:	00813823          	sd	s0,16(sp)
    80001f74:	00913423          	sd	s1,8(sp)
    80001f78:	02010413          	addi	s0,sp,32
    80001f7c:	00050493          	mv	s1,a0

    while (*string != '\0')
    80001f80:	0004c503          	lbu	a0,0(s1)
    80001f84:	00050a63          	beqz	a0,80001f98 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80001f88:	00002097          	auipc	ra,0x2
    80001f8c:	398080e7          	jalr	920(ra) # 80004320 <__putc>
        string++;
    80001f90:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f94:	fedff06f          	j	80001f80 <_Z11printStringPKc+0x18>
    }
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001fac:	fd010113          	addi	sp,sp,-48
    80001fb0:	02113423          	sd	ra,40(sp)
    80001fb4:	02813023          	sd	s0,32(sp)
    80001fb8:	00913c23          	sd	s1,24(sp)
    80001fbc:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001fc0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001fc4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001fc8:	00a00613          	li	a2,10
    80001fcc:	02c5773b          	remuw	a4,a0,a2
    80001fd0:	02071693          	slli	a3,a4,0x20
    80001fd4:	0206d693          	srli	a3,a3,0x20
    80001fd8:	00003717          	auipc	a4,0x3
    80001fdc:	10070713          	addi	a4,a4,256 # 800050d8 <_ZZ12printIntegermE6digits>
    80001fe0:	00d70733          	add	a4,a4,a3
    80001fe4:	00074703          	lbu	a4,0(a4)
    80001fe8:	fe040693          	addi	a3,s0,-32
    80001fec:	009687b3          	add	a5,a3,s1
    80001ff0:	0014849b          	addiw	s1,s1,1
    80001ff4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ff8:	0005071b          	sext.w	a4,a0
    80001ffc:	02c5553b          	divuw	a0,a0,a2
    80002000:	00900793          	li	a5,9
    80002004:	fce7e2e3          	bltu	a5,a4,80001fc8 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002008:	fff4849b          	addiw	s1,s1,-1
    8000200c:	0004ce63          	bltz	s1,80002028 <_Z12printIntegerm+0x7c>
    80002010:	fe040793          	addi	a5,s0,-32
    80002014:	009787b3          	add	a5,a5,s1
    80002018:	ff07c503          	lbu	a0,-16(a5)
    8000201c:	00002097          	auipc	ra,0x2
    80002020:	304080e7          	jalr	772(ra) # 80004320 <__putc>
    80002024:	fe5ff06f          	j	80002008 <_Z12printIntegerm+0x5c>
    80002028:	02813083          	ld	ra,40(sp)
    8000202c:	02013403          	ld	s0,32(sp)
    80002030:	01813483          	ld	s1,24(sp)
    80002034:	03010113          	addi	sp,sp,48
    80002038:	00008067          	ret

000000008000203c <start>:
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    80002048:	300027f3          	csrr	a5,mstatus
    8000204c:	ffffe737          	lui	a4,0xffffe
    80002050:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c2f>
    80002054:	00e7f7b3          	and	a5,a5,a4
    80002058:	00001737          	lui	a4,0x1
    8000205c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002060:	00e7e7b3          	or	a5,a5,a4
    80002064:	30079073          	csrw	mstatus,a5
    80002068:	00000797          	auipc	a5,0x0
    8000206c:	16078793          	addi	a5,a5,352 # 800021c8 <system_main>
    80002070:	34179073          	csrw	mepc,a5
    80002074:	00000793          	li	a5,0
    80002078:	18079073          	csrw	satp,a5
    8000207c:	000107b7          	lui	a5,0x10
    80002080:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002084:	30279073          	csrw	medeleg,a5
    80002088:	30379073          	csrw	mideleg,a5
    8000208c:	104027f3          	csrr	a5,sie
    80002090:	2227e793          	ori	a5,a5,546
    80002094:	10479073          	csrw	sie,a5
    80002098:	fff00793          	li	a5,-1
    8000209c:	00a7d793          	srli	a5,a5,0xa
    800020a0:	3b079073          	csrw	pmpaddr0,a5
    800020a4:	00f00793          	li	a5,15
    800020a8:	3a079073          	csrw	pmpcfg0,a5
    800020ac:	f14027f3          	csrr	a5,mhartid
    800020b0:	0200c737          	lui	a4,0x200c
    800020b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020b8:	0007869b          	sext.w	a3,a5
    800020bc:	00269713          	slli	a4,a3,0x2
    800020c0:	000f4637          	lui	a2,0xf4
    800020c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020c8:	00d70733          	add	a4,a4,a3
    800020cc:	0037979b          	slliw	a5,a5,0x3
    800020d0:	020046b7          	lui	a3,0x2004
    800020d4:	00d787b3          	add	a5,a5,a3
    800020d8:	00c585b3          	add	a1,a1,a2
    800020dc:	00371693          	slli	a3,a4,0x3
    800020e0:	00004717          	auipc	a4,0x4
    800020e4:	88070713          	addi	a4,a4,-1920 # 80005960 <timer_scratch>
    800020e8:	00b7b023          	sd	a1,0(a5)
    800020ec:	00d70733          	add	a4,a4,a3
    800020f0:	00f73c23          	sd	a5,24(a4)
    800020f4:	02c73023          	sd	a2,32(a4)
    800020f8:	34071073          	csrw	mscratch,a4
    800020fc:	00000797          	auipc	a5,0x0
    80002100:	6e478793          	addi	a5,a5,1764 # 800027e0 <timervec>
    80002104:	30579073          	csrw	mtvec,a5
    80002108:	300027f3          	csrr	a5,mstatus
    8000210c:	0087e793          	ori	a5,a5,8
    80002110:	30079073          	csrw	mstatus,a5
    80002114:	304027f3          	csrr	a5,mie
    80002118:	0807e793          	ori	a5,a5,128
    8000211c:	30479073          	csrw	mie,a5
    80002120:	f14027f3          	csrr	a5,mhartid
    80002124:	0007879b          	sext.w	a5,a5
    80002128:	00078213          	mv	tp,a5
    8000212c:	30200073          	mret
    80002130:	00813403          	ld	s0,8(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <timerinit>:
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	f14027f3          	csrr	a5,mhartid
    8000214c:	0200c737          	lui	a4,0x200c
    80002150:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002154:	0007869b          	sext.w	a3,a5
    80002158:	00269713          	slli	a4,a3,0x2
    8000215c:	000f4637          	lui	a2,0xf4
    80002160:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002164:	00d70733          	add	a4,a4,a3
    80002168:	0037979b          	slliw	a5,a5,0x3
    8000216c:	020046b7          	lui	a3,0x2004
    80002170:	00d787b3          	add	a5,a5,a3
    80002174:	00c585b3          	add	a1,a1,a2
    80002178:	00371693          	slli	a3,a4,0x3
    8000217c:	00003717          	auipc	a4,0x3
    80002180:	7e470713          	addi	a4,a4,2020 # 80005960 <timer_scratch>
    80002184:	00b7b023          	sd	a1,0(a5)
    80002188:	00d70733          	add	a4,a4,a3
    8000218c:	00f73c23          	sd	a5,24(a4)
    80002190:	02c73023          	sd	a2,32(a4)
    80002194:	34071073          	csrw	mscratch,a4
    80002198:	00000797          	auipc	a5,0x0
    8000219c:	64878793          	addi	a5,a5,1608 # 800027e0 <timervec>
    800021a0:	30579073          	csrw	mtvec,a5
    800021a4:	300027f3          	csrr	a5,mstatus
    800021a8:	0087e793          	ori	a5,a5,8
    800021ac:	30079073          	csrw	mstatus,a5
    800021b0:	304027f3          	csrr	a5,mie
    800021b4:	0807e793          	ori	a5,a5,128
    800021b8:	30479073          	csrw	mie,a5
    800021bc:	00813403          	ld	s0,8(sp)
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret

00000000800021c8 <system_main>:
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	02010413          	addi	s0,sp,32
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	0c4080e7          	jalr	196(ra) # 800022a0 <cpuid>
    800021e4:	00003497          	auipc	s1,0x3
    800021e8:	70c48493          	addi	s1,s1,1804 # 800058f0 <started>
    800021ec:	02050263          	beqz	a0,80002210 <system_main+0x48>
    800021f0:	0004a783          	lw	a5,0(s1)
    800021f4:	0007879b          	sext.w	a5,a5
    800021f8:	fe078ce3          	beqz	a5,800021f0 <system_main+0x28>
    800021fc:	0ff0000f          	fence
    80002200:	00003517          	auipc	a0,0x3
    80002204:	f1850513          	addi	a0,a0,-232 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	a74080e7          	jalr	-1420(ra) # 80002c7c <panic>
    80002210:	00001097          	auipc	ra,0x1
    80002214:	9c8080e7          	jalr	-1592(ra) # 80002bd8 <consoleinit>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	154080e7          	jalr	340(ra) # 8000336c <printfinit>
    80002220:	00003517          	auipc	a0,0x3
    80002224:	eb050513          	addi	a0,a0,-336 # 800050d0 <kvmincrease+0xc90>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	ab0080e7          	jalr	-1360(ra) # 80002cd8 <__printf>
    80002230:	00003517          	auipc	a0,0x3
    80002234:	eb850513          	addi	a0,a0,-328 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	aa0080e7          	jalr	-1376(ra) # 80002cd8 <__printf>
    80002240:	00003517          	auipc	a0,0x3
    80002244:	e9050513          	addi	a0,a0,-368 # 800050d0 <kvmincrease+0xc90>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	a90080e7          	jalr	-1392(ra) # 80002cd8 <__printf>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	4a8080e7          	jalr	1192(ra) # 800036f8 <kinit>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	148080e7          	jalr	328(ra) # 800023a0 <trapinit>
    80002260:	00000097          	auipc	ra,0x0
    80002264:	16c080e7          	jalr	364(ra) # 800023cc <trapinithart>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	5b8080e7          	jalr	1464(ra) # 80002820 <plicinit>
    80002270:	00000097          	auipc	ra,0x0
    80002274:	5d8080e7          	jalr	1496(ra) # 80002848 <plicinithart>
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	078080e7          	jalr	120(ra) # 800022f0 <userinit>
    80002280:	0ff0000f          	fence
    80002284:	00100793          	li	a5,1
    80002288:	00003517          	auipc	a0,0x3
    8000228c:	e7850513          	addi	a0,a0,-392 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80002290:	00f4a023          	sw	a5,0(s1)
    80002294:	00001097          	auipc	ra,0x1
    80002298:	a44080e7          	jalr	-1468(ra) # 80002cd8 <__printf>
    8000229c:	0000006f          	j	8000229c <system_main+0xd4>

00000000800022a0 <cpuid>:
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	00020513          	mv	a0,tp
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	0005051b          	sext.w	a0,a0
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <mycpu>:
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    800022cc:	00020793          	mv	a5,tp
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	0007879b          	sext.w	a5,a5
    800022d8:	00779793          	slli	a5,a5,0x7
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	6b450513          	addi	a0,a0,1716 # 80006990 <cpus>
    800022e4:	00f50533          	add	a0,a0,a5
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <userinit>:
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00813423          	sd	s0,8(sp)
    800022f8:	01010413          	addi	s0,sp,16
    800022fc:	00813403          	ld	s0,8(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	fffff317          	auipc	t1,0xfffff
    80002308:	32c30067          	jr	812(t1) # 80001630 <main>

000000008000230c <either_copyout>:
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    8000231c:	02051663          	bnez	a0,80002348 <either_copyout+0x3c>
    80002320:	00058513          	mv	a0,a1
    80002324:	00060593          	mv	a1,a2
    80002328:	0006861b          	sext.w	a2,a3
    8000232c:	00002097          	auipc	ra,0x2
    80002330:	c58080e7          	jalr	-936(ra) # 80003f84 <__memmove>
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	00000513          	li	a0,0
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret
    80002348:	00003517          	auipc	a0,0x3
    8000234c:	df850513          	addi	a0,a0,-520 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	92c080e7          	jalr	-1748(ra) # 80002c7c <panic>

0000000080002358 <either_copyin>:
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00813023          	sd	s0,0(sp)
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    80002368:	02059463          	bnez	a1,80002390 <either_copyin+0x38>
    8000236c:	00060593          	mv	a1,a2
    80002370:	0006861b          	sext.w	a2,a3
    80002374:	00002097          	auipc	ra,0x2
    80002378:	c10080e7          	jalr	-1008(ra) # 80003f84 <__memmove>
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	00000513          	li	a0,0
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret
    80002390:	00003517          	auipc	a0,0x3
    80002394:	dd850513          	addi	a0,a0,-552 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	8e4080e7          	jalr	-1820(ra) # 80002c7c <panic>

00000000800023a0 <trapinit>:
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    800023ac:	00813403          	ld	s0,8(sp)
    800023b0:	00003597          	auipc	a1,0x3
    800023b4:	de058593          	addi	a1,a1,-544 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    800023b8:	00004517          	auipc	a0,0x4
    800023bc:	65850513          	addi	a0,a0,1624 # 80006a10 <tickslock>
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00001317          	auipc	t1,0x1
    800023c8:	5c430067          	jr	1476(t1) # 80003988 <initlock>

00000000800023cc <trapinithart>:
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    800023d8:	00000797          	auipc	a5,0x0
    800023dc:	2f878793          	addi	a5,a5,760 # 800026d0 <kernelvec>
    800023e0:	10579073          	csrw	stvec,a5
    800023e4:	00813403          	ld	s0,8(sp)
    800023e8:	01010113          	addi	sp,sp,16
    800023ec:	00008067          	ret

00000000800023f0 <usertrap>:
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00813423          	sd	s0,8(sp)
    800023f8:	01010413          	addi	s0,sp,16
    800023fc:	00813403          	ld	s0,8(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <usertrapret>:
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00813423          	sd	s0,8(sp)
    80002410:	01010413          	addi	s0,sp,16
    80002414:	00813403          	ld	s0,8(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <kerneltrap>:
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	02010413          	addi	s0,sp,32
    80002434:	142025f3          	csrr	a1,scause
    80002438:	100027f3          	csrr	a5,sstatus
    8000243c:	0027f793          	andi	a5,a5,2
    80002440:	10079c63          	bnez	a5,80002558 <kerneltrap+0x138>
    80002444:	142027f3          	csrr	a5,scause
    80002448:	0207ce63          	bltz	a5,80002484 <kerneltrap+0x64>
    8000244c:	00003517          	auipc	a0,0x3
    80002450:	d8c50513          	addi	a0,a0,-628 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	884080e7          	jalr	-1916(ra) # 80002cd8 <__printf>
    8000245c:	141025f3          	csrr	a1,sepc
    80002460:	14302673          	csrr	a2,stval
    80002464:	00003517          	auipc	a0,0x3
    80002468:	d8450513          	addi	a0,a0,-636 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	86c080e7          	jalr	-1940(ra) # 80002cd8 <__printf>
    80002474:	00003517          	auipc	a0,0x3
    80002478:	d8c50513          	addi	a0,a0,-628 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	800080e7          	jalr	-2048(ra) # 80002c7c <panic>
    80002484:	0ff7f713          	andi	a4,a5,255
    80002488:	00900693          	li	a3,9
    8000248c:	04d70063          	beq	a4,a3,800024cc <kerneltrap+0xac>
    80002490:	fff00713          	li	a4,-1
    80002494:	03f71713          	slli	a4,a4,0x3f
    80002498:	00170713          	addi	a4,a4,1
    8000249c:	fae798e3          	bne	a5,a4,8000244c <kerneltrap+0x2c>
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	e00080e7          	jalr	-512(ra) # 800022a0 <cpuid>
    800024a8:	06050663          	beqz	a0,80002514 <kerneltrap+0xf4>
    800024ac:	144027f3          	csrr	a5,sip
    800024b0:	ffd7f793          	andi	a5,a5,-3
    800024b4:	14479073          	csrw	sip,a5
    800024b8:	01813083          	ld	ra,24(sp)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	00813483          	ld	s1,8(sp)
    800024c4:	02010113          	addi	sp,sp,32
    800024c8:	00008067          	ret
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	3c8080e7          	jalr	968(ra) # 80002894 <plic_claim>
    800024d4:	00a00793          	li	a5,10
    800024d8:	00050493          	mv	s1,a0
    800024dc:	06f50863          	beq	a0,a5,8000254c <kerneltrap+0x12c>
    800024e0:	fc050ce3          	beqz	a0,800024b8 <kerneltrap+0x98>
    800024e4:	00050593          	mv	a1,a0
    800024e8:	00003517          	auipc	a0,0x3
    800024ec:	cd050513          	addi	a0,a0,-816 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	7e8080e7          	jalr	2024(ra) # 80002cd8 <__printf>
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	00048513          	mv	a0,s1
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00000317          	auipc	t1,0x0
    80002510:	3c030067          	jr	960(t1) # 800028cc <plic_complete>
    80002514:	00004517          	auipc	a0,0x4
    80002518:	4fc50513          	addi	a0,a0,1276 # 80006a10 <tickslock>
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	490080e7          	jalr	1168(ra) # 800039ac <acquire>
    80002524:	00003717          	auipc	a4,0x3
    80002528:	3d070713          	addi	a4,a4,976 # 800058f4 <ticks>
    8000252c:	00072783          	lw	a5,0(a4)
    80002530:	00004517          	auipc	a0,0x4
    80002534:	4e050513          	addi	a0,a0,1248 # 80006a10 <tickslock>
    80002538:	0017879b          	addiw	a5,a5,1
    8000253c:	00f72023          	sw	a5,0(a4)
    80002540:	00001097          	auipc	ra,0x1
    80002544:	538080e7          	jalr	1336(ra) # 80003a78 <release>
    80002548:	f65ff06f          	j	800024ac <kerneltrap+0x8c>
    8000254c:	00001097          	auipc	ra,0x1
    80002550:	094080e7          	jalr	148(ra) # 800035e0 <uartintr>
    80002554:	fa5ff06f          	j	800024f8 <kerneltrap+0xd8>
    80002558:	00003517          	auipc	a0,0x3
    8000255c:	c4050513          	addi	a0,a0,-960 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    80002560:	00000097          	auipc	ra,0x0
    80002564:	71c080e7          	jalr	1820(ra) # 80002c7c <panic>

0000000080002568 <clockintr>:
    80002568:	fe010113          	addi	sp,sp,-32
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	02010413          	addi	s0,sp,32
    8000257c:	00004497          	auipc	s1,0x4
    80002580:	49448493          	addi	s1,s1,1172 # 80006a10 <tickslock>
    80002584:	00048513          	mv	a0,s1
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	424080e7          	jalr	1060(ra) # 800039ac <acquire>
    80002590:	00003717          	auipc	a4,0x3
    80002594:	36470713          	addi	a4,a4,868 # 800058f4 <ticks>
    80002598:	00072783          	lw	a5,0(a4)
    8000259c:	01013403          	ld	s0,16(sp)
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	00048513          	mv	a0,s1
    800025a8:	0017879b          	addiw	a5,a5,1
    800025ac:	00813483          	ld	s1,8(sp)
    800025b0:	00f72023          	sw	a5,0(a4)
    800025b4:	02010113          	addi	sp,sp,32
    800025b8:	00001317          	auipc	t1,0x1
    800025bc:	4c030067          	jr	1216(t1) # 80003a78 <release>

00000000800025c0 <devintr>:
    800025c0:	142027f3          	csrr	a5,scause
    800025c4:	00000513          	li	a0,0
    800025c8:	0007c463          	bltz	a5,800025d0 <devintr+0x10>
    800025cc:	00008067          	ret
    800025d0:	fe010113          	addi	sp,sp,-32
    800025d4:	00813823          	sd	s0,16(sp)
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00913423          	sd	s1,8(sp)
    800025e0:	02010413          	addi	s0,sp,32
    800025e4:	0ff7f713          	andi	a4,a5,255
    800025e8:	00900693          	li	a3,9
    800025ec:	04d70c63          	beq	a4,a3,80002644 <devintr+0x84>
    800025f0:	fff00713          	li	a4,-1
    800025f4:	03f71713          	slli	a4,a4,0x3f
    800025f8:	00170713          	addi	a4,a4,1
    800025fc:	00e78c63          	beq	a5,a4,80002614 <devintr+0x54>
    80002600:	01813083          	ld	ra,24(sp)
    80002604:	01013403          	ld	s0,16(sp)
    80002608:	00813483          	ld	s1,8(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret
    80002614:	00000097          	auipc	ra,0x0
    80002618:	c8c080e7          	jalr	-884(ra) # 800022a0 <cpuid>
    8000261c:	06050663          	beqz	a0,80002688 <devintr+0xc8>
    80002620:	144027f3          	csrr	a5,sip
    80002624:	ffd7f793          	andi	a5,a5,-3
    80002628:	14479073          	csrw	sip,a5
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00200513          	li	a0,2
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret
    80002644:	00000097          	auipc	ra,0x0
    80002648:	250080e7          	jalr	592(ra) # 80002894 <plic_claim>
    8000264c:	00a00793          	li	a5,10
    80002650:	00050493          	mv	s1,a0
    80002654:	06f50663          	beq	a0,a5,800026c0 <devintr+0x100>
    80002658:	00100513          	li	a0,1
    8000265c:	fa0482e3          	beqz	s1,80002600 <devintr+0x40>
    80002660:	00048593          	mv	a1,s1
    80002664:	00003517          	auipc	a0,0x3
    80002668:	b5450513          	addi	a0,a0,-1196 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	66c080e7          	jalr	1644(ra) # 80002cd8 <__printf>
    80002674:	00048513          	mv	a0,s1
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	254080e7          	jalr	596(ra) # 800028cc <plic_complete>
    80002680:	00100513          	li	a0,1
    80002684:	f7dff06f          	j	80002600 <devintr+0x40>
    80002688:	00004517          	auipc	a0,0x4
    8000268c:	38850513          	addi	a0,a0,904 # 80006a10 <tickslock>
    80002690:	00001097          	auipc	ra,0x1
    80002694:	31c080e7          	jalr	796(ra) # 800039ac <acquire>
    80002698:	00003717          	auipc	a4,0x3
    8000269c:	25c70713          	addi	a4,a4,604 # 800058f4 <ticks>
    800026a0:	00072783          	lw	a5,0(a4)
    800026a4:	00004517          	auipc	a0,0x4
    800026a8:	36c50513          	addi	a0,a0,876 # 80006a10 <tickslock>
    800026ac:	0017879b          	addiw	a5,a5,1
    800026b0:	00f72023          	sw	a5,0(a4)
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	3c4080e7          	jalr	964(ra) # 80003a78 <release>
    800026bc:	f65ff06f          	j	80002620 <devintr+0x60>
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	f20080e7          	jalr	-224(ra) # 800035e0 <uartintr>
    800026c8:	fadff06f          	j	80002674 <devintr+0xb4>
    800026cc:	0000                	unimp
	...

00000000800026d0 <kernelvec>:
    800026d0:	f0010113          	addi	sp,sp,-256
    800026d4:	00113023          	sd	ra,0(sp)
    800026d8:	00213423          	sd	sp,8(sp)
    800026dc:	00313823          	sd	gp,16(sp)
    800026e0:	00413c23          	sd	tp,24(sp)
    800026e4:	02513023          	sd	t0,32(sp)
    800026e8:	02613423          	sd	t1,40(sp)
    800026ec:	02713823          	sd	t2,48(sp)
    800026f0:	02813c23          	sd	s0,56(sp)
    800026f4:	04913023          	sd	s1,64(sp)
    800026f8:	04a13423          	sd	a0,72(sp)
    800026fc:	04b13823          	sd	a1,80(sp)
    80002700:	04c13c23          	sd	a2,88(sp)
    80002704:	06d13023          	sd	a3,96(sp)
    80002708:	06e13423          	sd	a4,104(sp)
    8000270c:	06f13823          	sd	a5,112(sp)
    80002710:	07013c23          	sd	a6,120(sp)
    80002714:	09113023          	sd	a7,128(sp)
    80002718:	09213423          	sd	s2,136(sp)
    8000271c:	09313823          	sd	s3,144(sp)
    80002720:	09413c23          	sd	s4,152(sp)
    80002724:	0b513023          	sd	s5,160(sp)
    80002728:	0b613423          	sd	s6,168(sp)
    8000272c:	0b713823          	sd	s7,176(sp)
    80002730:	0b813c23          	sd	s8,184(sp)
    80002734:	0d913023          	sd	s9,192(sp)
    80002738:	0da13423          	sd	s10,200(sp)
    8000273c:	0db13823          	sd	s11,208(sp)
    80002740:	0dc13c23          	sd	t3,216(sp)
    80002744:	0fd13023          	sd	t4,224(sp)
    80002748:	0fe13423          	sd	t5,232(sp)
    8000274c:	0ff13823          	sd	t6,240(sp)
    80002750:	cd1ff0ef          	jal	ra,80002420 <kerneltrap>
    80002754:	00013083          	ld	ra,0(sp)
    80002758:	00813103          	ld	sp,8(sp)
    8000275c:	01013183          	ld	gp,16(sp)
    80002760:	02013283          	ld	t0,32(sp)
    80002764:	02813303          	ld	t1,40(sp)
    80002768:	03013383          	ld	t2,48(sp)
    8000276c:	03813403          	ld	s0,56(sp)
    80002770:	04013483          	ld	s1,64(sp)
    80002774:	04813503          	ld	a0,72(sp)
    80002778:	05013583          	ld	a1,80(sp)
    8000277c:	05813603          	ld	a2,88(sp)
    80002780:	06013683          	ld	a3,96(sp)
    80002784:	06813703          	ld	a4,104(sp)
    80002788:	07013783          	ld	a5,112(sp)
    8000278c:	07813803          	ld	a6,120(sp)
    80002790:	08013883          	ld	a7,128(sp)
    80002794:	08813903          	ld	s2,136(sp)
    80002798:	09013983          	ld	s3,144(sp)
    8000279c:	09813a03          	ld	s4,152(sp)
    800027a0:	0a013a83          	ld	s5,160(sp)
    800027a4:	0a813b03          	ld	s6,168(sp)
    800027a8:	0b013b83          	ld	s7,176(sp)
    800027ac:	0b813c03          	ld	s8,184(sp)
    800027b0:	0c013c83          	ld	s9,192(sp)
    800027b4:	0c813d03          	ld	s10,200(sp)
    800027b8:	0d013d83          	ld	s11,208(sp)
    800027bc:	0d813e03          	ld	t3,216(sp)
    800027c0:	0e013e83          	ld	t4,224(sp)
    800027c4:	0e813f03          	ld	t5,232(sp)
    800027c8:	0f013f83          	ld	t6,240(sp)
    800027cc:	10010113          	addi	sp,sp,256
    800027d0:	10200073          	sret
    800027d4:	00000013          	nop
    800027d8:	00000013          	nop
    800027dc:	00000013          	nop

00000000800027e0 <timervec>:
    800027e0:	34051573          	csrrw	a0,mscratch,a0
    800027e4:	00b53023          	sd	a1,0(a0)
    800027e8:	00c53423          	sd	a2,8(a0)
    800027ec:	00d53823          	sd	a3,16(a0)
    800027f0:	01853583          	ld	a1,24(a0)
    800027f4:	02053603          	ld	a2,32(a0)
    800027f8:	0005b683          	ld	a3,0(a1)
    800027fc:	00c686b3          	add	a3,a3,a2
    80002800:	00d5b023          	sd	a3,0(a1)
    80002804:	00200593          	li	a1,2
    80002808:	14459073          	csrw	sip,a1
    8000280c:	01053683          	ld	a3,16(a0)
    80002810:	00853603          	ld	a2,8(a0)
    80002814:	00053583          	ld	a1,0(a0)
    80002818:	34051573          	csrrw	a0,mscratch,a0
    8000281c:	30200073          	mret

0000000080002820 <plicinit>:
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
    8000282c:	00813403          	ld	s0,8(sp)
    80002830:	0c0007b7          	lui	a5,0xc000
    80002834:	00100713          	li	a4,1
    80002838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000283c:	00e7a223          	sw	a4,4(a5)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <plicinithart>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	01010413          	addi	s0,sp,16
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	a48080e7          	jalr	-1464(ra) # 800022a0 <cpuid>
    80002860:	0085171b          	slliw	a4,a0,0x8
    80002864:	0c0027b7          	lui	a5,0xc002
    80002868:	00e787b3          	add	a5,a5,a4
    8000286c:	40200713          	li	a4,1026
    80002870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	00d5151b          	slliw	a0,a0,0xd
    80002880:	0c2017b7          	lui	a5,0xc201
    80002884:	00a78533          	add	a0,a5,a0
    80002888:	00052023          	sw	zero,0(a0)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret

0000000080002894 <plic_claim>:
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	9fc080e7          	jalr	-1540(ra) # 800022a0 <cpuid>
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	00d5151b          	slliw	a0,a0,0xd
    800028b8:	0c2017b7          	lui	a5,0xc201
    800028bc:	00a78533          	add	a0,a5,a0
    800028c0:	00452503          	lw	a0,4(a0)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <plic_complete>:
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	9bc080e7          	jalr	-1604(ra) # 800022a0 <cpuid>
    800028ec:	01813083          	ld	ra,24(sp)
    800028f0:	01013403          	ld	s0,16(sp)
    800028f4:	00d5179b          	slliw	a5,a0,0xd
    800028f8:	0c201737          	lui	a4,0xc201
    800028fc:	00f707b3          	add	a5,a4,a5
    80002900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	02010113          	addi	sp,sp,32
    8000290c:	00008067          	ret

0000000080002910 <consolewrite>:
    80002910:	fb010113          	addi	sp,sp,-80
    80002914:	04813023          	sd	s0,64(sp)
    80002918:	04113423          	sd	ra,72(sp)
    8000291c:	02913c23          	sd	s1,56(sp)
    80002920:	03213823          	sd	s2,48(sp)
    80002924:	03313423          	sd	s3,40(sp)
    80002928:	03413023          	sd	s4,32(sp)
    8000292c:	01513c23          	sd	s5,24(sp)
    80002930:	05010413          	addi	s0,sp,80
    80002934:	06c05c63          	blez	a2,800029ac <consolewrite+0x9c>
    80002938:	00060993          	mv	s3,a2
    8000293c:	00050a13          	mv	s4,a0
    80002940:	00058493          	mv	s1,a1
    80002944:	00000913          	li	s2,0
    80002948:	fff00a93          	li	s5,-1
    8000294c:	01c0006f          	j	80002968 <consolewrite+0x58>
    80002950:	fbf44503          	lbu	a0,-65(s0)
    80002954:	0019091b          	addiw	s2,s2,1
    80002958:	00148493          	addi	s1,s1,1
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	a9c080e7          	jalr	-1380(ra) # 800033f8 <uartputc>
    80002964:	03298063          	beq	s3,s2,80002984 <consolewrite+0x74>
    80002968:	00048613          	mv	a2,s1
    8000296c:	00100693          	li	a3,1
    80002970:	000a0593          	mv	a1,s4
    80002974:	fbf40513          	addi	a0,s0,-65
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	9e0080e7          	jalr	-1568(ra) # 80002358 <either_copyin>
    80002980:	fd5518e3          	bne	a0,s5,80002950 <consolewrite+0x40>
    80002984:	04813083          	ld	ra,72(sp)
    80002988:	04013403          	ld	s0,64(sp)
    8000298c:	03813483          	ld	s1,56(sp)
    80002990:	02813983          	ld	s3,40(sp)
    80002994:	02013a03          	ld	s4,32(sp)
    80002998:	01813a83          	ld	s5,24(sp)
    8000299c:	00090513          	mv	a0,s2
    800029a0:	03013903          	ld	s2,48(sp)
    800029a4:	05010113          	addi	sp,sp,80
    800029a8:	00008067          	ret
    800029ac:	00000913          	li	s2,0
    800029b0:	fd5ff06f          	j	80002984 <consolewrite+0x74>

00000000800029b4 <consoleread>:
    800029b4:	f9010113          	addi	sp,sp,-112
    800029b8:	06813023          	sd	s0,96(sp)
    800029bc:	04913c23          	sd	s1,88(sp)
    800029c0:	05213823          	sd	s2,80(sp)
    800029c4:	05313423          	sd	s3,72(sp)
    800029c8:	05413023          	sd	s4,64(sp)
    800029cc:	03513c23          	sd	s5,56(sp)
    800029d0:	03613823          	sd	s6,48(sp)
    800029d4:	03713423          	sd	s7,40(sp)
    800029d8:	03813023          	sd	s8,32(sp)
    800029dc:	06113423          	sd	ra,104(sp)
    800029e0:	01913c23          	sd	s9,24(sp)
    800029e4:	07010413          	addi	s0,sp,112
    800029e8:	00060b93          	mv	s7,a2
    800029ec:	00050913          	mv	s2,a0
    800029f0:	00058c13          	mv	s8,a1
    800029f4:	00060b1b          	sext.w	s6,a2
    800029f8:	00004497          	auipc	s1,0x4
    800029fc:	04048493          	addi	s1,s1,64 # 80006a38 <cons>
    80002a00:	00400993          	li	s3,4
    80002a04:	fff00a13          	li	s4,-1
    80002a08:	00a00a93          	li	s5,10
    80002a0c:	05705e63          	blez	s7,80002a68 <consoleread+0xb4>
    80002a10:	09c4a703          	lw	a4,156(s1)
    80002a14:	0984a783          	lw	a5,152(s1)
    80002a18:	0007071b          	sext.w	a4,a4
    80002a1c:	08e78463          	beq	a5,a4,80002aa4 <consoleread+0xf0>
    80002a20:	07f7f713          	andi	a4,a5,127
    80002a24:	00e48733          	add	a4,s1,a4
    80002a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a2c:	0017869b          	addiw	a3,a5,1
    80002a30:	08d4ac23          	sw	a3,152(s1)
    80002a34:	00070c9b          	sext.w	s9,a4
    80002a38:	0b370663          	beq	a4,s3,80002ae4 <consoleread+0x130>
    80002a3c:	00100693          	li	a3,1
    80002a40:	f9f40613          	addi	a2,s0,-97
    80002a44:	000c0593          	mv	a1,s8
    80002a48:	00090513          	mv	a0,s2
    80002a4c:	f8e40fa3          	sb	a4,-97(s0)
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	8bc080e7          	jalr	-1860(ra) # 8000230c <either_copyout>
    80002a58:	01450863          	beq	a0,s4,80002a68 <consoleread+0xb4>
    80002a5c:	001c0c13          	addi	s8,s8,1
    80002a60:	fffb8b9b          	addiw	s7,s7,-1
    80002a64:	fb5c94e3          	bne	s9,s5,80002a0c <consoleread+0x58>
    80002a68:	000b851b          	sext.w	a0,s7
    80002a6c:	06813083          	ld	ra,104(sp)
    80002a70:	06013403          	ld	s0,96(sp)
    80002a74:	05813483          	ld	s1,88(sp)
    80002a78:	05013903          	ld	s2,80(sp)
    80002a7c:	04813983          	ld	s3,72(sp)
    80002a80:	04013a03          	ld	s4,64(sp)
    80002a84:	03813a83          	ld	s5,56(sp)
    80002a88:	02813b83          	ld	s7,40(sp)
    80002a8c:	02013c03          	ld	s8,32(sp)
    80002a90:	01813c83          	ld	s9,24(sp)
    80002a94:	40ab053b          	subw	a0,s6,a0
    80002a98:	03013b03          	ld	s6,48(sp)
    80002a9c:	07010113          	addi	sp,sp,112
    80002aa0:	00008067          	ret
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	1d8080e7          	jalr	472(ra) # 80003c7c <push_on>
    80002aac:	0984a703          	lw	a4,152(s1)
    80002ab0:	09c4a783          	lw	a5,156(s1)
    80002ab4:	0007879b          	sext.w	a5,a5
    80002ab8:	fef70ce3          	beq	a4,a5,80002ab0 <consoleread+0xfc>
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	234080e7          	jalr	564(ra) # 80003cf0 <pop_on>
    80002ac4:	0984a783          	lw	a5,152(s1)
    80002ac8:	07f7f713          	andi	a4,a5,127
    80002acc:	00e48733          	add	a4,s1,a4
    80002ad0:	01874703          	lbu	a4,24(a4)
    80002ad4:	0017869b          	addiw	a3,a5,1
    80002ad8:	08d4ac23          	sw	a3,152(s1)
    80002adc:	00070c9b          	sext.w	s9,a4
    80002ae0:	f5371ee3          	bne	a4,s3,80002a3c <consoleread+0x88>
    80002ae4:	000b851b          	sext.w	a0,s7
    80002ae8:	f96bf2e3          	bgeu	s7,s6,80002a6c <consoleread+0xb8>
    80002aec:	08f4ac23          	sw	a5,152(s1)
    80002af0:	f7dff06f          	j	80002a6c <consoleread+0xb8>

0000000080002af4 <consputc>:
    80002af4:	10000793          	li	a5,256
    80002af8:	00f50663          	beq	a0,a5,80002b04 <consputc+0x10>
    80002afc:	00001317          	auipc	t1,0x1
    80002b00:	9f430067          	jr	-1548(t1) # 800034f0 <uartputc_sync>
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00800513          	li	a0,8
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	9d8080e7          	jalr	-1576(ra) # 800034f0 <uartputc_sync>
    80002b20:	02000513          	li	a0,32
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	9cc080e7          	jalr	-1588(ra) # 800034f0 <uartputc_sync>
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00800513          	li	a0,8
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00001317          	auipc	t1,0x1
    80002b40:	9b430067          	jr	-1612(t1) # 800034f0 <uartputc_sync>

0000000080002b44 <consoleintr>:
    80002b44:	fe010113          	addi	sp,sp,-32
    80002b48:	00813823          	sd	s0,16(sp)
    80002b4c:	00913423          	sd	s1,8(sp)
    80002b50:	01213023          	sd	s2,0(sp)
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	02010413          	addi	s0,sp,32
    80002b5c:	00004917          	auipc	s2,0x4
    80002b60:	edc90913          	addi	s2,s2,-292 # 80006a38 <cons>
    80002b64:	00050493          	mv	s1,a0
    80002b68:	00090513          	mv	a0,s2
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	e40080e7          	jalr	-448(ra) # 800039ac <acquire>
    80002b74:	02048c63          	beqz	s1,80002bac <consoleintr+0x68>
    80002b78:	0a092783          	lw	a5,160(s2)
    80002b7c:	09892703          	lw	a4,152(s2)
    80002b80:	07f00693          	li	a3,127
    80002b84:	40e7873b          	subw	a4,a5,a4
    80002b88:	02e6e263          	bltu	a3,a4,80002bac <consoleintr+0x68>
    80002b8c:	00d00713          	li	a4,13
    80002b90:	04e48063          	beq	s1,a4,80002bd0 <consoleintr+0x8c>
    80002b94:	07f7f713          	andi	a4,a5,127
    80002b98:	00e90733          	add	a4,s2,a4
    80002b9c:	0017879b          	addiw	a5,a5,1
    80002ba0:	0af92023          	sw	a5,160(s2)
    80002ba4:	00970c23          	sb	s1,24(a4)
    80002ba8:	08f92e23          	sw	a5,156(s2)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	00013903          	ld	s2,0(sp)
    80002bbc:	00004517          	auipc	a0,0x4
    80002bc0:	e7c50513          	addi	a0,a0,-388 # 80006a38 <cons>
    80002bc4:	02010113          	addi	sp,sp,32
    80002bc8:	00001317          	auipc	t1,0x1
    80002bcc:	eb030067          	jr	-336(t1) # 80003a78 <release>
    80002bd0:	00a00493          	li	s1,10
    80002bd4:	fc1ff06f          	j	80002b94 <consoleintr+0x50>

0000000080002bd8 <consoleinit>:
    80002bd8:	fe010113          	addi	sp,sp,-32
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00813823          	sd	s0,16(sp)
    80002be4:	00913423          	sd	s1,8(sp)
    80002be8:	02010413          	addi	s0,sp,32
    80002bec:	00004497          	auipc	s1,0x4
    80002bf0:	e4c48493          	addi	s1,s1,-436 # 80006a38 <cons>
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00002597          	auipc	a1,0x2
    80002bfc:	61858593          	addi	a1,a1,1560 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	d88080e7          	jalr	-632(ra) # 80003988 <initlock>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	7ac080e7          	jalr	1964(ra) # 800033b4 <uartinit>
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	01013403          	ld	s0,16(sp)
    80002c18:	00000797          	auipc	a5,0x0
    80002c1c:	d9c78793          	addi	a5,a5,-612 # 800029b4 <consoleread>
    80002c20:	0af4bc23          	sd	a5,184(s1)
    80002c24:	00000797          	auipc	a5,0x0
    80002c28:	cec78793          	addi	a5,a5,-788 # 80002910 <consolewrite>
    80002c2c:	0cf4b023          	sd	a5,192(s1)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <console_read>:
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00813423          	sd	s0,8(sp)
    80002c44:	01010413          	addi	s0,sp,16
    80002c48:	00813403          	ld	s0,8(sp)
    80002c4c:	00004317          	auipc	t1,0x4
    80002c50:	ea433303          	ld	t1,-348(t1) # 80006af0 <devsw+0x10>
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00030067          	jr	t1

0000000080002c5c <console_write>:
    80002c5c:	ff010113          	addi	sp,sp,-16
    80002c60:	00813423          	sd	s0,8(sp)
    80002c64:	01010413          	addi	s0,sp,16
    80002c68:	00813403          	ld	s0,8(sp)
    80002c6c:	00004317          	auipc	t1,0x4
    80002c70:	e8c33303          	ld	t1,-372(t1) # 80006af8 <devsw+0x18>
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00030067          	jr	t1

0000000080002c7c <panic>:
    80002c7c:	fe010113          	addi	sp,sp,-32
    80002c80:	00113c23          	sd	ra,24(sp)
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    80002c90:	00050493          	mv	s1,a0
    80002c94:	00002517          	auipc	a0,0x2
    80002c98:	58450513          	addi	a0,a0,1412 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    80002c9c:	00004797          	auipc	a5,0x4
    80002ca0:	ee07ae23          	sw	zero,-260(a5) # 80006b98 <pr+0x18>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	034080e7          	jalr	52(ra) # 80002cd8 <__printf>
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	028080e7          	jalr	40(ra) # 80002cd8 <__printf>
    80002cb8:	00002517          	auipc	a0,0x2
    80002cbc:	41850513          	addi	a0,a0,1048 # 800050d0 <kvmincrease+0xc90>
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	018080e7          	jalr	24(ra) # 80002cd8 <__printf>
    80002cc8:	00100793          	li	a5,1
    80002ccc:	00003717          	auipc	a4,0x3
    80002cd0:	c2f72623          	sw	a5,-980(a4) # 800058f8 <panicked>
    80002cd4:	0000006f          	j	80002cd4 <panic+0x58>

0000000080002cd8 <__printf>:
    80002cd8:	f3010113          	addi	sp,sp,-208
    80002cdc:	08813023          	sd	s0,128(sp)
    80002ce0:	07313423          	sd	s3,104(sp)
    80002ce4:	09010413          	addi	s0,sp,144
    80002ce8:	05813023          	sd	s8,64(sp)
    80002cec:	08113423          	sd	ra,136(sp)
    80002cf0:	06913c23          	sd	s1,120(sp)
    80002cf4:	07213823          	sd	s2,112(sp)
    80002cf8:	07413023          	sd	s4,96(sp)
    80002cfc:	05513c23          	sd	s5,88(sp)
    80002d00:	05613823          	sd	s6,80(sp)
    80002d04:	05713423          	sd	s7,72(sp)
    80002d08:	03913c23          	sd	s9,56(sp)
    80002d0c:	03a13823          	sd	s10,48(sp)
    80002d10:	03b13423          	sd	s11,40(sp)
    80002d14:	00004317          	auipc	t1,0x4
    80002d18:	e6c30313          	addi	t1,t1,-404 # 80006b80 <pr>
    80002d1c:	01832c03          	lw	s8,24(t1)
    80002d20:	00b43423          	sd	a1,8(s0)
    80002d24:	00c43823          	sd	a2,16(s0)
    80002d28:	00d43c23          	sd	a3,24(s0)
    80002d2c:	02e43023          	sd	a4,32(s0)
    80002d30:	02f43423          	sd	a5,40(s0)
    80002d34:	03043823          	sd	a6,48(s0)
    80002d38:	03143c23          	sd	a7,56(s0)
    80002d3c:	00050993          	mv	s3,a0
    80002d40:	4a0c1663          	bnez	s8,800031ec <__printf+0x514>
    80002d44:	60098c63          	beqz	s3,8000335c <__printf+0x684>
    80002d48:	0009c503          	lbu	a0,0(s3)
    80002d4c:	00840793          	addi	a5,s0,8
    80002d50:	f6f43c23          	sd	a5,-136(s0)
    80002d54:	00000493          	li	s1,0
    80002d58:	22050063          	beqz	a0,80002f78 <__printf+0x2a0>
    80002d5c:	00002a37          	lui	s4,0x2
    80002d60:	00018ab7          	lui	s5,0x18
    80002d64:	000f4b37          	lui	s6,0xf4
    80002d68:	00989bb7          	lui	s7,0x989
    80002d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d7c:	00148c9b          	addiw	s9,s1,1
    80002d80:	02500793          	li	a5,37
    80002d84:	01998933          	add	s2,s3,s9
    80002d88:	38f51263          	bne	a0,a5,8000310c <__printf+0x434>
    80002d8c:	00094783          	lbu	a5,0(s2)
    80002d90:	00078c9b          	sext.w	s9,a5
    80002d94:	1e078263          	beqz	a5,80002f78 <__printf+0x2a0>
    80002d98:	0024849b          	addiw	s1,s1,2
    80002d9c:	07000713          	li	a4,112
    80002da0:	00998933          	add	s2,s3,s1
    80002da4:	38e78a63          	beq	a5,a4,80003138 <__printf+0x460>
    80002da8:	20f76863          	bltu	a4,a5,80002fb8 <__printf+0x2e0>
    80002dac:	42a78863          	beq	a5,a0,800031dc <__printf+0x504>
    80002db0:	06400713          	li	a4,100
    80002db4:	40e79663          	bne	a5,a4,800031c0 <__printf+0x4e8>
    80002db8:	f7843783          	ld	a5,-136(s0)
    80002dbc:	0007a603          	lw	a2,0(a5)
    80002dc0:	00878793          	addi	a5,a5,8
    80002dc4:	f6f43c23          	sd	a5,-136(s0)
    80002dc8:	42064a63          	bltz	a2,800031fc <__printf+0x524>
    80002dcc:	00a00713          	li	a4,10
    80002dd0:	02e677bb          	remuw	a5,a2,a4
    80002dd4:	00002d97          	auipc	s11,0x2
    80002dd8:	46cd8d93          	addi	s11,s11,1132 # 80005240 <digits>
    80002ddc:	00900593          	li	a1,9
    80002de0:	0006051b          	sext.w	a0,a2
    80002de4:	00000c93          	li	s9,0
    80002de8:	02079793          	slli	a5,a5,0x20
    80002dec:	0207d793          	srli	a5,a5,0x20
    80002df0:	00fd87b3          	add	a5,s11,a5
    80002df4:	0007c783          	lbu	a5,0(a5)
    80002df8:	02e656bb          	divuw	a3,a2,a4
    80002dfc:	f8f40023          	sb	a5,-128(s0)
    80002e00:	14c5d863          	bge	a1,a2,80002f50 <__printf+0x278>
    80002e04:	06300593          	li	a1,99
    80002e08:	00100c93          	li	s9,1
    80002e0c:	02e6f7bb          	remuw	a5,a3,a4
    80002e10:	02079793          	slli	a5,a5,0x20
    80002e14:	0207d793          	srli	a5,a5,0x20
    80002e18:	00fd87b3          	add	a5,s11,a5
    80002e1c:	0007c783          	lbu	a5,0(a5)
    80002e20:	02e6d73b          	divuw	a4,a3,a4
    80002e24:	f8f400a3          	sb	a5,-127(s0)
    80002e28:	12a5f463          	bgeu	a1,a0,80002f50 <__printf+0x278>
    80002e2c:	00a00693          	li	a3,10
    80002e30:	00900593          	li	a1,9
    80002e34:	02d777bb          	remuw	a5,a4,a3
    80002e38:	02079793          	slli	a5,a5,0x20
    80002e3c:	0207d793          	srli	a5,a5,0x20
    80002e40:	00fd87b3          	add	a5,s11,a5
    80002e44:	0007c503          	lbu	a0,0(a5)
    80002e48:	02d757bb          	divuw	a5,a4,a3
    80002e4c:	f8a40123          	sb	a0,-126(s0)
    80002e50:	48e5f263          	bgeu	a1,a4,800032d4 <__printf+0x5fc>
    80002e54:	06300513          	li	a0,99
    80002e58:	02d7f5bb          	remuw	a1,a5,a3
    80002e5c:	02059593          	slli	a1,a1,0x20
    80002e60:	0205d593          	srli	a1,a1,0x20
    80002e64:	00bd85b3          	add	a1,s11,a1
    80002e68:	0005c583          	lbu	a1,0(a1)
    80002e6c:	02d7d7bb          	divuw	a5,a5,a3
    80002e70:	f8b401a3          	sb	a1,-125(s0)
    80002e74:	48e57263          	bgeu	a0,a4,800032f8 <__printf+0x620>
    80002e78:	3e700513          	li	a0,999
    80002e7c:	02d7f5bb          	remuw	a1,a5,a3
    80002e80:	02059593          	slli	a1,a1,0x20
    80002e84:	0205d593          	srli	a1,a1,0x20
    80002e88:	00bd85b3          	add	a1,s11,a1
    80002e8c:	0005c583          	lbu	a1,0(a1)
    80002e90:	02d7d7bb          	divuw	a5,a5,a3
    80002e94:	f8b40223          	sb	a1,-124(s0)
    80002e98:	46e57663          	bgeu	a0,a4,80003304 <__printf+0x62c>
    80002e9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ea0:	02059593          	slli	a1,a1,0x20
    80002ea4:	0205d593          	srli	a1,a1,0x20
    80002ea8:	00bd85b3          	add	a1,s11,a1
    80002eac:	0005c583          	lbu	a1,0(a1)
    80002eb0:	02d7d7bb          	divuw	a5,a5,a3
    80002eb4:	f8b402a3          	sb	a1,-123(s0)
    80002eb8:	46ea7863          	bgeu	s4,a4,80003328 <__printf+0x650>
    80002ebc:	02d7f5bb          	remuw	a1,a5,a3
    80002ec0:	02059593          	slli	a1,a1,0x20
    80002ec4:	0205d593          	srli	a1,a1,0x20
    80002ec8:	00bd85b3          	add	a1,s11,a1
    80002ecc:	0005c583          	lbu	a1,0(a1)
    80002ed0:	02d7d7bb          	divuw	a5,a5,a3
    80002ed4:	f8b40323          	sb	a1,-122(s0)
    80002ed8:	3eeaf863          	bgeu	s5,a4,800032c8 <__printf+0x5f0>
    80002edc:	02d7f5bb          	remuw	a1,a5,a3
    80002ee0:	02059593          	slli	a1,a1,0x20
    80002ee4:	0205d593          	srli	a1,a1,0x20
    80002ee8:	00bd85b3          	add	a1,s11,a1
    80002eec:	0005c583          	lbu	a1,0(a1)
    80002ef0:	02d7d7bb          	divuw	a5,a5,a3
    80002ef4:	f8b403a3          	sb	a1,-121(s0)
    80002ef8:	42eb7e63          	bgeu	s6,a4,80003334 <__printf+0x65c>
    80002efc:	02d7f5bb          	remuw	a1,a5,a3
    80002f00:	02059593          	slli	a1,a1,0x20
    80002f04:	0205d593          	srli	a1,a1,0x20
    80002f08:	00bd85b3          	add	a1,s11,a1
    80002f0c:	0005c583          	lbu	a1,0(a1)
    80002f10:	02d7d7bb          	divuw	a5,a5,a3
    80002f14:	f8b40423          	sb	a1,-120(s0)
    80002f18:	42ebfc63          	bgeu	s7,a4,80003350 <__printf+0x678>
    80002f1c:	02079793          	slli	a5,a5,0x20
    80002f20:	0207d793          	srli	a5,a5,0x20
    80002f24:	00fd8db3          	add	s11,s11,a5
    80002f28:	000dc703          	lbu	a4,0(s11)
    80002f2c:	00a00793          	li	a5,10
    80002f30:	00900c93          	li	s9,9
    80002f34:	f8e404a3          	sb	a4,-119(s0)
    80002f38:	00065c63          	bgez	a2,80002f50 <__printf+0x278>
    80002f3c:	f9040713          	addi	a4,s0,-112
    80002f40:	00f70733          	add	a4,a4,a5
    80002f44:	02d00693          	li	a3,45
    80002f48:	fed70823          	sb	a3,-16(a4)
    80002f4c:	00078c93          	mv	s9,a5
    80002f50:	f8040793          	addi	a5,s0,-128
    80002f54:	01978cb3          	add	s9,a5,s9
    80002f58:	f7f40d13          	addi	s10,s0,-129
    80002f5c:	000cc503          	lbu	a0,0(s9)
    80002f60:	fffc8c93          	addi	s9,s9,-1
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	b90080e7          	jalr	-1136(ra) # 80002af4 <consputc>
    80002f6c:	ffac98e3          	bne	s9,s10,80002f5c <__printf+0x284>
    80002f70:	00094503          	lbu	a0,0(s2)
    80002f74:	e00514e3          	bnez	a0,80002d7c <__printf+0xa4>
    80002f78:	1a0c1663          	bnez	s8,80003124 <__printf+0x44c>
    80002f7c:	08813083          	ld	ra,136(sp)
    80002f80:	08013403          	ld	s0,128(sp)
    80002f84:	07813483          	ld	s1,120(sp)
    80002f88:	07013903          	ld	s2,112(sp)
    80002f8c:	06813983          	ld	s3,104(sp)
    80002f90:	06013a03          	ld	s4,96(sp)
    80002f94:	05813a83          	ld	s5,88(sp)
    80002f98:	05013b03          	ld	s6,80(sp)
    80002f9c:	04813b83          	ld	s7,72(sp)
    80002fa0:	04013c03          	ld	s8,64(sp)
    80002fa4:	03813c83          	ld	s9,56(sp)
    80002fa8:	03013d03          	ld	s10,48(sp)
    80002fac:	02813d83          	ld	s11,40(sp)
    80002fb0:	0d010113          	addi	sp,sp,208
    80002fb4:	00008067          	ret
    80002fb8:	07300713          	li	a4,115
    80002fbc:	1ce78a63          	beq	a5,a4,80003190 <__printf+0x4b8>
    80002fc0:	07800713          	li	a4,120
    80002fc4:	1ee79e63          	bne	a5,a4,800031c0 <__printf+0x4e8>
    80002fc8:	f7843783          	ld	a5,-136(s0)
    80002fcc:	0007a703          	lw	a4,0(a5)
    80002fd0:	00878793          	addi	a5,a5,8
    80002fd4:	f6f43c23          	sd	a5,-136(s0)
    80002fd8:	28074263          	bltz	a4,8000325c <__printf+0x584>
    80002fdc:	00002d97          	auipc	s11,0x2
    80002fe0:	264d8d93          	addi	s11,s11,612 # 80005240 <digits>
    80002fe4:	00f77793          	andi	a5,a4,15
    80002fe8:	00fd87b3          	add	a5,s11,a5
    80002fec:	0007c683          	lbu	a3,0(a5)
    80002ff0:	00f00613          	li	a2,15
    80002ff4:	0007079b          	sext.w	a5,a4
    80002ff8:	f8d40023          	sb	a3,-128(s0)
    80002ffc:	0047559b          	srliw	a1,a4,0x4
    80003000:	0047569b          	srliw	a3,a4,0x4
    80003004:	00000c93          	li	s9,0
    80003008:	0ee65063          	bge	a2,a4,800030e8 <__printf+0x410>
    8000300c:	00f6f693          	andi	a3,a3,15
    80003010:	00dd86b3          	add	a3,s11,a3
    80003014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003018:	0087d79b          	srliw	a5,a5,0x8
    8000301c:	00100c93          	li	s9,1
    80003020:	f8d400a3          	sb	a3,-127(s0)
    80003024:	0cb67263          	bgeu	a2,a1,800030e8 <__printf+0x410>
    80003028:	00f7f693          	andi	a3,a5,15
    8000302c:	00dd86b3          	add	a3,s11,a3
    80003030:	0006c583          	lbu	a1,0(a3)
    80003034:	00f00613          	li	a2,15
    80003038:	0047d69b          	srliw	a3,a5,0x4
    8000303c:	f8b40123          	sb	a1,-126(s0)
    80003040:	0047d593          	srli	a1,a5,0x4
    80003044:	28f67e63          	bgeu	a2,a5,800032e0 <__printf+0x608>
    80003048:	00f6f693          	andi	a3,a3,15
    8000304c:	00dd86b3          	add	a3,s11,a3
    80003050:	0006c503          	lbu	a0,0(a3)
    80003054:	0087d813          	srli	a6,a5,0x8
    80003058:	0087d69b          	srliw	a3,a5,0x8
    8000305c:	f8a401a3          	sb	a0,-125(s0)
    80003060:	28b67663          	bgeu	a2,a1,800032ec <__printf+0x614>
    80003064:	00f6f693          	andi	a3,a3,15
    80003068:	00dd86b3          	add	a3,s11,a3
    8000306c:	0006c583          	lbu	a1,0(a3)
    80003070:	00c7d513          	srli	a0,a5,0xc
    80003074:	00c7d69b          	srliw	a3,a5,0xc
    80003078:	f8b40223          	sb	a1,-124(s0)
    8000307c:	29067a63          	bgeu	a2,a6,80003310 <__printf+0x638>
    80003080:	00f6f693          	andi	a3,a3,15
    80003084:	00dd86b3          	add	a3,s11,a3
    80003088:	0006c583          	lbu	a1,0(a3)
    8000308c:	0107d813          	srli	a6,a5,0x10
    80003090:	0107d69b          	srliw	a3,a5,0x10
    80003094:	f8b402a3          	sb	a1,-123(s0)
    80003098:	28a67263          	bgeu	a2,a0,8000331c <__printf+0x644>
    8000309c:	00f6f693          	andi	a3,a3,15
    800030a0:	00dd86b3          	add	a3,s11,a3
    800030a4:	0006c683          	lbu	a3,0(a3)
    800030a8:	0147d79b          	srliw	a5,a5,0x14
    800030ac:	f8d40323          	sb	a3,-122(s0)
    800030b0:	21067663          	bgeu	a2,a6,800032bc <__printf+0x5e4>
    800030b4:	02079793          	slli	a5,a5,0x20
    800030b8:	0207d793          	srli	a5,a5,0x20
    800030bc:	00fd8db3          	add	s11,s11,a5
    800030c0:	000dc683          	lbu	a3,0(s11)
    800030c4:	00800793          	li	a5,8
    800030c8:	00700c93          	li	s9,7
    800030cc:	f8d403a3          	sb	a3,-121(s0)
    800030d0:	00075c63          	bgez	a4,800030e8 <__printf+0x410>
    800030d4:	f9040713          	addi	a4,s0,-112
    800030d8:	00f70733          	add	a4,a4,a5
    800030dc:	02d00693          	li	a3,45
    800030e0:	fed70823          	sb	a3,-16(a4)
    800030e4:	00078c93          	mv	s9,a5
    800030e8:	f8040793          	addi	a5,s0,-128
    800030ec:	01978cb3          	add	s9,a5,s9
    800030f0:	f7f40d13          	addi	s10,s0,-129
    800030f4:	000cc503          	lbu	a0,0(s9)
    800030f8:	fffc8c93          	addi	s9,s9,-1
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	9f8080e7          	jalr	-1544(ra) # 80002af4 <consputc>
    80003104:	ff9d18e3          	bne	s10,s9,800030f4 <__printf+0x41c>
    80003108:	0100006f          	j	80003118 <__printf+0x440>
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	9e8080e7          	jalr	-1560(ra) # 80002af4 <consputc>
    80003114:	000c8493          	mv	s1,s9
    80003118:	00094503          	lbu	a0,0(s2)
    8000311c:	c60510e3          	bnez	a0,80002d7c <__printf+0xa4>
    80003120:	e40c0ee3          	beqz	s8,80002f7c <__printf+0x2a4>
    80003124:	00004517          	auipc	a0,0x4
    80003128:	a5c50513          	addi	a0,a0,-1444 # 80006b80 <pr>
    8000312c:	00001097          	auipc	ra,0x1
    80003130:	94c080e7          	jalr	-1716(ra) # 80003a78 <release>
    80003134:	e49ff06f          	j	80002f7c <__printf+0x2a4>
    80003138:	f7843783          	ld	a5,-136(s0)
    8000313c:	03000513          	li	a0,48
    80003140:	01000d13          	li	s10,16
    80003144:	00878713          	addi	a4,a5,8
    80003148:	0007bc83          	ld	s9,0(a5)
    8000314c:	f6e43c23          	sd	a4,-136(s0)
    80003150:	00000097          	auipc	ra,0x0
    80003154:	9a4080e7          	jalr	-1628(ra) # 80002af4 <consputc>
    80003158:	07800513          	li	a0,120
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	998080e7          	jalr	-1640(ra) # 80002af4 <consputc>
    80003164:	00002d97          	auipc	s11,0x2
    80003168:	0dcd8d93          	addi	s11,s11,220 # 80005240 <digits>
    8000316c:	03ccd793          	srli	a5,s9,0x3c
    80003170:	00fd87b3          	add	a5,s11,a5
    80003174:	0007c503          	lbu	a0,0(a5)
    80003178:	fffd0d1b          	addiw	s10,s10,-1
    8000317c:	004c9c93          	slli	s9,s9,0x4
    80003180:	00000097          	auipc	ra,0x0
    80003184:	974080e7          	jalr	-1676(ra) # 80002af4 <consputc>
    80003188:	fe0d12e3          	bnez	s10,8000316c <__printf+0x494>
    8000318c:	f8dff06f          	j	80003118 <__printf+0x440>
    80003190:	f7843783          	ld	a5,-136(s0)
    80003194:	0007bc83          	ld	s9,0(a5)
    80003198:	00878793          	addi	a5,a5,8
    8000319c:	f6f43c23          	sd	a5,-136(s0)
    800031a0:	000c9a63          	bnez	s9,800031b4 <__printf+0x4dc>
    800031a4:	1080006f          	j	800032ac <__printf+0x5d4>
    800031a8:	001c8c93          	addi	s9,s9,1
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	948080e7          	jalr	-1720(ra) # 80002af4 <consputc>
    800031b4:	000cc503          	lbu	a0,0(s9)
    800031b8:	fe0518e3          	bnez	a0,800031a8 <__printf+0x4d0>
    800031bc:	f5dff06f          	j	80003118 <__printf+0x440>
    800031c0:	02500513          	li	a0,37
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	930080e7          	jalr	-1744(ra) # 80002af4 <consputc>
    800031cc:	000c8513          	mv	a0,s9
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	924080e7          	jalr	-1756(ra) # 80002af4 <consputc>
    800031d8:	f41ff06f          	j	80003118 <__printf+0x440>
    800031dc:	02500513          	li	a0,37
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	914080e7          	jalr	-1772(ra) # 80002af4 <consputc>
    800031e8:	f31ff06f          	j	80003118 <__printf+0x440>
    800031ec:	00030513          	mv	a0,t1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	7bc080e7          	jalr	1980(ra) # 800039ac <acquire>
    800031f8:	b4dff06f          	j	80002d44 <__printf+0x6c>
    800031fc:	40c0053b          	negw	a0,a2
    80003200:	00a00713          	li	a4,10
    80003204:	02e576bb          	remuw	a3,a0,a4
    80003208:	00002d97          	auipc	s11,0x2
    8000320c:	038d8d93          	addi	s11,s11,56 # 80005240 <digits>
    80003210:	ff700593          	li	a1,-9
    80003214:	02069693          	slli	a3,a3,0x20
    80003218:	0206d693          	srli	a3,a3,0x20
    8000321c:	00dd86b3          	add	a3,s11,a3
    80003220:	0006c683          	lbu	a3,0(a3)
    80003224:	02e557bb          	divuw	a5,a0,a4
    80003228:	f8d40023          	sb	a3,-128(s0)
    8000322c:	10b65e63          	bge	a2,a1,80003348 <__printf+0x670>
    80003230:	06300593          	li	a1,99
    80003234:	02e7f6bb          	remuw	a3,a5,a4
    80003238:	02069693          	slli	a3,a3,0x20
    8000323c:	0206d693          	srli	a3,a3,0x20
    80003240:	00dd86b3          	add	a3,s11,a3
    80003244:	0006c683          	lbu	a3,0(a3)
    80003248:	02e7d73b          	divuw	a4,a5,a4
    8000324c:	00200793          	li	a5,2
    80003250:	f8d400a3          	sb	a3,-127(s0)
    80003254:	bca5ece3          	bltu	a1,a0,80002e2c <__printf+0x154>
    80003258:	ce5ff06f          	j	80002f3c <__printf+0x264>
    8000325c:	40e007bb          	negw	a5,a4
    80003260:	00002d97          	auipc	s11,0x2
    80003264:	fe0d8d93          	addi	s11,s11,-32 # 80005240 <digits>
    80003268:	00f7f693          	andi	a3,a5,15
    8000326c:	00dd86b3          	add	a3,s11,a3
    80003270:	0006c583          	lbu	a1,0(a3)
    80003274:	ff100613          	li	a2,-15
    80003278:	0047d69b          	srliw	a3,a5,0x4
    8000327c:	f8b40023          	sb	a1,-128(s0)
    80003280:	0047d59b          	srliw	a1,a5,0x4
    80003284:	0ac75e63          	bge	a4,a2,80003340 <__printf+0x668>
    80003288:	00f6f693          	andi	a3,a3,15
    8000328c:	00dd86b3          	add	a3,s11,a3
    80003290:	0006c603          	lbu	a2,0(a3)
    80003294:	00f00693          	li	a3,15
    80003298:	0087d79b          	srliw	a5,a5,0x8
    8000329c:	f8c400a3          	sb	a2,-127(s0)
    800032a0:	d8b6e4e3          	bltu	a3,a1,80003028 <__printf+0x350>
    800032a4:	00200793          	li	a5,2
    800032a8:	e2dff06f          	j	800030d4 <__printf+0x3fc>
    800032ac:	00002c97          	auipc	s9,0x2
    800032b0:	f74c8c93          	addi	s9,s9,-140 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    800032b4:	02800513          	li	a0,40
    800032b8:	ef1ff06f          	j	800031a8 <__printf+0x4d0>
    800032bc:	00700793          	li	a5,7
    800032c0:	00600c93          	li	s9,6
    800032c4:	e0dff06f          	j	800030d0 <__printf+0x3f8>
    800032c8:	00700793          	li	a5,7
    800032cc:	00600c93          	li	s9,6
    800032d0:	c69ff06f          	j	80002f38 <__printf+0x260>
    800032d4:	00300793          	li	a5,3
    800032d8:	00200c93          	li	s9,2
    800032dc:	c5dff06f          	j	80002f38 <__printf+0x260>
    800032e0:	00300793          	li	a5,3
    800032e4:	00200c93          	li	s9,2
    800032e8:	de9ff06f          	j	800030d0 <__printf+0x3f8>
    800032ec:	00400793          	li	a5,4
    800032f0:	00300c93          	li	s9,3
    800032f4:	dddff06f          	j	800030d0 <__printf+0x3f8>
    800032f8:	00400793          	li	a5,4
    800032fc:	00300c93          	li	s9,3
    80003300:	c39ff06f          	j	80002f38 <__printf+0x260>
    80003304:	00500793          	li	a5,5
    80003308:	00400c93          	li	s9,4
    8000330c:	c2dff06f          	j	80002f38 <__printf+0x260>
    80003310:	00500793          	li	a5,5
    80003314:	00400c93          	li	s9,4
    80003318:	db9ff06f          	j	800030d0 <__printf+0x3f8>
    8000331c:	00600793          	li	a5,6
    80003320:	00500c93          	li	s9,5
    80003324:	dadff06f          	j	800030d0 <__printf+0x3f8>
    80003328:	00600793          	li	a5,6
    8000332c:	00500c93          	li	s9,5
    80003330:	c09ff06f          	j	80002f38 <__printf+0x260>
    80003334:	00800793          	li	a5,8
    80003338:	00700c93          	li	s9,7
    8000333c:	bfdff06f          	j	80002f38 <__printf+0x260>
    80003340:	00100793          	li	a5,1
    80003344:	d91ff06f          	j	800030d4 <__printf+0x3fc>
    80003348:	00100793          	li	a5,1
    8000334c:	bf1ff06f          	j	80002f3c <__printf+0x264>
    80003350:	00900793          	li	a5,9
    80003354:	00800c93          	li	s9,8
    80003358:	be1ff06f          	j	80002f38 <__printf+0x260>
    8000335c:	00002517          	auipc	a0,0x2
    80003360:	ecc50513          	addi	a0,a0,-308 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    80003364:	00000097          	auipc	ra,0x0
    80003368:	918080e7          	jalr	-1768(ra) # 80002c7c <panic>

000000008000336c <printfinit>:
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00004497          	auipc	s1,0x4
    80003384:	80048493          	addi	s1,s1,-2048 # 80006b80 <pr>
    80003388:	00048513          	mv	a0,s1
    8000338c:	00002597          	auipc	a1,0x2
    80003390:	eac58593          	addi	a1,a1,-340 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	5f4080e7          	jalr	1524(ra) # 80003988 <initlock>
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	0004ac23          	sw	zero,24(s1)
    800033a8:	00813483          	ld	s1,8(sp)
    800033ac:	02010113          	addi	sp,sp,32
    800033b0:	00008067          	ret

00000000800033b4 <uartinit>:
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00813423          	sd	s0,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	100007b7          	lui	a5,0x10000
    800033c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033c8:	f8000713          	li	a4,-128
    800033cc:	00e781a3          	sb	a4,3(a5)
    800033d0:	00300713          	li	a4,3
    800033d4:	00e78023          	sb	a4,0(a5)
    800033d8:	000780a3          	sb	zero,1(a5)
    800033dc:	00e781a3          	sb	a4,3(a5)
    800033e0:	00700693          	li	a3,7
    800033e4:	00d78123          	sb	a3,2(a5)
    800033e8:	00e780a3          	sb	a4,1(a5)
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <uartputc>:
    800033f8:	00002797          	auipc	a5,0x2
    800033fc:	5007a783          	lw	a5,1280(a5) # 800058f8 <panicked>
    80003400:	00078463          	beqz	a5,80003408 <uartputc+0x10>
    80003404:	0000006f          	j	80003404 <uartputc+0xc>
    80003408:	fd010113          	addi	sp,sp,-48
    8000340c:	02813023          	sd	s0,32(sp)
    80003410:	00913c23          	sd	s1,24(sp)
    80003414:	01213823          	sd	s2,16(sp)
    80003418:	01313423          	sd	s3,8(sp)
    8000341c:	02113423          	sd	ra,40(sp)
    80003420:	03010413          	addi	s0,sp,48
    80003424:	00002917          	auipc	s2,0x2
    80003428:	4dc90913          	addi	s2,s2,1244 # 80005900 <uart_tx_r>
    8000342c:	00093783          	ld	a5,0(s2)
    80003430:	00002497          	auipc	s1,0x2
    80003434:	4d848493          	addi	s1,s1,1240 # 80005908 <uart_tx_w>
    80003438:	0004b703          	ld	a4,0(s1)
    8000343c:	02078693          	addi	a3,a5,32
    80003440:	00050993          	mv	s3,a0
    80003444:	02e69c63          	bne	a3,a4,8000347c <uartputc+0x84>
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	834080e7          	jalr	-1996(ra) # 80003c7c <push_on>
    80003450:	00093783          	ld	a5,0(s2)
    80003454:	0004b703          	ld	a4,0(s1)
    80003458:	02078793          	addi	a5,a5,32
    8000345c:	00e79463          	bne	a5,a4,80003464 <uartputc+0x6c>
    80003460:	0000006f          	j	80003460 <uartputc+0x68>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	88c080e7          	jalr	-1908(ra) # 80003cf0 <pop_on>
    8000346c:	00093783          	ld	a5,0(s2)
    80003470:	0004b703          	ld	a4,0(s1)
    80003474:	02078693          	addi	a3,a5,32
    80003478:	fce688e3          	beq	a3,a4,80003448 <uartputc+0x50>
    8000347c:	01f77693          	andi	a3,a4,31
    80003480:	00003597          	auipc	a1,0x3
    80003484:	72058593          	addi	a1,a1,1824 # 80006ba0 <uart_tx_buf>
    80003488:	00d586b3          	add	a3,a1,a3
    8000348c:	00170713          	addi	a4,a4,1
    80003490:	01368023          	sb	s3,0(a3)
    80003494:	00e4b023          	sd	a4,0(s1)
    80003498:	10000637          	lui	a2,0x10000
    8000349c:	02f71063          	bne	a4,a5,800034bc <uartputc+0xc4>
    800034a0:	0340006f          	j	800034d4 <uartputc+0xdc>
    800034a4:	00074703          	lbu	a4,0(a4)
    800034a8:	00f93023          	sd	a5,0(s2)
    800034ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034b0:	00093783          	ld	a5,0(s2)
    800034b4:	0004b703          	ld	a4,0(s1)
    800034b8:	00f70e63          	beq	a4,a5,800034d4 <uartputc+0xdc>
    800034bc:	00564683          	lbu	a3,5(a2)
    800034c0:	01f7f713          	andi	a4,a5,31
    800034c4:	00e58733          	add	a4,a1,a4
    800034c8:	0206f693          	andi	a3,a3,32
    800034cc:	00178793          	addi	a5,a5,1
    800034d0:	fc069ae3          	bnez	a3,800034a4 <uartputc+0xac>
    800034d4:	02813083          	ld	ra,40(sp)
    800034d8:	02013403          	ld	s0,32(sp)
    800034dc:	01813483          	ld	s1,24(sp)
    800034e0:	01013903          	ld	s2,16(sp)
    800034e4:	00813983          	ld	s3,8(sp)
    800034e8:	03010113          	addi	sp,sp,48
    800034ec:	00008067          	ret

00000000800034f0 <uartputc_sync>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00002717          	auipc	a4,0x2
    80003500:	3fc72703          	lw	a4,1020(a4) # 800058f8 <panicked>
    80003504:	02071663          	bnez	a4,80003530 <uartputc_sync+0x40>
    80003508:	00050793          	mv	a5,a0
    8000350c:	100006b7          	lui	a3,0x10000
    80003510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003514:	02077713          	andi	a4,a4,32
    80003518:	fe070ce3          	beqz	a4,80003510 <uartputc_sync+0x20>
    8000351c:	0ff7f793          	andi	a5,a5,255
    80003520:	00f68023          	sb	a5,0(a3)
    80003524:	00813403          	ld	s0,8(sp)
    80003528:	01010113          	addi	sp,sp,16
    8000352c:	00008067          	ret
    80003530:	0000006f          	j	80003530 <uartputc_sync+0x40>

0000000080003534 <uartstart>:
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00813423          	sd	s0,8(sp)
    8000353c:	01010413          	addi	s0,sp,16
    80003540:	00002617          	auipc	a2,0x2
    80003544:	3c060613          	addi	a2,a2,960 # 80005900 <uart_tx_r>
    80003548:	00002517          	auipc	a0,0x2
    8000354c:	3c050513          	addi	a0,a0,960 # 80005908 <uart_tx_w>
    80003550:	00063783          	ld	a5,0(a2)
    80003554:	00053703          	ld	a4,0(a0)
    80003558:	04f70263          	beq	a4,a5,8000359c <uartstart+0x68>
    8000355c:	100005b7          	lui	a1,0x10000
    80003560:	00003817          	auipc	a6,0x3
    80003564:	64080813          	addi	a6,a6,1600 # 80006ba0 <uart_tx_buf>
    80003568:	01c0006f          	j	80003584 <uartstart+0x50>
    8000356c:	0006c703          	lbu	a4,0(a3)
    80003570:	00f63023          	sd	a5,0(a2)
    80003574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003578:	00063783          	ld	a5,0(a2)
    8000357c:	00053703          	ld	a4,0(a0)
    80003580:	00f70e63          	beq	a4,a5,8000359c <uartstart+0x68>
    80003584:	01f7f713          	andi	a4,a5,31
    80003588:	00e806b3          	add	a3,a6,a4
    8000358c:	0055c703          	lbu	a4,5(a1)
    80003590:	00178793          	addi	a5,a5,1
    80003594:	02077713          	andi	a4,a4,32
    80003598:	fc071ae3          	bnez	a4,8000356c <uartstart+0x38>
    8000359c:	00813403          	ld	s0,8(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <uartgetc>:
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00813423          	sd	s0,8(sp)
    800035b0:	01010413          	addi	s0,sp,16
    800035b4:	10000737          	lui	a4,0x10000
    800035b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035bc:	0017f793          	andi	a5,a5,1
    800035c0:	00078c63          	beqz	a5,800035d8 <uartgetc+0x30>
    800035c4:	00074503          	lbu	a0,0(a4)
    800035c8:	0ff57513          	andi	a0,a0,255
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret
    800035d8:	fff00513          	li	a0,-1
    800035dc:	ff1ff06f          	j	800035cc <uartgetc+0x24>

00000000800035e0 <uartintr>:
    800035e0:	100007b7          	lui	a5,0x10000
    800035e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035e8:	0017f793          	andi	a5,a5,1
    800035ec:	0a078463          	beqz	a5,80003694 <uartintr+0xb4>
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	02010413          	addi	s0,sp,32
    80003604:	100004b7          	lui	s1,0x10000
    80003608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000360c:	0ff57513          	andi	a0,a0,255
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	534080e7          	jalr	1332(ra) # 80002b44 <consoleintr>
    80003618:	0054c783          	lbu	a5,5(s1)
    8000361c:	0017f793          	andi	a5,a5,1
    80003620:	fe0794e3          	bnez	a5,80003608 <uartintr+0x28>
    80003624:	00002617          	auipc	a2,0x2
    80003628:	2dc60613          	addi	a2,a2,732 # 80005900 <uart_tx_r>
    8000362c:	00002517          	auipc	a0,0x2
    80003630:	2dc50513          	addi	a0,a0,732 # 80005908 <uart_tx_w>
    80003634:	00063783          	ld	a5,0(a2)
    80003638:	00053703          	ld	a4,0(a0)
    8000363c:	04f70263          	beq	a4,a5,80003680 <uartintr+0xa0>
    80003640:	100005b7          	lui	a1,0x10000
    80003644:	00003817          	auipc	a6,0x3
    80003648:	55c80813          	addi	a6,a6,1372 # 80006ba0 <uart_tx_buf>
    8000364c:	01c0006f          	j	80003668 <uartintr+0x88>
    80003650:	0006c703          	lbu	a4,0(a3)
    80003654:	00f63023          	sd	a5,0(a2)
    80003658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000365c:	00063783          	ld	a5,0(a2)
    80003660:	00053703          	ld	a4,0(a0)
    80003664:	00f70e63          	beq	a4,a5,80003680 <uartintr+0xa0>
    80003668:	01f7f713          	andi	a4,a5,31
    8000366c:	00e806b3          	add	a3,a6,a4
    80003670:	0055c703          	lbu	a4,5(a1)
    80003674:	00178793          	addi	a5,a5,1
    80003678:	02077713          	andi	a4,a4,32
    8000367c:	fc071ae3          	bnez	a4,80003650 <uartintr+0x70>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00813483          	ld	s1,8(sp)
    8000368c:	02010113          	addi	sp,sp,32
    80003690:	00008067          	ret
    80003694:	00002617          	auipc	a2,0x2
    80003698:	26c60613          	addi	a2,a2,620 # 80005900 <uart_tx_r>
    8000369c:	00002517          	auipc	a0,0x2
    800036a0:	26c50513          	addi	a0,a0,620 # 80005908 <uart_tx_w>
    800036a4:	00063783          	ld	a5,0(a2)
    800036a8:	00053703          	ld	a4,0(a0)
    800036ac:	04f70263          	beq	a4,a5,800036f0 <uartintr+0x110>
    800036b0:	100005b7          	lui	a1,0x10000
    800036b4:	00003817          	auipc	a6,0x3
    800036b8:	4ec80813          	addi	a6,a6,1260 # 80006ba0 <uart_tx_buf>
    800036bc:	01c0006f          	j	800036d8 <uartintr+0xf8>
    800036c0:	0006c703          	lbu	a4,0(a3)
    800036c4:	00f63023          	sd	a5,0(a2)
    800036c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036cc:	00063783          	ld	a5,0(a2)
    800036d0:	00053703          	ld	a4,0(a0)
    800036d4:	02f70063          	beq	a4,a5,800036f4 <uartintr+0x114>
    800036d8:	01f7f713          	andi	a4,a5,31
    800036dc:	00e806b3          	add	a3,a6,a4
    800036e0:	0055c703          	lbu	a4,5(a1)
    800036e4:	00178793          	addi	a5,a5,1
    800036e8:	02077713          	andi	a4,a4,32
    800036ec:	fc071ae3          	bnez	a4,800036c0 <uartintr+0xe0>
    800036f0:	00008067          	ret
    800036f4:	00008067          	ret

00000000800036f8 <kinit>:
    800036f8:	fc010113          	addi	sp,sp,-64
    800036fc:	02913423          	sd	s1,40(sp)
    80003700:	fffff7b7          	lui	a5,0xfffff
    80003704:	00004497          	auipc	s1,0x4
    80003708:	4cb48493          	addi	s1,s1,1227 # 80007bcf <end+0xfff>
    8000370c:	02813823          	sd	s0,48(sp)
    80003710:	01313c23          	sd	s3,24(sp)
    80003714:	00f4f4b3          	and	s1,s1,a5
    80003718:	02113c23          	sd	ra,56(sp)
    8000371c:	03213023          	sd	s2,32(sp)
    80003720:	01413823          	sd	s4,16(sp)
    80003724:	01513423          	sd	s5,8(sp)
    80003728:	04010413          	addi	s0,sp,64
    8000372c:	000017b7          	lui	a5,0x1
    80003730:	01100993          	li	s3,17
    80003734:	00f487b3          	add	a5,s1,a5
    80003738:	01b99993          	slli	s3,s3,0x1b
    8000373c:	06f9e063          	bltu	s3,a5,8000379c <kinit+0xa4>
    80003740:	00003a97          	auipc	s5,0x3
    80003744:	490a8a93          	addi	s5,s5,1168 # 80006bd0 <end>
    80003748:	0754ec63          	bltu	s1,s5,800037c0 <kinit+0xc8>
    8000374c:	0734fa63          	bgeu	s1,s3,800037c0 <kinit+0xc8>
    80003750:	00088a37          	lui	s4,0x88
    80003754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003758:	00002917          	auipc	s2,0x2
    8000375c:	1b890913          	addi	s2,s2,440 # 80005910 <kmem>
    80003760:	00ca1a13          	slli	s4,s4,0xc
    80003764:	0140006f          	j	80003778 <kinit+0x80>
    80003768:	000017b7          	lui	a5,0x1
    8000376c:	00f484b3          	add	s1,s1,a5
    80003770:	0554e863          	bltu	s1,s5,800037c0 <kinit+0xc8>
    80003774:	0534f663          	bgeu	s1,s3,800037c0 <kinit+0xc8>
    80003778:	00001637          	lui	a2,0x1
    8000377c:	00100593          	li	a1,1
    80003780:	00048513          	mv	a0,s1
    80003784:	00000097          	auipc	ra,0x0
    80003788:	5e4080e7          	jalr	1508(ra) # 80003d68 <__memset>
    8000378c:	00093783          	ld	a5,0(s2)
    80003790:	00f4b023          	sd	a5,0(s1)
    80003794:	00993023          	sd	s1,0(s2)
    80003798:	fd4498e3          	bne	s1,s4,80003768 <kinit+0x70>
    8000379c:	03813083          	ld	ra,56(sp)
    800037a0:	03013403          	ld	s0,48(sp)
    800037a4:	02813483          	ld	s1,40(sp)
    800037a8:	02013903          	ld	s2,32(sp)
    800037ac:	01813983          	ld	s3,24(sp)
    800037b0:	01013a03          	ld	s4,16(sp)
    800037b4:	00813a83          	ld	s5,8(sp)
    800037b8:	04010113          	addi	sp,sp,64
    800037bc:	00008067          	ret
    800037c0:	00002517          	auipc	a0,0x2
    800037c4:	a9850513          	addi	a0,a0,-1384 # 80005258 <digits+0x18>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	4b4080e7          	jalr	1204(ra) # 80002c7c <panic>

00000000800037d0 <freerange>:
    800037d0:	fc010113          	addi	sp,sp,-64
    800037d4:	000017b7          	lui	a5,0x1
    800037d8:	02913423          	sd	s1,40(sp)
    800037dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037e0:	009504b3          	add	s1,a0,s1
    800037e4:	fffff537          	lui	a0,0xfffff
    800037e8:	02813823          	sd	s0,48(sp)
    800037ec:	02113c23          	sd	ra,56(sp)
    800037f0:	03213023          	sd	s2,32(sp)
    800037f4:	01313c23          	sd	s3,24(sp)
    800037f8:	01413823          	sd	s4,16(sp)
    800037fc:	01513423          	sd	s5,8(sp)
    80003800:	01613023          	sd	s6,0(sp)
    80003804:	04010413          	addi	s0,sp,64
    80003808:	00a4f4b3          	and	s1,s1,a0
    8000380c:	00f487b3          	add	a5,s1,a5
    80003810:	06f5e463          	bltu	a1,a5,80003878 <freerange+0xa8>
    80003814:	00003a97          	auipc	s5,0x3
    80003818:	3bca8a93          	addi	s5,s5,956 # 80006bd0 <end>
    8000381c:	0954e263          	bltu	s1,s5,800038a0 <freerange+0xd0>
    80003820:	01100993          	li	s3,17
    80003824:	01b99993          	slli	s3,s3,0x1b
    80003828:	0734fc63          	bgeu	s1,s3,800038a0 <freerange+0xd0>
    8000382c:	00058a13          	mv	s4,a1
    80003830:	00002917          	auipc	s2,0x2
    80003834:	0e090913          	addi	s2,s2,224 # 80005910 <kmem>
    80003838:	00002b37          	lui	s6,0x2
    8000383c:	0140006f          	j	80003850 <freerange+0x80>
    80003840:	000017b7          	lui	a5,0x1
    80003844:	00f484b3          	add	s1,s1,a5
    80003848:	0554ec63          	bltu	s1,s5,800038a0 <freerange+0xd0>
    8000384c:	0534fa63          	bgeu	s1,s3,800038a0 <freerange+0xd0>
    80003850:	00001637          	lui	a2,0x1
    80003854:	00100593          	li	a1,1
    80003858:	00048513          	mv	a0,s1
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	50c080e7          	jalr	1292(ra) # 80003d68 <__memset>
    80003864:	00093703          	ld	a4,0(s2)
    80003868:	016487b3          	add	a5,s1,s6
    8000386c:	00e4b023          	sd	a4,0(s1)
    80003870:	00993023          	sd	s1,0(s2)
    80003874:	fcfa76e3          	bgeu	s4,a5,80003840 <freerange+0x70>
    80003878:	03813083          	ld	ra,56(sp)
    8000387c:	03013403          	ld	s0,48(sp)
    80003880:	02813483          	ld	s1,40(sp)
    80003884:	02013903          	ld	s2,32(sp)
    80003888:	01813983          	ld	s3,24(sp)
    8000388c:	01013a03          	ld	s4,16(sp)
    80003890:	00813a83          	ld	s5,8(sp)
    80003894:	00013b03          	ld	s6,0(sp)
    80003898:	04010113          	addi	sp,sp,64
    8000389c:	00008067          	ret
    800038a0:	00002517          	auipc	a0,0x2
    800038a4:	9b850513          	addi	a0,a0,-1608 # 80005258 <digits+0x18>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	3d4080e7          	jalr	980(ra) # 80002c7c <panic>

00000000800038b0 <kfree>:
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	00913423          	sd	s1,8(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	03451793          	slli	a5,a0,0x34
    800038c8:	04079c63          	bnez	a5,80003920 <kfree+0x70>
    800038cc:	00003797          	auipc	a5,0x3
    800038d0:	30478793          	addi	a5,a5,772 # 80006bd0 <end>
    800038d4:	00050493          	mv	s1,a0
    800038d8:	04f56463          	bltu	a0,a5,80003920 <kfree+0x70>
    800038dc:	01100793          	li	a5,17
    800038e0:	01b79793          	slli	a5,a5,0x1b
    800038e4:	02f57e63          	bgeu	a0,a5,80003920 <kfree+0x70>
    800038e8:	00001637          	lui	a2,0x1
    800038ec:	00100593          	li	a1,1
    800038f0:	00000097          	auipc	ra,0x0
    800038f4:	478080e7          	jalr	1144(ra) # 80003d68 <__memset>
    800038f8:	00002797          	auipc	a5,0x2
    800038fc:	01878793          	addi	a5,a5,24 # 80005910 <kmem>
    80003900:	0007b703          	ld	a4,0(a5)
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00e4b023          	sd	a4,0(s1)
    80003910:	0097b023          	sd	s1,0(a5)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	00002517          	auipc	a0,0x2
    80003924:	93850513          	addi	a0,a0,-1736 # 80005258 <digits+0x18>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	354080e7          	jalr	852(ra) # 80002c7c <panic>

0000000080003930 <kalloc>:
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	00002797          	auipc	a5,0x2
    80003948:	fcc78793          	addi	a5,a5,-52 # 80005910 <kmem>
    8000394c:	0007b483          	ld	s1,0(a5)
    80003950:	02048063          	beqz	s1,80003970 <kalloc+0x40>
    80003954:	0004b703          	ld	a4,0(s1)
    80003958:	00001637          	lui	a2,0x1
    8000395c:	00500593          	li	a1,5
    80003960:	00048513          	mv	a0,s1
    80003964:	00e7b023          	sd	a4,0(a5)
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	400080e7          	jalr	1024(ra) # 80003d68 <__memset>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00048513          	mv	a0,s1
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <initlock>:
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	00813403          	ld	s0,8(sp)
    80003998:	00b53423          	sd	a1,8(a0)
    8000399c:	00052023          	sw	zero,0(a0)
    800039a0:	00053823          	sd	zero,16(a0)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret

00000000800039ac <acquire>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	01213023          	sd	s2,0(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	00050493          	mv	s1,a0
    800039c8:	10002973          	csrr	s2,sstatus
    800039cc:	100027f3          	csrr	a5,sstatus
    800039d0:	ffd7f793          	andi	a5,a5,-3
    800039d4:	10079073          	csrw	sstatus,a5
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	8e8080e7          	jalr	-1816(ra) # 800022c0 <mycpu>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	06078e63          	beqz	a5,80003a60 <acquire+0xb4>
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	8d8080e7          	jalr	-1832(ra) # 800022c0 <mycpu>
    800039f0:	07852783          	lw	a5,120(a0)
    800039f4:	0004a703          	lw	a4,0(s1)
    800039f8:	0017879b          	addiw	a5,a5,1
    800039fc:	06f52c23          	sw	a5,120(a0)
    80003a00:	04071063          	bnez	a4,80003a40 <acquire+0x94>
    80003a04:	00100713          	li	a4,1
    80003a08:	00070793          	mv	a5,a4
    80003a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a10:	0007879b          	sext.w	a5,a5
    80003a14:	fe079ae3          	bnez	a5,80003a08 <acquire+0x5c>
    80003a18:	0ff0000f          	fence
    80003a1c:	fffff097          	auipc	ra,0xfffff
    80003a20:	8a4080e7          	jalr	-1884(ra) # 800022c0 <mycpu>
    80003a24:	01813083          	ld	ra,24(sp)
    80003a28:	01013403          	ld	s0,16(sp)
    80003a2c:	00a4b823          	sd	a0,16(s1)
    80003a30:	00013903          	ld	s2,0(sp)
    80003a34:	00813483          	ld	s1,8(sp)
    80003a38:	02010113          	addi	sp,sp,32
    80003a3c:	00008067          	ret
    80003a40:	0104b903          	ld	s2,16(s1)
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	87c080e7          	jalr	-1924(ra) # 800022c0 <mycpu>
    80003a4c:	faa91ce3          	bne	s2,a0,80003a04 <acquire+0x58>
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	81050513          	addi	a0,a0,-2032 # 80005260 <digits+0x20>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	224080e7          	jalr	548(ra) # 80002c7c <panic>
    80003a60:	00195913          	srli	s2,s2,0x1
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	85c080e7          	jalr	-1956(ra) # 800022c0 <mycpu>
    80003a6c:	00197913          	andi	s2,s2,1
    80003a70:	07252e23          	sw	s2,124(a0)
    80003a74:	f75ff06f          	j	800039e8 <acquire+0x3c>

0000000080003a78 <release>:
    80003a78:	fe010113          	addi	sp,sp,-32
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00913423          	sd	s1,8(sp)
    80003a88:	01213023          	sd	s2,0(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00052783          	lw	a5,0(a0)
    80003a94:	00079a63          	bnez	a5,80003aa8 <release+0x30>
    80003a98:	00001517          	auipc	a0,0x1
    80003a9c:	7d050513          	addi	a0,a0,2000 # 80005268 <digits+0x28>
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	1dc080e7          	jalr	476(ra) # 80002c7c <panic>
    80003aa8:	01053903          	ld	s2,16(a0)
    80003aac:	00050493          	mv	s1,a0
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	810080e7          	jalr	-2032(ra) # 800022c0 <mycpu>
    80003ab8:	fea910e3          	bne	s2,a0,80003a98 <release+0x20>
    80003abc:	0004b823          	sd	zero,16(s1)
    80003ac0:	0ff0000f          	fence
    80003ac4:	0f50000f          	fence	iorw,ow
    80003ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	7f4080e7          	jalr	2036(ra) # 800022c0 <mycpu>
    80003ad4:	100027f3          	csrr	a5,sstatus
    80003ad8:	0027f793          	andi	a5,a5,2
    80003adc:	04079a63          	bnez	a5,80003b30 <release+0xb8>
    80003ae0:	07852783          	lw	a5,120(a0)
    80003ae4:	02f05e63          	blez	a5,80003b20 <release+0xa8>
    80003ae8:	fff7871b          	addiw	a4,a5,-1
    80003aec:	06e52c23          	sw	a4,120(a0)
    80003af0:	00071c63          	bnez	a4,80003b08 <release+0x90>
    80003af4:	07c52783          	lw	a5,124(a0)
    80003af8:	00078863          	beqz	a5,80003b08 <release+0x90>
    80003afc:	100027f3          	csrr	a5,sstatus
    80003b00:	0027e793          	ori	a5,a5,2
    80003b04:	10079073          	csrw	sstatus,a5
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	00013903          	ld	s2,0(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret
    80003b20:	00001517          	auipc	a0,0x1
    80003b24:	76850513          	addi	a0,a0,1896 # 80005288 <digits+0x48>
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	154080e7          	jalr	340(ra) # 80002c7c <panic>
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	74050513          	addi	a0,a0,1856 # 80005270 <digits+0x30>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	144080e7          	jalr	324(ra) # 80002c7c <panic>

0000000080003b40 <holding>:
    80003b40:	00052783          	lw	a5,0(a0)
    80003b44:	00079663          	bnez	a5,80003b50 <holding+0x10>
    80003b48:	00000513          	li	a0,0
    80003b4c:	00008067          	ret
    80003b50:	fe010113          	addi	sp,sp,-32
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	02010413          	addi	s0,sp,32
    80003b64:	01053483          	ld	s1,16(a0)
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	758080e7          	jalr	1880(ra) # 800022c0 <mycpu>
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	40a48533          	sub	a0,s1,a0
    80003b7c:	00153513          	seqz	a0,a0
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret

0000000080003b8c <push_off>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	100024f3          	csrr	s1,sstatus
    80003ba4:	100027f3          	csrr	a5,sstatus
    80003ba8:	ffd7f793          	andi	a5,a5,-3
    80003bac:	10079073          	csrw	sstatus,a5
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	710080e7          	jalr	1808(ra) # 800022c0 <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	02078663          	beqz	a5,80003be8 <push_off+0x5c>
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	700080e7          	jalr	1792(ra) # 800022c0 <mycpu>
    80003bc8:	07852783          	lw	a5,120(a0)
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	0017879b          	addiw	a5,a5,1
    80003bd8:	06f52c23          	sw	a5,120(a0)
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret
    80003be8:	0014d493          	srli	s1,s1,0x1
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	6d4080e7          	jalr	1748(ra) # 800022c0 <mycpu>
    80003bf4:	0014f493          	andi	s1,s1,1
    80003bf8:	06952e23          	sw	s1,124(a0)
    80003bfc:	fc5ff06f          	j	80003bc0 <push_off+0x34>

0000000080003c00 <pop_off>:
    80003c00:	ff010113          	addi	sp,sp,-16
    80003c04:	00813023          	sd	s0,0(sp)
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	6b0080e7          	jalr	1712(ra) # 800022c0 <mycpu>
    80003c18:	100027f3          	csrr	a5,sstatus
    80003c1c:	0027f793          	andi	a5,a5,2
    80003c20:	04079663          	bnez	a5,80003c6c <pop_off+0x6c>
    80003c24:	07852783          	lw	a5,120(a0)
    80003c28:	02f05a63          	blez	a5,80003c5c <pop_off+0x5c>
    80003c2c:	fff7871b          	addiw	a4,a5,-1
    80003c30:	06e52c23          	sw	a4,120(a0)
    80003c34:	00071c63          	bnez	a4,80003c4c <pop_off+0x4c>
    80003c38:	07c52783          	lw	a5,124(a0)
    80003c3c:	00078863          	beqz	a5,80003c4c <pop_off+0x4c>
    80003c40:	100027f3          	csrr	a5,sstatus
    80003c44:	0027e793          	ori	a5,a5,2
    80003c48:	10079073          	csrw	sstatus,a5
    80003c4c:	00813083          	ld	ra,8(sp)
    80003c50:	00013403          	ld	s0,0(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret
    80003c5c:	00001517          	auipc	a0,0x1
    80003c60:	62c50513          	addi	a0,a0,1580 # 80005288 <digits+0x48>
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	018080e7          	jalr	24(ra) # 80002c7c <panic>
    80003c6c:	00001517          	auipc	a0,0x1
    80003c70:	60450513          	addi	a0,a0,1540 # 80005270 <digits+0x30>
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	008080e7          	jalr	8(ra) # 80002c7c <panic>

0000000080003c7c <push_on>:
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	02010413          	addi	s0,sp,32
    80003c90:	100024f3          	csrr	s1,sstatus
    80003c94:	100027f3          	csrr	a5,sstatus
    80003c98:	0027e793          	ori	a5,a5,2
    80003c9c:	10079073          	csrw	sstatus,a5
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	620080e7          	jalr	1568(ra) # 800022c0 <mycpu>
    80003ca8:	07852783          	lw	a5,120(a0)
    80003cac:	02078663          	beqz	a5,80003cd8 <push_on+0x5c>
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	610080e7          	jalr	1552(ra) # 800022c0 <mycpu>
    80003cb8:	07852783          	lw	a5,120(a0)
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	0017879b          	addiw	a5,a5,1
    80003cc8:	06f52c23          	sw	a5,120(a0)
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret
    80003cd8:	0014d493          	srli	s1,s1,0x1
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	5e4080e7          	jalr	1508(ra) # 800022c0 <mycpu>
    80003ce4:	0014f493          	andi	s1,s1,1
    80003ce8:	06952e23          	sw	s1,124(a0)
    80003cec:	fc5ff06f          	j	80003cb0 <push_on+0x34>

0000000080003cf0 <pop_on>:
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00813023          	sd	s0,0(sp)
    80003cf8:	00113423          	sd	ra,8(sp)
    80003cfc:	01010413          	addi	s0,sp,16
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	5c0080e7          	jalr	1472(ra) # 800022c0 <mycpu>
    80003d08:	100027f3          	csrr	a5,sstatus
    80003d0c:	0027f793          	andi	a5,a5,2
    80003d10:	04078463          	beqz	a5,80003d58 <pop_on+0x68>
    80003d14:	07852783          	lw	a5,120(a0)
    80003d18:	02f05863          	blez	a5,80003d48 <pop_on+0x58>
    80003d1c:	fff7879b          	addiw	a5,a5,-1
    80003d20:	06f52c23          	sw	a5,120(a0)
    80003d24:	07853783          	ld	a5,120(a0)
    80003d28:	00079863          	bnez	a5,80003d38 <pop_on+0x48>
    80003d2c:	100027f3          	csrr	a5,sstatus
    80003d30:	ffd7f793          	andi	a5,a5,-3
    80003d34:	10079073          	csrw	sstatus,a5
    80003d38:	00813083          	ld	ra,8(sp)
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret
    80003d48:	00001517          	auipc	a0,0x1
    80003d4c:	56850513          	addi	a0,a0,1384 # 800052b0 <digits+0x70>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	f2c080e7          	jalr	-212(ra) # 80002c7c <panic>
    80003d58:	00001517          	auipc	a0,0x1
    80003d5c:	53850513          	addi	a0,a0,1336 # 80005290 <digits+0x50>
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	f1c080e7          	jalr	-228(ra) # 80002c7c <panic>

0000000080003d68 <__memset>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	1a060e63          	beqz	a2,80003f30 <__memset+0x1c8>
    80003d78:	40a007b3          	neg	a5,a0
    80003d7c:	0077f793          	andi	a5,a5,7
    80003d80:	00778693          	addi	a3,a5,7
    80003d84:	00b00813          	li	a6,11
    80003d88:	0ff5f593          	andi	a1,a1,255
    80003d8c:	fff6071b          	addiw	a4,a2,-1
    80003d90:	1b06e663          	bltu	a3,a6,80003f3c <__memset+0x1d4>
    80003d94:	1cd76463          	bltu	a4,a3,80003f5c <__memset+0x1f4>
    80003d98:	1a078e63          	beqz	a5,80003f54 <__memset+0x1ec>
    80003d9c:	00b50023          	sb	a1,0(a0)
    80003da0:	00100713          	li	a4,1
    80003da4:	1ae78463          	beq	a5,a4,80003f4c <__memset+0x1e4>
    80003da8:	00b500a3          	sb	a1,1(a0)
    80003dac:	00200713          	li	a4,2
    80003db0:	1ae78a63          	beq	a5,a4,80003f64 <__memset+0x1fc>
    80003db4:	00b50123          	sb	a1,2(a0)
    80003db8:	00300713          	li	a4,3
    80003dbc:	18e78463          	beq	a5,a4,80003f44 <__memset+0x1dc>
    80003dc0:	00b501a3          	sb	a1,3(a0)
    80003dc4:	00400713          	li	a4,4
    80003dc8:	1ae78263          	beq	a5,a4,80003f6c <__memset+0x204>
    80003dcc:	00b50223          	sb	a1,4(a0)
    80003dd0:	00500713          	li	a4,5
    80003dd4:	1ae78063          	beq	a5,a4,80003f74 <__memset+0x20c>
    80003dd8:	00b502a3          	sb	a1,5(a0)
    80003ddc:	00700713          	li	a4,7
    80003de0:	18e79e63          	bne	a5,a4,80003f7c <__memset+0x214>
    80003de4:	00b50323          	sb	a1,6(a0)
    80003de8:	00700e93          	li	t4,7
    80003dec:	00859713          	slli	a4,a1,0x8
    80003df0:	00e5e733          	or	a4,a1,a4
    80003df4:	01059e13          	slli	t3,a1,0x10
    80003df8:	01c76e33          	or	t3,a4,t3
    80003dfc:	01859313          	slli	t1,a1,0x18
    80003e00:	006e6333          	or	t1,t3,t1
    80003e04:	02059893          	slli	a7,a1,0x20
    80003e08:	40f60e3b          	subw	t3,a2,a5
    80003e0c:	011368b3          	or	a7,t1,a7
    80003e10:	02859813          	slli	a6,a1,0x28
    80003e14:	0108e833          	or	a6,a7,a6
    80003e18:	03059693          	slli	a3,a1,0x30
    80003e1c:	003e589b          	srliw	a7,t3,0x3
    80003e20:	00d866b3          	or	a3,a6,a3
    80003e24:	03859713          	slli	a4,a1,0x38
    80003e28:	00389813          	slli	a6,a7,0x3
    80003e2c:	00f507b3          	add	a5,a0,a5
    80003e30:	00e6e733          	or	a4,a3,a4
    80003e34:	000e089b          	sext.w	a7,t3
    80003e38:	00f806b3          	add	a3,a6,a5
    80003e3c:	00e7b023          	sd	a4,0(a5)
    80003e40:	00878793          	addi	a5,a5,8
    80003e44:	fed79ce3          	bne	a5,a3,80003e3c <__memset+0xd4>
    80003e48:	ff8e7793          	andi	a5,t3,-8
    80003e4c:	0007871b          	sext.w	a4,a5
    80003e50:	01d787bb          	addw	a5,a5,t4
    80003e54:	0ce88e63          	beq	a7,a4,80003f30 <__memset+0x1c8>
    80003e58:	00f50733          	add	a4,a0,a5
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0017871b          	addiw	a4,a5,1
    80003e64:	0cc77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0027871b          	addiw	a4,a5,2
    80003e74:	0ac77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0037871b          	addiw	a4,a5,3
    80003e84:	0ac77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0047871b          	addiw	a4,a5,4
    80003e94:	08c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0057871b          	addiw	a4,a5,5
    80003ea4:	08c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0067871b          	addiw	a4,a5,6
    80003eb4:	06c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0077871b          	addiw	a4,a5,7
    80003ec4:	06c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0087871b          	addiw	a4,a5,8
    80003ed4:	04c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0097871b          	addiw	a4,a5,9
    80003ee4:	04c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	00a7871b          	addiw	a4,a5,10
    80003ef4:	02c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00b7871b          	addiw	a4,a5,11
    80003f04:	02c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00c7871b          	addiw	a4,a5,12
    80003f14:	00c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	00d7879b          	addiw	a5,a5,13
    80003f24:	00c7f663          	bgeu	a5,a2,80003f30 <__memset+0x1c8>
    80003f28:	00f507b3          	add	a5,a0,a5
    80003f2c:	00b78023          	sb	a1,0(a5)
    80003f30:	00813403          	ld	s0,8(sp)
    80003f34:	01010113          	addi	sp,sp,16
    80003f38:	00008067          	ret
    80003f3c:	00b00693          	li	a3,11
    80003f40:	e55ff06f          	j	80003d94 <__memset+0x2c>
    80003f44:	00300e93          	li	t4,3
    80003f48:	ea5ff06f          	j	80003dec <__memset+0x84>
    80003f4c:	00100e93          	li	t4,1
    80003f50:	e9dff06f          	j	80003dec <__memset+0x84>
    80003f54:	00000e93          	li	t4,0
    80003f58:	e95ff06f          	j	80003dec <__memset+0x84>
    80003f5c:	00000793          	li	a5,0
    80003f60:	ef9ff06f          	j	80003e58 <__memset+0xf0>
    80003f64:	00200e93          	li	t4,2
    80003f68:	e85ff06f          	j	80003dec <__memset+0x84>
    80003f6c:	00400e93          	li	t4,4
    80003f70:	e7dff06f          	j	80003dec <__memset+0x84>
    80003f74:	00500e93          	li	t4,5
    80003f78:	e75ff06f          	j	80003dec <__memset+0x84>
    80003f7c:	00600e93          	li	t4,6
    80003f80:	e6dff06f          	j	80003dec <__memset+0x84>

0000000080003f84 <__memmove>:
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00813423          	sd	s0,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	0e060863          	beqz	a2,80004080 <__memmove+0xfc>
    80003f94:	fff6069b          	addiw	a3,a2,-1
    80003f98:	0006881b          	sext.w	a6,a3
    80003f9c:	0ea5e863          	bltu	a1,a0,8000408c <__memmove+0x108>
    80003fa0:	00758713          	addi	a4,a1,7
    80003fa4:	00a5e7b3          	or	a5,a1,a0
    80003fa8:	40a70733          	sub	a4,a4,a0
    80003fac:	0077f793          	andi	a5,a5,7
    80003fb0:	00f73713          	sltiu	a4,a4,15
    80003fb4:	00174713          	xori	a4,a4,1
    80003fb8:	0017b793          	seqz	a5,a5
    80003fbc:	00e7f7b3          	and	a5,a5,a4
    80003fc0:	10078863          	beqz	a5,800040d0 <__memmove+0x14c>
    80003fc4:	00900793          	li	a5,9
    80003fc8:	1107f463          	bgeu	a5,a6,800040d0 <__memmove+0x14c>
    80003fcc:	0036581b          	srliw	a6,a2,0x3
    80003fd0:	fff8081b          	addiw	a6,a6,-1
    80003fd4:	02081813          	slli	a6,a6,0x20
    80003fd8:	01d85893          	srli	a7,a6,0x1d
    80003fdc:	00858813          	addi	a6,a1,8
    80003fe0:	00058793          	mv	a5,a1
    80003fe4:	00050713          	mv	a4,a0
    80003fe8:	01088833          	add	a6,a7,a6
    80003fec:	0007b883          	ld	a7,0(a5)
    80003ff0:	00878793          	addi	a5,a5,8
    80003ff4:	00870713          	addi	a4,a4,8
    80003ff8:	ff173c23          	sd	a7,-8(a4)
    80003ffc:	ff0798e3          	bne	a5,a6,80003fec <__memmove+0x68>
    80004000:	ff867713          	andi	a4,a2,-8
    80004004:	02071793          	slli	a5,a4,0x20
    80004008:	0207d793          	srli	a5,a5,0x20
    8000400c:	00f585b3          	add	a1,a1,a5
    80004010:	40e686bb          	subw	a3,a3,a4
    80004014:	00f507b3          	add	a5,a0,a5
    80004018:	06e60463          	beq	a2,a4,80004080 <__memmove+0xfc>
    8000401c:	0005c703          	lbu	a4,0(a1)
    80004020:	00e78023          	sb	a4,0(a5)
    80004024:	04068e63          	beqz	a3,80004080 <__memmove+0xfc>
    80004028:	0015c603          	lbu	a2,1(a1)
    8000402c:	00100713          	li	a4,1
    80004030:	00c780a3          	sb	a2,1(a5)
    80004034:	04e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004038:	0025c603          	lbu	a2,2(a1)
    8000403c:	00200713          	li	a4,2
    80004040:	00c78123          	sb	a2,2(a5)
    80004044:	02e68e63          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004048:	0035c603          	lbu	a2,3(a1)
    8000404c:	00300713          	li	a4,3
    80004050:	00c781a3          	sb	a2,3(a5)
    80004054:	02e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004058:	0045c603          	lbu	a2,4(a1)
    8000405c:	00400713          	li	a4,4
    80004060:	00c78223          	sb	a2,4(a5)
    80004064:	00e68e63          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004068:	0055c603          	lbu	a2,5(a1)
    8000406c:	00500713          	li	a4,5
    80004070:	00c782a3          	sb	a2,5(a5)
    80004074:	00e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004078:	0065c703          	lbu	a4,6(a1)
    8000407c:	00e78323          	sb	a4,6(a5)
    80004080:	00813403          	ld	s0,8(sp)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret
    8000408c:	02061713          	slli	a4,a2,0x20
    80004090:	02075713          	srli	a4,a4,0x20
    80004094:	00e587b3          	add	a5,a1,a4
    80004098:	f0f574e3          	bgeu	a0,a5,80003fa0 <__memmove+0x1c>
    8000409c:	02069613          	slli	a2,a3,0x20
    800040a0:	02065613          	srli	a2,a2,0x20
    800040a4:	fff64613          	not	a2,a2
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00c78633          	add	a2,a5,a2
    800040b0:	fff7c683          	lbu	a3,-1(a5)
    800040b4:	fff78793          	addi	a5,a5,-1
    800040b8:	fff70713          	addi	a4,a4,-1
    800040bc:	00d70023          	sb	a3,0(a4)
    800040c0:	fec798e3          	bne	a5,a2,800040b0 <__memmove+0x12c>
    800040c4:	00813403          	ld	s0,8(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret
    800040d0:	02069713          	slli	a4,a3,0x20
    800040d4:	02075713          	srli	a4,a4,0x20
    800040d8:	00170713          	addi	a4,a4,1
    800040dc:	00e50733          	add	a4,a0,a4
    800040e0:	00050793          	mv	a5,a0
    800040e4:	0005c683          	lbu	a3,0(a1)
    800040e8:	00178793          	addi	a5,a5,1
    800040ec:	00158593          	addi	a1,a1,1
    800040f0:	fed78fa3          	sb	a3,-1(a5)
    800040f4:	fee798e3          	bne	a5,a4,800040e4 <__memmove+0x160>
    800040f8:	f89ff06f          	j	80004080 <__memmove+0xfc>

00000000800040fc <__mem_free>:
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00813423          	sd	s0,8(sp)
    80004104:	01010413          	addi	s0,sp,16
    80004108:	00002597          	auipc	a1,0x2
    8000410c:	81058593          	addi	a1,a1,-2032 # 80005918 <freep>
    80004110:	0005b783          	ld	a5,0(a1)
    80004114:	ff050693          	addi	a3,a0,-16
    80004118:	0007b703          	ld	a4,0(a5)
    8000411c:	00d7fc63          	bgeu	a5,a3,80004134 <__mem_free+0x38>
    80004120:	00e6ee63          	bltu	a3,a4,8000413c <__mem_free+0x40>
    80004124:	00e7fc63          	bgeu	a5,a4,8000413c <__mem_free+0x40>
    80004128:	00070793          	mv	a5,a4
    8000412c:	0007b703          	ld	a4,0(a5)
    80004130:	fed7e8e3          	bltu	a5,a3,80004120 <__mem_free+0x24>
    80004134:	fee7eae3          	bltu	a5,a4,80004128 <__mem_free+0x2c>
    80004138:	fee6f8e3          	bgeu	a3,a4,80004128 <__mem_free+0x2c>
    8000413c:	ff852803          	lw	a6,-8(a0)
    80004140:	02081613          	slli	a2,a6,0x20
    80004144:	01c65613          	srli	a2,a2,0x1c
    80004148:	00c68633          	add	a2,a3,a2
    8000414c:	02c70a63          	beq	a4,a2,80004180 <__mem_free+0x84>
    80004150:	fee53823          	sd	a4,-16(a0)
    80004154:	0087a503          	lw	a0,8(a5)
    80004158:	02051613          	slli	a2,a0,0x20
    8000415c:	01c65613          	srli	a2,a2,0x1c
    80004160:	00c78633          	add	a2,a5,a2
    80004164:	04c68263          	beq	a3,a2,800041a8 <__mem_free+0xac>
    80004168:	00813403          	ld	s0,8(sp)
    8000416c:	00d7b023          	sd	a3,0(a5)
    80004170:	00f5b023          	sd	a5,0(a1)
    80004174:	00000513          	li	a0,0
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret
    80004180:	00872603          	lw	a2,8(a4)
    80004184:	00073703          	ld	a4,0(a4)
    80004188:	0106083b          	addw	a6,a2,a6
    8000418c:	ff052c23          	sw	a6,-8(a0)
    80004190:	fee53823          	sd	a4,-16(a0)
    80004194:	0087a503          	lw	a0,8(a5)
    80004198:	02051613          	slli	a2,a0,0x20
    8000419c:	01c65613          	srli	a2,a2,0x1c
    800041a0:	00c78633          	add	a2,a5,a2
    800041a4:	fcc692e3          	bne	a3,a2,80004168 <__mem_free+0x6c>
    800041a8:	00813403          	ld	s0,8(sp)
    800041ac:	0105053b          	addw	a0,a0,a6
    800041b0:	00a7a423          	sw	a0,8(a5)
    800041b4:	00e7b023          	sd	a4,0(a5)
    800041b8:	00f5b023          	sd	a5,0(a1)
    800041bc:	00000513          	li	a0,0
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <__mem_alloc>:
    800041c8:	fc010113          	addi	sp,sp,-64
    800041cc:	02813823          	sd	s0,48(sp)
    800041d0:	02913423          	sd	s1,40(sp)
    800041d4:	03213023          	sd	s2,32(sp)
    800041d8:	01513423          	sd	s5,8(sp)
    800041dc:	02113c23          	sd	ra,56(sp)
    800041e0:	01313c23          	sd	s3,24(sp)
    800041e4:	01413823          	sd	s4,16(sp)
    800041e8:	01613023          	sd	s6,0(sp)
    800041ec:	04010413          	addi	s0,sp,64
    800041f0:	00001a97          	auipc	s5,0x1
    800041f4:	728a8a93          	addi	s5,s5,1832 # 80005918 <freep>
    800041f8:	00f50913          	addi	s2,a0,15
    800041fc:	000ab683          	ld	a3,0(s5)
    80004200:	00495913          	srli	s2,s2,0x4
    80004204:	0019049b          	addiw	s1,s2,1
    80004208:	00048913          	mv	s2,s1
    8000420c:	0c068c63          	beqz	a3,800042e4 <__mem_alloc+0x11c>
    80004210:	0006b503          	ld	a0,0(a3)
    80004214:	00852703          	lw	a4,8(a0)
    80004218:	10977063          	bgeu	a4,s1,80004318 <__mem_alloc+0x150>
    8000421c:	000017b7          	lui	a5,0x1
    80004220:	0009099b          	sext.w	s3,s2
    80004224:	0af4e863          	bltu	s1,a5,800042d4 <__mem_alloc+0x10c>
    80004228:	02099a13          	slli	s4,s3,0x20
    8000422c:	01ca5a13          	srli	s4,s4,0x1c
    80004230:	fff00b13          	li	s6,-1
    80004234:	0100006f          	j	80004244 <__mem_alloc+0x7c>
    80004238:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000423c:	00852703          	lw	a4,8(a0)
    80004240:	04977463          	bgeu	a4,s1,80004288 <__mem_alloc+0xc0>
    80004244:	00050793          	mv	a5,a0
    80004248:	fea698e3          	bne	a3,a0,80004238 <__mem_alloc+0x70>
    8000424c:	000a0513          	mv	a0,s4
    80004250:	00000097          	auipc	ra,0x0
    80004254:	1f0080e7          	jalr	496(ra) # 80004440 <kvmincrease>
    80004258:	00050793          	mv	a5,a0
    8000425c:	01050513          	addi	a0,a0,16
    80004260:	07678e63          	beq	a5,s6,800042dc <__mem_alloc+0x114>
    80004264:	0137a423          	sw	s3,8(a5)
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	e94080e7          	jalr	-364(ra) # 800040fc <__mem_free>
    80004270:	000ab783          	ld	a5,0(s5)
    80004274:	06078463          	beqz	a5,800042dc <__mem_alloc+0x114>
    80004278:	0007b503          	ld	a0,0(a5)
    8000427c:	00078693          	mv	a3,a5
    80004280:	00852703          	lw	a4,8(a0)
    80004284:	fc9760e3          	bltu	a4,s1,80004244 <__mem_alloc+0x7c>
    80004288:	08e48263          	beq	s1,a4,8000430c <__mem_alloc+0x144>
    8000428c:	4127073b          	subw	a4,a4,s2
    80004290:	02071693          	slli	a3,a4,0x20
    80004294:	01c6d693          	srli	a3,a3,0x1c
    80004298:	00e52423          	sw	a4,8(a0)
    8000429c:	00d50533          	add	a0,a0,a3
    800042a0:	01252423          	sw	s2,8(a0)
    800042a4:	00fab023          	sd	a5,0(s5)
    800042a8:	01050513          	addi	a0,a0,16
    800042ac:	03813083          	ld	ra,56(sp)
    800042b0:	03013403          	ld	s0,48(sp)
    800042b4:	02813483          	ld	s1,40(sp)
    800042b8:	02013903          	ld	s2,32(sp)
    800042bc:	01813983          	ld	s3,24(sp)
    800042c0:	01013a03          	ld	s4,16(sp)
    800042c4:	00813a83          	ld	s5,8(sp)
    800042c8:	00013b03          	ld	s6,0(sp)
    800042cc:	04010113          	addi	sp,sp,64
    800042d0:	00008067          	ret
    800042d4:	000019b7          	lui	s3,0x1
    800042d8:	f51ff06f          	j	80004228 <__mem_alloc+0x60>
    800042dc:	00000513          	li	a0,0
    800042e0:	fcdff06f          	j	800042ac <__mem_alloc+0xe4>
    800042e4:	00003797          	auipc	a5,0x3
    800042e8:	8dc78793          	addi	a5,a5,-1828 # 80006bc0 <base>
    800042ec:	00078513          	mv	a0,a5
    800042f0:	00fab023          	sd	a5,0(s5)
    800042f4:	00f7b023          	sd	a5,0(a5)
    800042f8:	00000713          	li	a4,0
    800042fc:	00003797          	auipc	a5,0x3
    80004300:	8c07a623          	sw	zero,-1844(a5) # 80006bc8 <base+0x8>
    80004304:	00050693          	mv	a3,a0
    80004308:	f11ff06f          	j	80004218 <__mem_alloc+0x50>
    8000430c:	00053703          	ld	a4,0(a0)
    80004310:	00e7b023          	sd	a4,0(a5)
    80004314:	f91ff06f          	j	800042a4 <__mem_alloc+0xdc>
    80004318:	00068793          	mv	a5,a3
    8000431c:	f6dff06f          	j	80004288 <__mem_alloc+0xc0>

0000000080004320 <__putc>:
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	00050793          	mv	a5,a0
    80004334:	fef40593          	addi	a1,s0,-17
    80004338:	00100613          	li	a2,1
    8000433c:	00000513          	li	a0,0
    80004340:	fef407a3          	sb	a5,-17(s0)
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	918080e7          	jalr	-1768(ra) # 80002c5c <console_write>
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret

000000008000435c <__getc>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00113c23          	sd	ra,24(sp)
    80004368:	02010413          	addi	s0,sp,32
    8000436c:	fe840593          	addi	a1,s0,-24
    80004370:	00100613          	li	a2,1
    80004374:	00000513          	li	a0,0
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	8c4080e7          	jalr	-1852(ra) # 80002c3c <console_read>
    80004380:	fe844503          	lbu	a0,-24(s0)
    80004384:	01813083          	ld	ra,24(sp)
    80004388:	01013403          	ld	s0,16(sp)
    8000438c:	02010113          	addi	sp,sp,32
    80004390:	00008067          	ret

0000000080004394 <console_handler>:
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00113c23          	sd	ra,24(sp)
    800043a0:	00913423          	sd	s1,8(sp)
    800043a4:	02010413          	addi	s0,sp,32
    800043a8:	14202773          	csrr	a4,scause
    800043ac:	100027f3          	csrr	a5,sstatus
    800043b0:	0027f793          	andi	a5,a5,2
    800043b4:	06079e63          	bnez	a5,80004430 <console_handler+0x9c>
    800043b8:	00074c63          	bltz	a4,800043d0 <console_handler+0x3c>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret
    800043d0:	0ff77713          	andi	a4,a4,255
    800043d4:	00900793          	li	a5,9
    800043d8:	fef712e3          	bne	a4,a5,800043bc <console_handler+0x28>
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	4b8080e7          	jalr	1208(ra) # 80002894 <plic_claim>
    800043e4:	00a00793          	li	a5,10
    800043e8:	00050493          	mv	s1,a0
    800043ec:	02f50c63          	beq	a0,a5,80004424 <console_handler+0x90>
    800043f0:	fc0506e3          	beqz	a0,800043bc <console_handler+0x28>
    800043f4:	00050593          	mv	a1,a0
    800043f8:	00001517          	auipc	a0,0x1
    800043fc:	dc050513          	addi	a0,a0,-576 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004400:	fffff097          	auipc	ra,0xfffff
    80004404:	8d8080e7          	jalr	-1832(ra) # 80002cd8 <__printf>
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	01813083          	ld	ra,24(sp)
    80004410:	00048513          	mv	a0,s1
    80004414:	00813483          	ld	s1,8(sp)
    80004418:	02010113          	addi	sp,sp,32
    8000441c:	ffffe317          	auipc	t1,0xffffe
    80004420:	4b030067          	jr	1200(t1) # 800028cc <plic_complete>
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	1bc080e7          	jalr	444(ra) # 800035e0 <uartintr>
    8000442c:	fddff06f          	j	80004408 <console_handler+0x74>
    80004430:	00001517          	auipc	a0,0x1
    80004434:	e8850513          	addi	a0,a0,-376 # 800052b8 <digits+0x78>
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	844080e7          	jalr	-1980(ra) # 80002c7c <panic>

0000000080004440 <kvmincrease>:
    80004440:	fe010113          	addi	sp,sp,-32
    80004444:	01213023          	sd	s2,0(sp)
    80004448:	00001937          	lui	s2,0x1
    8000444c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00113c23          	sd	ra,24(sp)
    80004458:	00913423          	sd	s1,8(sp)
    8000445c:	02010413          	addi	s0,sp,32
    80004460:	01250933          	add	s2,a0,s2
    80004464:	00c95913          	srli	s2,s2,0xc
    80004468:	02090863          	beqz	s2,80004498 <kvmincrease+0x58>
    8000446c:	00000493          	li	s1,0
    80004470:	00148493          	addi	s1,s1,1
    80004474:	fffff097          	auipc	ra,0xfffff
    80004478:	4bc080e7          	jalr	1212(ra) # 80003930 <kalloc>
    8000447c:	fe991ae3          	bne	s2,s1,80004470 <kvmincrease+0x30>
    80004480:	01813083          	ld	ra,24(sp)
    80004484:	01013403          	ld	s0,16(sp)
    80004488:	00813483          	ld	s1,8(sp)
    8000448c:	00013903          	ld	s2,0(sp)
    80004490:	02010113          	addi	sp,sp,32
    80004494:	00008067          	ret
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	00013903          	ld	s2,0(sp)
    800044a8:	00000513          	li	a0,0
    800044ac:	02010113          	addi	sp,sp,32
    800044b0:	00008067          	ret
	...
