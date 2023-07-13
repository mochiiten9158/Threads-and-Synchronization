
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   a:	e8 41 00 00 00       	call   50 <forktest>
  exit();
   f:	e8 9f 03 00 00       	call   3b3 <exit>
  14:	66 90                	xchg   %ax,%ax
  16:	66 90                	xchg   %ax,%ax
  18:	66 90                	xchg   %ax,%ax
  1a:	66 90                	xchg   %ax,%ax
  1c:	66 90                	xchg   %ax,%ax
  1e:	66 90                	xchg   %ax,%ax

00000020 <printf>:
{
  20:	f3 0f 1e fb          	endbr32 
  24:	55                   	push   %ebp
  25:	89 e5                	mov    %esp,%ebp
  27:	53                   	push   %ebx
  28:	83 ec 10             	sub    $0x10,%esp
  2b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  2e:	53                   	push   %ebx
  2f:	e8 9c 01 00 00       	call   1d0 <strlen>
  34:	83 c4 0c             	add    $0xc,%esp
  37:	50                   	push   %eax
  38:	53                   	push   %ebx
  39:	ff 75 08             	pushl  0x8(%ebp)
  3c:	e8 92 03 00 00       	call   3d3 <write>
}
  41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  44:	83 c4 10             	add    $0x10,%esp
  47:	c9                   	leave  
  48:	c3                   	ret    
  49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000050 <forktest>:
{
  50:	f3 0f 1e fb          	endbr32 
  54:	55                   	push   %ebp
  55:	89 e5                	mov    %esp,%ebp
  57:	53                   	push   %ebx
  for(n=0; n<N; n++){
  58:	31 db                	xor    %ebx,%ebx
{
  5a:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  5d:	68 28 06 00 00       	push   $0x628
  62:	e8 69 01 00 00       	call   1d0 <strlen>
  67:	83 c4 0c             	add    $0xc,%esp
  6a:	50                   	push   %eax
  6b:	68 28 06 00 00       	push   $0x628
  70:	6a 01                	push   $0x1
  72:	e8 5c 03 00 00       	call   3d3 <write>
  77:	83 c4 10             	add    $0x10,%esp
  7a:	eb 15                	jmp    91 <forktest+0x41>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
  80:	74 58                	je     da <forktest+0x8a>
  for(n=0; n<N; n++){
  82:	83 c3 01             	add    $0x1,%ebx
  85:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  8b:	0f 84 92 00 00 00    	je     123 <forktest+0xd3>
    pid = fork();
  91:	e8 15 03 00 00       	call   3ab <fork>
    if(pid < 0)
  96:	85 c0                	test   %eax,%eax
  98:	79 e6                	jns    80 <forktest+0x30>
  for(; n > 0; n--){
  9a:	85 db                	test   %ebx,%ebx
  9c:	74 10                	je     ae <forktest+0x5e>
  9e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  a0:	e8 16 03 00 00       	call   3bb <wait>
  a5:	85 c0                	test   %eax,%eax
  a7:	78 36                	js     df <forktest+0x8f>
  for(; n > 0; n--){
  a9:	83 eb 01             	sub    $0x1,%ebx
  ac:	75 f2                	jne    a0 <forktest+0x50>
  if(wait() != -1){
  ae:	e8 08 03 00 00       	call   3bb <wait>
  b3:	83 f8 ff             	cmp    $0xffffffff,%eax
  b6:	75 49                	jne    101 <forktest+0xb1>
  write(fd, s, strlen(s));
  b8:	83 ec 0c             	sub    $0xc,%esp
  bb:	68 5a 06 00 00       	push   $0x65a
  c0:	e8 0b 01 00 00       	call   1d0 <strlen>
  c5:	83 c4 0c             	add    $0xc,%esp
  c8:	50                   	push   %eax
  c9:	68 5a 06 00 00       	push   $0x65a
  ce:	6a 01                	push   $0x1
  d0:	e8 fe 02 00 00       	call   3d3 <write>
}
  d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d8:	c9                   	leave  
  d9:	c3                   	ret    
      exit();
  da:	e8 d4 02 00 00       	call   3b3 <exit>
  write(fd, s, strlen(s));
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	68 33 06 00 00       	push   $0x633
  e7:	e8 e4 00 00 00       	call   1d0 <strlen>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	50                   	push   %eax
  f0:	68 33 06 00 00       	push   $0x633
  f5:	6a 01                	push   $0x1
  f7:	e8 d7 02 00 00       	call   3d3 <write>
      exit();
  fc:	e8 b2 02 00 00       	call   3b3 <exit>
  write(fd, s, strlen(s));
 101:	83 ec 0c             	sub    $0xc,%esp
 104:	68 47 06 00 00       	push   $0x647
 109:	e8 c2 00 00 00       	call   1d0 <strlen>
 10e:	83 c4 0c             	add    $0xc,%esp
 111:	50                   	push   %eax
 112:	68 47 06 00 00       	push   $0x647
 117:	6a 01                	push   $0x1
 119:	e8 b5 02 00 00       	call   3d3 <write>
    exit();
 11e:	e8 90 02 00 00       	call   3b3 <exit>
  write(fd, s, strlen(s));
 123:	83 ec 0c             	sub    $0xc,%esp
 126:	68 68 06 00 00       	push   $0x668
 12b:	e8 a0 00 00 00       	call   1d0 <strlen>
 130:	83 c4 0c             	add    $0xc,%esp
 133:	50                   	push   %eax
 134:	68 68 06 00 00       	push   $0x668
 139:	6a 01                	push   $0x1
 13b:	e8 93 02 00 00       	call   3d3 <write>
    exit();
 140:	e8 6e 02 00 00       	call   3b3 <exit>
 145:	66 90                	xchg   %ax,%ax
 147:	66 90                	xchg   %ax,%ax
 149:	66 90                	xchg   %ax,%ax
 14b:	66 90                	xchg   %ax,%ax
 14d:	66 90                	xchg   %ax,%ax
 14f:	90                   	nop

00000150 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 150:	f3 0f 1e fb          	endbr32 
 154:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 155:	31 c0                	xor    %eax,%eax
{
 157:	89 e5                	mov    %esp,%ebp
 159:	53                   	push   %ebx
 15a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 15d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
 160:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 164:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 167:	83 c0 01             	add    $0x1,%eax
 16a:	84 d2                	test   %dl,%dl
 16c:	75 f2                	jne    160 <strcpy+0x10>
    ;
  return os;
}
 16e:	89 c8                	mov    %ecx,%eax
 170:	5b                   	pop    %ebx
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000180 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 180:	f3 0f 1e fb          	endbr32 
 184:	55                   	push   %ebp
 185:	89 e5                	mov    %esp,%ebp
 187:	53                   	push   %ebx
 188:	8b 4d 08             	mov    0x8(%ebp),%ecx
 18b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 18e:	0f b6 01             	movzbl (%ecx),%eax
 191:	0f b6 1a             	movzbl (%edx),%ebx
 194:	84 c0                	test   %al,%al
 196:	75 19                	jne    1b1 <strcmp+0x31>
 198:	eb 26                	jmp    1c0 <strcmp+0x40>
 19a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1a0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 1a4:	83 c1 01             	add    $0x1,%ecx
 1a7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 1aa:	0f b6 1a             	movzbl (%edx),%ebx
 1ad:	84 c0                	test   %al,%al
 1af:	74 0f                	je     1c0 <strcmp+0x40>
 1b1:	38 d8                	cmp    %bl,%al
 1b3:	74 eb                	je     1a0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 1b5:	29 d8                	sub    %ebx,%eax
}
 1b7:	5b                   	pop    %ebx
 1b8:	5d                   	pop    %ebp
 1b9:	c3                   	ret    
 1ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1c0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 1c2:	29 d8                	sub    %ebx,%eax
}
 1c4:	5b                   	pop    %ebx
 1c5:	5d                   	pop    %ebp
 1c6:	c3                   	ret    
 1c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <strlen>:

uint
strlen(const char *s)
{
 1d0:	f3 0f 1e fb          	endbr32 
 1d4:	55                   	push   %ebp
 1d5:	89 e5                	mov    %esp,%ebp
 1d7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1da:	80 3a 00             	cmpb   $0x0,(%edx)
 1dd:	74 21                	je     200 <strlen+0x30>
 1df:	31 c0                	xor    %eax,%eax
 1e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1e8:	83 c0 01             	add    $0x1,%eax
 1eb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1ef:	89 c1                	mov    %eax,%ecx
 1f1:	75 f5                	jne    1e8 <strlen+0x18>
    ;
  return n;
}
 1f3:	89 c8                	mov    %ecx,%eax
 1f5:	5d                   	pop    %ebp
 1f6:	c3                   	ret    
 1f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fe:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 200:	31 c9                	xor    %ecx,%ecx
}
 202:	5d                   	pop    %ebp
 203:	89 c8                	mov    %ecx,%eax
 205:	c3                   	ret    
 206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20d:	8d 76 00             	lea    0x0(%esi),%esi

00000210 <memset>:

void*
memset(void *dst, int c, uint n)
{
 210:	f3 0f 1e fb          	endbr32 
 214:	55                   	push   %ebp
 215:	89 e5                	mov    %esp,%ebp
 217:	57                   	push   %edi
 218:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 21b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 21e:	8b 45 0c             	mov    0xc(%ebp),%eax
 221:	89 d7                	mov    %edx,%edi
 223:	fc                   	cld    
 224:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 226:	89 d0                	mov    %edx,%eax
 228:	5f                   	pop    %edi
 229:	5d                   	pop    %ebp
 22a:	c3                   	ret    
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <strchr>:

char*
strchr(const char *s, char c)
{
 230:	f3 0f 1e fb          	endbr32 
 234:	55                   	push   %ebp
 235:	89 e5                	mov    %esp,%ebp
 237:	8b 45 08             	mov    0x8(%ebp),%eax
 23a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 23e:	0f b6 10             	movzbl (%eax),%edx
 241:	84 d2                	test   %dl,%dl
 243:	75 16                	jne    25b <strchr+0x2b>
 245:	eb 21                	jmp    268 <strchr+0x38>
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax
 250:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 254:	83 c0 01             	add    $0x1,%eax
 257:	84 d2                	test   %dl,%dl
 259:	74 0d                	je     268 <strchr+0x38>
    if(*s == c)
 25b:	38 d1                	cmp    %dl,%cl
 25d:	75 f1                	jne    250 <strchr+0x20>
      return (char*)s;
  return 0;
}
 25f:	5d                   	pop    %ebp
 260:	c3                   	ret    
 261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 268:	31 c0                	xor    %eax,%eax
}
 26a:	5d                   	pop    %ebp
 26b:	c3                   	ret    
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000270 <gets>:

char*
gets(char *buf, int max)
{
 270:	f3 0f 1e fb          	endbr32 
 274:	55                   	push   %ebp
 275:	89 e5                	mov    %esp,%ebp
 277:	57                   	push   %edi
 278:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 279:	31 f6                	xor    %esi,%esi
{
 27b:	53                   	push   %ebx
 27c:	89 f3                	mov    %esi,%ebx
 27e:	83 ec 1c             	sub    $0x1c,%esp
 281:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 284:	eb 33                	jmp    2b9 <gets+0x49>
 286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 290:	83 ec 04             	sub    $0x4,%esp
 293:	8d 45 e7             	lea    -0x19(%ebp),%eax
 296:	6a 01                	push   $0x1
 298:	50                   	push   %eax
 299:	6a 00                	push   $0x0
 29b:	e8 2b 01 00 00       	call   3cb <read>
    if(cc < 1)
 2a0:	83 c4 10             	add    $0x10,%esp
 2a3:	85 c0                	test   %eax,%eax
 2a5:	7e 1c                	jle    2c3 <gets+0x53>
      break;
    buf[i++] = c;
 2a7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2ab:	83 c7 01             	add    $0x1,%edi
 2ae:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2b1:	3c 0a                	cmp    $0xa,%al
 2b3:	74 23                	je     2d8 <gets+0x68>
 2b5:	3c 0d                	cmp    $0xd,%al
 2b7:	74 1f                	je     2d8 <gets+0x68>
  for(i=0; i+1 < max; ){
 2b9:	83 c3 01             	add    $0x1,%ebx
 2bc:	89 fe                	mov    %edi,%esi
 2be:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2c1:	7c cd                	jl     290 <gets+0x20>
 2c3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 2c5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 2c8:	c6 03 00             	movb   $0x0,(%ebx)
}
 2cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2ce:	5b                   	pop    %ebx
 2cf:	5e                   	pop    %esi
 2d0:	5f                   	pop    %edi
 2d1:	5d                   	pop    %ebp
 2d2:	c3                   	ret    
 2d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d7:	90                   	nop
 2d8:	8b 75 08             	mov    0x8(%ebp),%esi
 2db:	8b 45 08             	mov    0x8(%ebp),%eax
 2de:	01 de                	add    %ebx,%esi
 2e0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 2e2:	c6 03 00             	movb   $0x0,(%ebx)
}
 2e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2e8:	5b                   	pop    %ebx
 2e9:	5e                   	pop    %esi
 2ea:	5f                   	pop    %edi
 2eb:	5d                   	pop    %ebp
 2ec:	c3                   	ret    
 2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2f0:	f3 0f 1e fb          	endbr32 
 2f4:	55                   	push   %ebp
 2f5:	89 e5                	mov    %esp,%ebp
 2f7:	56                   	push   %esi
 2f8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2f9:	83 ec 08             	sub    $0x8,%esp
 2fc:	6a 00                	push   $0x0
 2fe:	ff 75 08             	pushl  0x8(%ebp)
 301:	e8 ed 00 00 00       	call   3f3 <open>
  if(fd < 0)
 306:	83 c4 10             	add    $0x10,%esp
 309:	85 c0                	test   %eax,%eax
 30b:	78 2b                	js     338 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 30d:	83 ec 08             	sub    $0x8,%esp
 310:	ff 75 0c             	pushl  0xc(%ebp)
 313:	89 c3                	mov    %eax,%ebx
 315:	50                   	push   %eax
 316:	e8 f0 00 00 00       	call   40b <fstat>
  close(fd);
 31b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 31e:	89 c6                	mov    %eax,%esi
  close(fd);
 320:	e8 b6 00 00 00       	call   3db <close>
  return r;
 325:	83 c4 10             	add    $0x10,%esp
}
 328:	8d 65 f8             	lea    -0x8(%ebp),%esp
 32b:	89 f0                	mov    %esi,%eax
 32d:	5b                   	pop    %ebx
 32e:	5e                   	pop    %esi
 32f:	5d                   	pop    %ebp
 330:	c3                   	ret    
 331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 338:	be ff ff ff ff       	mov    $0xffffffff,%esi
 33d:	eb e9                	jmp    328 <stat+0x38>
 33f:	90                   	nop

00000340 <atoi>:

int
atoi(const char *s)
{
 340:	f3 0f 1e fb          	endbr32 
 344:	55                   	push   %ebp
 345:	89 e5                	mov    %esp,%ebp
 347:	53                   	push   %ebx
 348:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 34b:	0f be 02             	movsbl (%edx),%eax
 34e:	8d 48 d0             	lea    -0x30(%eax),%ecx
 351:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 354:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 359:	77 1a                	ja     375 <atoi+0x35>
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop
    n = n*10 + *s++ - '0';
 360:	83 c2 01             	add    $0x1,%edx
 363:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 366:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 36a:	0f be 02             	movsbl (%edx),%eax
 36d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 370:	80 fb 09             	cmp    $0x9,%bl
 373:	76 eb                	jbe    360 <atoi+0x20>
  return n;
}
 375:	89 c8                	mov    %ecx,%eax
 377:	5b                   	pop    %ebx
 378:	5d                   	pop    %ebp
 379:	c3                   	ret    
 37a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000380 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 380:	f3 0f 1e fb          	endbr32 
 384:	55                   	push   %ebp
 385:	89 e5                	mov    %esp,%ebp
 387:	57                   	push   %edi
 388:	8b 45 10             	mov    0x10(%ebp),%eax
 38b:	8b 55 08             	mov    0x8(%ebp),%edx
 38e:	56                   	push   %esi
 38f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 392:	85 c0                	test   %eax,%eax
 394:	7e 0f                	jle    3a5 <memmove+0x25>
 396:	01 d0                	add    %edx,%eax
  dst = vdst;
 398:	89 d7                	mov    %edx,%edi
 39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3a1:	39 f8                	cmp    %edi,%eax
 3a3:	75 fb                	jne    3a0 <memmove+0x20>
  return vdst;
}
 3a5:	5e                   	pop    %esi
 3a6:	89 d0                	mov    %edx,%eax
 3a8:	5f                   	pop    %edi
 3a9:	5d                   	pop    %ebp
 3aa:	c3                   	ret    

000003ab <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3ab:	b8 01 00 00 00       	mov    $0x1,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret    

000003b3 <exit>:
SYSCALL(exit)
 3b3:	b8 02 00 00 00       	mov    $0x2,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret    

000003bb <wait>:
SYSCALL(wait)
 3bb:	b8 03 00 00 00       	mov    $0x3,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret    

000003c3 <pipe>:
SYSCALL(pipe)
 3c3:	b8 04 00 00 00       	mov    $0x4,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret    

000003cb <read>:
SYSCALL(read)
 3cb:	b8 05 00 00 00       	mov    $0x5,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret    

000003d3 <write>:
SYSCALL(write)
 3d3:	b8 10 00 00 00       	mov    $0x10,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret    

000003db <close>:
SYSCALL(close)
 3db:	b8 15 00 00 00       	mov    $0x15,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret    

000003e3 <kill>:
SYSCALL(kill)
 3e3:	b8 06 00 00 00       	mov    $0x6,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret    

000003eb <exec>:
SYSCALL(exec)
 3eb:	b8 07 00 00 00       	mov    $0x7,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret    

000003f3 <open>:
SYSCALL(open)
 3f3:	b8 0f 00 00 00       	mov    $0xf,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret    

000003fb <mknod>:
SYSCALL(mknod)
 3fb:	b8 11 00 00 00       	mov    $0x11,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret    

00000403 <unlink>:
SYSCALL(unlink)
 403:	b8 12 00 00 00       	mov    $0x12,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret    

0000040b <fstat>:
SYSCALL(fstat)
 40b:	b8 08 00 00 00       	mov    $0x8,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret    

00000413 <link>:
SYSCALL(link)
 413:	b8 13 00 00 00       	mov    $0x13,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret    

0000041b <mkdir>:
SYSCALL(mkdir)
 41b:	b8 14 00 00 00       	mov    $0x14,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret    

00000423 <chdir>:
SYSCALL(chdir)
 423:	b8 09 00 00 00       	mov    $0x9,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret    

0000042b <dup>:
SYSCALL(dup)
 42b:	b8 0a 00 00 00       	mov    $0xa,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret    

00000433 <getpid>:
SYSCALL(getpid)
 433:	b8 0b 00 00 00       	mov    $0xb,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret    

0000043b <sbrk>:
SYSCALL(sbrk)
 43b:	b8 0c 00 00 00       	mov    $0xc,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret    

00000443 <sleep>:
SYSCALL(sleep)
 443:	b8 0d 00 00 00       	mov    $0xd,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret    

0000044b <uptime>:
SYSCALL(uptime)
 44b:	b8 0e 00 00 00       	mov    $0xe,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret    

00000453 <thread_create>:
SYSCALL(thread_create)
 453:	b8 16 00 00 00       	mov    $0x16,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret    

0000045b <thread_join>:
SYSCALL(thread_join)
 45b:	b8 17 00 00 00       	mov    $0x17,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    

00000463 <mtx_create>:
SYSCALL(mtx_create)
 463:	b8 18 00 00 00       	mov    $0x18,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret    

0000046b <mtx_lock>:
SYSCALL(mtx_lock)
 46b:	b8 19 00 00 00       	mov    $0x19,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <mtx_unlock>:
SYSCALL(mtx_unlock)
 473:	b8 1a 00 00 00       	mov    $0x1a,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <clone>:
SYSCALL(clone)
 47b:	b8 1b 00 00 00       	mov    $0x1b,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <join>:
 483:	b8 1c 00 00 00       	mov    $0x1c,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    
 48b:	66 90                	xchg   %ax,%ax
 48d:	66 90                	xchg   %ax,%ax
 48f:	90                   	nop

00000490 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 490:	f3 0f 1e fb          	endbr32 
 494:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 495:	a1 00 09 00 00       	mov    0x900,%eax
{
 49a:	89 e5                	mov    %esp,%ebp
 49c:	57                   	push   %edi
 49d:	56                   	push   %esi
 49e:	53                   	push   %ebx
 49f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4a2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 4a4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 4a7:	39 c8                	cmp    %ecx,%eax
 4a9:	73 15                	jae    4c0 <free+0x30>
 4ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4af:	90                   	nop
 4b0:	39 d1                	cmp    %edx,%ecx
 4b2:	72 14                	jb     4c8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 4b4:	39 d0                	cmp    %edx,%eax
 4b6:	73 10                	jae    4c8 <free+0x38>
{
 4b8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 4ba:	8b 10                	mov    (%eax),%edx
 4bc:	39 c8                	cmp    %ecx,%eax
 4be:	72 f0                	jb     4b0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 4c0:	39 d0                	cmp    %edx,%eax
 4c2:	72 f4                	jb     4b8 <free+0x28>
 4c4:	39 d1                	cmp    %edx,%ecx
 4c6:	73 f0                	jae    4b8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 4c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 4cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 4ce:	39 fa                	cmp    %edi,%edx
 4d0:	74 1e                	je     4f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 4d2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 4d5:	8b 50 04             	mov    0x4(%eax),%edx
 4d8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 4db:	39 f1                	cmp    %esi,%ecx
 4dd:	74 28                	je     507 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 4df:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 4e1:	5b                   	pop    %ebx
  freep = p;
 4e2:	a3 00 09 00 00       	mov    %eax,0x900
}
 4e7:	5e                   	pop    %esi
 4e8:	5f                   	pop    %edi
 4e9:	5d                   	pop    %ebp
 4ea:	c3                   	ret    
 4eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 4f0:	03 72 04             	add    0x4(%edx),%esi
 4f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 4f6:	8b 10                	mov    (%eax),%edx
 4f8:	8b 12                	mov    (%edx),%edx
 4fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 4fd:	8b 50 04             	mov    0x4(%eax),%edx
 500:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 503:	39 f1                	cmp    %esi,%ecx
 505:	75 d8                	jne    4df <free+0x4f>
    p->s.size += bp->s.size;
 507:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 50a:	a3 00 09 00 00       	mov    %eax,0x900
    p->s.size += bp->s.size;
 50f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 512:	8b 53 f8             	mov    -0x8(%ebx),%edx
 515:	89 10                	mov    %edx,(%eax)
}
 517:	5b                   	pop    %ebx
 518:	5e                   	pop    %esi
 519:	5f                   	pop    %edi
 51a:	5d                   	pop    %ebp
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 520:	f3 0f 1e fb          	endbr32 
 524:	55                   	push   %ebp
 525:	89 e5                	mov    %esp,%ebp
 527:	57                   	push   %edi
 528:	56                   	push   %esi
 529:	53                   	push   %ebx
 52a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 52d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 530:	8b 3d 00 09 00 00    	mov    0x900,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 536:	8d 70 07             	lea    0x7(%eax),%esi
 539:	c1 ee 03             	shr    $0x3,%esi
 53c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 53f:	85 ff                	test   %edi,%edi
 541:	0f 84 a9 00 00 00    	je     5f0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 547:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 549:	8b 48 04             	mov    0x4(%eax),%ecx
 54c:	39 f1                	cmp    %esi,%ecx
 54e:	73 6d                	jae    5bd <malloc+0x9d>
 550:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 556:	bb 00 10 00 00       	mov    $0x1000,%ebx
 55b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 55e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 565:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 568:	eb 17                	jmp    581 <malloc+0x61>
 56a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 570:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 572:	8b 4a 04             	mov    0x4(%edx),%ecx
 575:	39 f1                	cmp    %esi,%ecx
 577:	73 4f                	jae    5c8 <malloc+0xa8>
 579:	8b 3d 00 09 00 00    	mov    0x900,%edi
 57f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 581:	39 c7                	cmp    %eax,%edi
 583:	75 eb                	jne    570 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 585:	83 ec 0c             	sub    $0xc,%esp
 588:	ff 75 e4             	pushl  -0x1c(%ebp)
 58b:	e8 ab fe ff ff       	call   43b <sbrk>
  if(p == (char*)-1)
 590:	83 c4 10             	add    $0x10,%esp
 593:	83 f8 ff             	cmp    $0xffffffff,%eax
 596:	74 1b                	je     5b3 <malloc+0x93>
  hp->s.size = nu;
 598:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 59b:	83 ec 0c             	sub    $0xc,%esp
 59e:	83 c0 08             	add    $0x8,%eax
 5a1:	50                   	push   %eax
 5a2:	e8 e9 fe ff ff       	call   490 <free>
  return freep;
 5a7:	a1 00 09 00 00       	mov    0x900,%eax
      if((p = morecore(nunits)) == 0)
 5ac:	83 c4 10             	add    $0x10,%esp
 5af:	85 c0                	test   %eax,%eax
 5b1:	75 bd                	jne    570 <malloc+0x50>
        return 0;
  }
}
 5b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 5b6:	31 c0                	xor    %eax,%eax
}
 5b8:	5b                   	pop    %ebx
 5b9:	5e                   	pop    %esi
 5ba:	5f                   	pop    %edi
 5bb:	5d                   	pop    %ebp
 5bc:	c3                   	ret    
    if(p->s.size >= nunits){
 5bd:	89 c2                	mov    %eax,%edx
 5bf:	89 f8                	mov    %edi,%eax
 5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 5c8:	39 ce                	cmp    %ecx,%esi
 5ca:	74 54                	je     620 <malloc+0x100>
        p->s.size -= nunits;
 5cc:	29 f1                	sub    %esi,%ecx
 5ce:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 5d1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 5d4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 5d7:	a3 00 09 00 00       	mov    %eax,0x900
}
 5dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 5df:	8d 42 08             	lea    0x8(%edx),%eax
}
 5e2:	5b                   	pop    %ebx
 5e3:	5e                   	pop    %esi
 5e4:	5f                   	pop    %edi
 5e5:	5d                   	pop    %ebp
 5e6:	c3                   	ret    
 5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ee:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 5f0:	c7 05 00 09 00 00 04 	movl   $0x904,0x900
 5f7:	09 00 00 
    base.s.size = 0;
 5fa:	bf 04 09 00 00       	mov    $0x904,%edi
    base.s.ptr = freep = prevp = &base;
 5ff:	c7 05 04 09 00 00 04 	movl   $0x904,0x904
 606:	09 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 609:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 60b:	c7 05 08 09 00 00 00 	movl   $0x0,0x908
 612:	00 00 00 
    if(p->s.size >= nunits){
 615:	e9 36 ff ff ff       	jmp    550 <malloc+0x30>
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 620:	8b 0a                	mov    (%edx),%ecx
 622:	89 08                	mov    %ecx,(%eax)
 624:	eb b1                	jmp    5d7 <malloc+0xb7>
