# C Libraries

### glibc (GNU C Library)
    
* Standard C library of the GNU System.

* High Compatibility; Widespread use and Support.

* Use Case: Default C Library in many Linux Distros; used for general-purpose and desktop apps.

### musl libc

* Simple, Lightweight, and fast; Chosen for its straightforward design.

* Good Compatibility; Might have issues with programs expecting "glibc-specific" behavior

* Use Case: Static linking and embedded systems; Used in lightweight containers and minimal Linux Distros.

### uClibc (Micro-C Library)

* Small C library for embedded Linux Systems; Systems with Limited resources.

* Embedded systems compatible; Not fully compatible with programs using "glibc".

* Configurable; Include or Exclude features based on Use Case.

* Use Case: Embedded Systems with LOW Storage/Memory; Routers and IoT Devices.

---

## Conclusion

* glibc - Full Compatibility, Rich in Features

* musl - Minimalistic, High Perfomance, Small Static Binaries

* uClibc - Super-Minimalistic, IoT or Embedded Linux Environments



