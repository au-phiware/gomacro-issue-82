## Steps to reproduce

```
$ gomacro -f -w gen.gomacro
// debug: looking for package "gen" ...
// debug: 9.266171ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "gen", stderr: <<>> stdout: <<{
	"ImportPath": "gen",
	"Match": [
		"gen"
	],
	"Incomplete": true,
	"Error": {
		"ImportStack": [
			"gen"
		],
		"Pos": "",
		"Err": "unknown import path \"gen\": cannot find module providing package gen"
	}
}
>>

// debug: 10.437444ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-m" "-json" "all", stderr: <<warning: pattern "all" matched no module dependencies
>> stdout: <<>>

// debug: 10.766086ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "env" "GOMOD", stderr: <<>> stdout: <</dev/null
>>

// debug: error loading package "gen" metadata: -: unknown import path "gen": cannot find module providing package gen
// debug: looking for package "github.com/golang/protobuf/descriptor" ...
// debug: 9.27585ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "env" "GOMOD", stderr: <<>> stdout: <</dev/null
>>

// debug: 9.961005ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-m" "-json" "all", stderr: <<warning: pattern "all" matched no module dependencies
>> stdout: <<>>

// debug: 1.284147899s for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "github.com/golang/protobuf/descriptor", stderr: <<go: finding github.com/golang/protobuf/descriptor latest
>> stdout: <<{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/errors",
	"ImportPath": "errors",
	"Name": "errors",
	"Doc": "Package errors implements functions to manipulate errors.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/errors.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/errors.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"errors.go"
	],
	"XTestGoFiles": [
		"errors_test.go",
		"example_test.go"
	],
	"XTestImports": [
		"errors",
		"fmt",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/cpu",
	"ImportPath": "internal/cpu",
	"Name": "cpu",
	"Doc": "Package cpu implements processor feature detection used by the Go standard library.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/cpu.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/cpu.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"cpu.go",
		"cpu_amd64.go",
		"cpu_x86.go"
	],
	"IgnoredGoFiles": [
		"cpu_386.go",
		"cpu_amd64p32.go",
		"cpu_arm.go",
		"cpu_arm64.go",
		"cpu_mips.go",
		"cpu_mips64.go",
		"cpu_mips64le.go",
		"cpu_mipsle.go",
		"cpu_no_init.go",
		"cpu_ppc64x.go",
		"cpu_s390x.go",
		"cpu_s390x_test.go",
		"cpu_wasm.go"
	],
	"SFiles": [
		"cpu_x86.s"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"cpu_test.go",
		"cpu_x86_test.go"
	],
	"XTestImports": [
		"internal/cpu",
		"internal/testenv",
		"os",
		"os/exec",
		"runtime",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unsafe",
	"ImportPath": "unsafe",
	"Name": "unsafe",
	"Doc": "Package unsafe contains operations that step around the type safety of Go programs.",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"unsafe.go"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/bytealg",
	"ImportPath": "internal/bytealg",
	"Name": "bytealg",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/bytealg.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/bytealg.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bytealg.go",
		"compare_native.go",
		"count_native.go",
		"equal_native.go",
		"index_amd64.go",
		"index_native.go",
		"indexbyte_native.go"
	],
	"IgnoredGoFiles": [
		"compare_generic.go",
		"count_generic.go",
		"index_arm64.go",
		"index_generic.go",
		"index_s390x.go",
		"indexbyte_generic.go"
	],
	"SFiles": [
		"compare_amd64.s",
		"count_amd64.s",
		"equal_amd64.s",
		"index_amd64.s",
		"indexbyte_amd64.s"
	],
	"Imports": [
		"internal/cpu",
		"unsafe"
	],
	"Deps": [
		"internal/cpu",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/race",
	"ImportPath": "internal/race",
	"Name": "race",
	"Doc": "Package race contains helper functions for manually instrumenting code for the race detector.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/race.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/race.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"norace.go"
	],
	"IgnoredGoFiles": [
		"race.go"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/atomic",
	"ImportPath": "runtime/internal/atomic",
	"Name": "atomic",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/atomic.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/atomic.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"atomic_amd64x.go",
		"stubs.go"
	],
	"IgnoredGoFiles": [
		"atomic_386.go",
		"atomic_arm.go",
		"atomic_arm64.go",
		"atomic_mips64x.go",
		"atomic_mipsx.go",
		"atomic_ppc64x.go",
		"atomic_s390x.go",
		"atomic_wasm.go"
	],
	"SFiles": [
		"asm_amd64.s"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"XTestGoFiles": [
		"atomic_test.go",
		"bench_test.go"
	],
	"XTestImports": [
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/sys",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/sys",
	"ImportPath": "runtime/internal/sys",
	"Name": "sys",
	"Doc": "package sys contains system- and configuration- and architecture-specific constants used by the runtime.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/sys.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/sys.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"arch.go",
		"arch_amd64.go",
		"intrinsics.go",
		"stubs.go",
		"sys.go",
		"zgoarch_amd64.go",
		"zgoos_linux.go",
		"zversion.go"
	],
	"IgnoredGoFiles": [
		"arch_386.go",
		"arch_amd64p32.go",
		"arch_arm.go",
		"arch_arm64.go",
		"arch_mips.go",
		"arch_mips64.go",
		"arch_mips64le.go",
		"arch_mipsle.go",
		"arch_ppc64.go",
		"arch_ppc64le.go",
		"arch_s390x.go",
		"arch_wasm.go",
		"gengoos.go",
		"intrinsics_stubs.go",
		"zgoarch_386.go",
		"zgoarch_amd64p32.go",
		"zgoarch_arm.go",
		"zgoarch_arm64.go",
		"zgoarch_arm64be.go",
		"zgoarch_armbe.go",
		"zgoarch_mips.go",
		"zgoarch_mips64.go",
		"zgoarch_mips64le.go",
		"zgoarch_mips64p32.go",
		"zgoarch_mips64p32le.go",
		"zgoarch_mipsle.go",
		"zgoarch_ppc.go",
		"zgoarch_ppc64.go",
		"zgoarch_ppc64le.go",
		"zgoarch_riscv.go",
		"zgoarch_riscv64.go",
		"zgoarch_s390.go",
		"zgoarch_s390x.go",
		"zgoarch_sparc.go",
		"zgoarch_sparc64.go",
		"zgoarch_wasm.go",
		"zgoos_aix.go",
		"zgoos_android.go",
		"zgoos_darwin.go",
		"zgoos_dragonfly.go",
		"zgoos_freebsd.go",
		"zgoos_hurd.go",
		"zgoos_js.go",
		"zgoos_nacl.go",
		"zgoos_netbsd.go",
		"zgoos_openbsd.go",
		"zgoos_plan9.go",
		"zgoos_solaris.go",
		"zgoos_windows.go",
		"zgoos_zos.go"
	],
	"XTestGoFiles": [
		"intrinsics_test.go"
	],
	"XTestImports": [
		"runtime/internal/sys",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/math",
	"ImportPath": "runtime/internal/math",
	"Name": "math",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/math.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/math.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"math.go"
	],
	"Imports": [
		"runtime/internal/sys"
	],
	"Deps": [
		"runtime/internal/sys"
	],
	"XTestGoFiles": [
		"math_test.go"
	],
	"XTestImports": [
		"runtime/internal/math",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime",
	"ImportPath": "runtime",
	"Name": "runtime",
	"Doc": "Package runtime contains operations that interact with Go's runtime system, such as functions to control goroutines.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"alg.go",
		"atomic_pointer.go",
		"cgo.go",
		"cgo_mmap.go",
		"cgo_sigaction.go",
		"cgocall.go",
		"cgocallback.go",
		"cgocheck.go",
		"chan.go",
		"compiler.go",
		"complex.go",
		"cpuflags.go",
		"cpuflags_amd64.go",
		"cpuprof.go",
		"cputicks.go",
		"debug.go",
		"debugcall.go",
		"defs_linux_amd64.go",
		"env_posix.go",
		"error.go",
		"extern.go",
		"fastlog2.go",
		"fastlog2table.go",
		"float.go",
		"hash64.go",
		"heapdump.go",
		"iface.go",
		"lfstack.go",
		"lfstack_64bit.go",
		"lock_futex.go",
		"malloc.go",
		"map.go",
		"map_fast32.go",
		"map_fast64.go",
		"map_faststr.go",
		"mbarrier.go",
		"mbitmap.go",
		"mcache.go",
		"mcentral.go",
		"mem_linux.go",
		"mfinal.go",
		"mfixalloc.go",
		"mgc.go",
		"mgclarge.go",
		"mgcmark.go",
		"mgcstack.go",
		"mgcsweep.go",
		"mgcsweepbuf.go",
		"mgcwork.go",
		"mheap.go",
		"mprof.go",
		"msan0.go",
		"msize.go",
		"mstats.go",
		"mwbbuf.go",
		"netpoll.go",
		"netpoll_epoll.go",
		"os_linux.go",
		"os_linux_generic.go",
		"os_linux_noauxv.go",
		"os_nonopenbsd.go",
		"panic.go",
		"plugin.go",
		"print.go",
		"proc.go",
		"profbuf.go",
		"proflabel.go",
		"race0.go",
		"rdebug.go",
		"relax_stub.go",
		"runtime.go",
		"runtime1.go",
		"runtime2.go",
		"rwmutex.go",
		"select.go",
		"sema.go",
		"signal_amd64x.go",
		"signal_linux_amd64.go",
		"signal_sighandler.go",
		"signal_unix.go",
		"sigqueue.go",
		"sigtab_linux_generic.go",
		"sizeclasses.go",
		"slice.go",
		"softfloat64.go",
		"stack.go",
		"string.go",
		"stubs.go",
		"stubs2.go",
		"stubs3.go",
		"stubs_linux.go",
		"stubs_x86.go",
		"symtab.go",
		"sys_nonppc64x.go",
		"sys_x86.go",
		"time.go",
		"timestub.go",
		"timestub2.go",
		"trace.go",
		"traceback.go",
		"type.go",
		"typekind.go",
		"unaligned1.go",
		"utf8.go",
		"vdso_elf64.go",
		"vdso_linux.go",
		"vdso_linux_amd64.go",
		"write_err.go"
	],
	"IgnoredGoFiles": [
		"auxv_none.go",
		"cgo_ppc64x.go",
		"crash_nonunix_test.go",
		"defs1_linux.go",
		"defs1_netbsd_386.go",
		"defs1_netbsd_amd64.go",
		"defs1_netbsd_arm.go",
		"defs1_solaris_amd64.go",
		"defs2_linux.go",
		"defs3_linux.go",
		"defs_aix.go",
		"defs_aix_ppc64.go",
		"defs_arm_linux.go",
		"defs_darwin.go",
		"defs_darwin_386.go",
		"defs_darwin_amd64.go",
		"defs_darwin_arm.go",
		"defs_darwin_arm64.go",
		"defs_dragonfly.go",
		"defs_dragonfly_amd64.go",
		"defs_freebsd.go",
		"defs_freebsd_386.go",
		"defs_freebsd_amd64.go",
		"defs_freebsd_arm.go",
		"defs_linux.go",
		"defs_linux_386.go",
		"defs_linux_arm.go",
		"defs_linux_arm64.go",
		"defs_linux_mips64x.go",
		"defs_linux_mipsx.go",
		"defs_linux_ppc64.go",
		"defs_linux_ppc64le.go",
		"defs_linux_s390x.go",
		"defs_nacl_386.go",
		"defs_nacl_amd64p32.go",
		"defs_nacl_arm.go",
		"defs_netbsd.go",
		"defs_netbsd_386.go",
		"defs_netbsd_amd64.go",
		"defs_netbsd_arm.go",
		"defs_openbsd.go",
		"defs_openbsd_386.go",
		"defs_openbsd_amd64.go",
		"defs_openbsd_arm.go",
		"defs_plan9_386.go",
		"defs_plan9_amd64.go",
		"defs_plan9_arm.go",
		"defs_solaris.go",
		"defs_solaris_amd64.go",
		"defs_windows.go",
		"defs_windows_386.go",
		"defs_windows_amd64.go",
		"defs_windows_arm.go",
		"env_plan9.go",
		"export_arm_test.go",
		"export_windows_test.go",
		"hash32.go",
		"lfstack_32bit.go",
		"lock_js.go",
		"lock_sema.go",
		"mem_aix.go",
		"mem_bsd.go",
		"mem_js.go",
		"mem_plan9.go",
		"mem_windows.go",
		"mkduff.go",
		"mkfastlog2table.go",
		"mksizeclasses.go",
		"mmap.go",
		"msan.go",
		"net_plan9.go",
		"netpoll_aix.go",
		"netpoll_fake.go",
		"netpoll_kqueue.go",
		"netpoll_solaris.go",
		"netpoll_stub.go",
		"netpoll_windows.go",
		"numcpu_freebsd_test.go",
		"os2_aix.go",
		"os2_freebsd.go",
		"os2_nacl.go",
		"os2_openbsd.go",
		"os2_plan9.go",
		"os2_solaris.go",
		"os3_plan9.go",
		"os3_solaris.go",
		"os_aix.go",
		"os_android.go",
		"os_darwin.go",
		"os_darwin_arm.go",
		"os_darwin_arm64.go",
		"os_dragonfly.go",
		"os_freebsd.go",
		"os_freebsd2.go",
		"os_freebsd_amd64.go",
		"os_freebsd_arm.go",
		"os_freebsd_noauxv.go",
		"os_js.go",
		"os_linux_arm.go",
		"os_linux_arm64.go",
		"os_linux_be64.go",
		"os_linux_mips64x.go",
		"os_linux_mipsx.go",
		"os_linux_novdso.go",
		"os_linux_ppc64x.go",
		"os_linux_s390x.go",
		"os_nacl.go",
		"os_nacl_arm.go",
		"os_netbsd.go",
		"os_netbsd_386.go",
		"os_netbsd_amd64.go",
		"os_netbsd_arm.go",
		"os_openbsd.go",
		"os_openbsd_arm.go",
		"os_plan9.go",
		"os_plan9_arm.go",
		"os_solaris.go",
		"os_windows.go",
		"os_windows_arm.go",
		"race.go",
		"sigaction.go",
		"signal_386.go",
		"signal_aix_ppc64.go",
		"signal_arm.go",
		"signal_arm64.go",
		"signal_darwin.go",
		"signal_darwin_386.go",
		"signal_darwin_amd64.go",
		"signal_darwin_arm.go",
		"signal_darwin_arm64.go",
		"signal_dragonfly.go",
		"signal_dragonfly_amd64.go",
		"signal_freebsd.go",
		"signal_freebsd_386.go",
		"signal_freebsd_amd64.go",
		"signal_freebsd_arm.go",
		"signal_linux_386.go",
		"signal_linux_arm.go",
		"signal_linux_arm64.go",
		"signal_linux_mips64x.go",
		"signal_linux_mipsx.go",
		"signal_linux_ppc64x.go",
		"signal_linux_s390x.go",
		"signal_mips64x.go",
		"signal_mipsx.go",
		"signal_nacl.go",
		"signal_nacl_386.go",
		"signal_nacl_amd64p32.go",
		"signal_nacl_arm.go",
		"signal_netbsd.go",
		"signal_netbsd_386.go",
		"signal_netbsd_amd64.go",
		"signal_netbsd_arm.go",
		"signal_openbsd.go",
		"signal_openbsd_386.go",
		"signal_openbsd_amd64.go",
		"signal_openbsd_arm.go",
		"signal_plan9.go",
		"signal_ppc64x.go",
		"signal_solaris.go",
		"signal_solaris_amd64.go",
		"signal_windows.go",
		"sigqueue_plan9.go",
		"sigtab_aix.go",
		"sigtab_linux_mipsx.go",
		"stubs32.go",
		"stubs_386.go",
		"stubs_android.go",
		"stubs_arm.go",
		"stubs_nonlinux.go",
		"sys_arm.go",
		"sys_arm64.go",
		"sys_darwin.go",
		"sys_darwin_32.go",
		"sys_darwin_64.go",
		"sys_mips64x.go",
		"sys_mipsx.go",
		"sys_ppc64x.go",
		"sys_s390x.go",
		"sys_wasm.go",
		"syscall2_solaris.go",
		"syscall_aix.go",
		"syscall_solaris.go",
		"syscall_windows.go",
		"syscall_windows_test.go",
		"timeasm.go",
		"unaligned2.go",
		"vdso_elf32.go",
		"vdso_freebsd.go",
		"vdso_freebsd_arm.go",
		"vdso_freebsd_x86.go",
		"vdso_in_none.go",
		"vdso_linux_386.go",
		"vdso_linux_arm.go",
		"vdso_linux_arm64.go",
		"vdso_linux_ppc64x.go",
		"vlop_arm_test.go",
		"vlrt.go",
		"wincallback.go",
		"write_err_android.go",
		"zcallback_windows.go"
	],
	"HFiles": [
		"asm_ppc64x.h",
		"funcdata.h",
		"go_tls.h",
		"textflag.h"
	],
	"SFiles": [
		"asm.s",
		"asm_amd64.s",
		"duff_amd64.s",
		"memclr_amd64.s",
		"memmove_amd64.s",
		"rt0_linux_amd64.s",
		"sys_linux_amd64.s"
	],
	"Imports": [
		"internal/bytealg",
		"internal/cpu",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"unsafe"
	],
	"TestGoFiles": [
		"export_debug_test.go",
		"export_futex_test.go",
		"export_linux_test.go",
		"export_mmap_test.go",
		"export_test.go",
		"export_unix_test.go",
		"proc_runtime_test.go"
	],
	"TestImports": [
		"runtime/internal/atomic",
		"runtime/internal/sys",
		"unsafe"
	],
	"XTestGoFiles": [
		"callers_test.go",
		"chan_test.go",
		"chanbarrier_test.go",
		"closure_test.go",
		"complex_test.go",
		"crash_cgo_test.go",
		"crash_test.go",
		"crash_unix_test.go",
		"debug_test.go",
		"env_test.go",
		"example_test.go",
		"fastlog2_test.go",
		"futex_test.go",
		"gc_test.go",
		"gcinfo_test.go",
		"hash_test.go",
		"iface_test.go",
		"lfstack_test.go",
		"malloc_test.go",
		"map_benchmark_test.go",
		"map_test.go",
		"memmove_linux_amd64_test.go",
		"memmove_test.go",
		"mfinal_test.go",
		"norace_linux_test.go",
		"norace_test.go",
		"proc_test.go",
		"profbuf_test.go",
		"rand_test.go",
		"runtime-gdb_test.go",
		"runtime-lldb_test.go",
		"runtime_linux_test.go",
		"runtime_mmap_test.go",
		"runtime_test.go",
		"runtime_unix_test.go",
		"rwmutex_test.go",
		"semasleep_test.go",
		"sizeof_test.go",
		"slice_test.go",
		"softfloat64_test.go",
		"stack_test.go",
		"string_test.go",
		"symtab_test.go",
		"treap_test.go",
		"vdso_linux_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/rand",
		"encoding/binary",
		"flag",
		"fmt",
		"go/build",
		"internal/race",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math",
		"math/cmplx",
		"math/rand",
		"net",
		"os",
		"os/exec",
		"path/filepath",
		"reflect",
		"regexp",
		"runtime",
		"runtime/debug",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"testing",
		"time",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sync/atomic",
	"ImportPath": "sync/atomic",
	"Name": "atomic",
	"Doc": "Package atomic provides low-level atomic memory primitives useful for implementing synchronization algorithms.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync/atomic.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync/atomic.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"value.go"
	],
	"SFiles": [
		"asm.s"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"XTestGoFiles": [
		"atomic_test.go",
		"example_test.go",
		"value_test.go"
	],
	"XTestImports": [
		"fmt",
		"math/rand",
		"runtime",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"time",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sync",
	"ImportPath": "sync",
	"Name": "sync",
	"Doc": "Package sync provides basic synchronization primitives such as mutual exclusion locks.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"cond.go",
		"map.go",
		"mutex.go",
		"once.go",
		"pool.go",
		"runtime.go",
		"rwmutex.go",
		"waitgroup.go"
	],
	"Imports": [
		"internal/race",
		"runtime",
		"sync/atomic",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"cond_test.go",
		"example_pool_test.go",
		"example_test.go",
		"map_bench_test.go",
		"map_reference_test.go",
		"map_test.go",
		"mutex_test.go",
		"once_test.go",
		"pool_test.go",
		"runtime_sema_test.go",
		"rwmutex_test.go",
		"waitgroup_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"internal/race",
		"internal/testenv",
		"io",
		"math/rand",
		"os",
		"os/exec",
		"reflect",
		"runtime",
		"runtime/debug",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"testing/quick",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/io",
	"ImportPath": "io",
	"Name": "io",
	"Doc": "Package io provides basic interfaces to I/O primitives.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"io.go",
		"multi.go",
		"pipe.go"
	],
	"Imports": [
		"errors",
		"sync",
		"sync/atomic"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"XTestGoFiles": [
		"example_test.go",
		"io_test.go",
		"multi_test.go",
		"pipe_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/sha1",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"log",
		"os",
		"runtime",
		"sort",
		"strings",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode",
	"ImportPath": "unicode",
	"Name": "unicode",
	"Doc": "Package unicode provides data and functions to test some properties of Unicode code points.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"casetables.go",
		"digit.go",
		"graphic.go",
		"letter.go",
		"tables.go"
	],
	"IgnoredGoFiles": [
		"maketables.go"
	],
	"XTestGoFiles": [
		"digit_test.go",
		"example_test.go",
		"graphic_test.go",
		"letter_test.go",
		"script_test.go"
	],
	"XTestImports": [
		"flag",
		"fmt",
		"runtime",
		"sort",
		"strings",
		"testing",
		"unicode"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode/utf8",
	"ImportPath": "unicode/utf8",
	"Name": "utf8",
	"Doc": "Package utf8 implements functions and constants to support text encoded in UTF-8.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf8.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf8.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"utf8.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"utf8_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"testing",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/bytes",
	"ImportPath": "bytes",
	"Name": "bytes",
	"Doc": "Package bytes implements functions for the manipulation of byte slices.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bytes.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bytes.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"buffer.go",
		"bytes.go",
		"reader.go"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"io",
		"unicode",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"boundary_test.go",
		"buffer_test.go",
		"bytes_test.go",
		"compare_test.go",
		"example_test.go",
		"reader_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/base64",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"sort",
		"strings",
		"sync",
		"syscall",
		"testing",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/bufio",
	"ImportPath": "bufio",
	"Name": "bufio",
	"Doc": "Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer object, creating another object (Reader or Writer) that also implements the interface but provides buffering and some help for textual I/O.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bufio.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bufio.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bufio.go",
		"scan.go"
	],
	"Imports": [
		"bytes",
		"errors",
		"io",
		"unicode/utf8"
	],
	"Deps": [
		"bytes",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"unicode/utf8"
	],
	"XTestGoFiles": [
		"bufio_test.go",
		"example_test.go",
		"scan_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"os",
		"strconv",
		"strings",
		"testing",
		"testing/iotest",
		"time",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/math/bits",
	"ImportPath": "math/bits",
	"Name": "bits",
	"Doc": "Package bits implements bit counting and manipulation functions for the predeclared unsigned integer types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math/bits.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math/bits.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bits.go",
		"bits_tables.go"
	],
	"IgnoredGoFiles": [
		"make_examples.go",
		"make_tables.go"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"bits_test.go",
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"math/bits",
		"runtime",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/math",
	"ImportPath": "math",
	"Name": "math",
	"Doc": "Package math provides basic constants and mathematical functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"abs.go",
		"acosh.go",
		"asin.go",
		"asinh.go",
		"atan.go",
		"atan2.go",
		"atanh.go",
		"bits.go",
		"cbrt.go",
		"const.go",
		"copysign.go",
		"dim.go",
		"erf.go",
		"erfinv.go",
		"exp.go",
		"exp_asm.go",
		"expm1.go",
		"floor.go",
		"frexp.go",
		"gamma.go",
		"hypot.go",
		"j0.go",
		"j1.go",
		"jn.go",
		"ldexp.go",
		"lgamma.go",
		"log.go",
		"log10.go",
		"log1p.go",
		"logb.go",
		"mod.go",
		"modf.go",
		"nextafter.go",
		"pow.go",
		"pow10.go",
		"remainder.go",
		"signbit.go",
		"sin.go",
		"sincos.go",
		"sinh.go",
		"sqrt.go",
		"tan.go",
		"tanh.go",
		"trig_reduce.go",
		"unsafe.go"
	],
	"IgnoredGoFiles": [
		"arith_s390x.go",
		"arith_s390x_test.go",
		"export_s390x_test.go"
	],
	"SFiles": [
		"asin_amd64.s",
		"asinh_stub.s",
		"atan2_amd64.s",
		"atan_amd64.s",
		"cbrt_stub.s",
		"dim_amd64.s",
		"erf_stub.s",
		"exp2_amd64.s",
		"exp_amd64.s",
		"expm1_amd64.s",
		"floor_amd64.s",
		"frexp_amd64.s",
		"hypot_amd64.s",
		"ldexp_amd64.s",
		"log10_amd64.s",
		"log1p_amd64.s",
		"log_amd64.s",
		"mod_amd64.s",
		"modf_amd64.s",
		"pow_stub.s",
		"remainder_amd64.s",
		"sin_amd64.s",
		"sinh_stub.s",
		"sqrt_amd64.s",
		"tan_amd64.s"
	],
	"Imports": [
		"internal/cpu",
		"math/bits",
		"unsafe"
	],
	"Deps": [
		"internal/cpu",
		"math/bits",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"all_test.go",
		"example_test.go",
		"huge_test.go"
	],
	"XTestImports": [
		"fmt",
		"math",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/strconv",
	"ImportPath": "strconv",
	"Name": "strconv",
	"Doc": "Package strconv implements conversions to and from string representations of basic data types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strconv.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strconv.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"atob.go",
		"atof.go",
		"atoi.go",
		"decimal.go",
		"doc.go",
		"extfloat.go",
		"ftoa.go",
		"isprint.go",
		"itoa.go",
		"quote.go"
	],
	"IgnoredGoFiles": [
		"makeisprint.go"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"math",
		"math/bits",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"math",
		"math/bits",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"internal_test.go"
	],
	"XTestGoFiles": [
		"atob_test.go",
		"atof_test.go",
		"atoi_test.go",
		"decimal_test.go",
		"example_test.go",
		"fp_test.go",
		"ftoa_test.go",
		"itoa_test.go",
		"quote_test.go",
		"strconv_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"log",
		"math",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time",
		"unicode"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/reflect",
	"ImportPath": "reflect",
	"Name": "reflect",
	"Doc": "Package reflect implements run-time reflection, allowing a program to manipulate objects with arbitrary types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/reflect.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/reflect.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"deepequal.go",
		"makefunc.go",
		"swapper.go",
		"type.go",
		"value.go"
	],
	"SFiles": [
		"asm_amd64.s"
	],
	"Imports": [
		"math",
		"runtime",
		"strconv",
		"sync",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"unsafe"
	],
	"XTestGoFiles": [
		"all_test.go",
		"example_test.go",
		"set_test.go",
		"tostring_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/base64",
		"encoding/json",
		"flag",
		"fmt",
		"go/ast",
		"go/token",
		"io",
		"math",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sort",
	"ImportPath": "sort",
	"Name": "sort",
	"Doc": "Package sort provides primitives for sorting slices and user-defined collections.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sort.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sort.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"search.go",
		"slice.go",
		"sort.go",
		"zfuncversion.go"
	],
	"IgnoredGoFiles": [
		"genzfunc.go"
	],
	"Imports": [
		"reflect"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_interface_test.go",
		"example_keys_test.go",
		"example_multi_test.go",
		"example_search_test.go",
		"example_test.go",
		"example_wrapper_test.go",
		"search_test.go",
		"sort_test.go"
	],
	"XTestImports": [
		"fmt",
		"internal/testenv",
		"math",
		"math/rand",
		"runtime",
		"sort",
		"strconv",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/fmtsort",
	"ImportPath": "internal/fmtsort",
	"Name": "fmtsort",
	"Doc": "Package fmtsort provides a general stable ordering mechanism for maps, on behalf of the fmt and text/template packages.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/fmtsort.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/fmtsort.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"sort.go"
	],
	"Imports": [
		"reflect",
		"sort"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"reflect"
	],
	"XTestGoFiles": [
		"sort_test.go"
	],
	"XTestImports": [
		"fmt",
		"internal/fmtsort",
		"math",
		"reflect",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/syscall",
	"ImportPath": "syscall",
	"Name": "syscall",
	"Doc": "Package syscall contains an interface to the low-level operating system primitives.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/syscall.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/syscall.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"dirent.go",
		"endian_little.go",
		"env_unix.go",
		"exec_linux.go",
		"exec_unix.go",
		"flock.go",
		"lsf_linux.go",
		"msan0.go",
		"net.go",
		"netlink_linux.go",
		"setuidgid_linux.go",
		"sockcmsg_linux.go",
		"sockcmsg_unix.go",
		"str.go",
		"syscall.go",
		"syscall_linux.go",
		"syscall_linux_amd64.go",
		"syscall_unix.go",
		"timestruct.go",
		"zerrors_linux_amd64.go",
		"zsyscall_linux_amd64.go",
		"zsysnum_linux_amd64.go",
		"ztypes_linux_amd64.go"
	],
	"IgnoredGoFiles": [
		"bpf_bsd.go",
		"bpf_darwin.go",
		"const_plan9.go",
		"dir_plan9.go",
		"dirent_bsd_test.go",
		"dll_windows.go",
		"endian_big.go",
		"env_plan9.go",
		"env_windows.go",
		"errors_plan9.go",
		"exec_aix_test.go",
		"exec_bsd.go",
		"exec_darwin.go",
		"exec_libc.go",
		"exec_plan9.go",
		"exec_solaris_test.go",
		"exec_windows.go",
		"export_freebsd_test.go",
		"fd_nacl.go",
		"flock_aix.go",
		"flock_darwin.go",
		"flock_linux_32bit.go",
		"forkpipe.go",
		"forkpipe2.go",
		"fs_js.go",
		"fs_nacl.go",
		"mkasm_darwin.go",
		"mkpost.go",
		"mksyscall_windows.go",
		"msan.go",
		"net_js.go",
		"net_nacl.go",
		"pwd_plan9.go",
		"route_bsd.go",
		"route_darwin.go",
		"route_dragonfly.go",
		"route_freebsd.go",
		"route_freebsd_32bit.go",
		"route_freebsd_64bit.go",
		"route_netbsd.go",
		"route_openbsd.go",
		"security_windows.go",
		"setuidgid_32_linux.go",
		"syscall_aix.go",
		"syscall_aix_ppc64.go",
		"syscall_bsd.go",
		"syscall_bsd_test.go",
		"syscall_darwin.go",
		"syscall_darwin_386.go",
		"syscall_darwin_amd64.go",
		"syscall_darwin_arm.go",
		"syscall_darwin_arm64.go",
		"syscall_dragonfly.go",
		"syscall_dragonfly_amd64.go",
		"syscall_freebsd.go",
		"syscall_freebsd_386.go",
		"syscall_freebsd_amd64.go",
		"syscall_freebsd_arm.go",
		"syscall_freebsd_test.go",
		"syscall_getwd_bsd.go",
		"syscall_js.go",
		"syscall_linux_386.go",
		"syscall_linux_arm.go",
		"syscall_linux_arm64.go",
		"syscall_linux_mips64x.go",
		"syscall_linux_mipsx.go",
		"syscall_linux_ppc64x.go",
		"syscall_linux_s390x.go",
		"syscall_nacl.go",
		"syscall_nacl_386.go",
		"syscall_nacl_amd64p32.go",
		"syscall_nacl_arm.go",
		"syscall_netbsd.go",
		"syscall_netbsd_386.go",
		"syscall_netbsd_amd64.go",
		"syscall_netbsd_arm.go",
		"syscall_openbsd.go",
		"syscall_openbsd_386.go",
		"syscall_openbsd_amd64.go",
		"syscall_openbsd_arm.go",
		"syscall_plan9.go",
		"syscall_plan9_test.go",
		"syscall_solaris.go",
		"syscall_solaris_amd64.go",
		"syscall_windows.go",
		"syscall_windows_386.go",
		"syscall_windows_amd64.go",
		"syscall_windows_test.go",
		"tables_nacljs.go",
		"types_aix.go",
		"types_darwin.go",
		"types_dragonfly.go",
		"types_freebsd.go",
		"types_linux.go",
		"types_netbsd.go",
		"types_openbsd.go",
		"types_solaris.go",
		"types_windows.go",
		"types_windows_386.go",
		"types_windows_amd64.go",
		"types_windows_arm.go",
		"unzip_nacl.go",
		"zerrors_aix_ppc64.go",
		"zerrors_darwin_386.go",
		"zerrors_darwin_amd64.go",
		"zerrors_darwin_arm.go",
		"zerrors_darwin_arm64.go",
		"zerrors_dragonfly_amd64.go",
		"zerrors_freebsd_386.go",
		"zerrors_freebsd_amd64.go",
		"zerrors_freebsd_arm.go",
		"zerrors_linux_386.go",
		"zerrors_linux_arm.go",
		"zerrors_linux_arm64.go",
		"zerrors_linux_mips.go",
		"zerrors_linux_mips64.go",
		"zerrors_linux_mips64le.go",
		"zerrors_linux_mipsle.go",
		"zerrors_linux_ppc64.go",
		"zerrors_linux_ppc64le.go",
		"zerrors_linux_s390x.go",
		"zerrors_netbsd_386.go",
		"zerrors_netbsd_amd64.go",
		"zerrors_netbsd_arm.go",
		"zerrors_openbsd_386.go",
		"zerrors_openbsd_amd64.go",
		"zerrors_openbsd_arm.go",
		"zerrors_solaris_amd64.go",
		"zerrors_windows.go",
		"zerrors_windows_386.go",
		"zerrors_windows_amd64.go",
		"zsyscall_aix_ppc64.go",
		"zsyscall_darwin_386.go",
		"zsyscall_darwin_amd64.go",
		"zsyscall_darwin_arm.go",
		"zsyscall_darwin_arm64.go",
		"zsyscall_dragonfly_amd64.go",
		"zsyscall_freebsd_386.go",
		"zsyscall_freebsd_amd64.go",
		"zsyscall_freebsd_arm.go",
		"zsyscall_linux_386.go",
		"zsyscall_linux_arm.go",
		"zsyscall_linux_arm64.go",
		"zsyscall_linux_mips.go",
		"zsyscall_linux_mips64.go",
		"zsyscall_linux_mips64le.go",
		"zsyscall_linux_mipsle.go",
		"zsyscall_linux_ppc64.go",
		"zsyscall_linux_ppc64le.go",
		"zsyscall_linux_s390x.go",
		"zsyscall_nacl_386.go",
		"zsyscall_nacl_amd64p32.go",
		"zsyscall_nacl_arm.go",
		"zsyscall_netbsd_386.go",
		"zsyscall_netbsd_amd64.go",
		"zsyscall_netbsd_arm.go",
		"zsyscall_openbsd_386.go",
		"zsyscall_openbsd_amd64.go",
		"zsyscall_openbsd_arm.go",
		"zsyscall_plan9_386.go",
		"zsyscall_plan9_amd64.go",
		"zsyscall_plan9_arm.go",
		"zsyscall_solaris_amd64.go",
		"zsyscall_windows.go",
		"zsysctl_openbsd.go",
		"zsysnum_darwin_386.go",
		"zsysnum_darwin_amd64.go",
		"zsysnum_darwin_arm.go",
		"zsysnum_darwin_arm64.go",
		"zsysnum_dragonfly_amd64.go",
		"zsysnum_freebsd_386.go",
		"zsysnum_freebsd_amd64.go",
		"zsysnum_freebsd_arm.go",
		"zsysnum_linux_386.go",
		"zsysnum_linux_arm.go",
		"zsysnum_linux_arm64.go",
		"zsysnum_linux_mips.go",
		"zsysnum_linux_mips64.go",
		"zsysnum_linux_mips64le.go",
		"zsysnum_linux_mipsle.go",
		"zsysnum_linux_ppc64.go",
		"zsysnum_linux_ppc64le.go",
		"zsysnum_linux_s390x.go",
		"zsysnum_netbsd_386.go",
		"zsysnum_netbsd_amd64.go",
		"zsysnum_netbsd_arm.go",
		"zsysnum_openbsd_386.go",
		"zsysnum_openbsd_amd64.go",
		"zsysnum_openbsd_arm.go",
		"zsysnum_plan9.go",
		"zsysnum_solaris_amd64.go",
		"zsysnum_windows_386.go",
		"zsysnum_windows_amd64.go",
		"ztypes_aix_ppc64.go",
		"ztypes_darwin_386.go",
		"ztypes_darwin_amd64.go",
		"ztypes_darwin_arm.go",
		"ztypes_darwin_arm64.go",
		"ztypes_dragonfly_amd64.go",
		"ztypes_freebsd_386.go",
		"ztypes_freebsd_amd64.go",
		"ztypes_freebsd_arm.go",
		"ztypes_linux_386.go",
		"ztypes_linux_arm.go",
		"ztypes_linux_arm64.go",
		"ztypes_linux_mips.go",
		"ztypes_linux_mips64.go",
		"ztypes_linux_mips64le.go",
		"ztypes_linux_mipsle.go",
		"ztypes_linux_ppc64.go",
		"ztypes_linux_ppc64le.go",
		"ztypes_linux_s390x.go",
		"ztypes_netbsd_386.go",
		"ztypes_netbsd_amd64.go",
		"ztypes_netbsd_arm.go",
		"ztypes_openbsd_386.go",
		"ztypes_openbsd_amd64.go",
		"ztypes_openbsd_arm.go",
		"ztypes_solaris_amd64.go"
	],
	"SFiles": [
		"asm_linux_amd64.s"
	],
	"Imports": [
		"internal/race",
		"runtime",
		"sync",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"export_linux_test.go",
		"export_test.go",
		"export_unix_test.go"
	],
	"XTestGoFiles": [
		"creds_test.go",
		"exec_unix_test.go",
		"mmap_unix_test.go",
		"syscall_linux_test.go",
		"syscall_test.go",
		"syscall_unix_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"flag",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"net",
		"os",
		"os/exec",
		"os/signal",
		"path/filepath",
		"runtime",
		"strconv",
		"strings",
		"syscall",
		"testing",
		"time",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/time",
	"ImportPath": "time",
	"Name": "time",
	"Doc": "Package time provides functionality for measuring and displaying time.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/time.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/time.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"format.go",
		"sleep.go",
		"sys_unix.go",
		"tick.go",
		"time.go",
		"zoneinfo.go",
		"zoneinfo_read.go",
		"zoneinfo_unix.go"
	],
	"IgnoredGoFiles": [
		"export_android_test.go",
		"export_windows_test.go",
		"genzabbrs.go",
		"sys_plan9.go",
		"sys_windows.go",
		"zoneinfo_abbrs_windows.go",
		"zoneinfo_android.go",
		"zoneinfo_android_test.go",
		"zoneinfo_ios.go",
		"zoneinfo_js.go",
		"zoneinfo_plan9.go",
		"zoneinfo_windows.go",
		"zoneinfo_windows_test.go"
	],
	"Imports": [
		"errors",
		"runtime",
		"sync",
		"syscall",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"internal_test.go"
	],
	"TestImports": [
		"sync"
	],
	"XTestGoFiles": [
		"example_test.go",
		"format_test.go",
		"mono_test.go",
		"sleep_test.go",
		"tick_test.go",
		"time_test.go",
		"zoneinfo_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/gob",
		"encoding/json",
		"errors",
		"fmt",
		"internal/race",
		"math/big",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"testing/quick",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/poll",
	"ImportPath": "internal/poll",
	"Name": "poll",
	"Doc": "Package poll supports non-blocking I/O on file descriptors with polling.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/poll.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/poll.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"fd.go",
		"fd_fsync_posix.go",
		"fd_mutex.go",
		"fd_poll_runtime.go",
		"fd_posix.go",
		"fd_unix.go",
		"fd_writev_unix.go",
		"hook_cloexec.go",
		"hook_unix.go",
		"sendfile_linux.go",
		"sock_cloexec.go",
		"sockopt.go",
		"sockopt_linux.go",
		"sockopt_unix.go",
		"sockoptip.go",
		"splice_linux.go",
		"writev.go"
	],
	"IgnoredGoFiles": [
		"export_windows_test.go",
		"fd_fsync_darwin.go",
		"fd_fsync_windows.go",
		"fd_io_plan9.go",
		"fd_opendir_ios.go",
		"fd_plan9.go",
		"fd_poll_nacljs.go",
		"fd_windows.go",
		"fd_windows_test.go",
		"fd_writev_darwin.go",
		"hook_windows.go",
		"sendfile_bsd.go",
		"sendfile_solaris.go",
		"sendfile_windows.go",
		"sockopt_windows.go",
		"strconv.go",
		"sys_cloexec.go"
	],
	"Imports": [
		"errors",
		"io",
		"runtime",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"TestGoFiles": [
		"export_posix_test.go",
		"export_test.go"
	],
	"XTestGoFiles": [
		"fd_mutex_test.go",
		"fd_posix_test.go",
		"writev_test.go"
	],
	"XTestImports": [
		"internal/poll",
		"io",
		"math/rand",
		"reflect",
		"runtime",
		"strings",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/syscall/unix",
	"ImportPath": "internal/syscall/unix",
	"Name": "unix",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/syscall/unix.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/syscall/unix.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"at.go",
		"at_sysnum_linux.go",
		"at_sysnum_newfstatat_linux.go",
		"getrandom_linux.go",
		"getrandom_linux_amd64.go",
		"nonblocking.go"
	],
	"IgnoredGoFiles": [
		"at_aix.go",
		"at_darwin.go",
		"at_freebsd.go",
		"at_libc.go",
		"at_solaris.go",
		"at_sysnum_darwin.go",
		"at_sysnum_dragonfly.go",
		"at_sysnum_fstatat64_linux.go",
		"at_sysnum_fstatat_linux.go",
		"at_sysnum_netbsd.go",
		"at_sysnum_openbsd.go",
		"getentropy_openbsd.go",
		"getrandom_freebsd.go",
		"getrandom_linux_386.go",
		"getrandom_linux_arm.go",
		"getrandom_linux_generic.go",
		"getrandom_linux_mips64x.go",
		"getrandom_linux_mipsx.go",
		"getrandom_linux_ppc64x.go",
		"getrandom_linux_s390x.go",
		"ioctl_aix.go",
		"nonblocking_darwin.go",
		"nonblocking_js.go",
		"nonblocking_nacl.go"
	],
	"Imports": [
		"sync/atomic",
		"syscall",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/testlog",
	"ImportPath": "internal/testlog",
	"Name": "testlog",
	"Doc": "Package testlog provides a back-channel communication path between tests and package os, so that cmd/go can see which environment variables and files a test consults.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/testlog.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/testlog.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"log.go"
	],
	"Imports": [
		"sync/atomic"
	],
	"Deps": [
		"sync/atomic",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/os",
	"ImportPath": "os",
	"Name": "os",
	"Doc": "Package os provides a platform-independent interface to operating system functionality.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/os.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/os.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"dir.go",
		"dir_unix.go",
		"env.go",
		"env_default.go",
		"error.go",
		"error_posix.go",
		"error_unix.go",
		"exec.go",
		"exec_posix.go",
		"exec_unix.go",
		"executable.go",
		"executable_procfs.go",
		"file.go",
		"file_posix.go",
		"file_unix.go",
		"getwd.go",
		"path.go",
		"path_unix.go",
		"pipe_linux.go",
		"proc.go",
		"rawconn.go",
		"removeall_at.go",
		"stat.go",
		"stat_linux.go",
		"stat_unix.go",
		"sticky_notbsd.go",
		"str.go",
		"sys.go",
		"sys_linux.go",
		"sys_unix.go",
		"types.go",
		"types_unix.go",
		"wait_waitid.go"
	],
	"IgnoredGoFiles": [
		"dir_ios.go",
		"dir_plan9.go",
		"dir_windows.go",
		"env_windows.go",
		"error_plan9.go",
		"error_windows.go",
		"error_windows_test.go",
		"exec_plan9.go",
		"exec_windows.go",
		"executable_darwin.go",
		"executable_freebsd.go",
		"executable_path.go",
		"executable_plan9.go",
		"executable_solaris.go",
		"executable_windows.go",
		"export_windows_test.go",
		"file_plan9.go",
		"file_windows.go",
		"getwd_darwin.go",
		"os_windows_test.go",
		"path_plan9.go",
		"path_windows.go",
		"path_windows_test.go",
		"pipe2_bsd.go",
		"pipe_bsd.go",
		"removeall_noat.go",
		"stat_aix.go",
		"stat_darwin.go",
		"stat_dragonfly.go",
		"stat_freebsd.go",
		"stat_nacljs.go",
		"stat_netbsd.go",
		"stat_openbsd.go",
		"stat_plan9.go",
		"stat_solaris.go",
		"stat_windows.go",
		"sticky_bsd.go",
		"sys_aix.go",
		"sys_bsd.go",
		"sys_js.go",
		"sys_nacl.go",
		"sys_plan9.go",
		"sys_solaris.go",
		"sys_windows.go",
		"types_plan9.go",
		"types_windows.go",
		"wait_unimp.go",
		"wait_wait6.go"
	],
	"Imports": [
		"errors",
		"internal/poll",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"runtime",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"export_unix_test.go"
	],
	"XTestGoFiles": [
		"env_test.go",
		"env_unix_test.go",
		"error_test.go",
		"error_unix_test.go",
		"example_test.go",
		"executable_test.go",
		"fifo_test.go",
		"os_test.go",
		"os_unix_test.go",
		"path_test.go",
		"pipe_test.go",
		"rawconn_test.go",
		"removeall_test.go",
		"stat_test.go",
		"timeout_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"flag",
		"fmt",
		"internal/poll",
		"internal/testenv",
		"io",
		"io/ioutil",
		"log",
		"math/rand",
		"os",
		"os/exec",
		"os/signal",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/debug",
		"sort",
		"strconv",
		"strings",
		"sync",
		"syscall",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/fmt",
	"ImportPath": "fmt",
	"Name": "fmt",
	"Doc": "Package fmt implements formatted I/O with functions analogous to C's printf and scanf.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/fmt.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/fmt.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"format.go",
		"print.go",
		"scan.go"
	],
	"Imports": [
		"errors",
		"internal/fmtsort",
		"io",
		"math",
		"os",
		"reflect",
		"strconv",
		"sync",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"fmt_test.go",
		"gostringer_example_test.go",
		"scan_test.go",
		"stringer_example_test.go",
		"stringer_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"internal/race",
		"io",
		"math",
		"os",
		"reflect",
		"regexp",
		"runtime",
		"strings",
		"testing",
		"testing/iotest",
		"time",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/compress/flate",
	"ImportPath": "compress/flate",
	"Name": "flate",
	"Doc": "Package flate implements the DEFLATE compressed data format, described in RFC 1951.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/flate.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/flate.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"deflate.go",
		"deflatefast.go",
		"dict_decoder.go",
		"huffman_bit_writer.go",
		"huffman_code.go",
		"inflate.go",
		"token.go"
	],
	"Imports": [
		"bufio",
		"fmt",
		"io",
		"math",
		"math/bits",
		"sort",
		"strconv",
		"sync"
	],
	"Deps": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"deflate_test.go",
		"dict_decoder_test.go",
		"flate_test.go",
		"huffman_bit_writer_test.go",
		"inflate_test.go",
		"reader_test.go",
		"writer_test.go"
	],
	"TestImports": [
		"bytes",
		"encoding/hex",
		"errors",
		"flag",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/debug",
		"strings",
		"sync",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"compress/flate",
		"fmt",
		"io",
		"log",
		"os",
		"strings",
		"sync"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/binary",
	"ImportPath": "encoding/binary",
	"Name": "binary",
	"Doc": "Package binary implements simple translation between numbers and byte sequences and encoding and decoding of varints.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/binary.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/binary.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"binary.go",
		"varint.go"
	],
	"Imports": [
		"errors",
		"io",
		"math",
		"reflect"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"binary_test.go",
		"varint_test.go"
	],
	"TestImports": [
		"bytes",
		"io",
		"math",
		"reflect",
		"strings",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/binary",
		"fmt",
		"math"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/hash",
	"ImportPath": "hash",
	"Name": "hash",
	"Doc": "Package hash provides interfaces for hash functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"hash.go"
	],
	"Imports": [
		"io"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"XTestGoFiles": [
		"example_test.go",
		"marshal_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/md5",
		"crypto/sha1",
		"crypto/sha256",
		"crypto/sha512",
		"encoding",
		"encoding/hex",
		"fmt",
		"hash",
		"hash/adler32",
		"hash/crc32",
		"hash/crc64",
		"hash/fnv",
		"log",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/hash/crc32",
	"ImportPath": "hash/crc32",
	"Name": "crc32",
	"Doc": "Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32, checksum.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash/crc32.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash/crc32.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"crc32.go",
		"crc32_amd64.go",
		"crc32_generic.go"
	],
	"IgnoredGoFiles": [
		"crc32_amd64p32.go",
		"crc32_arm64.go",
		"crc32_otherarch.go",
		"crc32_ppc64le.go",
		"crc32_s390x.go",
		"gen_const_ppc64le.go"
	],
	"SFiles": [
		"crc32_amd64.s"
	],
	"Imports": [
		"errors",
		"hash",
		"internal/cpu",
		"sync",
		"unsafe"
	],
	"Deps": [
		"errors",
		"hash",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"crc32_test.go"
	],
	"TestImports": [
		"encoding",
		"fmt",
		"hash",
		"io",
		"math/rand",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"hash/crc32"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/compress/gzip",
	"ImportPath": "compress/gzip",
	"Name": "gzip",
	"Doc": "Package gzip implements reading and writing of gzip format compressed files, as specified in RFC 1952.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/gzip.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/gzip.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"gunzip.go",
		"gzip.go"
	],
	"Imports": [
		"bufio",
		"compress/flate",
		"encoding/binary",
		"errors",
		"fmt",
		"hash/crc32",
		"io",
		"time"
	],
	"Deps": [
		"bufio",
		"bytes",
		"compress/flate",
		"encoding/binary",
		"errors",
		"fmt",
		"hash",
		"hash/crc32",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"gunzip_test.go",
		"gzip_test.go",
		"issue14937_test.go"
	],
	"TestImports": [
		"bufio",
		"bytes",
		"compress/flate",
		"internal/testenv",
		"io",
		"io/ioutil",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"compress/gzip",
		"fmt",
		"io",
		"log",
		"os",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding",
	"ImportPath": "encoding",
	"Name": "encoding",
	"Doc": "Package encoding defines interfaces shared by other packages that convert data to and from byte-level and textual representations.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"encoding.go"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/base64",
	"ImportPath": "encoding/base64",
	"Name": "base64",
	"Doc": "Package base64 implements base64 encoding as specified by RFC 4648.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/base64.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/base64.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"base64.go"
	],
	"Imports": [
		"encoding/binary",
		"io",
		"strconv"
	],
	"Deps": [
		"encoding/binary",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"base64_test.go"
	],
	"TestImports": [
		"bytes",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"reflect",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"encoding/base64",
		"fmt",
		"os"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/strings",
	"ImportPath": "strings",
	"Name": "strings",
	"Doc": "Package strings implements simple functions to manipulate UTF-8 encoded strings.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strings.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strings.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"builder.go",
		"compare.go",
		"reader.go",
		"replace.go",
		"search.go",
		"strings.go"
	],
	"SFiles": [
		"strings.s"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"io",
		"sync",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"builder_test.go",
		"compare_test.go",
		"example_test.go",
		"reader_test.go",
		"replace_test.go",
		"search_test.go",
		"strings_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"reflect",
		"strconv",
		"strings",
		"sync",
		"testing",
		"unicode",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode/utf16",
	"ImportPath": "unicode/utf16",
	"Name": "utf16",
	"Doc": "Package utf16 implements encoding and decoding of UTF-16 sequences.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf16.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf16.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"utf16.go"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"utf16_test.go"
	],
	"XTestImports": [
		"reflect",
		"testing",
		"unicode",
		"unicode/utf16"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/json",
	"ImportPath": "encoding/json",
	"Name": "json",
	"Doc": "Package json implements encoding and decoding of JSON as defined in RFC 7159.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/json.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/json.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"decode.go",
		"encode.go",
		"fold.go",
		"indent.go",
		"scanner.go",
		"stream.go",
		"tables.go",
		"tags.go"
	],
	"Imports": [
		"bytes",
		"encoding",
		"encoding/base64",
		"errors",
		"fmt",
		"io",
		"math",
		"reflect",
		"sort",
		"strconv",
		"strings",
		"sync",
		"unicode",
		"unicode/utf16",
		"unicode/utf8"
	],
	"Deps": [
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"bench_test.go",
		"decode_test.go",
		"encode_test.go",
		"fold_test.go",
		"number_test.go",
		"scanner_test.go",
		"stream_test.go",
		"tagkey_test.go",
		"tags_test.go"
	],
	"TestImports": [
		"bytes",
		"compress/gzip",
		"encoding",
		"errors",
		"fmt",
		"image",
		"internal/testenv",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/big",
		"math/rand",
		"net",
		"net/http",
		"net/http/httptest",
		"os",
		"reflect",
		"regexp",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time",
		"unicode",
		"unicode/utf8"
	],
	"XTestGoFiles": [
		"example_marshaling_test.go",
		"example_test.go",
		"example_text_marshaling_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/json",
		"fmt",
		"io",
		"log",
		"os",
		"strings"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/log",
	"ImportPath": "log",
	"Name": "log",
	"Doc": "Package log implements a simple logging package.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/log.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/log.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"log.go"
	],
	"Imports": [
		"fmt",
		"io",
		"os",
		"runtime",
		"sync",
		"time"
	],
	"Deps": [
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"log_test.go"
	],
	"TestImports": [
		"bytes",
		"fmt",
		"os",
		"regexp",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"log"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/proto",
	"ImportPath": "github.com/golang/protobuf/proto",
	"Name": "proto",
	"Doc": "Package proto converts data structures to and from the wire format of protocol buffers.",
	"Export": "/home/corin/.cache/go-build/e1/e188b6d31d171fd4f8bde696c095a08be742c3a8b2b304711ca3703fefce20f6-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Indirect": true,
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"DepOnly": true,
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"clone.go",
		"decode.go",
		"deprecated.go",
		"discard.go",
		"encode.go",
		"equal.go",
		"extensions.go",
		"lib.go",
		"message_set.go",
		"pointer_unsafe.go",
		"properties.go",
		"table_marshal.go",
		"table_merge.go",
		"table_unmarshal.go",
		"text.go",
		"text_parser.go"
	],
	"IgnoredGoFiles": [
		"pointer_reflect.go"
	],
	"Imports": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/json",
		"errors",
		"fmt",
		"io",
		"log",
		"math",
		"reflect",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"log",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"size2_test.go"
	],
	"TestImports": [
		"math",
		"testing"
	],
	"XTestGoFiles": [
		"all_test.go",
		"any_test.go",
		"clone_test.go",
		"decode_test.go",
		"discard_test.go",
		"encode_test.go",
		"equal_test.go",
		"extensions_test.go",
		"map_test.go",
		"message_set_test.go",
		"proto3_test.go",
		"size_test.go",
		"text_parser_test.go",
		"text_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/proto/proto3_proto",
		"github.com/golang/protobuf/proto/test_proto",
		"github.com/golang/protobuf/ptypes",
		"github.com/golang/protobuf/ptypes/any",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/rand",
		"reflect",
		"runtime/debug",
		"sort",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/protoc-gen-go/descriptor",
	"ImportPath": "github.com/golang/protobuf/protoc-gen-go/descriptor",
	"Name": "descriptor",
	"Export": "/home/corin/.cache/go-build/a1/a14bac4af5fe95336f23c066469a0d9bb825050c4cb663686d1242a99682ccef-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Indirect": true,
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"DepOnly": true,
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"descriptor.pb.go"
	],
	"Imports": [
		"fmt",
		"github.com/golang/protobuf/proto",
		"math"
	],
	"Deps": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"log",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/path/filepath",
	"ImportPath": "path/filepath",
	"Name": "filepath",
	"Doc": "Package filepath implements utility routines for manipulating filename paths in a way compatible with the target operating system-defined file paths.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/path/filepath.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/path/filepath.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"match.go",
		"path.go",
		"path_unix.go",
		"symlink.go",
		"symlink_unix.go"
	],
	"IgnoredGoFiles": [
		"export_windows_test.go",
		"path_plan9.go",
		"path_windows.go",
		"path_windows_test.go",
		"symlink_windows.go"
	],
	"Imports": [
		"errors",
		"os",
		"runtime",
		"sort",
		"strings",
		"syscall",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"example_unix_test.go",
		"example_unix_walk_test.go",
		"match_test.go",
		"path_test.go"
	],
	"XTestImports": [
		"errors",
		"fmt",
		"internal/testenv",
		"io/ioutil",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"sort",
		"strings",
		"syscall",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/io/ioutil",
	"ImportPath": "io/ioutil",
	"Name": "ioutil",
	"Doc": "Package ioutil implements some I/O utility functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io/ioutil.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io/ioutil.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"ioutil.go",
		"tempfile.go"
	],
	"Imports": [
		"bytes",
		"io",
		"os",
		"path/filepath",
		"sort",
		"strconv",
		"strings",
		"sync",
		"time"
	],
	"Deps": [
		"bytes",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"ioutil_test.go",
		"tempfile_test.go"
	],
	"TestImports": [
		"os",
		"path/filepath",
		"regexp",
		"strings",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"io/ioutil",
		"log",
		"os",
		"path/filepath",
		"strings"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/descriptor",
	"ImportPath": "github.com/golang/protobuf/descriptor",
	"Name": "descriptor",
	"Doc": "Package descriptor provides functions for obtaining protocol buffer descriptors for generated Go types.",
	"Export": "/home/corin/.cache/go-build/3e/3e4bf60080eef18a786c7fedc05a50e784eccca144a73f3da8cc3d31207a3d17-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Indirect": true,
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"Match": [
		"github.com/golang/protobuf/descriptor"
	],
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"descriptor.go"
	],
	"Imports": [
		"bytes",
		"compress/gzip",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"io/ioutil"
	],
	"Deps": [
		"bufio",
		"bytes",
		"compress/flate",
		"compress/gzip",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"hash",
		"hash/crc32",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/bits",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"XTestGoFiles": [
		"descriptor_test.go"
	],
	"XTestImports": [
		"fmt",
		"github.com/golang/protobuf/descriptor",
		"github.com/golang/protobuf/proto/test_proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"testing"
	]
}
>>

// debug: writing file "/home/corin/go/src/gomacro.imports/github.com/golang/protobuf/descriptor//go.mod"
// debug: compiling "/home/corin/go/src/gomacro.imports/github.com/golang/protobuf/descriptor/descriptor.go" ...
go: finding github.com/golang/protobuf/descriptor latest
// debug: looking for package "github.com/au-phiware/gomacro-issue-82" ...
// debug: 8.876829ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-m" "-json" "all", stderr: <<warning: pattern "all" matched no module dependencies
>> stdout: <<>>

// debug: 11.270901ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "env" "GOMOD", stderr: <<>> stdout: <</dev/null
>>

// debug: 4.047795025s for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/ go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "github.com/au-phiware/gomacro-issue-82", stderr: <<go: finding github.com/au-phiware/gomacro-issue-82 latest
>> stdout: <<{
	"ImportPath": "github.com/au-phiware/gomacro-issue-82",
	"Match": [
		"github.com/au-phiware/gomacro-issue-82"
	],
	"Incomplete": true,
	"Error": {
		"ImportStack": [
			"github.com/au-phiware/gomacro-issue-82"
		],
		"Pos": "",
		"Err": "unknown import path \"github.com/au-phiware/gomacro-issue-82\": cannot find module providing package github.com/au-phiware/gomacro-issue-82"
	}
}
>>

error loading package "github.com/au-phiware/gomacro-issue-82" metadata: -: unknown import path "github.com/au-phiware/gomacro-issue-82": cannot find module providing package github.com/au-phiware/gomacro-issue-82
gen.gomacro:14:33: undefined identifier: proto
```

The following was executed with a modified gomacro binary ([this line was removed](https://github.com/cosmos72/gomacro/blob/da8c6a17f4e730b3244f9e7830c0ef6dff38bac0/base/genimport/importer_go1_11.go#L42)):

```
$ gomacro -f -w gen.gomacro
// debug: looking for package "gen" ...
// debug: 10.050692ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "gen", stderr: <<>> stdout: <<{
	"ImportPath": "gen",
	"Match": [
		"gen"
	],
	"Incomplete": true,
	"Error": {
		"ImportStack": [
			"gen"
		],
		"Pos": "",
		"Err": "unknown import path \"gen\": cannot find module providing package gen"
	}
}
>>

// debug: 12.63364ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "env" "GOMOD", stderr: <<>> stdout: <</home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod
>>

// debug: 19.373885ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-m" "-json" "all", stderr: <<>> stdout: <<{
	"Path": "github.com/au-phiware/gomacro-issue-82",
	"Main": true,
	"Dir": "/home/corin/src/github.com/au-phiware/gomacro-issue-82",
	"GoMod": "/home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod",
	"GoVersion": "1.12"
}
{
	"Path": "github.com/cosmos72/gomacro",
	"Version": "v0.0.0-20191211223858-da8c6a17f4e7",
	"Time": "2019-12-11T22:38:58Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/cosmos72/gomacro@v0.0.0-20191211223858-da8c6a17f4e7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/cosmos72/gomacro/@v/v0.0.0-20191211223858-da8c6a17f4e7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/golang/protobuf",
	"Version": "v1.3.2",
	"Time": "2019-07-01T18:22:01Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
}
{
	"Path": "github.com/mattn/go-runewidth",
	"Version": "v0.0.7",
	"Time": "2019-12-03T13:04:45Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/mattn/go-runewidth@v0.0.7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/mattn/go-runewidth/@v/v0.0.7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/peterh/liner",
	"Version": "v1.1.0",
	"Time": "2018-08-26T13:27:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/peterh/liner@v1.1.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/peterh/liner/@v/v1.1.0.mod"
}
{
	"Path": "golang.org/x/crypto",
	"Version": "v0.0.0-20190308221718-c2843e01d9a2",
	"Time": "2019-03-08T22:17:18Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/crypto@v0.0.0-20190308221718-c2843e01d9a2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/crypto/@v/v0.0.0-20190308221718-c2843e01d9a2.mod"
}
{
	"Path": "golang.org/x/net",
	"Version": "v0.0.0-20190620200207-3b0461eec859",
	"Time": "2019-06-20T20:02:07Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/net@v0.0.0-20190620200207-3b0461eec859",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/net/@v/v0.0.0-20190620200207-3b0461eec859.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/sync",
	"Version": "v0.0.0-20190423024810-112230192c58",
	"Time": "2019-04-23T02:48:10Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/sync@v0.0.0-20190423024810-112230192c58",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sync/@v/v0.0.0-20190423024810-112230192c58.mod"
}
{
	"Path": "golang.org/x/sys",
	"Version": "v0.0.0-20190215142949-d0b11bdaac8a",
	"Time": "2019-02-15T14:29:49Z",
	"Indirect": true,
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sys/@v/v0.0.0-20190215142949-d0b11bdaac8a.mod"
}
{
	"Path": "golang.org/x/text",
	"Version": "v0.3.0",
	"Time": "2017-12-14T13:08:43Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/text@v0.3.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/text/@v/v0.3.0.mod"
}
{
	"Path": "golang.org/x/tools",
	"Version": "v0.0.0-20191206204035-259af5ff87bd",
	"Time": "2019-12-06T20:40:35Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/tools@v0.0.0-20191206204035-259af5ff87bd",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/tools/@v/v0.0.0-20191206204035-259af5ff87bd.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/xerrors",
	"Version": "v0.0.0-20190717185122-a985d3407aa7",
	"Time": "2019-07-17T18:51:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/xerrors@v0.0.0-20190717185122-a985d3407aa7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/xerrors/@v/v0.0.0-20190717185122-a985d3407aa7.mod",
	"GoVersion": "1.11"
}
>>

// debug: error loading package "gen" metadata: -: unknown import path "gen": cannot find module providing package gen
// debug: looking for package "github.com/golang/protobuf/descriptor" ...
// debug: 8.51524ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "env" "GOMOD", stderr: <<>> stdout: <</home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod
>>

// debug: 12.471532ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-m" "-json" "all", stderr: <<>> stdout: <<{
	"Path": "github.com/au-phiware/gomacro-issue-82",
	"Main": true,
	"Dir": "/home/corin/src/github.com/au-phiware/gomacro-issue-82",
	"GoMod": "/home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod",
	"GoVersion": "1.12"
}
{
	"Path": "github.com/cosmos72/gomacro",
	"Version": "v0.0.0-20191211223858-da8c6a17f4e7",
	"Time": "2019-12-11T22:38:58Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/cosmos72/gomacro@v0.0.0-20191211223858-da8c6a17f4e7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/cosmos72/gomacro/@v/v0.0.0-20191211223858-da8c6a17f4e7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/golang/protobuf",
	"Version": "v1.3.2",
	"Time": "2019-07-01T18:22:01Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
}
{
	"Path": "github.com/mattn/go-runewidth",
	"Version": "v0.0.7",
	"Time": "2019-12-03T13:04:45Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/mattn/go-runewidth@v0.0.7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/mattn/go-runewidth/@v/v0.0.7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/peterh/liner",
	"Version": "v1.1.0",
	"Time": "2018-08-26T13:27:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/peterh/liner@v1.1.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/peterh/liner/@v/v1.1.0.mod"
}
{
	"Path": "golang.org/x/crypto",
	"Version": "v0.0.0-20190308221718-c2843e01d9a2",
	"Time": "2019-03-08T22:17:18Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/crypto@v0.0.0-20190308221718-c2843e01d9a2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/crypto/@v/v0.0.0-20190308221718-c2843e01d9a2.mod"
}
{
	"Path": "golang.org/x/net",
	"Version": "v0.0.0-20190620200207-3b0461eec859",
	"Time": "2019-06-20T20:02:07Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/net@v0.0.0-20190620200207-3b0461eec859",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/net/@v/v0.0.0-20190620200207-3b0461eec859.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/sync",
	"Version": "v0.0.0-20190423024810-112230192c58",
	"Time": "2019-04-23T02:48:10Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/sync@v0.0.0-20190423024810-112230192c58",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sync/@v/v0.0.0-20190423024810-112230192c58.mod"
}
{
	"Path": "golang.org/x/sys",
	"Version": "v0.0.0-20190215142949-d0b11bdaac8a",
	"Time": "2019-02-15T14:29:49Z",
	"Indirect": true,
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sys/@v/v0.0.0-20190215142949-d0b11bdaac8a.mod"
}
{
	"Path": "golang.org/x/text",
	"Version": "v0.3.0",
	"Time": "2017-12-14T13:08:43Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/text@v0.3.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/text/@v/v0.3.0.mod"
}
{
	"Path": "golang.org/x/tools",
	"Version": "v0.0.0-20191206204035-259af5ff87bd",
	"Time": "2019-12-06T20:40:35Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/tools@v0.0.0-20191206204035-259af5ff87bd",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/tools/@v/v0.0.0-20191206204035-259af5ff87bd.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/xerrors",
	"Version": "v0.0.0-20190717185122-a985d3407aa7",
	"Time": "2019-07-17T18:51:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/xerrors@v0.0.0-20190717185122-a985d3407aa7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/xerrors/@v/v0.0.0-20190717185122-a985d3407aa7.mod",
	"GoVersion": "1.11"
}
>>

// debug: 74.641916ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "github.com/golang/protobuf/descriptor", stderr: <<>> stdout: <<{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/errors",
	"ImportPath": "errors",
	"Name": "errors",
	"Doc": "Package errors implements functions to manipulate errors.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/errors.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/errors.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"errors.go"
	],
	"XTestGoFiles": [
		"errors_test.go",
		"example_test.go"
	],
	"XTestImports": [
		"errors",
		"fmt",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/cpu",
	"ImportPath": "internal/cpu",
	"Name": "cpu",
	"Doc": "Package cpu implements processor feature detection used by the Go standard library.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/cpu.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/cpu.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"cpu.go",
		"cpu_amd64.go",
		"cpu_x86.go"
	],
	"IgnoredGoFiles": [
		"cpu_386.go",
		"cpu_amd64p32.go",
		"cpu_arm.go",
		"cpu_arm64.go",
		"cpu_mips.go",
		"cpu_mips64.go",
		"cpu_mips64le.go",
		"cpu_mipsle.go",
		"cpu_no_init.go",
		"cpu_ppc64x.go",
		"cpu_s390x.go",
		"cpu_s390x_test.go",
		"cpu_wasm.go"
	],
	"SFiles": [
		"cpu_x86.s"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"cpu_test.go",
		"cpu_x86_test.go"
	],
	"XTestImports": [
		"internal/cpu",
		"internal/testenv",
		"os",
		"os/exec",
		"runtime",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unsafe",
	"ImportPath": "unsafe",
	"Name": "unsafe",
	"Doc": "Package unsafe contains operations that step around the type safety of Go programs.",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"unsafe.go"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/bytealg",
	"ImportPath": "internal/bytealg",
	"Name": "bytealg",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/bytealg.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/bytealg.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bytealg.go",
		"compare_native.go",
		"count_native.go",
		"equal_native.go",
		"index_amd64.go",
		"index_native.go",
		"indexbyte_native.go"
	],
	"IgnoredGoFiles": [
		"compare_generic.go",
		"count_generic.go",
		"index_arm64.go",
		"index_generic.go",
		"index_s390x.go",
		"indexbyte_generic.go"
	],
	"SFiles": [
		"compare_amd64.s",
		"count_amd64.s",
		"equal_amd64.s",
		"index_amd64.s",
		"indexbyte_amd64.s"
	],
	"Imports": [
		"internal/cpu",
		"unsafe"
	],
	"Deps": [
		"internal/cpu",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/race",
	"ImportPath": "internal/race",
	"Name": "race",
	"Doc": "Package race contains helper functions for manually instrumenting code for the race detector.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/race.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/race.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"norace.go"
	],
	"IgnoredGoFiles": [
		"race.go"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/atomic",
	"ImportPath": "runtime/internal/atomic",
	"Name": "atomic",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/atomic.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/atomic.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"atomic_amd64x.go",
		"stubs.go"
	],
	"IgnoredGoFiles": [
		"atomic_386.go",
		"atomic_arm.go",
		"atomic_arm64.go",
		"atomic_mips64x.go",
		"atomic_mipsx.go",
		"atomic_ppc64x.go",
		"atomic_s390x.go",
		"atomic_wasm.go"
	],
	"SFiles": [
		"asm_amd64.s"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"XTestGoFiles": [
		"atomic_test.go",
		"bench_test.go"
	],
	"XTestImports": [
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/sys",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/sys",
	"ImportPath": "runtime/internal/sys",
	"Name": "sys",
	"Doc": "package sys contains system- and configuration- and architecture-specific constants used by the runtime.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/sys.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/sys.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"arch.go",
		"arch_amd64.go",
		"intrinsics.go",
		"stubs.go",
		"sys.go",
		"zgoarch_amd64.go",
		"zgoos_linux.go",
		"zversion.go"
	],
	"IgnoredGoFiles": [
		"arch_386.go",
		"arch_amd64p32.go",
		"arch_arm.go",
		"arch_arm64.go",
		"arch_mips.go",
		"arch_mips64.go",
		"arch_mips64le.go",
		"arch_mipsle.go",
		"arch_ppc64.go",
		"arch_ppc64le.go",
		"arch_s390x.go",
		"arch_wasm.go",
		"gengoos.go",
		"intrinsics_stubs.go",
		"zgoarch_386.go",
		"zgoarch_amd64p32.go",
		"zgoarch_arm.go",
		"zgoarch_arm64.go",
		"zgoarch_arm64be.go",
		"zgoarch_armbe.go",
		"zgoarch_mips.go",
		"zgoarch_mips64.go",
		"zgoarch_mips64le.go",
		"zgoarch_mips64p32.go",
		"zgoarch_mips64p32le.go",
		"zgoarch_mipsle.go",
		"zgoarch_ppc.go",
		"zgoarch_ppc64.go",
		"zgoarch_ppc64le.go",
		"zgoarch_riscv.go",
		"zgoarch_riscv64.go",
		"zgoarch_s390.go",
		"zgoarch_s390x.go",
		"zgoarch_sparc.go",
		"zgoarch_sparc64.go",
		"zgoarch_wasm.go",
		"zgoos_aix.go",
		"zgoos_android.go",
		"zgoos_darwin.go",
		"zgoos_dragonfly.go",
		"zgoos_freebsd.go",
		"zgoos_hurd.go",
		"zgoos_js.go",
		"zgoos_nacl.go",
		"zgoos_netbsd.go",
		"zgoos_openbsd.go",
		"zgoos_plan9.go",
		"zgoos_solaris.go",
		"zgoos_windows.go",
		"zgoos_zos.go"
	],
	"XTestGoFiles": [
		"intrinsics_test.go"
	],
	"XTestImports": [
		"runtime/internal/sys",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime/internal/math",
	"ImportPath": "runtime/internal/math",
	"Name": "math",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/math.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime/internal/math.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"math.go"
	],
	"Imports": [
		"runtime/internal/sys"
	],
	"Deps": [
		"runtime/internal/sys"
	],
	"XTestGoFiles": [
		"math_test.go"
	],
	"XTestImports": [
		"runtime/internal/math",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/runtime",
	"ImportPath": "runtime",
	"Name": "runtime",
	"Doc": "Package runtime contains operations that interact with Go's runtime system, such as functions to control goroutines.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/runtime.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"alg.go",
		"atomic_pointer.go",
		"cgo.go",
		"cgo_mmap.go",
		"cgo_sigaction.go",
		"cgocall.go",
		"cgocallback.go",
		"cgocheck.go",
		"chan.go",
		"compiler.go",
		"complex.go",
		"cpuflags.go",
		"cpuflags_amd64.go",
		"cpuprof.go",
		"cputicks.go",
		"debug.go",
		"debugcall.go",
		"defs_linux_amd64.go",
		"env_posix.go",
		"error.go",
		"extern.go",
		"fastlog2.go",
		"fastlog2table.go",
		"float.go",
		"hash64.go",
		"heapdump.go",
		"iface.go",
		"lfstack.go",
		"lfstack_64bit.go",
		"lock_futex.go",
		"malloc.go",
		"map.go",
		"map_fast32.go",
		"map_fast64.go",
		"map_faststr.go",
		"mbarrier.go",
		"mbitmap.go",
		"mcache.go",
		"mcentral.go",
		"mem_linux.go",
		"mfinal.go",
		"mfixalloc.go",
		"mgc.go",
		"mgclarge.go",
		"mgcmark.go",
		"mgcstack.go",
		"mgcsweep.go",
		"mgcsweepbuf.go",
		"mgcwork.go",
		"mheap.go",
		"mprof.go",
		"msan0.go",
		"msize.go",
		"mstats.go",
		"mwbbuf.go",
		"netpoll.go",
		"netpoll_epoll.go",
		"os_linux.go",
		"os_linux_generic.go",
		"os_linux_noauxv.go",
		"os_nonopenbsd.go",
		"panic.go",
		"plugin.go",
		"print.go",
		"proc.go",
		"profbuf.go",
		"proflabel.go",
		"race0.go",
		"rdebug.go",
		"relax_stub.go",
		"runtime.go",
		"runtime1.go",
		"runtime2.go",
		"rwmutex.go",
		"select.go",
		"sema.go",
		"signal_amd64x.go",
		"signal_linux_amd64.go",
		"signal_sighandler.go",
		"signal_unix.go",
		"sigqueue.go",
		"sigtab_linux_generic.go",
		"sizeclasses.go",
		"slice.go",
		"softfloat64.go",
		"stack.go",
		"string.go",
		"stubs.go",
		"stubs2.go",
		"stubs3.go",
		"stubs_linux.go",
		"stubs_x86.go",
		"symtab.go",
		"sys_nonppc64x.go",
		"sys_x86.go",
		"time.go",
		"timestub.go",
		"timestub2.go",
		"trace.go",
		"traceback.go",
		"type.go",
		"typekind.go",
		"unaligned1.go",
		"utf8.go",
		"vdso_elf64.go",
		"vdso_linux.go",
		"vdso_linux_amd64.go",
		"write_err.go"
	],
	"IgnoredGoFiles": [
		"auxv_none.go",
		"cgo_ppc64x.go",
		"crash_nonunix_test.go",
		"defs1_linux.go",
		"defs1_netbsd_386.go",
		"defs1_netbsd_amd64.go",
		"defs1_netbsd_arm.go",
		"defs1_solaris_amd64.go",
		"defs2_linux.go",
		"defs3_linux.go",
		"defs_aix.go",
		"defs_aix_ppc64.go",
		"defs_arm_linux.go",
		"defs_darwin.go",
		"defs_darwin_386.go",
		"defs_darwin_amd64.go",
		"defs_darwin_arm.go",
		"defs_darwin_arm64.go",
		"defs_dragonfly.go",
		"defs_dragonfly_amd64.go",
		"defs_freebsd.go",
		"defs_freebsd_386.go",
		"defs_freebsd_amd64.go",
		"defs_freebsd_arm.go",
		"defs_linux.go",
		"defs_linux_386.go",
		"defs_linux_arm.go",
		"defs_linux_arm64.go",
		"defs_linux_mips64x.go",
		"defs_linux_mipsx.go",
		"defs_linux_ppc64.go",
		"defs_linux_ppc64le.go",
		"defs_linux_s390x.go",
		"defs_nacl_386.go",
		"defs_nacl_amd64p32.go",
		"defs_nacl_arm.go",
		"defs_netbsd.go",
		"defs_netbsd_386.go",
		"defs_netbsd_amd64.go",
		"defs_netbsd_arm.go",
		"defs_openbsd.go",
		"defs_openbsd_386.go",
		"defs_openbsd_amd64.go",
		"defs_openbsd_arm.go",
		"defs_plan9_386.go",
		"defs_plan9_amd64.go",
		"defs_plan9_arm.go",
		"defs_solaris.go",
		"defs_solaris_amd64.go",
		"defs_windows.go",
		"defs_windows_386.go",
		"defs_windows_amd64.go",
		"defs_windows_arm.go",
		"env_plan9.go",
		"export_arm_test.go",
		"export_windows_test.go",
		"hash32.go",
		"lfstack_32bit.go",
		"lock_js.go",
		"lock_sema.go",
		"mem_aix.go",
		"mem_bsd.go",
		"mem_js.go",
		"mem_plan9.go",
		"mem_windows.go",
		"mkduff.go",
		"mkfastlog2table.go",
		"mksizeclasses.go",
		"mmap.go",
		"msan.go",
		"net_plan9.go",
		"netpoll_aix.go",
		"netpoll_fake.go",
		"netpoll_kqueue.go",
		"netpoll_solaris.go",
		"netpoll_stub.go",
		"netpoll_windows.go",
		"numcpu_freebsd_test.go",
		"os2_aix.go",
		"os2_freebsd.go",
		"os2_nacl.go",
		"os2_openbsd.go",
		"os2_plan9.go",
		"os2_solaris.go",
		"os3_plan9.go",
		"os3_solaris.go",
		"os_aix.go",
		"os_android.go",
		"os_darwin.go",
		"os_darwin_arm.go",
		"os_darwin_arm64.go",
		"os_dragonfly.go",
		"os_freebsd.go",
		"os_freebsd2.go",
		"os_freebsd_amd64.go",
		"os_freebsd_arm.go",
		"os_freebsd_noauxv.go",
		"os_js.go",
		"os_linux_arm.go",
		"os_linux_arm64.go",
		"os_linux_be64.go",
		"os_linux_mips64x.go",
		"os_linux_mipsx.go",
		"os_linux_novdso.go",
		"os_linux_ppc64x.go",
		"os_linux_s390x.go",
		"os_nacl.go",
		"os_nacl_arm.go",
		"os_netbsd.go",
		"os_netbsd_386.go",
		"os_netbsd_amd64.go",
		"os_netbsd_arm.go",
		"os_openbsd.go",
		"os_openbsd_arm.go",
		"os_plan9.go",
		"os_plan9_arm.go",
		"os_solaris.go",
		"os_windows.go",
		"os_windows_arm.go",
		"race.go",
		"sigaction.go",
		"signal_386.go",
		"signal_aix_ppc64.go",
		"signal_arm.go",
		"signal_arm64.go",
		"signal_darwin.go",
		"signal_darwin_386.go",
		"signal_darwin_amd64.go",
		"signal_darwin_arm.go",
		"signal_darwin_arm64.go",
		"signal_dragonfly.go",
		"signal_dragonfly_amd64.go",
		"signal_freebsd.go",
		"signal_freebsd_386.go",
		"signal_freebsd_amd64.go",
		"signal_freebsd_arm.go",
		"signal_linux_386.go",
		"signal_linux_arm.go",
		"signal_linux_arm64.go",
		"signal_linux_mips64x.go",
		"signal_linux_mipsx.go",
		"signal_linux_ppc64x.go",
		"signal_linux_s390x.go",
		"signal_mips64x.go",
		"signal_mipsx.go",
		"signal_nacl.go",
		"signal_nacl_386.go",
		"signal_nacl_amd64p32.go",
		"signal_nacl_arm.go",
		"signal_netbsd.go",
		"signal_netbsd_386.go",
		"signal_netbsd_amd64.go",
		"signal_netbsd_arm.go",
		"signal_openbsd.go",
		"signal_openbsd_386.go",
		"signal_openbsd_amd64.go",
		"signal_openbsd_arm.go",
		"signal_plan9.go",
		"signal_ppc64x.go",
		"signal_solaris.go",
		"signal_solaris_amd64.go",
		"signal_windows.go",
		"sigqueue_plan9.go",
		"sigtab_aix.go",
		"sigtab_linux_mipsx.go",
		"stubs32.go",
		"stubs_386.go",
		"stubs_android.go",
		"stubs_arm.go",
		"stubs_nonlinux.go",
		"sys_arm.go",
		"sys_arm64.go",
		"sys_darwin.go",
		"sys_darwin_32.go",
		"sys_darwin_64.go",
		"sys_mips64x.go",
		"sys_mipsx.go",
		"sys_ppc64x.go",
		"sys_s390x.go",
		"sys_wasm.go",
		"syscall2_solaris.go",
		"syscall_aix.go",
		"syscall_solaris.go",
		"syscall_windows.go",
		"syscall_windows_test.go",
		"timeasm.go",
		"unaligned2.go",
		"vdso_elf32.go",
		"vdso_freebsd.go",
		"vdso_freebsd_arm.go",
		"vdso_freebsd_x86.go",
		"vdso_in_none.go",
		"vdso_linux_386.go",
		"vdso_linux_arm.go",
		"vdso_linux_arm64.go",
		"vdso_linux_ppc64x.go",
		"vlop_arm_test.go",
		"vlrt.go",
		"wincallback.go",
		"write_err_android.go",
		"zcallback_windows.go"
	],
	"HFiles": [
		"asm_ppc64x.h",
		"funcdata.h",
		"go_tls.h",
		"textflag.h"
	],
	"SFiles": [
		"asm.s",
		"asm_amd64.s",
		"duff_amd64.s",
		"memclr_amd64.s",
		"memmove_amd64.s",
		"rt0_linux_amd64.s",
		"sys_linux_amd64.s"
	],
	"Imports": [
		"internal/bytealg",
		"internal/cpu",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"unsafe"
	],
	"TestGoFiles": [
		"export_debug_test.go",
		"export_futex_test.go",
		"export_linux_test.go",
		"export_mmap_test.go",
		"export_test.go",
		"export_unix_test.go",
		"proc_runtime_test.go"
	],
	"TestImports": [
		"runtime/internal/atomic",
		"runtime/internal/sys",
		"unsafe"
	],
	"XTestGoFiles": [
		"callers_test.go",
		"chan_test.go",
		"chanbarrier_test.go",
		"closure_test.go",
		"complex_test.go",
		"crash_cgo_test.go",
		"crash_test.go",
		"crash_unix_test.go",
		"debug_test.go",
		"env_test.go",
		"example_test.go",
		"fastlog2_test.go",
		"futex_test.go",
		"gc_test.go",
		"gcinfo_test.go",
		"hash_test.go",
		"iface_test.go",
		"lfstack_test.go",
		"malloc_test.go",
		"map_benchmark_test.go",
		"map_test.go",
		"memmove_linux_amd64_test.go",
		"memmove_test.go",
		"mfinal_test.go",
		"norace_linux_test.go",
		"norace_test.go",
		"proc_test.go",
		"profbuf_test.go",
		"rand_test.go",
		"runtime-gdb_test.go",
		"runtime-lldb_test.go",
		"runtime_linux_test.go",
		"runtime_mmap_test.go",
		"runtime_test.go",
		"runtime_unix_test.go",
		"rwmutex_test.go",
		"semasleep_test.go",
		"sizeof_test.go",
		"slice_test.go",
		"softfloat64_test.go",
		"stack_test.go",
		"string_test.go",
		"symtab_test.go",
		"treap_test.go",
		"vdso_linux_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/rand",
		"encoding/binary",
		"flag",
		"fmt",
		"go/build",
		"internal/race",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math",
		"math/cmplx",
		"math/rand",
		"net",
		"os",
		"os/exec",
		"path/filepath",
		"reflect",
		"regexp",
		"runtime",
		"runtime/debug",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"testing",
		"time",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sync/atomic",
	"ImportPath": "sync/atomic",
	"Name": "atomic",
	"Doc": "Package atomic provides low-level atomic memory primitives useful for implementing synchronization algorithms.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync/atomic.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync/atomic.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"value.go"
	],
	"SFiles": [
		"asm.s"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"XTestGoFiles": [
		"atomic_test.go",
		"example_test.go",
		"value_test.go"
	],
	"XTestImports": [
		"fmt",
		"math/rand",
		"runtime",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"time",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sync",
	"ImportPath": "sync",
	"Name": "sync",
	"Doc": "Package sync provides basic synchronization primitives such as mutual exclusion locks.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sync.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"cond.go",
		"map.go",
		"mutex.go",
		"once.go",
		"pool.go",
		"runtime.go",
		"rwmutex.go",
		"waitgroup.go"
	],
	"Imports": [
		"internal/race",
		"runtime",
		"sync/atomic",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"cond_test.go",
		"example_pool_test.go",
		"example_test.go",
		"map_bench_test.go",
		"map_reference_test.go",
		"map_test.go",
		"mutex_test.go",
		"once_test.go",
		"pool_test.go",
		"runtime_sema_test.go",
		"rwmutex_test.go",
		"waitgroup_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"internal/race",
		"internal/testenv",
		"io",
		"math/rand",
		"os",
		"os/exec",
		"reflect",
		"runtime",
		"runtime/debug",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"testing/quick",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/io",
	"ImportPath": "io",
	"Name": "io",
	"Doc": "Package io provides basic interfaces to I/O primitives.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"io.go",
		"multi.go",
		"pipe.go"
	],
	"Imports": [
		"errors",
		"sync",
		"sync/atomic"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"XTestGoFiles": [
		"example_test.go",
		"io_test.go",
		"multi_test.go",
		"pipe_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/sha1",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"log",
		"os",
		"runtime",
		"sort",
		"strings",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode",
	"ImportPath": "unicode",
	"Name": "unicode",
	"Doc": "Package unicode provides data and functions to test some properties of Unicode code points.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"casetables.go",
		"digit.go",
		"graphic.go",
		"letter.go",
		"tables.go"
	],
	"IgnoredGoFiles": [
		"maketables.go"
	],
	"XTestGoFiles": [
		"digit_test.go",
		"example_test.go",
		"graphic_test.go",
		"letter_test.go",
		"script_test.go"
	],
	"XTestImports": [
		"flag",
		"fmt",
		"runtime",
		"sort",
		"strings",
		"testing",
		"unicode"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode/utf8",
	"ImportPath": "unicode/utf8",
	"Name": "utf8",
	"Doc": "Package utf8 implements functions and constants to support text encoded in UTF-8.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf8.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf8.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"utf8.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"utf8_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"testing",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/bytes",
	"ImportPath": "bytes",
	"Name": "bytes",
	"Doc": "Package bytes implements functions for the manipulation of byte slices.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bytes.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bytes.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"buffer.go",
		"bytes.go",
		"reader.go"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"io",
		"unicode",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"boundary_test.go",
		"buffer_test.go",
		"bytes_test.go",
		"compare_test.go",
		"example_test.go",
		"reader_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/base64",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"sort",
		"strings",
		"sync",
		"syscall",
		"testing",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/bufio",
	"ImportPath": "bufio",
	"Name": "bufio",
	"Doc": "Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer object, creating another object (Reader or Writer) that also implements the interface but provides buffering and some help for textual I/O.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bufio.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/bufio.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bufio.go",
		"scan.go"
	],
	"Imports": [
		"bytes",
		"errors",
		"io",
		"unicode/utf8"
	],
	"Deps": [
		"bytes",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"unicode/utf8"
	],
	"XTestGoFiles": [
		"bufio_test.go",
		"example_test.go",
		"scan_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"os",
		"strconv",
		"strings",
		"testing",
		"testing/iotest",
		"time",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/math/bits",
	"ImportPath": "math/bits",
	"Name": "bits",
	"Doc": "Package bits implements bit counting and manipulation functions for the predeclared unsigned integer types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math/bits.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math/bits.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"bits.go",
		"bits_tables.go"
	],
	"IgnoredGoFiles": [
		"make_examples.go",
		"make_tables.go"
	],
	"Imports": [
		"unsafe"
	],
	"Deps": [
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"bits_test.go",
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"math/bits",
		"runtime",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/math",
	"ImportPath": "math",
	"Name": "math",
	"Doc": "Package math provides basic constants and mathematical functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/math.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"abs.go",
		"acosh.go",
		"asin.go",
		"asinh.go",
		"atan.go",
		"atan2.go",
		"atanh.go",
		"bits.go",
		"cbrt.go",
		"const.go",
		"copysign.go",
		"dim.go",
		"erf.go",
		"erfinv.go",
		"exp.go",
		"exp_asm.go",
		"expm1.go",
		"floor.go",
		"frexp.go",
		"gamma.go",
		"hypot.go",
		"j0.go",
		"j1.go",
		"jn.go",
		"ldexp.go",
		"lgamma.go",
		"log.go",
		"log10.go",
		"log1p.go",
		"logb.go",
		"mod.go",
		"modf.go",
		"nextafter.go",
		"pow.go",
		"pow10.go",
		"remainder.go",
		"signbit.go",
		"sin.go",
		"sincos.go",
		"sinh.go",
		"sqrt.go",
		"tan.go",
		"tanh.go",
		"trig_reduce.go",
		"unsafe.go"
	],
	"IgnoredGoFiles": [
		"arith_s390x.go",
		"arith_s390x_test.go",
		"export_s390x_test.go"
	],
	"SFiles": [
		"asin_amd64.s",
		"asinh_stub.s",
		"atan2_amd64.s",
		"atan_amd64.s",
		"cbrt_stub.s",
		"dim_amd64.s",
		"erf_stub.s",
		"exp2_amd64.s",
		"exp_amd64.s",
		"expm1_amd64.s",
		"floor_amd64.s",
		"frexp_amd64.s",
		"hypot_amd64.s",
		"ldexp_amd64.s",
		"log10_amd64.s",
		"log1p_amd64.s",
		"log_amd64.s",
		"mod_amd64.s",
		"modf_amd64.s",
		"pow_stub.s",
		"remainder_amd64.s",
		"sin_amd64.s",
		"sinh_stub.s",
		"sqrt_amd64.s",
		"tan_amd64.s"
	],
	"Imports": [
		"internal/cpu",
		"math/bits",
		"unsafe"
	],
	"Deps": [
		"internal/cpu",
		"math/bits",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"all_test.go",
		"example_test.go",
		"huge_test.go"
	],
	"XTestImports": [
		"fmt",
		"math",
		"testing",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/strconv",
	"ImportPath": "strconv",
	"Name": "strconv",
	"Doc": "Package strconv implements conversions to and from string representations of basic data types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strconv.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strconv.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"atob.go",
		"atof.go",
		"atoi.go",
		"decimal.go",
		"doc.go",
		"extfloat.go",
		"ftoa.go",
		"isprint.go",
		"itoa.go",
		"quote.go"
	],
	"IgnoredGoFiles": [
		"makeisprint.go"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"math",
		"math/bits",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"math",
		"math/bits",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"internal_test.go"
	],
	"XTestGoFiles": [
		"atob_test.go",
		"atof_test.go",
		"atoi_test.go",
		"decimal_test.go",
		"example_test.go",
		"fp_test.go",
		"ftoa_test.go",
		"itoa_test.go",
		"quote_test.go",
		"strconv_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"log",
		"math",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time",
		"unicode"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/reflect",
	"ImportPath": "reflect",
	"Name": "reflect",
	"Doc": "Package reflect implements run-time reflection, allowing a program to manipulate objects with arbitrary types.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/reflect.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/reflect.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"deepequal.go",
		"makefunc.go",
		"swapper.go",
		"type.go",
		"value.go"
	],
	"SFiles": [
		"asm_amd64.s"
	],
	"Imports": [
		"math",
		"runtime",
		"strconv",
		"sync",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"unsafe"
	],
	"XTestGoFiles": [
		"all_test.go",
		"example_test.go",
		"set_test.go",
		"tostring_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/base64",
		"encoding/json",
		"flag",
		"fmt",
		"go/ast",
		"go/token",
		"io",
		"math",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/sort",
	"ImportPath": "sort",
	"Name": "sort",
	"Doc": "Package sort provides primitives for sorting slices and user-defined collections.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sort.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/sort.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"search.go",
		"slice.go",
		"sort.go",
		"zfuncversion.go"
	],
	"IgnoredGoFiles": [
		"genzfunc.go"
	],
	"Imports": [
		"reflect"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_interface_test.go",
		"example_keys_test.go",
		"example_multi_test.go",
		"example_search_test.go",
		"example_test.go",
		"example_wrapper_test.go",
		"search_test.go",
		"sort_test.go"
	],
	"XTestImports": [
		"fmt",
		"internal/testenv",
		"math",
		"math/rand",
		"runtime",
		"sort",
		"strconv",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/fmtsort",
	"ImportPath": "internal/fmtsort",
	"Name": "fmtsort",
	"Doc": "Package fmtsort provides a general stable ordering mechanism for maps, on behalf of the fmt and text/template packages.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/fmtsort.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/fmtsort.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"sort.go"
	],
	"Imports": [
		"reflect",
		"sort"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"TestImports": [
		"reflect"
	],
	"XTestGoFiles": [
		"sort_test.go"
	],
	"XTestImports": [
		"fmt",
		"internal/fmtsort",
		"math",
		"reflect",
		"strings",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/syscall",
	"ImportPath": "syscall",
	"Name": "syscall",
	"Doc": "Package syscall contains an interface to the low-level operating system primitives.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/syscall.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/syscall.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"dirent.go",
		"endian_little.go",
		"env_unix.go",
		"exec_linux.go",
		"exec_unix.go",
		"flock.go",
		"lsf_linux.go",
		"msan0.go",
		"net.go",
		"netlink_linux.go",
		"setuidgid_linux.go",
		"sockcmsg_linux.go",
		"sockcmsg_unix.go",
		"str.go",
		"syscall.go",
		"syscall_linux.go",
		"syscall_linux_amd64.go",
		"syscall_unix.go",
		"timestruct.go",
		"zerrors_linux_amd64.go",
		"zsyscall_linux_amd64.go",
		"zsysnum_linux_amd64.go",
		"ztypes_linux_amd64.go"
	],
	"IgnoredGoFiles": [
		"bpf_bsd.go",
		"bpf_darwin.go",
		"const_plan9.go",
		"dir_plan9.go",
		"dirent_bsd_test.go",
		"dll_windows.go",
		"endian_big.go",
		"env_plan9.go",
		"env_windows.go",
		"errors_plan9.go",
		"exec_aix_test.go",
		"exec_bsd.go",
		"exec_darwin.go",
		"exec_libc.go",
		"exec_plan9.go",
		"exec_solaris_test.go",
		"exec_windows.go",
		"export_freebsd_test.go",
		"fd_nacl.go",
		"flock_aix.go",
		"flock_darwin.go",
		"flock_linux_32bit.go",
		"forkpipe.go",
		"forkpipe2.go",
		"fs_js.go",
		"fs_nacl.go",
		"mkasm_darwin.go",
		"mkpost.go",
		"mksyscall_windows.go",
		"msan.go",
		"net_js.go",
		"net_nacl.go",
		"pwd_plan9.go",
		"route_bsd.go",
		"route_darwin.go",
		"route_dragonfly.go",
		"route_freebsd.go",
		"route_freebsd_32bit.go",
		"route_freebsd_64bit.go",
		"route_netbsd.go",
		"route_openbsd.go",
		"security_windows.go",
		"setuidgid_32_linux.go",
		"syscall_aix.go",
		"syscall_aix_ppc64.go",
		"syscall_bsd.go",
		"syscall_bsd_test.go",
		"syscall_darwin.go",
		"syscall_darwin_386.go",
		"syscall_darwin_amd64.go",
		"syscall_darwin_arm.go",
		"syscall_darwin_arm64.go",
		"syscall_dragonfly.go",
		"syscall_dragonfly_amd64.go",
		"syscall_freebsd.go",
		"syscall_freebsd_386.go",
		"syscall_freebsd_amd64.go",
		"syscall_freebsd_arm.go",
		"syscall_freebsd_test.go",
		"syscall_getwd_bsd.go",
		"syscall_js.go",
		"syscall_linux_386.go",
		"syscall_linux_arm.go",
		"syscall_linux_arm64.go",
		"syscall_linux_mips64x.go",
		"syscall_linux_mipsx.go",
		"syscall_linux_ppc64x.go",
		"syscall_linux_s390x.go",
		"syscall_nacl.go",
		"syscall_nacl_386.go",
		"syscall_nacl_amd64p32.go",
		"syscall_nacl_arm.go",
		"syscall_netbsd.go",
		"syscall_netbsd_386.go",
		"syscall_netbsd_amd64.go",
		"syscall_netbsd_arm.go",
		"syscall_openbsd.go",
		"syscall_openbsd_386.go",
		"syscall_openbsd_amd64.go",
		"syscall_openbsd_arm.go",
		"syscall_plan9.go",
		"syscall_plan9_test.go",
		"syscall_solaris.go",
		"syscall_solaris_amd64.go",
		"syscall_windows.go",
		"syscall_windows_386.go",
		"syscall_windows_amd64.go",
		"syscall_windows_test.go",
		"tables_nacljs.go",
		"types_aix.go",
		"types_darwin.go",
		"types_dragonfly.go",
		"types_freebsd.go",
		"types_linux.go",
		"types_netbsd.go",
		"types_openbsd.go",
		"types_solaris.go",
		"types_windows.go",
		"types_windows_386.go",
		"types_windows_amd64.go",
		"types_windows_arm.go",
		"unzip_nacl.go",
		"zerrors_aix_ppc64.go",
		"zerrors_darwin_386.go",
		"zerrors_darwin_amd64.go",
		"zerrors_darwin_arm.go",
		"zerrors_darwin_arm64.go",
		"zerrors_dragonfly_amd64.go",
		"zerrors_freebsd_386.go",
		"zerrors_freebsd_amd64.go",
		"zerrors_freebsd_arm.go",
		"zerrors_linux_386.go",
		"zerrors_linux_arm.go",
		"zerrors_linux_arm64.go",
		"zerrors_linux_mips.go",
		"zerrors_linux_mips64.go",
		"zerrors_linux_mips64le.go",
		"zerrors_linux_mipsle.go",
		"zerrors_linux_ppc64.go",
		"zerrors_linux_ppc64le.go",
		"zerrors_linux_s390x.go",
		"zerrors_netbsd_386.go",
		"zerrors_netbsd_amd64.go",
		"zerrors_netbsd_arm.go",
		"zerrors_openbsd_386.go",
		"zerrors_openbsd_amd64.go",
		"zerrors_openbsd_arm.go",
		"zerrors_solaris_amd64.go",
		"zerrors_windows.go",
		"zerrors_windows_386.go",
		"zerrors_windows_amd64.go",
		"zsyscall_aix_ppc64.go",
		"zsyscall_darwin_386.go",
		"zsyscall_darwin_amd64.go",
		"zsyscall_darwin_arm.go",
		"zsyscall_darwin_arm64.go",
		"zsyscall_dragonfly_amd64.go",
		"zsyscall_freebsd_386.go",
		"zsyscall_freebsd_amd64.go",
		"zsyscall_freebsd_arm.go",
		"zsyscall_linux_386.go",
		"zsyscall_linux_arm.go",
		"zsyscall_linux_arm64.go",
		"zsyscall_linux_mips.go",
		"zsyscall_linux_mips64.go",
		"zsyscall_linux_mips64le.go",
		"zsyscall_linux_mipsle.go",
		"zsyscall_linux_ppc64.go",
		"zsyscall_linux_ppc64le.go",
		"zsyscall_linux_s390x.go",
		"zsyscall_nacl_386.go",
		"zsyscall_nacl_amd64p32.go",
		"zsyscall_nacl_arm.go",
		"zsyscall_netbsd_386.go",
		"zsyscall_netbsd_amd64.go",
		"zsyscall_netbsd_arm.go",
		"zsyscall_openbsd_386.go",
		"zsyscall_openbsd_amd64.go",
		"zsyscall_openbsd_arm.go",
		"zsyscall_plan9_386.go",
		"zsyscall_plan9_amd64.go",
		"zsyscall_plan9_arm.go",
		"zsyscall_solaris_amd64.go",
		"zsyscall_windows.go",
		"zsysctl_openbsd.go",
		"zsysnum_darwin_386.go",
		"zsysnum_darwin_amd64.go",
		"zsysnum_darwin_arm.go",
		"zsysnum_darwin_arm64.go",
		"zsysnum_dragonfly_amd64.go",
		"zsysnum_freebsd_386.go",
		"zsysnum_freebsd_amd64.go",
		"zsysnum_freebsd_arm.go",
		"zsysnum_linux_386.go",
		"zsysnum_linux_arm.go",
		"zsysnum_linux_arm64.go",
		"zsysnum_linux_mips.go",
		"zsysnum_linux_mips64.go",
		"zsysnum_linux_mips64le.go",
		"zsysnum_linux_mipsle.go",
		"zsysnum_linux_ppc64.go",
		"zsysnum_linux_ppc64le.go",
		"zsysnum_linux_s390x.go",
		"zsysnum_netbsd_386.go",
		"zsysnum_netbsd_amd64.go",
		"zsysnum_netbsd_arm.go",
		"zsysnum_openbsd_386.go",
		"zsysnum_openbsd_amd64.go",
		"zsysnum_openbsd_arm.go",
		"zsysnum_plan9.go",
		"zsysnum_solaris_amd64.go",
		"zsysnum_windows_386.go",
		"zsysnum_windows_amd64.go",
		"ztypes_aix_ppc64.go",
		"ztypes_darwin_386.go",
		"ztypes_darwin_amd64.go",
		"ztypes_darwin_arm.go",
		"ztypes_darwin_arm64.go",
		"ztypes_dragonfly_amd64.go",
		"ztypes_freebsd_386.go",
		"ztypes_freebsd_amd64.go",
		"ztypes_freebsd_arm.go",
		"ztypes_linux_386.go",
		"ztypes_linux_arm.go",
		"ztypes_linux_arm64.go",
		"ztypes_linux_mips.go",
		"ztypes_linux_mips64.go",
		"ztypes_linux_mips64le.go",
		"ztypes_linux_mipsle.go",
		"ztypes_linux_ppc64.go",
		"ztypes_linux_ppc64le.go",
		"ztypes_linux_s390x.go",
		"ztypes_netbsd_386.go",
		"ztypes_netbsd_amd64.go",
		"ztypes_netbsd_arm.go",
		"ztypes_openbsd_386.go",
		"ztypes_openbsd_amd64.go",
		"ztypes_openbsd_arm.go",
		"ztypes_solaris_amd64.go"
	],
	"SFiles": [
		"asm_linux_amd64.s"
	],
	"Imports": [
		"internal/race",
		"runtime",
		"sync",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"export_linux_test.go",
		"export_test.go",
		"export_unix_test.go"
	],
	"XTestGoFiles": [
		"creds_test.go",
		"exec_unix_test.go",
		"mmap_unix_test.go",
		"syscall_linux_test.go",
		"syscall_test.go",
		"syscall_unix_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"flag",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"net",
		"os",
		"os/exec",
		"os/signal",
		"path/filepath",
		"runtime",
		"strconv",
		"strings",
		"syscall",
		"testing",
		"time",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/time",
	"ImportPath": "time",
	"Name": "time",
	"Doc": "Package time provides functionality for measuring and displaying time.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/time.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/time.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"format.go",
		"sleep.go",
		"sys_unix.go",
		"tick.go",
		"time.go",
		"zoneinfo.go",
		"zoneinfo_read.go",
		"zoneinfo_unix.go"
	],
	"IgnoredGoFiles": [
		"export_android_test.go",
		"export_windows_test.go",
		"genzabbrs.go",
		"sys_plan9.go",
		"sys_windows.go",
		"zoneinfo_abbrs_windows.go",
		"zoneinfo_android.go",
		"zoneinfo_android_test.go",
		"zoneinfo_ios.go",
		"zoneinfo_js.go",
		"zoneinfo_plan9.go",
		"zoneinfo_windows.go",
		"zoneinfo_windows_test.go"
	],
	"Imports": [
		"errors",
		"runtime",
		"sync",
		"syscall",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"internal_test.go"
	],
	"TestImports": [
		"sync"
	],
	"XTestGoFiles": [
		"example_test.go",
		"format_test.go",
		"mono_test.go",
		"sleep_test.go",
		"tick_test.go",
		"time_test.go",
		"zoneinfo_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/gob",
		"encoding/json",
		"errors",
		"fmt",
		"internal/race",
		"math/big",
		"math/rand",
		"os",
		"reflect",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"testing",
		"testing/quick",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/poll",
	"ImportPath": "internal/poll",
	"Name": "poll",
	"Doc": "Package poll supports non-blocking I/O on file descriptors with polling.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/poll.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/poll.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"fd.go",
		"fd_fsync_posix.go",
		"fd_mutex.go",
		"fd_poll_runtime.go",
		"fd_posix.go",
		"fd_unix.go",
		"fd_writev_unix.go",
		"hook_cloexec.go",
		"hook_unix.go",
		"sendfile_linux.go",
		"sock_cloexec.go",
		"sockopt.go",
		"sockopt_linux.go",
		"sockopt_unix.go",
		"sockoptip.go",
		"splice_linux.go",
		"writev.go"
	],
	"IgnoredGoFiles": [
		"export_windows_test.go",
		"fd_fsync_darwin.go",
		"fd_fsync_windows.go",
		"fd_io_plan9.go",
		"fd_opendir_ios.go",
		"fd_plan9.go",
		"fd_poll_nacljs.go",
		"fd_windows.go",
		"fd_windows_test.go",
		"fd_writev_darwin.go",
		"hook_windows.go",
		"sendfile_bsd.go",
		"sendfile_solaris.go",
		"sendfile_windows.go",
		"sockopt_windows.go",
		"strconv.go",
		"sys_cloexec.go"
	],
	"Imports": [
		"errors",
		"io",
		"runtime",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"TestGoFiles": [
		"export_posix_test.go",
		"export_test.go"
	],
	"XTestGoFiles": [
		"fd_mutex_test.go",
		"fd_posix_test.go",
		"writev_test.go"
	],
	"XTestImports": [
		"internal/poll",
		"io",
		"math/rand",
		"reflect",
		"runtime",
		"strings",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/syscall/unix",
	"ImportPath": "internal/syscall/unix",
	"Name": "unix",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/syscall/unix.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/syscall/unix.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"at.go",
		"at_sysnum_linux.go",
		"at_sysnum_newfstatat_linux.go",
		"getrandom_linux.go",
		"getrandom_linux_amd64.go",
		"nonblocking.go"
	],
	"IgnoredGoFiles": [
		"at_aix.go",
		"at_darwin.go",
		"at_freebsd.go",
		"at_libc.go",
		"at_solaris.go",
		"at_sysnum_darwin.go",
		"at_sysnum_dragonfly.go",
		"at_sysnum_fstatat64_linux.go",
		"at_sysnum_fstatat_linux.go",
		"at_sysnum_netbsd.go",
		"at_sysnum_openbsd.go",
		"getentropy_openbsd.go",
		"getrandom_freebsd.go",
		"getrandom_linux_386.go",
		"getrandom_linux_arm.go",
		"getrandom_linux_generic.go",
		"getrandom_linux_mips64x.go",
		"getrandom_linux_mipsx.go",
		"getrandom_linux_ppc64x.go",
		"getrandom_linux_s390x.go",
		"ioctl_aix.go",
		"nonblocking_darwin.go",
		"nonblocking_js.go",
		"nonblocking_nacl.go"
	],
	"Imports": [
		"sync/atomic",
		"syscall",
		"unsafe"
	],
	"Deps": [
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/internal/testlog",
	"ImportPath": "internal/testlog",
	"Name": "testlog",
	"Doc": "Package testlog provides a back-channel communication path between tests and package os, so that cmd/go can see which environment variables and files a test consults.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/testlog.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/internal/testlog.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"log.go"
	],
	"Imports": [
		"sync/atomic"
	],
	"Deps": [
		"sync/atomic",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/os",
	"ImportPath": "os",
	"Name": "os",
	"Doc": "Package os provides a platform-independent interface to operating system functionality.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/os.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/os.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"dir.go",
		"dir_unix.go",
		"env.go",
		"env_default.go",
		"error.go",
		"error_posix.go",
		"error_unix.go",
		"exec.go",
		"exec_posix.go",
		"exec_unix.go",
		"executable.go",
		"executable_procfs.go",
		"file.go",
		"file_posix.go",
		"file_unix.go",
		"getwd.go",
		"path.go",
		"path_unix.go",
		"pipe_linux.go",
		"proc.go",
		"rawconn.go",
		"removeall_at.go",
		"stat.go",
		"stat_linux.go",
		"stat_unix.go",
		"sticky_notbsd.go",
		"str.go",
		"sys.go",
		"sys_linux.go",
		"sys_unix.go",
		"types.go",
		"types_unix.go",
		"wait_waitid.go"
	],
	"IgnoredGoFiles": [
		"dir_ios.go",
		"dir_plan9.go",
		"dir_windows.go",
		"env_windows.go",
		"error_plan9.go",
		"error_windows.go",
		"error_windows_test.go",
		"exec_plan9.go",
		"exec_windows.go",
		"executable_darwin.go",
		"executable_freebsd.go",
		"executable_path.go",
		"executable_plan9.go",
		"executable_solaris.go",
		"executable_windows.go",
		"export_windows_test.go",
		"file_plan9.go",
		"file_windows.go",
		"getwd_darwin.go",
		"os_windows_test.go",
		"path_plan9.go",
		"path_windows.go",
		"path_windows_test.go",
		"pipe2_bsd.go",
		"pipe_bsd.go",
		"removeall_noat.go",
		"stat_aix.go",
		"stat_darwin.go",
		"stat_dragonfly.go",
		"stat_freebsd.go",
		"stat_nacljs.go",
		"stat_netbsd.go",
		"stat_openbsd.go",
		"stat_plan9.go",
		"stat_solaris.go",
		"stat_windows.go",
		"sticky_bsd.go",
		"sys_aix.go",
		"sys_bsd.go",
		"sys_js.go",
		"sys_nacl.go",
		"sys_plan9.go",
		"sys_solaris.go",
		"sys_windows.go",
		"types_plan9.go",
		"types_windows.go",
		"wait_unimp.go",
		"wait_wait6.go"
	],
	"Imports": [
		"errors",
		"internal/poll",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"runtime",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go",
		"export_unix_test.go"
	],
	"XTestGoFiles": [
		"env_test.go",
		"env_unix_test.go",
		"error_test.go",
		"error_unix_test.go",
		"example_test.go",
		"executable_test.go",
		"fifo_test.go",
		"os_test.go",
		"os_unix_test.go",
		"path_test.go",
		"pipe_test.go",
		"rawconn_test.go",
		"removeall_test.go",
		"stat_test.go",
		"timeout_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"flag",
		"fmt",
		"internal/poll",
		"internal/testenv",
		"io",
		"io/ioutil",
		"log",
		"math/rand",
		"os",
		"os/exec",
		"os/signal",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/debug",
		"sort",
		"strconv",
		"strings",
		"sync",
		"syscall",
		"testing",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/fmt",
	"ImportPath": "fmt",
	"Name": "fmt",
	"Doc": "Package fmt implements formatted I/O with functions analogous to C's printf and scanf.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/fmt.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/fmt.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"doc.go",
		"format.go",
		"print.go",
		"scan.go"
	],
	"Imports": [
		"errors",
		"internal/fmtsort",
		"io",
		"math",
		"os",
		"reflect",
		"strconv",
		"sync",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"fmt_test.go",
		"gostringer_example_test.go",
		"scan_test.go",
		"stringer_example_test.go",
		"stringer_test.go"
	],
	"XTestImports": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"internal/race",
		"io",
		"math",
		"os",
		"reflect",
		"regexp",
		"runtime",
		"strings",
		"testing",
		"testing/iotest",
		"time",
		"unicode",
		"unicode/utf8"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/compress/flate",
	"ImportPath": "compress/flate",
	"Name": "flate",
	"Doc": "Package flate implements the DEFLATE compressed data format, described in RFC 1951.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/flate.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/flate.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"deflate.go",
		"deflatefast.go",
		"dict_decoder.go",
		"huffman_bit_writer.go",
		"huffman_code.go",
		"inflate.go",
		"token.go"
	],
	"Imports": [
		"bufio",
		"fmt",
		"io",
		"math",
		"math/bits",
		"sort",
		"strconv",
		"sync"
	],
	"Deps": [
		"bufio",
		"bytes",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"deflate_test.go",
		"dict_decoder_test.go",
		"flate_test.go",
		"huffman_bit_writer_test.go",
		"inflate_test.go",
		"reader_test.go",
		"writer_test.go"
	],
	"TestImports": [
		"bytes",
		"encoding/hex",
		"errors",
		"flag",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/debug",
		"strings",
		"sync",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"compress/flate",
		"fmt",
		"io",
		"log",
		"os",
		"strings",
		"sync"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/binary",
	"ImportPath": "encoding/binary",
	"Name": "binary",
	"Doc": "Package binary implements simple translation between numbers and byte sequences and encoding and decoding of varints.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/binary.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/binary.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"binary.go",
		"varint.go"
	],
	"Imports": [
		"errors",
		"io",
		"math",
		"reflect"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"binary_test.go",
		"varint_test.go"
	],
	"TestImports": [
		"bytes",
		"io",
		"math",
		"reflect",
		"strings",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/binary",
		"fmt",
		"math"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/hash",
	"ImportPath": "hash",
	"Name": "hash",
	"Doc": "Package hash provides interfaces for hash functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"hash.go"
	],
	"Imports": [
		"io"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"XTestGoFiles": [
		"example_test.go",
		"marshal_test.go"
	],
	"XTestImports": [
		"bytes",
		"crypto/md5",
		"crypto/sha1",
		"crypto/sha256",
		"crypto/sha512",
		"encoding",
		"encoding/hex",
		"fmt",
		"hash",
		"hash/adler32",
		"hash/crc32",
		"hash/crc64",
		"hash/fnv",
		"log",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/hash/crc32",
	"ImportPath": "hash/crc32",
	"Name": "crc32",
	"Doc": "Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32, checksum.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash/crc32.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/hash/crc32.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"crc32.go",
		"crc32_amd64.go",
		"crc32_generic.go"
	],
	"IgnoredGoFiles": [
		"crc32_amd64p32.go",
		"crc32_arm64.go",
		"crc32_otherarch.go",
		"crc32_ppc64le.go",
		"crc32_s390x.go",
		"gen_const_ppc64le.go"
	],
	"SFiles": [
		"crc32_amd64.s"
	],
	"Imports": [
		"errors",
		"hash",
		"internal/cpu",
		"sync",
		"unsafe"
	],
	"Deps": [
		"errors",
		"hash",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unsafe"
	],
	"TestGoFiles": [
		"crc32_test.go"
	],
	"TestImports": [
		"encoding",
		"fmt",
		"hash",
		"io",
		"math/rand",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"hash/crc32"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/compress/gzip",
	"ImportPath": "compress/gzip",
	"Name": "gzip",
	"Doc": "Package gzip implements reading and writing of gzip format compressed files, as specified in RFC 1952.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/gzip.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/compress/gzip.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"gunzip.go",
		"gzip.go"
	],
	"Imports": [
		"bufio",
		"compress/flate",
		"encoding/binary",
		"errors",
		"fmt",
		"hash/crc32",
		"io",
		"time"
	],
	"Deps": [
		"bufio",
		"bytes",
		"compress/flate",
		"encoding/binary",
		"errors",
		"fmt",
		"hash",
		"hash/crc32",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"gunzip_test.go",
		"gzip_test.go",
		"issue14937_test.go"
	],
	"TestImports": [
		"bufio",
		"bytes",
		"compress/flate",
		"internal/testenv",
		"io",
		"io/ioutil",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"compress/gzip",
		"fmt",
		"io",
		"log",
		"os",
		"time"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding",
	"ImportPath": "encoding",
	"Name": "encoding",
	"Doc": "Package encoding defines interfaces shared by other packages that convert data to and from byte-level and textual representations.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"encoding.go"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/base64",
	"ImportPath": "encoding/base64",
	"Name": "base64",
	"Doc": "Package base64 implements base64 encoding as specified by RFC 4648.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/base64.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/base64.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"base64.go"
	],
	"Imports": [
		"encoding/binary",
		"io",
		"strconv"
	],
	"Deps": [
		"encoding/binary",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"math",
		"math/bits",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"strconv",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"base64_test.go"
	],
	"TestImports": [
		"bytes",
		"errors",
		"fmt",
		"io",
		"io/ioutil",
		"reflect",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"encoding/base64",
		"fmt",
		"os"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/strings",
	"ImportPath": "strings",
	"Name": "strings",
	"Doc": "Package strings implements simple functions to manipulate UTF-8 encoded strings.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strings.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/strings.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"builder.go",
		"compare.go",
		"reader.go",
		"replace.go",
		"search.go",
		"strings.go"
	],
	"SFiles": [
		"strings.s"
	],
	"Imports": [
		"errors",
		"internal/bytealg",
		"io",
		"sync",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/race",
		"io",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sync",
		"sync/atomic",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"builder_test.go",
		"compare_test.go",
		"example_test.go",
		"reader_test.go",
		"replace_test.go",
		"search_test.go",
		"strings_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"internal/testenv",
		"io",
		"io/ioutil",
		"math/rand",
		"reflect",
		"strconv",
		"strings",
		"sync",
		"testing",
		"unicode",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/unicode/utf16",
	"ImportPath": "unicode/utf16",
	"Name": "utf16",
	"Doc": "Package utf16 implements encoding and decoding of UTF-16 sequences.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf16.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/unicode/utf16.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"utf16.go"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"utf16_test.go"
	],
	"XTestImports": [
		"reflect",
		"testing",
		"unicode",
		"unicode/utf16"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/encoding/json",
	"ImportPath": "encoding/json",
	"Name": "json",
	"Doc": "Package json implements encoding and decoding of JSON as defined in RFC 7159.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/json.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/encoding/json.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"decode.go",
		"encode.go",
		"fold.go",
		"indent.go",
		"scanner.go",
		"stream.go",
		"tables.go",
		"tags.go"
	],
	"Imports": [
		"bytes",
		"encoding",
		"encoding/base64",
		"errors",
		"fmt",
		"io",
		"math",
		"reflect",
		"sort",
		"strconv",
		"strings",
		"sync",
		"unicode",
		"unicode/utf16",
		"unicode/utf8"
	],
	"Deps": [
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"bench_test.go",
		"decode_test.go",
		"encode_test.go",
		"fold_test.go",
		"number_test.go",
		"scanner_test.go",
		"stream_test.go",
		"tagkey_test.go",
		"tags_test.go"
	],
	"TestImports": [
		"bytes",
		"compress/gzip",
		"encoding",
		"errors",
		"fmt",
		"image",
		"internal/testenv",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/big",
		"math/rand",
		"net",
		"net/http",
		"net/http/httptest",
		"os",
		"reflect",
		"regexp",
		"runtime",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time",
		"unicode",
		"unicode/utf8"
	],
	"XTestGoFiles": [
		"example_marshaling_test.go",
		"example_test.go",
		"example_text_marshaling_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/json",
		"fmt",
		"io",
		"log",
		"os",
		"strings"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/log",
	"ImportPath": "log",
	"Name": "log",
	"Doc": "Package log implements a simple logging package.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/log.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/log.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"log.go"
	],
	"Imports": [
		"fmt",
		"io",
		"os",
		"runtime",
		"sync",
		"time"
	],
	"Deps": [
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"log_test.go"
	],
	"TestImports": [
		"bytes",
		"fmt",
		"os",
		"regexp",
		"strings",
		"testing",
		"time"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"bytes",
		"fmt",
		"log"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/proto",
	"ImportPath": "github.com/golang/protobuf/proto",
	"Name": "proto",
	"Doc": "Package proto converts data structures to and from the wire format of protocol buffers.",
	"Export": "/home/corin/.cache/go-build/e1/e188b6d31d171fd4f8bde696c095a08be742c3a8b2b304711ca3703fefce20f6-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"DepOnly": true,
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"clone.go",
		"decode.go",
		"deprecated.go",
		"discard.go",
		"encode.go",
		"equal.go",
		"extensions.go",
		"lib.go",
		"message_set.go",
		"pointer_unsafe.go",
		"properties.go",
		"table_marshal.go",
		"table_merge.go",
		"table_unmarshal.go",
		"text.go",
		"text_parser.go"
	],
	"IgnoredGoFiles": [
		"pointer_reflect.go"
	],
	"Imports": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/json",
		"errors",
		"fmt",
		"io",
		"log",
		"math",
		"reflect",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"unicode/utf8",
		"unsafe"
	],
	"Deps": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"log",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"size2_test.go"
	],
	"TestImports": [
		"math",
		"testing"
	],
	"XTestGoFiles": [
		"all_test.go",
		"any_test.go",
		"clone_test.go",
		"decode_test.go",
		"discard_test.go",
		"encode_test.go",
		"equal_test.go",
		"extensions_test.go",
		"map_test.go",
		"message_set_test.go",
		"proto3_test.go",
		"size_test.go",
		"text_parser_test.go",
		"text_test.go"
	],
	"XTestImports": [
		"bytes",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/proto/proto3_proto",
		"github.com/golang/protobuf/proto/test_proto",
		"github.com/golang/protobuf/ptypes",
		"github.com/golang/protobuf/ptypes/any",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/rand",
		"reflect",
		"runtime/debug",
		"sort",
		"strconv",
		"strings",
		"sync",
		"testing",
		"time"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/protoc-gen-go/descriptor",
	"ImportPath": "github.com/golang/protobuf/protoc-gen-go/descriptor",
	"Name": "descriptor",
	"Export": "/home/corin/.cache/go-build/a1/a14bac4af5fe95336f23c066469a0d9bb825050c4cb663686d1242a99682ccef-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"DepOnly": true,
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"descriptor.pb.go"
	],
	"Imports": [
		"fmt",
		"github.com/golang/protobuf/proto",
		"math"
	],
	"Deps": [
		"bufio",
		"bytes",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"log",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/path/filepath",
	"ImportPath": "path/filepath",
	"Name": "filepath",
	"Doc": "Package filepath implements utility routines for manipulating filename paths in a way compatible with the target operating system-defined file paths.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/path/filepath.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/path/filepath.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"match.go",
		"path.go",
		"path_unix.go",
		"symlink.go",
		"symlink_unix.go"
	],
	"IgnoredGoFiles": [
		"export_windows_test.go",
		"path_plan9.go",
		"path_windows.go",
		"path_windows_test.go",
		"symlink_windows.go"
	],
	"Imports": [
		"errors",
		"os",
		"runtime",
		"sort",
		"strings",
		"syscall",
		"unicode/utf8"
	],
	"Deps": [
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"export_test.go"
	],
	"XTestGoFiles": [
		"example_test.go",
		"example_unix_test.go",
		"example_unix_walk_test.go",
		"match_test.go",
		"path_test.go"
	],
	"XTestImports": [
		"errors",
		"fmt",
		"internal/testenv",
		"io/ioutil",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"sort",
		"strings",
		"syscall",
		"testing"
	]
}
{
	"Dir": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/src/io/ioutil",
	"ImportPath": "io/ioutil",
	"Name": "ioutil",
	"Doc": "Package ioutil implements some I/O utility functions.",
	"Target": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io/ioutil.a",
	"Root": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go",
	"Export": "/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go/pkg/linux_amd64/io/ioutil.a",
	"Goroot": true,
	"Standard": true,
	"DepOnly": true,
	"GoFiles": [
		"ioutil.go",
		"tempfile.go"
	],
	"Imports": [
		"bytes",
		"io",
		"os",
		"path/filepath",
		"sort",
		"strconv",
		"strings",
		"sync",
		"time"
	],
	"Deps": [
		"bytes",
		"errors",
		"internal/bytealg",
		"internal/cpu",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"math",
		"math/bits",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf8",
		"unsafe"
	],
	"TestGoFiles": [
		"ioutil_test.go",
		"tempfile_test.go"
	],
	"TestImports": [
		"os",
		"path/filepath",
		"regexp",
		"strings",
		"testing"
	],
	"XTestGoFiles": [
		"example_test.go"
	],
	"XTestImports": [
		"fmt",
		"io/ioutil",
		"log",
		"os",
		"path/filepath",
		"strings"
	]
}
{
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2/descriptor",
	"ImportPath": "github.com/golang/protobuf/descriptor",
	"Name": "descriptor",
	"Doc": "Package descriptor provides functions for obtaining protocol buffer descriptors for generated Go types.",
	"Export": "/home/corin/.cache/go-build/3e/3e4bf60080eef18a786c7fedc05a50e784eccca144a73f3da8cc3d31207a3d17-d",
	"Module": {
		"Path": "github.com/golang/protobuf",
		"Version": "v1.3.2",
		"Time": "2019-07-01T18:22:01Z",
		"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
		"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
	},
	"Match": [
		"github.com/golang/protobuf/descriptor"
	],
	"Stale": true,
	"StaleReason": "not installed but available in build cache",
	"GoFiles": [
		"descriptor.go"
	],
	"Imports": [
		"bytes",
		"compress/gzip",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"io/ioutil"
	],
	"Deps": [
		"bufio",
		"bytes",
		"compress/flate",
		"compress/gzip",
		"encoding",
		"encoding/base64",
		"encoding/binary",
		"encoding/json",
		"errors",
		"fmt",
		"github.com/golang/protobuf/proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"hash",
		"hash/crc32",
		"internal/bytealg",
		"internal/cpu",
		"internal/fmtsort",
		"internal/poll",
		"internal/race",
		"internal/syscall/unix",
		"internal/testlog",
		"io",
		"io/ioutil",
		"log",
		"math",
		"math/bits",
		"os",
		"path/filepath",
		"reflect",
		"runtime",
		"runtime/internal/atomic",
		"runtime/internal/math",
		"runtime/internal/sys",
		"sort",
		"strconv",
		"strings",
		"sync",
		"sync/atomic",
		"syscall",
		"time",
		"unicode",
		"unicode/utf16",
		"unicode/utf8",
		"unsafe"
	],
	"XTestGoFiles": [
		"descriptor_test.go"
	],
	"XTestImports": [
		"fmt",
		"github.com/golang/protobuf/descriptor",
		"github.com/golang/protobuf/proto/test_proto",
		"github.com/golang/protobuf/protoc-gen-go/descriptor",
		"testing"
	]
}
>>

// debug: writing file "/home/corin/go/src/gomacro.imports/github.com/golang/protobuf/descriptor//go.mod"
// debug: compiling "/home/corin/go/src/gomacro.imports/github.com/golang/protobuf/descriptor/descriptor.go" ...
go: finding github.com/golang/protobuf/descriptor latest
// debug: looking for package "github.com/au-phiware/gomacro-issue-82" ...
// debug: 8.832702ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "env" "GOMOD", stderr: <<>> stdout: <</home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod
>>

// debug: 12.402692ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-m" "-json" "all", stderr: <<>> stdout: <<{
	"Path": "github.com/au-phiware/gomacro-issue-82",
	"Main": true,
	"Dir": "/home/corin/src/github.com/au-phiware/gomacro-issue-82",
	"GoMod": "/home/corin/src/github.com/au-phiware/gomacro-issue-82/go.mod",
	"GoVersion": "1.12"
}
{
	"Path": "github.com/cosmos72/gomacro",
	"Version": "v0.0.0-20191211223858-da8c6a17f4e7",
	"Time": "2019-12-11T22:38:58Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/cosmos72/gomacro@v0.0.0-20191211223858-da8c6a17f4e7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/cosmos72/gomacro/@v/v0.0.0-20191211223858-da8c6a17f4e7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/golang/protobuf",
	"Version": "v1.3.2",
	"Time": "2019-07-01T18:22:01Z",
	"Dir": "/home/corin/go/pkg/mod/github.com/golang/protobuf@v1.3.2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/golang/protobuf/@v/v1.3.2.mod"
}
{
	"Path": "github.com/mattn/go-runewidth",
	"Version": "v0.0.7",
	"Time": "2019-12-03T13:04:45Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/mattn/go-runewidth@v0.0.7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/mattn/go-runewidth/@v/v0.0.7.mod",
	"GoVersion": "1.9"
}
{
	"Path": "github.com/peterh/liner",
	"Version": "v1.1.0",
	"Time": "2018-08-26T13:27:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/github.com/peterh/liner@v1.1.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/github.com/peterh/liner/@v/v1.1.0.mod"
}
{
	"Path": "golang.org/x/crypto",
	"Version": "v0.0.0-20190308221718-c2843e01d9a2",
	"Time": "2019-03-08T22:17:18Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/crypto@v0.0.0-20190308221718-c2843e01d9a2",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/crypto/@v/v0.0.0-20190308221718-c2843e01d9a2.mod"
}
{
	"Path": "golang.org/x/net",
	"Version": "v0.0.0-20190620200207-3b0461eec859",
	"Time": "2019-06-20T20:02:07Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/net@v0.0.0-20190620200207-3b0461eec859",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/net/@v/v0.0.0-20190620200207-3b0461eec859.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/sync",
	"Version": "v0.0.0-20190423024810-112230192c58",
	"Time": "2019-04-23T02:48:10Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/sync@v0.0.0-20190423024810-112230192c58",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sync/@v/v0.0.0-20190423024810-112230192c58.mod"
}
{
	"Path": "golang.org/x/sys",
	"Version": "v0.0.0-20190215142949-d0b11bdaac8a",
	"Time": "2019-02-15T14:29:49Z",
	"Indirect": true,
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/sys/@v/v0.0.0-20190215142949-d0b11bdaac8a.mod"
}
{
	"Path": "golang.org/x/text",
	"Version": "v0.3.0",
	"Time": "2017-12-14T13:08:43Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/text@v0.3.0",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/text/@v/v0.3.0.mod"
}
{
	"Path": "golang.org/x/tools",
	"Version": "v0.0.0-20191206204035-259af5ff87bd",
	"Time": "2019-12-06T20:40:35Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/tools@v0.0.0-20191206204035-259af5ff87bd",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/tools/@v/v0.0.0-20191206204035-259af5ff87bd.mod",
	"GoVersion": "1.11"
}
{
	"Path": "golang.org/x/xerrors",
	"Version": "v0.0.0-20190717185122-a985d3407aa7",
	"Time": "2019-07-17T18:51:22Z",
	"Indirect": true,
	"Dir": "/home/corin/go/pkg/mod/golang.org/x/xerrors@v0.0.0-20190717185122-a985d3407aa7",
	"GoMod": "/home/corin/go/pkg/mod/cache/download/golang.org/x/xerrors/@v/v0.0.0-20190717185122-a985d3407aa7.mod",
	"GoVersion": "1.11"
}
>>

// debug: 28.922785ms for GOROOT=/nix/store/as6ivpgwcqd7hm35dhm82zw7bcy5i2qk-go-1.12.9/share/go GOPATH= GO111MODULE=on PWD=/home/corin/src/github.com/au-phiware/gomacro-issue-82 go "list" "-e" "-json" "-compiled=false" "-test=false" "-export=true" "-deps=true" "-find=false" "--" "github.com/au-phiware/gomacro-issue-82", stderr: <<# github.com/au-phiware/gomacro-issue-82
./addressbook.pb.go:16:8: can't find import: "github.com/golang/protobuf/proto"
>> stdout: <<{
	"Dir": "/home/corin/src/github.com/au-phiware/gomacro-issue-82",
	"ImportPath": "github.com/au-phiware/gomacro-issue-82",
	"Name": "tutorial",
	"Doc": "Package tutorial is a generated protocol buffer package.",
	"Match": [
		"github.com/au-phiware/gomacro-issue-82"
	],
	"Incomplete": true,
	"Stale": true,
	"StaleReason": "build ID mismatch",
	"GoFiles": [
		"addressbook.pb.go",
		"gen.go"
	],
	"Error": {
		"ImportStack": [
			"github.com/au-phiware/gomacro-issue-82"
		],
		"Pos": "",
		"Err": "found packages tutorial (addressbook.pb.go) and gen (gen.go) in /home/corin/src/github.com/au-phiware/gomacro-issue-82"
	}
}
>>

error loading package "github.com/au-phiware/gomacro-issue-82" metadata: -: found packages tutorial (addressbook.pb.go) and gen (gen.go) in /home/corin/src/github.com/au-phiware/gomacro-issue-82
/home/corin/src/github.com/au-phiware/gomacro-issue-82/gen.go:6:1: package gen; expected tutorial
/home/corin/src/github.com/au-phiware/gomacro-issue-82/addressbook.pb.go:16:14: could not import github.com/golang/protobuf/proto (no metadata for github.com/golang/protobuf/proto)
/home/corin/src/github.com/au-phiware/gomacro-issue-82/addressbook.pb.go:17:12: could not import fmt (no metadata for fmt)
/home/corin/src/github.com/au-phiware/gomacro-issue-82/addressbook.pb.go:18:13: could not import math (no metadata for math)
/home/corin/src/github.com/au-phiware/gomacro-issue-82/addressbook.pb.go:19:24: could not import github.com/golang/protobuf/ptypes/timestamp (no metadata for github.com/golang/protobuf/ptypes/timestamp)
gen.gomacro:14:33: undefined identifier: proto
```
