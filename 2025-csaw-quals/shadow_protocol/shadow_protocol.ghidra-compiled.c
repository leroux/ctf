typedef unsigned char   undefined;

typedef unsigned char    byte;
typedef unsigned char    dwfenc;
typedef unsigned int    dword;
typedef unsigned long    qword;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned int    undefined4;
typedef unsigned long    undefined8;
typedef unsigned short    ushort;
typedef unsigned short    word;
typedef struct eh_frame_hdr eh_frame_hdr, *Peh_frame_hdr;

struct eh_frame_hdr {
    byte eh_frame_hdr_version; // Exception Handler Frame Header Version
    dwfenc eh_frame_pointer_encoding; // Exception Handler Frame Pointer Encoding
    dwfenc eh_frame_desc_entry_count_encoding; // Encoding of # of Exception Handler FDEs
    dwfenc eh_frame_table_encoding; // Exception Handler Table Encoding
};

typedef struct NoteGnuPropertyElement_4 NoteGnuPropertyElement_4, *PNoteGnuPropertyElement_4;

struct NoteGnuPropertyElement_4 {
    dword prType;
    dword prDatasz;
    byte data[4];
};

typedef struct fde_table_entry fde_table_entry, *Pfde_table_entry;

struct fde_table_entry {
    dword initial_loc; // Initial Location
    dword data_loc; // Data location
};

typedef ushort sa_family_t;

typedef void _IO_lock_t;

typedef struct _IO_marker _IO_marker, *P_IO_marker;

typedef struct _IO_FILE _IO_FILE, *P_IO_FILE;

typedef long __off_t;

typedef long __off64_t;

typedef ulong size_t;

struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    ushort _cur_column;
    char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    void *__pad1;
    void *__pad2;
    void *__pad3;
    void *__pad4;
    size_t __pad5;
    int _mode;
    char _unused2[20];
};

struct _IO_marker {
    struct _IO_marker *_next;
    struct _IO_FILE *_sbuf;
    int _pos;
};

typedef struct _IO_FILE FILE;

typedef struct sockaddr sockaddr, *Psockaddr;

struct sockaddr {
    sa_family_t sa_family;
    char sa_data[14];
};

typedef uint __socklen_t;

typedef __socklen_t socklen_t;

typedef long __ssize_t;

typedef __ssize_t ssize_t;

typedef long __time_t;

typedef struct evp_pkey_ctx_st evp_pkey_ctx_st, *Pevp_pkey_ctx_st;

struct evp_pkey_ctx_st {
};

typedef struct evp_pkey_ctx_st EVP_PKEY_CTX;

typedef __time_t time_t;

typedef enum Elf_ProgramHeaderType {
    PT_NULL=0,
    PT_LOAD=1,
    PT_DYNAMIC=2,
    PT_INTERP=3,
    PT_NOTE=4,
    PT_SHLIB=5,
    PT_PHDR=6,
    PT_TLS=7,
    PT_GNU_EH_FRAME=1685382480,
    PT_GNU_STACK=1685382481,
    PT_GNU_RELRO=1685382482
} Elf_ProgramHeaderType;

typedef struct Elf64_Rela Elf64_Rela, *PElf64_Rela;

struct Elf64_Rela {
    qword r_offset; // location to apply the relocation action
    qword r_info; // the symbol table index and the type of relocation
    qword r_addend; // a constant addend used to compute the relocatable field value
};

typedef struct Elf64_Shdr Elf64_Shdr, *PElf64_Shdr;

typedef enum Elf_SectionHeaderType {
    SHT_NULL=0,
    SHT_PROGBITS=1,
    SHT_SYMTAB=2,
    SHT_STRTAB=3,
    SHT_RELA=4,
    SHT_HASH=5,
    SHT_DYNAMIC=6,
    SHT_NOTE=7,
    SHT_NOBITS=8,
    SHT_REL=9,
    SHT_SHLIB=10,
    SHT_DYNSYM=11,
    SHT_INIT_ARRAY=14,
    SHT_FINI_ARRAY=15,
    SHT_PREINIT_ARRAY=16,
    SHT_GROUP=17,
    SHT_SYMTAB_SHNDX=18,
    SHT_ANDROID_REL=1610612737,
    SHT_ANDROID_RELA=1610612738,
    SHT_GNU_ATTRIBUTES=1879048181,
    SHT_GNU_HASH=1879048182,
    SHT_GNU_LIBLIST=1879048183,
    SHT_CHECKSUM=1879048184,
    SHT_SUNW_move=1879048186,
    SHT_SUNW_COMDAT=1879048187,
    SHT_SUNW_syminfo=1879048188,
    SHT_GNU_verdef=1879048189,
    SHT_GNU_verneed=1879048190,
    SHT_GNU_versym=1879048191
} Elf_SectionHeaderType;

struct Elf64_Shdr {
    dword sh_name;
    enum Elf_SectionHeaderType sh_type;
    qword sh_flags;
    qword sh_addr;
    qword sh_offset;
    qword sh_size;
    dword sh_link;
    dword sh_info;
    qword sh_addralign;
    qword sh_entsize;
};

typedef struct Elf64_Dyn Elf64_Dyn, *PElf64_Dyn;

typedef enum Elf64_DynTag {
    DT_NULL=0,
    DT_NEEDED=1,
    DT_PLTRELSZ=2,
    DT_PLTGOT=3,
    DT_HASH=4,
    DT_STRTAB=5,
    DT_SYMTAB=6,
    DT_RELA=7,
    DT_RELASZ=8,
    DT_RELAENT=9,
    DT_STRSZ=10,
    DT_SYMENT=11,
    DT_INIT=12,
    DT_FINI=13,
    DT_SONAME=14,
    DT_RPATH=15,
    DT_SYMBOLIC=16,
    DT_REL=17,
    DT_RELSZ=18,
    DT_RELENT=19,
    DT_PLTREL=20,
    DT_DEBUG=21,
    DT_TEXTREL=22,
    DT_JMPREL=23,
    DT_BIND_NOW=24,
    DT_INIT_ARRAY=25,
    DT_FINI_ARRAY=26,
    DT_INIT_ARRAYSZ=27,
    DT_FINI_ARRAYSZ=28,
    DT_RUNPATH=29,
    DT_FLAGS=30,
    DT_PREINIT_ARRAY=32,
    DT_PREINIT_ARRAYSZ=33,
    DT_RELRSZ=35,
    DT_RELR=36,
    DT_RELRENT=37,
    DT_ANDROID_REL=1610612751,
    DT_ANDROID_RELSZ=1610612752,
    DT_ANDROID_RELA=1610612753,
    DT_ANDROID_RELASZ=1610612754,
    DT_ANDROID_RELR=1879040000,
    DT_ANDROID_RELRSZ=1879040001,
    DT_ANDROID_RELRENT=1879040003,
    DT_GNU_PRELINKED=1879047669,
    DT_GNU_CONFLICTSZ=1879047670,
    DT_GNU_LIBLISTSZ=1879047671,
    DT_CHECKSUM=1879047672,
    DT_PLTPADSZ=1879047673,
    DT_MOVEENT=1879047674,
    DT_MOVESZ=1879047675,
    DT_FEATURE_1=1879047676,
    DT_POSFLAG_1=1879047677,
    DT_SYMINSZ=1879047678,
    DT_SYMINENT=1879047679,
    DT_GNU_XHASH=1879047924,
    DT_GNU_HASH=1879047925,
    DT_TLSDESC_PLT=1879047926,
    DT_TLSDESC_GOT=1879047927,
    DT_GNU_CONFLICT=1879047928,
    DT_GNU_LIBLIST=1879047929,
    DT_CONFIG=1879047930,
    DT_DEPAUDIT=1879047931,
    DT_AUDIT=1879047932,
    DT_PLTPAD=1879047933,
    DT_MOVETAB=1879047934,
    DT_SYMINFO=1879047935,
    DT_VERSYM=1879048176,
    DT_RELACOUNT=1879048185,
    DT_RELCOUNT=1879048186,
    DT_FLAGS_1=1879048187,
    DT_VERDEF=1879048188,
    DT_VERDEFNUM=1879048189,
    DT_VERNEED=1879048190,
    DT_VERNEEDNUM=1879048191,
    DT_AUXILIARY=2147483645,
    DT_FILTER=2147483647
} Elf64_DynTag;

struct Elf64_Dyn {
    enum Elf64_DynTag d_tag;
    qword d_val;
};

typedef struct GnuBuildId GnuBuildId, *PGnuBuildId;

struct GnuBuildId {
    dword namesz; // Length of name field
    dword descsz; // Length of description field
    dword type; // Vendor specific type
    char name[4]; // Vendor name
    byte hash[20];
};

typedef struct NoteGnuProperty_4 NoteGnuProperty_4, *PNoteGnuProperty_4;

struct NoteGnuProperty_4 {
    dword namesz; // Length of name field
    dword descsz; // Length of description field
    dword type; // Vendor specific type
    char name[4]; // Vendor name
};

typedef struct Elf64_Ehdr Elf64_Ehdr, *PElf64_Ehdr;

struct Elf64_Ehdr {
    byte e_ident_magic_num;
    char e_ident_magic_str[3];
    byte e_ident_class;
    byte e_ident_data;
    byte e_ident_version;
    byte e_ident_osabi;
    byte e_ident_abiversion;
    byte e_ident_pad[7];
    word e_type;
    word e_machine;
    dword e_version;
    qword e_entry;
    qword e_phoff;
    qword e_shoff;
    dword e_flags;
    word e_ehsize;
    word e_phentsize;
    word e_phnum;
    word e_shentsize;
    word e_shnum;
    word e_shstrndx;
};

typedef struct Elf64_Sym Elf64_Sym, *PElf64_Sym;

struct Elf64_Sym {
    dword st_name;
    byte st_info;
    byte st_other;
    word st_shndx;
    qword st_value;
    qword st_size;
};

typedef struct Elf64_Phdr Elf64_Phdr, *PElf64_Phdr;

struct Elf64_Phdr {
    enum Elf_ProgramHeaderType p_type;
    dword p_flags;
    qword p_offset;
    qword p_vaddr;
    qword p_paddr;
    qword p_filesz;
    qword p_memsz;
    qword p_align;
};

typedef struct NoteAbiTag NoteAbiTag, *PNoteAbiTag;

struct NoteAbiTag {
    dword namesz; // Length of name field
    dword descsz; // Length of description field
    dword type; // Vendor specific type
    char name[4]; // Vendor name
    dword abiType; // 0 == Linux
    dword requiredKernelVersion[3]; // Major.minor.patch
};

typedef uint uint32_t;

typedef ushort uint16_t;




int _init(EVP_PKEY_CTX *ctx)

{
  int iVar1;
  
  iVar1 = __gmon_start__();
  return iVar1;
}



void FUN_00101020(void)

{
  (*(code *)(undefined *)0x0)();
  return;
}



void FUN_00101190(void)

{
  __cxa_finalize();
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void free(void *__ptr)

{
  free(__ptr);
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int putchar(int __c)

{
  int iVar1;
  
  iVar1 = putchar(__c);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int puts(char *__s)

{
  int iVar1;
  
  iVar1 = puts(__s);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int fclose(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fclose(__stream);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}



void __stack_chk_fail(void)

{
                    // WARNING: Subroutine does not return
  __stack_chk_fail();
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

uint16_t htons(uint16_t __hostshort)

{
  uint16_t uVar1;
  
  uVar1 = htons(__hostshort);
  return uVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

ssize_t send(int __fd,void *__buf,size_t __n,int __flags)

{
  ssize_t sVar1;
  
  sVar1 = send(__fd,__buf,__n,__flags);
  return sVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int printf(char *__format,...)

{
  int iVar1;
  
  iVar1 = printf(__format);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int snprintf(char *__s,size_t __maxlen,char *__format,...)

{
  int iVar1;
  
  iVar1 = snprintf(__s,__maxlen,__format);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

uint32_t htonl(uint32_t __hostlong)

{
  uint32_t uVar1;
  
  uVar1 = htonl(__hostlong);
  return uVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int close(int __fd)

{
  int iVar1;
  
  iVar1 = close(__fd);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void srand(uint __seed)

{
  srand(__seed);
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

char * fgets(char *__s,int __n,FILE *__stream)

{
  char *pcVar1;
  
  pcVar1 = fgets(__s,__n,__stream);
  return pcVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int getchar(void)

{
  int iVar1;
  
  iVar1 = getchar();
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

time_t time(time_t *__timer)

{
  time_t tVar1;
  
  tVar1 = time(__timer);
  return tVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

FILE * fopen(char *__filename,char *__modes)

{
  FILE *pFVar1;
  
  pFVar1 = fopen(__filename,__modes);
  return pFVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int connect(int __fd,sockaddr *__addr,socklen_t __len)

{
  int iVar1;
  
  iVar1 = connect(__fd,__addr,__len);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int rand(void)

{
  int iVar1;
  
  iVar1 = rand();
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int socket(int __domain,int __type,int __protocol)

{
  int iVar1;
  
  iVar1 = socket(__domain,__type,__protocol);
  return iVar1;
}



void processEntry _start(undefined8 param_1,undefined8 param_2)

{
  undefined1 auStack_8 [8];
  
  __libc_start_main(main,param_2,&stack0x00000008,0,0,param_1,auStack_8);
  do {
                    // WARNING: Do nothing block with infinite loop
  } while( true );
}



// WARNING: Removing unreachable block (ram,0x00101343)
// WARNING: Removing unreachable block (ram,0x0010134f)

void deregister_tm_clones(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x00101384)
// WARNING: Removing unreachable block (ram,0x00101390)

void register_tm_clones(void)

{
  return;
}



void __do_global_dtors_aux(void)

{
  if (completed_0 != '\0') {
    return;
  }
  FUN_00101190(__dso_handle);
  deregister_tm_clones();
  completed_0 = 1;
  return;
}



void frame_dummy(void)

{
  register_tm_clones();
  return;
}



void debug(undefined8 param_1)

{
  int __fd;
  int iVar1;
  size_t __n;
  long in_FS_OFFSET;
  sockaddr local_68;
  char local_58 [72];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  __fd = socket(2,1,0);
  if (-1 < __fd) {
    memset(&local_68,0,0x10);
    local_68.sa_family = 2;
    local_68.sa_data._0_2_ = htons(0xbad7);
    local_68.sa_data._2_4_ = htonl(0x7f000001);
    iVar1 = connect(__fd,&local_68,0x10);
    if (iVar1 < 0) {
      close(__fd);
    }
    else {
      snprintf(local_58,0x40,"%llu\n",param_1);
      __n = strlen(local_58);
      send(__fd,local_58,__n,0);
      close(__fd);
    }
  }
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



long shadow_protocol(undefined8 param_1)

{
  uint uVar1;
  ulong uVar2;
  uint uVar3;
  uint uVar4;
  long in_FS_OFFSET;
  uint local_44;
  uint local_40;
  int local_3c;
  uint local_28 [6];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  local_44 = (uint)((ulong)param_1 >> 0x20);
  local_40 = (uint)param_1;
  local_28[0] = 0xa5a5c3c3;
  local_28[1] = 0x5a5a9696;
  local_28[2] = 0x3c3ca5a5;
  local_28[3] = 0xc3c35a5a;
  for (local_3c = 0; uVar3 = local_44, local_3c < 8; local_3c = local_3c + 1) {
    uVar1 = ((uint)(byte)sbox[local_40 & 0xff] |
            (uint)(byte)sbox[local_40 >> 0x18] << 0x18 |
            (uint)(byte)sbox[local_40 >> 0x10 & 0xff] << 0x10 |
            (uint)(byte)sbox[local_40 >> 8 & 0xff] << 8) ^ local_28[local_3c % 4];
    uVar4 = (local_3c + 1) * 0x1337beef ^ local_44;
    local_44 = local_40;
    local_40 = (uVar1 >> (0x1dU - (char)local_3c & 0x1f) | uVar1 << ((char)local_3c + 3U & 0x1f)) +
               uVar4 ^ uVar3;
  }
  uVar2 = CONCAT44(local_44,local_40) ^ 0xdeadbeefcafebabe;
  if (*(long *)(in_FS_OFFSET + 0x28) != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return (uVar2 << 0x11 | uVar2 >> 0x2f) + 0x1234567890abcdef;
}



byte * build_bittree(ulong param_1,int param_2,int param_3)

{
  int iVar1;
  byte *pbVar2;
  undefined8 uVar3;
  byte local_21;
  
  if (param_3 < param_2) {
    pbVar2 = (byte *)0x0;
  }
  else if (param_2 == param_3) {
    iVar1 = param_2 * -3 + 0x3f;
    if (iVar1 < 0) {
      local_21 = 7;
    }
    else if (iVar1 < 2) {
      if (iVar1 == 1) {
        local_21 = (char)param_1 * '\x02' & 6U | 1;
      }
      else if (iVar1 == 0) {
        local_21 = (byte)(((uint)param_1 & 1) << 2) | 3;
      }
      else {
        local_21 = 7;
      }
    }
    else {
      local_21 = (byte)(param_1 >> ((char)iVar1 - 2U & 0x3f)) & 7;
    }
    pbVar2 = (byte *)malloc(0x18);
    *pbVar2 = local_21;
    pbVar2[0x10] = 0;
    pbVar2[0x11] = 0;
    pbVar2[0x12] = 0;
    pbVar2[0x13] = 0;
    pbVar2[0x14] = 0;
    pbVar2[0x15] = 0;
    pbVar2[0x16] = 0;
    pbVar2[0x17] = 0;
    *(undefined8 *)(pbVar2 + 8) = *(undefined8 *)(pbVar2 + 0x10);
  }
  else {
    iVar1 = (param_3 + param_2) / 2;
    pbVar2 = (byte *)malloc(0x18);
    *pbVar2 = 0;
    uVar3 = build_bittree(param_1,param_2,iVar1);
    *(undefined8 *)(pbVar2 + 8) = uVar3;
    uVar3 = build_bittree(param_1,iVar1 + 1,param_3);
    *(undefined8 *)(pbVar2 + 0x10) = uVar3;
  }
  return pbVar2;
}



void shadow_tree_mix(byte *param_1,ulong *param_2,int *param_3)

{
  if (param_1 != (byte *)0x0) {
    shadow_tree_mix(*(undefined8 *)(param_1 + 8),param_2,param_3);
    shadow_tree_mix(*(undefined8 *)(param_1 + 0x10),param_2,param_3);
    if ((*(long *)(param_1 + 8) == 0) && (*(long *)(param_1 + 0x10) == 0)) {
      *param_2 = *param_2 * 8 | (ulong)(*param_1 & 7);
      *param_3 = *param_3 + 1;
    }
  }
  return;
}



void free_bittree(void *param_1)

{
  if (param_1 != (void *)0x0) {
    free_bittree(*(undefined8 *)((long)param_1 + 8));
    free_bittree(*(undefined8 *)((long)param_1 + 0x10));
    free(param_1);
  }
  return;
}



undefined8 main(void)

{
  int iVar1;
  int iVar2;
  time_t tVar3;
  char *pcVar4;
  size_t sVar5;
  undefined8 uVar6;
  long in_FS_OFFSET;
  undefined4 local_f4;
  undefined8 local_f0;
  ulong local_e8;
  long local_e0;
  ulong local_d8;
  undefined8 local_d0;
  ulong local_c8;
  FILE *local_c0;
  size_t local_b8;
  undefined8 local_b0;
  byte local_a8 [136];
  long local_20;
  
  local_20 = *(long *)(in_FS_OFFSET + 0x28);
  tVar3 = time((time_t *)0x0);
  local_e0 = (tVar3 / 0x3c) * 0x3c;
  srand((uint)local_e0);
  iVar1 = rand();
  iVar2 = rand();
  local_d8 = (long)iVar2 | (long)iVar1 << 0x20;
  local_d0 = build_bittree(local_d8,0,0x15);
  local_f0 = 0;
  local_f4 = 0;
  shadow_tree_mix(local_d0,&local_f0,&local_f4);
  free_bittree(local_d0);
  local_c8 = shadow_protocol(local_f0);
  debug(local_c8);
  local_c0 = fopen("flag.txt","r");
  if (local_c0 == (FILE *)0x0) {
    local_a8[0] = 0x43;
    local_a8[1] = 0x53;
    local_a8[2] = 0x41;
    local_a8[3] = 0x57;
    local_a8[4] = 0x7b;
    local_a8[5] = 0x66;
    local_a8[6] = 0x34;
    local_a8[7] = 0x6b;
    local_a8[8] = 0x33;
    local_a8[9] = 0x5f;
    local_a8[10] = 0x66;
    local_a8[0xb] = 0x6c;
    local_a8[0xc] = 0x34;
    local_a8[0xd] = 0x67;
    local_a8[0xe] = 0x5f;
    local_a8[0xf] = 0x34;
    local_a8[0x10] = 0x5f;
    local_a8[0x11] = 0x74;
    local_a8[0x12] = 0x33;
    local_a8[0x13] = 0x73;
    local_a8[0x14] = 0x74;
    local_a8[0x15] = 0x31;
    local_a8[0x16] = 0x6e;
    local_a8[0x17] = 0x67;
    local_a8[0x18] = 0x7d;
    local_a8[0x19] = 0;
  }
  else {
    pcVar4 = fgets((char *)local_a8,0x80,local_c0);
    if (pcVar4 == (char *)0x0) {
      puts("Could not read flag, contact mission control.");
      fclose(local_c0);
      uVar6 = 1;
      goto LAB_00101c1c;
    }
    fclose(local_c0);
    sVar5 = strlen((char *)local_a8);
    local_b8 = sVar5;
    if ((sVar5 != 0) && (*(char *)((long)&local_b0 + sVar5 + 7) == '\n')) {
      local_b8 = sVar5 - 1;
      *(undefined1 *)((long)&local_b0 + sVar5 + 7) = 0;
    }
  }
  local_b0 = strlen((char *)local_a8);
  puts(&DAT_00102190);
  puts(&DAT_001021c0);
  puts(&DAT_00102200);
  printf("[SPACE] A cosmic signal has been scrambled using the Shadow Protocol at time: %lld.\n",
         local_e0);
  puts("[SPACE] Encrypted message:");
  for (local_e8 = 0; local_e8 < local_b0; local_e8 = local_e8 + 1) {
    printf("%02X",(ulong)(byte)((byte)(local_c8 >> (sbyte)(((uint)local_e8 & 7) << 3)) ^
                               local_a8[local_e8]));
  }
  putchar(10);
  puts("\n[SPACE] Transmission complete.");
  getchar();
  uVar6 = 0;
LAB_00101c1c:
  if (local_20 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return uVar6;
}



void _fini(void)

{
  return;
}


