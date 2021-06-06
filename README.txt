1. Build Docker Environment:
	# docker build buildenv -t dave_os_buildenv
	
2. Run Docker Environment:
	Linux: # docker run --rm -it -v $(pwd):/root/env dave_os_buildenv
	MacOS: $ docker run --rm -it -v "$PWD":/root/env dave_os_buildenv
	Windows(CMD): C:\Users\You> docker run --rm -it -v "%cd":/root/env dave_os_buildenv
	Windows(PowerShell): PS C:\Users\You> docker run --rm -it -v "${pwd}:/root/env" dave_os_buildenv
	
3. Within Docker Environment, Run Makefile:
	~/env# make build-x86_64
	~/env# exit
	
4. Emulate x86 System Using QEMU To Boot Dave's OS Kernel:
	# qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso
	
5. Cleanup:
	# docker rmi dave_os_build_env -f
	
