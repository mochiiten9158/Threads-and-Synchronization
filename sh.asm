
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	f3 0f 1e fb          	endbr32 
       4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       8:	83 e4 f0             	and    $0xfffffff0,%esp
       b:	ff 71 fc             	pushl  -0x4(%ecx)
       e:	55                   	push   %ebp
       f:	89 e5                	mov    %esp,%ebp
      11:	51                   	push   %ecx
      12:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      15:	eb 12                	jmp    29 <main+0x29>
      17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      1e:	66 90                	xchg   %ax,%ax
    if(fd >= 3){
      20:	83 f8 02             	cmp    $0x2,%eax
      23:	0f 8f b7 00 00 00    	jg     e0 <main+0xe0>
  while((fd = open("console", O_RDWR)) >= 0){
      29:	83 ec 08             	sub    $0x8,%esp
      2c:	6a 02                	push   $0x2
      2e:	68 29 13 00 00       	push   $0x1329
      33:	e8 9b 0d 00 00       	call   dd3 <open>
      38:	83 c4 10             	add    $0x10,%esp
      3b:	85 c0                	test   %eax,%eax
      3d:	79 e1                	jns    20 <main+0x20>
      3f:	eb 32                	jmp    73 <main+0x73>
      41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      48:	80 3d 62 19 00 00 20 	cmpb   $0x20,0x1962
      4f:	74 51                	je     a2 <main+0xa2>
      51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      58:	e8 2e 0d 00 00       	call   d8b <fork>
  if(pid == -1)
      5d:	83 f8 ff             	cmp    $0xffffffff,%eax
      60:	0f 84 9d 00 00 00    	je     103 <main+0x103>
    if(fork1() == 0)
      66:	85 c0                	test   %eax,%eax
      68:	0f 84 80 00 00 00    	je     ee <main+0xee>
    wait();
      6e:	e8 28 0d 00 00       	call   d9b <wait>
  while(getcmd(buf, sizeof(buf)) >= 0){
      73:	83 ec 08             	sub    $0x8,%esp
      76:	6a 64                	push   $0x64
      78:	68 60 19 00 00       	push   $0x1960
      7d:	e8 8e 00 00 00       	call   110 <getcmd>
      82:	83 c4 10             	add    $0x10,%esp
      85:	85 c0                	test   %eax,%eax
      87:	78 14                	js     9d <main+0x9d>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      89:	80 3d 60 19 00 00 63 	cmpb   $0x63,0x1960
      90:	75 c6                	jne    58 <main+0x58>
      92:	80 3d 61 19 00 00 64 	cmpb   $0x64,0x1961
      99:	75 bd                	jne    58 <main+0x58>
      9b:	eb ab                	jmp    48 <main+0x48>
  exit();
      9d:	e8 f1 0c 00 00       	call   d93 <exit>
      buf[strlen(buf)-1] = 0;  // chop \n
      a2:	83 ec 0c             	sub    $0xc,%esp
      a5:	68 60 19 00 00       	push   $0x1960
      aa:	e8 01 0b 00 00       	call   bb0 <strlen>
      if(chdir(buf+3) < 0)
      af:	c7 04 24 63 19 00 00 	movl   $0x1963,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      b6:	c6 80 5f 19 00 00 00 	movb   $0x0,0x195f(%eax)
      if(chdir(buf+3) < 0)
      bd:	e8 41 0d 00 00       	call   e03 <chdir>
      c2:	83 c4 10             	add    $0x10,%esp
      c5:	85 c0                	test   %eax,%eax
      c7:	79 aa                	jns    73 <main+0x73>
        printf(2, "cannot cd %s\n", buf+3);
      c9:	50                   	push   %eax
      ca:	68 63 19 00 00       	push   $0x1963
      cf:	68 31 13 00 00       	push   $0x1331
      d4:	6a 02                	push   $0x2
      d6:	e8 45 0e 00 00       	call   f20 <printf>
      db:	83 c4 10             	add    $0x10,%esp
      de:	eb 93                	jmp    73 <main+0x73>
      close(fd);
      e0:	83 ec 0c             	sub    $0xc,%esp
      e3:	50                   	push   %eax
      e4:	e8 d2 0c 00 00       	call   dbb <close>
      break;
      e9:	83 c4 10             	add    $0x10,%esp
      ec:	eb 85                	jmp    73 <main+0x73>
      runcmd(parsecmd(buf));
      ee:	83 ec 0c             	sub    $0xc,%esp
      f1:	68 60 19 00 00       	push   $0x1960
      f6:	e8 c5 09 00 00       	call   ac0 <parsecmd>
      fb:	89 04 24             	mov    %eax,(%esp)
      fe:	e8 7d 00 00 00       	call   180 <runcmd>
    panic("fork");
     103:	83 ec 0c             	sub    $0xc,%esp
     106:	68 b2 12 00 00       	push   $0x12b2
     10b:	e8 50 00 00 00       	call   160 <panic>

00000110 <getcmd>:
{
     110:	f3 0f 1e fb          	endbr32 
     114:	55                   	push   %ebp
     115:	89 e5                	mov    %esp,%ebp
     117:	56                   	push   %esi
     118:	53                   	push   %ebx
     119:	8b 75 0c             	mov    0xc(%ebp),%esi
     11c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     11f:	83 ec 08             	sub    $0x8,%esp
     122:	68 88 12 00 00       	push   $0x1288
     127:	6a 02                	push   $0x2
     129:	e8 f2 0d 00 00       	call   f20 <printf>
  memset(buf, 0, nbuf);
     12e:	83 c4 0c             	add    $0xc,%esp
     131:	56                   	push   %esi
     132:	6a 00                	push   $0x0
     134:	53                   	push   %ebx
     135:	e8 b6 0a 00 00       	call   bf0 <memset>
  gets(buf, nbuf);
     13a:	58                   	pop    %eax
     13b:	5a                   	pop    %edx
     13c:	56                   	push   %esi
     13d:	53                   	push   %ebx
     13e:	e8 0d 0b 00 00       	call   c50 <gets>
  if(buf[0] == 0) // EOF
     143:	83 c4 10             	add    $0x10,%esp
     146:	31 c0                	xor    %eax,%eax
     148:	80 3b 00             	cmpb   $0x0,(%ebx)
     14b:	0f 94 c0             	sete   %al
}
     14e:	8d 65 f8             	lea    -0x8(%ebp),%esp
     151:	5b                   	pop    %ebx
  if(buf[0] == 0) // EOF
     152:	f7 d8                	neg    %eax
}
     154:	5e                   	pop    %esi
     155:	5d                   	pop    %ebp
     156:	c3                   	ret    
     157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     15e:	66 90                	xchg   %ax,%ax

00000160 <panic>:
{
     160:	f3 0f 1e fb          	endbr32 
     164:	55                   	push   %ebp
     165:	89 e5                	mov    %esp,%ebp
     167:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     16a:	ff 75 08             	pushl  0x8(%ebp)
     16d:	68 25 13 00 00       	push   $0x1325
     172:	6a 02                	push   $0x2
     174:	e8 a7 0d 00 00       	call   f20 <printf>
  exit();
     179:	e8 15 0c 00 00       	call   d93 <exit>
     17e:	66 90                	xchg   %ax,%ax

00000180 <runcmd>:
{
     180:	f3 0f 1e fb          	endbr32 
     184:	55                   	push   %ebp
     185:	89 e5                	mov    %esp,%ebp
     187:	53                   	push   %ebx
     188:	83 ec 14             	sub    $0x14,%esp
     18b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     18e:	85 db                	test   %ebx,%ebx
     190:	74 7e                	je     210 <runcmd+0x90>
  switch(cmd->type){
     192:	83 3b 05             	cmpl   $0x5,(%ebx)
     195:	0f 87 04 01 00 00    	ja     29f <runcmd+0x11f>
     19b:	8b 03                	mov    (%ebx),%eax
     19d:	3e ff 24 85 40 13 00 	notrack jmp *0x1340(,%eax,4)
     1a4:	00 
    if(pipe(p) < 0)
     1a5:	83 ec 0c             	sub    $0xc,%esp
     1a8:	8d 45 f0             	lea    -0x10(%ebp),%eax
     1ab:	50                   	push   %eax
     1ac:	e8 f2 0b 00 00       	call   da3 <pipe>
     1b1:	83 c4 10             	add    $0x10,%esp
     1b4:	85 c0                	test   %eax,%eax
     1b6:	0f 88 05 01 00 00    	js     2c1 <runcmd+0x141>
  pid = fork();
     1bc:	e8 ca 0b 00 00       	call   d8b <fork>
  if(pid == -1)
     1c1:	83 f8 ff             	cmp    $0xffffffff,%eax
     1c4:	0f 84 60 01 00 00    	je     32a <runcmd+0x1aa>
    if(fork1() == 0){
     1ca:	85 c0                	test   %eax,%eax
     1cc:	0f 84 fc 00 00 00    	je     2ce <runcmd+0x14e>
  pid = fork();
     1d2:	e8 b4 0b 00 00       	call   d8b <fork>
  if(pid == -1)
     1d7:	83 f8 ff             	cmp    $0xffffffff,%eax
     1da:	0f 84 4a 01 00 00    	je     32a <runcmd+0x1aa>
    if(fork1() == 0){
     1e0:	85 c0                	test   %eax,%eax
     1e2:	0f 84 14 01 00 00    	je     2fc <runcmd+0x17c>
    close(p[0]);
     1e8:	83 ec 0c             	sub    $0xc,%esp
     1eb:	ff 75 f0             	pushl  -0x10(%ebp)
     1ee:	e8 c8 0b 00 00       	call   dbb <close>
    close(p[1]);
     1f3:	58                   	pop    %eax
     1f4:	ff 75 f4             	pushl  -0xc(%ebp)
     1f7:	e8 bf 0b 00 00       	call   dbb <close>
    wait();
     1fc:	e8 9a 0b 00 00       	call   d9b <wait>
    wait();
     201:	e8 95 0b 00 00       	call   d9b <wait>
    break;
     206:	83 c4 10             	add    $0x10,%esp
     209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
     210:	e8 7e 0b 00 00       	call   d93 <exit>
  pid = fork();
     215:	e8 71 0b 00 00       	call   d8b <fork>
  if(pid == -1)
     21a:	83 f8 ff             	cmp    $0xffffffff,%eax
     21d:	0f 84 07 01 00 00    	je     32a <runcmd+0x1aa>
    if(fork1() == 0)
     223:	85 c0                	test   %eax,%eax
     225:	75 e9                	jne    210 <runcmd+0x90>
     227:	eb 6b                	jmp    294 <runcmd+0x114>
    if(ecmd->argv[0] == 0)
     229:	8b 43 04             	mov    0x4(%ebx),%eax
     22c:	85 c0                	test   %eax,%eax
     22e:	74 e0                	je     210 <runcmd+0x90>
    exec(ecmd->argv[0], ecmd->argv);
     230:	8d 53 04             	lea    0x4(%ebx),%edx
     233:	51                   	push   %ecx
     234:	51                   	push   %ecx
     235:	52                   	push   %edx
     236:	50                   	push   %eax
     237:	e8 8f 0b 00 00       	call   dcb <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     23c:	83 c4 0c             	add    $0xc,%esp
     23f:	ff 73 04             	pushl  0x4(%ebx)
     242:	68 92 12 00 00       	push   $0x1292
     247:	6a 02                	push   $0x2
     249:	e8 d2 0c 00 00       	call   f20 <printf>
    break;
     24e:	83 c4 10             	add    $0x10,%esp
     251:	eb bd                	jmp    210 <runcmd+0x90>
  pid = fork();
     253:	e8 33 0b 00 00       	call   d8b <fork>
  if(pid == -1)
     258:	83 f8 ff             	cmp    $0xffffffff,%eax
     25b:	0f 84 c9 00 00 00    	je     32a <runcmd+0x1aa>
    if(fork1() == 0)
     261:	85 c0                	test   %eax,%eax
     263:	74 2f                	je     294 <runcmd+0x114>
    wait();
     265:	e8 31 0b 00 00       	call   d9b <wait>
    runcmd(lcmd->right);
     26a:	83 ec 0c             	sub    $0xc,%esp
     26d:	ff 73 08             	pushl  0x8(%ebx)
     270:	e8 0b ff ff ff       	call   180 <runcmd>
    close(rcmd->fd);
     275:	83 ec 0c             	sub    $0xc,%esp
     278:	ff 73 14             	pushl  0x14(%ebx)
     27b:	e8 3b 0b 00 00       	call   dbb <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     280:	58                   	pop    %eax
     281:	5a                   	pop    %edx
     282:	ff 73 10             	pushl  0x10(%ebx)
     285:	ff 73 08             	pushl  0x8(%ebx)
     288:	e8 46 0b 00 00       	call   dd3 <open>
     28d:	83 c4 10             	add    $0x10,%esp
     290:	85 c0                	test   %eax,%eax
     292:	78 18                	js     2ac <runcmd+0x12c>
      runcmd(bcmd->cmd);
     294:	83 ec 0c             	sub    $0xc,%esp
     297:	ff 73 04             	pushl  0x4(%ebx)
     29a:	e8 e1 fe ff ff       	call   180 <runcmd>
    panic("runcmd");
     29f:	83 ec 0c             	sub    $0xc,%esp
     2a2:	68 8b 12 00 00       	push   $0x128b
     2a7:	e8 b4 fe ff ff       	call   160 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2ac:	51                   	push   %ecx
     2ad:	ff 73 08             	pushl  0x8(%ebx)
     2b0:	68 a2 12 00 00       	push   $0x12a2
     2b5:	6a 02                	push   $0x2
     2b7:	e8 64 0c 00 00       	call   f20 <printf>
      exit();
     2bc:	e8 d2 0a 00 00       	call   d93 <exit>
      panic("pipe");
     2c1:	83 ec 0c             	sub    $0xc,%esp
     2c4:	68 b7 12 00 00       	push   $0x12b7
     2c9:	e8 92 fe ff ff       	call   160 <panic>
      close(1);
     2ce:	83 ec 0c             	sub    $0xc,%esp
     2d1:	6a 01                	push   $0x1
     2d3:	e8 e3 0a 00 00       	call   dbb <close>
      dup(p[1]);
     2d8:	58                   	pop    %eax
     2d9:	ff 75 f4             	pushl  -0xc(%ebp)
     2dc:	e8 2a 0b 00 00       	call   e0b <dup>
      close(p[0]);
     2e1:	58                   	pop    %eax
     2e2:	ff 75 f0             	pushl  -0x10(%ebp)
     2e5:	e8 d1 0a 00 00       	call   dbb <close>
      close(p[1]);
     2ea:	58                   	pop    %eax
     2eb:	ff 75 f4             	pushl  -0xc(%ebp)
     2ee:	e8 c8 0a 00 00       	call   dbb <close>
      runcmd(pcmd->left);
     2f3:	5a                   	pop    %edx
     2f4:	ff 73 04             	pushl  0x4(%ebx)
     2f7:	e8 84 fe ff ff       	call   180 <runcmd>
      close(0);
     2fc:	83 ec 0c             	sub    $0xc,%esp
     2ff:	6a 00                	push   $0x0
     301:	e8 b5 0a 00 00       	call   dbb <close>
      dup(p[0]);
     306:	5a                   	pop    %edx
     307:	ff 75 f0             	pushl  -0x10(%ebp)
     30a:	e8 fc 0a 00 00       	call   e0b <dup>
      close(p[0]);
     30f:	59                   	pop    %ecx
     310:	ff 75 f0             	pushl  -0x10(%ebp)
     313:	e8 a3 0a 00 00       	call   dbb <close>
      close(p[1]);
     318:	58                   	pop    %eax
     319:	ff 75 f4             	pushl  -0xc(%ebp)
     31c:	e8 9a 0a 00 00       	call   dbb <close>
      runcmd(pcmd->right);
     321:	58                   	pop    %eax
     322:	ff 73 08             	pushl  0x8(%ebx)
     325:	e8 56 fe ff ff       	call   180 <runcmd>
    panic("fork");
     32a:	83 ec 0c             	sub    $0xc,%esp
     32d:	68 b2 12 00 00       	push   $0x12b2
     332:	e8 29 fe ff ff       	call   160 <panic>
     337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     33e:	66 90                	xchg   %ax,%ax

00000340 <fork1>:
{
     340:	f3 0f 1e fb          	endbr32 
     344:	55                   	push   %ebp
     345:	89 e5                	mov    %esp,%ebp
     347:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     34a:	e8 3c 0a 00 00       	call   d8b <fork>
  if(pid == -1)
     34f:	83 f8 ff             	cmp    $0xffffffff,%eax
     352:	74 02                	je     356 <fork1+0x16>
  return pid;
}
     354:	c9                   	leave  
     355:	c3                   	ret    
    panic("fork");
     356:	83 ec 0c             	sub    $0xc,%esp
     359:	68 b2 12 00 00       	push   $0x12b2
     35e:	e8 fd fd ff ff       	call   160 <panic>
     363:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000370 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     370:	f3 0f 1e fb          	endbr32 
     374:	55                   	push   %ebp
     375:	89 e5                	mov    %esp,%ebp
     377:	53                   	push   %ebx
     378:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     37b:	6a 54                	push   $0x54
     37d:	e8 fe 0d 00 00       	call   1180 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     382:	83 c4 0c             	add    $0xc,%esp
     385:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     387:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     389:	6a 00                	push   $0x0
     38b:	50                   	push   %eax
     38c:	e8 5f 08 00 00       	call   bf0 <memset>
  cmd->type = EXEC;
     391:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     397:	89 d8                	mov    %ebx,%eax
     399:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     39c:	c9                   	leave  
     39d:	c3                   	ret    
     39e:	66 90                	xchg   %ax,%ax

000003a0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     3a0:	f3 0f 1e fb          	endbr32 
     3a4:	55                   	push   %ebp
     3a5:	89 e5                	mov    %esp,%ebp
     3a7:	53                   	push   %ebx
     3a8:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3ab:	6a 18                	push   $0x18
     3ad:	e8 ce 0d 00 00       	call   1180 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3b2:	83 c4 0c             	add    $0xc,%esp
     3b5:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     3b7:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3b9:	6a 00                	push   $0x0
     3bb:	50                   	push   %eax
     3bc:	e8 2f 08 00 00       	call   bf0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     3c1:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     3c4:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     3ca:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     3cd:	8b 45 0c             	mov    0xc(%ebp),%eax
     3d0:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     3d3:	8b 45 10             	mov    0x10(%ebp),%eax
     3d6:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     3d9:	8b 45 14             	mov    0x14(%ebp),%eax
     3dc:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     3df:	8b 45 18             	mov    0x18(%ebp),%eax
     3e2:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3e5:	89 d8                	mov    %ebx,%eax
     3e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3ea:	c9                   	leave  
     3eb:	c3                   	ret    
     3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3f0:	f3 0f 1e fb          	endbr32 
     3f4:	55                   	push   %ebp
     3f5:	89 e5                	mov    %esp,%ebp
     3f7:	53                   	push   %ebx
     3f8:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3fb:	6a 0c                	push   $0xc
     3fd:	e8 7e 0d 00 00       	call   1180 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     402:	83 c4 0c             	add    $0xc,%esp
     405:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     407:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     409:	6a 00                	push   $0x0
     40b:	50                   	push   %eax
     40c:	e8 df 07 00 00       	call   bf0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     411:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     414:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     41a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     41d:	8b 45 0c             	mov    0xc(%ebp),%eax
     420:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     423:	89 d8                	mov    %ebx,%eax
     425:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     428:	c9                   	leave  
     429:	c3                   	ret    
     42a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000430 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     430:	f3 0f 1e fb          	endbr32 
     434:	55                   	push   %ebp
     435:	89 e5                	mov    %esp,%ebp
     437:	53                   	push   %ebx
     438:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     43b:	6a 0c                	push   $0xc
     43d:	e8 3e 0d 00 00       	call   1180 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     442:	83 c4 0c             	add    $0xc,%esp
     445:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     447:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     449:	6a 00                	push   $0x0
     44b:	50                   	push   %eax
     44c:	e8 9f 07 00 00       	call   bf0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     451:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     454:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     45a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     45d:	8b 45 0c             	mov    0xc(%ebp),%eax
     460:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     463:	89 d8                	mov    %ebx,%eax
     465:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     468:	c9                   	leave  
     469:	c3                   	ret    
     46a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000470 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     470:	f3 0f 1e fb          	endbr32 
     474:	55                   	push   %ebp
     475:	89 e5                	mov    %esp,%ebp
     477:	53                   	push   %ebx
     478:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     47b:	6a 08                	push   $0x8
     47d:	e8 fe 0c 00 00       	call   1180 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     482:	83 c4 0c             	add    $0xc,%esp
     485:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     487:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     489:	6a 00                	push   $0x0
     48b:	50                   	push   %eax
     48c:	e8 5f 07 00 00       	call   bf0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     491:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     494:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     49a:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     49d:	89 d8                	mov    %ebx,%eax
     49f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4a2:	c9                   	leave  
     4a3:	c3                   	ret    
     4a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     4af:	90                   	nop

000004b0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     4b0:	f3 0f 1e fb          	endbr32 
     4b4:	55                   	push   %ebp
     4b5:	89 e5                	mov    %esp,%ebp
     4b7:	57                   	push   %edi
     4b8:	56                   	push   %esi
     4b9:	53                   	push   %ebx
     4ba:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     4bd:	8b 45 08             	mov    0x8(%ebp),%eax
{
     4c0:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     4c3:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     4c6:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     4c8:	39 df                	cmp    %ebx,%edi
     4ca:	72 0b                	jb     4d7 <gettoken+0x27>
     4cc:	eb 21                	jmp    4ef <gettoken+0x3f>
     4ce:	66 90                	xchg   %ax,%ax
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x3f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 50 19 00 00       	push   $0x1950
     4e3:	e8 28 07 00 00       	call   c10 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x20>
  if(q)
     4ef:	85 f6                	test   %esi,%esi
     4f1:	74 02                	je     4f5 <gettoken+0x45>
    *q = s;
     4f3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4f5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4f8:	3c 3c                	cmp    $0x3c,%al
     4fa:	0f 8f d0 00 00 00    	jg     5d0 <gettoken+0x120>
     500:	3c 3a                	cmp    $0x3a,%al
     502:	0f 8f b4 00 00 00    	jg     5bc <gettoken+0x10c>
     508:	84 c0                	test   %al,%al
     50a:	75 44                	jne    550 <gettoken+0xa0>
     50c:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     50e:	8b 55 14             	mov    0x14(%ebp),%edx
     511:	85 d2                	test   %edx,%edx
     513:	74 05                	je     51a <gettoken+0x6a>
    *eq = s;
     515:	8b 45 14             	mov    0x14(%ebp),%eax
     518:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     51a:	39 df                	cmp    %ebx,%edi
     51c:	72 09                	jb     527 <gettoken+0x77>
     51e:	eb 1f                	jmp    53f <gettoken+0x8f>
    s++;
     520:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     523:	39 fb                	cmp    %edi,%ebx
     525:	74 18                	je     53f <gettoken+0x8f>
     527:	0f be 07             	movsbl (%edi),%eax
     52a:	83 ec 08             	sub    $0x8,%esp
     52d:	50                   	push   %eax
     52e:	68 50 19 00 00       	push   $0x1950
     533:	e8 d8 06 00 00       	call   c10 <strchr>
     538:	83 c4 10             	add    $0x10,%esp
     53b:	85 c0                	test   %eax,%eax
     53d:	75 e1                	jne    520 <gettoken+0x70>
  *ps = s;
     53f:	8b 45 08             	mov    0x8(%ebp),%eax
     542:	89 38                	mov    %edi,(%eax)
  return ret;
}
     544:	8d 65 f4             	lea    -0xc(%ebp),%esp
     547:	89 f0                	mov    %esi,%eax
     549:	5b                   	pop    %ebx
     54a:	5e                   	pop    %esi
     54b:	5f                   	pop    %edi
     54c:	5d                   	pop    %ebp
     54d:	c3                   	ret    
     54e:	66 90                	xchg   %ax,%ax
  switch(*s){
     550:	79 5e                	jns    5b0 <gettoken+0x100>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     552:	39 fb                	cmp    %edi,%ebx
     554:	77 34                	ja     58a <gettoken+0xda>
  if(eq)
     556:	8b 45 14             	mov    0x14(%ebp),%eax
     559:	be 61 00 00 00       	mov    $0x61,%esi
     55e:	85 c0                	test   %eax,%eax
     560:	75 b3                	jne    515 <gettoken+0x65>
     562:	eb db                	jmp    53f <gettoken+0x8f>
     564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     568:	0f be 07             	movsbl (%edi),%eax
     56b:	83 ec 08             	sub    $0x8,%esp
     56e:	50                   	push   %eax
     56f:	68 48 19 00 00       	push   $0x1948
     574:	e8 97 06 00 00       	call   c10 <strchr>
     579:	83 c4 10             	add    $0x10,%esp
     57c:	85 c0                	test   %eax,%eax
     57e:	75 22                	jne    5a2 <gettoken+0xf2>
      s++;
     580:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     583:	39 fb                	cmp    %edi,%ebx
     585:	74 cf                	je     556 <gettoken+0xa6>
     587:	0f b6 07             	movzbl (%edi),%eax
     58a:	83 ec 08             	sub    $0x8,%esp
     58d:	0f be f0             	movsbl %al,%esi
     590:	56                   	push   %esi
     591:	68 50 19 00 00       	push   $0x1950
     596:	e8 75 06 00 00       	call   c10 <strchr>
     59b:	83 c4 10             	add    $0x10,%esp
     59e:	85 c0                	test   %eax,%eax
     5a0:	74 c6                	je     568 <gettoken+0xb8>
    ret = 'a';
     5a2:	be 61 00 00 00       	mov    $0x61,%esi
     5a7:	e9 62 ff ff ff       	jmp    50e <gettoken+0x5e>
     5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     5b0:	3c 26                	cmp    $0x26,%al
     5b2:	74 08                	je     5bc <gettoken+0x10c>
     5b4:	8d 48 d8             	lea    -0x28(%eax),%ecx
     5b7:	80 f9 01             	cmp    $0x1,%cl
     5ba:	77 96                	ja     552 <gettoken+0xa2>
  ret = *s;
     5bc:	0f be f0             	movsbl %al,%esi
    s++;
     5bf:	83 c7 01             	add    $0x1,%edi
    break;
     5c2:	e9 47 ff ff ff       	jmp    50e <gettoken+0x5e>
     5c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5ce:	66 90                	xchg   %ax,%ax
  switch(*s){
     5d0:	3c 3e                	cmp    $0x3e,%al
     5d2:	75 1c                	jne    5f0 <gettoken+0x140>
    if(*s == '>'){
     5d4:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
    s++;
     5d8:	8d 47 01             	lea    0x1(%edi),%eax
    if(*s == '>'){
     5db:	74 1c                	je     5f9 <gettoken+0x149>
    s++;
     5dd:	89 c7                	mov    %eax,%edi
     5df:	be 3e 00 00 00       	mov    $0x3e,%esi
     5e4:	e9 25 ff ff ff       	jmp    50e <gettoken+0x5e>
     5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     5f0:	3c 7c                	cmp    $0x7c,%al
     5f2:	74 c8                	je     5bc <gettoken+0x10c>
     5f4:	e9 59 ff ff ff       	jmp    552 <gettoken+0xa2>
      s++;
     5f9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     5fc:	be 2b 00 00 00       	mov    $0x2b,%esi
     601:	e9 08 ff ff ff       	jmp    50e <gettoken+0x5e>
     606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     60d:	8d 76 00             	lea    0x0(%esi),%esi

00000610 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     610:	f3 0f 1e fb          	endbr32 
     614:	55                   	push   %ebp
     615:	89 e5                	mov    %esp,%ebp
     617:	57                   	push   %edi
     618:	56                   	push   %esi
     619:	53                   	push   %ebx
     61a:	83 ec 0c             	sub    $0xc,%esp
     61d:	8b 7d 08             	mov    0x8(%ebp),%edi
     620:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     623:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     625:	39 f3                	cmp    %esi,%ebx
     627:	72 0e                	jb     637 <peek+0x27>
     629:	eb 24                	jmp    64f <peek+0x3f>
     62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     62f:	90                   	nop
    s++;
     630:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     633:	39 de                	cmp    %ebx,%esi
     635:	74 18                	je     64f <peek+0x3f>
     637:	0f be 03             	movsbl (%ebx),%eax
     63a:	83 ec 08             	sub    $0x8,%esp
     63d:	50                   	push   %eax
     63e:	68 50 19 00 00       	push   $0x1950
     643:	e8 c8 05 00 00       	call   c10 <strchr>
     648:	83 c4 10             	add    $0x10,%esp
     64b:	85 c0                	test   %eax,%eax
     64d:	75 e1                	jne    630 <peek+0x20>
  *ps = s;
     64f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     651:	0f be 03             	movsbl (%ebx),%eax
     654:	31 d2                	xor    %edx,%edx
     656:	84 c0                	test   %al,%al
     658:	75 0e                	jne    668 <peek+0x58>
}
     65a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     65d:	89 d0                	mov    %edx,%eax
     65f:	5b                   	pop    %ebx
     660:	5e                   	pop    %esi
     661:	5f                   	pop    %edi
     662:	5d                   	pop    %ebp
     663:	c3                   	ret    
     664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     668:	83 ec 08             	sub    $0x8,%esp
     66b:	50                   	push   %eax
     66c:	ff 75 10             	pushl  0x10(%ebp)
     66f:	e8 9c 05 00 00       	call   c10 <strchr>
     674:	83 c4 10             	add    $0x10,%esp
     677:	31 d2                	xor    %edx,%edx
     679:	85 c0                	test   %eax,%eax
     67b:	0f 95 c2             	setne  %dl
}
     67e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     681:	5b                   	pop    %ebx
     682:	89 d0                	mov    %edx,%eax
     684:	5e                   	pop    %esi
     685:	5f                   	pop    %edi
     686:	5d                   	pop    %ebp
     687:	c3                   	ret    
     688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     68f:	90                   	nop

00000690 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     690:	f3 0f 1e fb          	endbr32 
     694:	55                   	push   %ebp
     695:	89 e5                	mov    %esp,%ebp
     697:	57                   	push   %edi
     698:	56                   	push   %esi
     699:	53                   	push   %ebx
     69a:	83 ec 1c             	sub    $0x1c,%esp
     69d:	8b 75 0c             	mov    0xc(%ebp),%esi
     6a0:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     6a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     6a7:	90                   	nop
     6a8:	83 ec 04             	sub    $0x4,%esp
     6ab:	68 d9 12 00 00       	push   $0x12d9
     6b0:	53                   	push   %ebx
     6b1:	56                   	push   %esi
     6b2:	e8 59 ff ff ff       	call   610 <peek>
     6b7:	83 c4 10             	add    $0x10,%esp
     6ba:	85 c0                	test   %eax,%eax
     6bc:	74 6a                	je     728 <parseredirs+0x98>
    tok = gettoken(ps, es, 0, 0);
     6be:	6a 00                	push   $0x0
     6c0:	6a 00                	push   $0x0
     6c2:	53                   	push   %ebx
     6c3:	56                   	push   %esi
     6c4:	e8 e7 fd ff ff       	call   4b0 <gettoken>
     6c9:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     6cb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     6ce:	50                   	push   %eax
     6cf:	8d 45 e0             	lea    -0x20(%ebp),%eax
     6d2:	50                   	push   %eax
     6d3:	53                   	push   %ebx
     6d4:	56                   	push   %esi
     6d5:	e8 d6 fd ff ff       	call   4b0 <gettoken>
     6da:	83 c4 20             	add    $0x20,%esp
     6dd:	83 f8 61             	cmp    $0x61,%eax
     6e0:	75 51                	jne    733 <parseredirs+0xa3>
      panic("missing file for redirection");
    switch(tok){
     6e2:	83 ff 3c             	cmp    $0x3c,%edi
     6e5:	74 31                	je     718 <parseredirs+0x88>
     6e7:	83 ff 3e             	cmp    $0x3e,%edi
     6ea:	74 05                	je     6f1 <parseredirs+0x61>
     6ec:	83 ff 2b             	cmp    $0x2b,%edi
     6ef:	75 b7                	jne    6a8 <parseredirs+0x18>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6f1:	83 ec 0c             	sub    $0xc,%esp
     6f4:	6a 01                	push   $0x1
     6f6:	68 01 02 00 00       	push   $0x201
     6fb:	ff 75 e4             	pushl  -0x1c(%ebp)
     6fe:	ff 75 e0             	pushl  -0x20(%ebp)
     701:	ff 75 08             	pushl  0x8(%ebp)
     704:	e8 97 fc ff ff       	call   3a0 <redircmd>
      break;
     709:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     70c:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     70f:	eb 97                	jmp    6a8 <parseredirs+0x18>
     711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     718:	83 ec 0c             	sub    $0xc,%esp
     71b:	6a 00                	push   $0x0
     71d:	6a 00                	push   $0x0
     71f:	eb da                	jmp    6fb <parseredirs+0x6b>
     721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     728:	8b 45 08             	mov    0x8(%ebp),%eax
     72b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     72e:	5b                   	pop    %ebx
     72f:	5e                   	pop    %esi
     730:	5f                   	pop    %edi
     731:	5d                   	pop    %ebp
     732:	c3                   	ret    
      panic("missing file for redirection");
     733:	83 ec 0c             	sub    $0xc,%esp
     736:	68 bc 12 00 00       	push   $0x12bc
     73b:	e8 20 fa ff ff       	call   160 <panic>

00000740 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     740:	f3 0f 1e fb          	endbr32 
     744:	55                   	push   %ebp
     745:	89 e5                	mov    %esp,%ebp
     747:	57                   	push   %edi
     748:	56                   	push   %esi
     749:	53                   	push   %ebx
     74a:	83 ec 30             	sub    $0x30,%esp
     74d:	8b 75 08             	mov    0x8(%ebp),%esi
     750:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     753:	68 dc 12 00 00       	push   $0x12dc
     758:	57                   	push   %edi
     759:	56                   	push   %esi
     75a:	e8 b1 fe ff ff       	call   610 <peek>
     75f:	83 c4 10             	add    $0x10,%esp
     762:	85 c0                	test   %eax,%eax
     764:	0f 85 96 00 00 00    	jne    800 <parseexec+0xc0>
     76a:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     76c:	e8 ff fb ff ff       	call   370 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     771:	83 ec 04             	sub    $0x4,%esp
     774:	57                   	push   %edi
     775:	56                   	push   %esi
     776:	50                   	push   %eax
  ret = execcmd();
     777:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     77a:	e8 11 ff ff ff       	call   690 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     77f:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     782:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     785:	eb 1c                	jmp    7a3 <parseexec+0x63>
     787:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     78e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     790:	83 ec 04             	sub    $0x4,%esp
     793:	57                   	push   %edi
     794:	56                   	push   %esi
     795:	ff 75 d4             	pushl  -0x2c(%ebp)
     798:	e8 f3 fe ff ff       	call   690 <parseredirs>
     79d:	83 c4 10             	add    $0x10,%esp
     7a0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7a3:	83 ec 04             	sub    $0x4,%esp
     7a6:	68 f3 12 00 00       	push   $0x12f3
     7ab:	57                   	push   %edi
     7ac:	56                   	push   %esi
     7ad:	e8 5e fe ff ff       	call   610 <peek>
     7b2:	83 c4 10             	add    $0x10,%esp
     7b5:	85 c0                	test   %eax,%eax
     7b7:	75 67                	jne    820 <parseexec+0xe0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     7b9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7bc:	50                   	push   %eax
     7bd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7c0:	50                   	push   %eax
     7c1:	57                   	push   %edi
     7c2:	56                   	push   %esi
     7c3:	e8 e8 fc ff ff       	call   4b0 <gettoken>
     7c8:	83 c4 10             	add    $0x10,%esp
     7cb:	85 c0                	test   %eax,%eax
     7cd:	74 51                	je     820 <parseexec+0xe0>
    if(tok != 'a')
     7cf:	83 f8 61             	cmp    $0x61,%eax
     7d2:	75 6b                	jne    83f <parseexec+0xff>
    cmd->argv[argc] = q;
     7d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     7d7:	8b 55 d0             	mov    -0x30(%ebp),%edx
     7da:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     7de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     7e1:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     7e5:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     7e8:	83 fb 0a             	cmp    $0xa,%ebx
     7eb:	75 a3                	jne    790 <parseexec+0x50>
      panic("too many args");
     7ed:	83 ec 0c             	sub    $0xc,%esp
     7f0:	68 e5 12 00 00       	push   $0x12e5
     7f5:	e8 66 f9 ff ff       	call   160 <panic>
     7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     800:	83 ec 08             	sub    $0x8,%esp
     803:	57                   	push   %edi
     804:	56                   	push   %esi
     805:	e8 66 01 00 00       	call   970 <parseblock>
     80a:	83 c4 10             	add    $0x10,%esp
     80d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     810:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     813:	8d 65 f4             	lea    -0xc(%ebp),%esp
     816:	5b                   	pop    %ebx
     817:	5e                   	pop    %esi
     818:	5f                   	pop    %edi
     819:	5d                   	pop    %ebp
     81a:	c3                   	ret    
     81b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     81f:	90                   	nop
  cmd->argv[argc] = 0;
     820:	8b 45 d0             	mov    -0x30(%ebp),%eax
     823:	8d 04 98             	lea    (%eax,%ebx,4),%eax
     826:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     82d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
     834:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     837:	8d 65 f4             	lea    -0xc(%ebp),%esp
     83a:	5b                   	pop    %ebx
     83b:	5e                   	pop    %esi
     83c:	5f                   	pop    %edi
     83d:	5d                   	pop    %ebp
     83e:	c3                   	ret    
      panic("syntax");
     83f:	83 ec 0c             	sub    $0xc,%esp
     842:	68 de 12 00 00       	push   $0x12de
     847:	e8 14 f9 ff ff       	call   160 <panic>
     84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000850 <parsepipe>:
{
     850:	f3 0f 1e fb          	endbr32 
     854:	55                   	push   %ebp
     855:	89 e5                	mov    %esp,%ebp
     857:	57                   	push   %edi
     858:	56                   	push   %esi
     859:	53                   	push   %ebx
     85a:	83 ec 14             	sub    $0x14,%esp
     85d:	8b 75 08             	mov    0x8(%ebp),%esi
     860:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     863:	57                   	push   %edi
     864:	56                   	push   %esi
     865:	e8 d6 fe ff ff       	call   740 <parseexec>
  if(peek(ps, es, "|")){
     86a:	83 c4 0c             	add    $0xc,%esp
     86d:	68 f8 12 00 00       	push   $0x12f8
  cmd = parseexec(ps, es);
     872:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     874:	57                   	push   %edi
     875:	56                   	push   %esi
     876:	e8 95 fd ff ff       	call   610 <peek>
     87b:	83 c4 10             	add    $0x10,%esp
     87e:	85 c0                	test   %eax,%eax
     880:	75 0e                	jne    890 <parsepipe+0x40>
}
     882:	8d 65 f4             	lea    -0xc(%ebp),%esp
     885:	89 d8                	mov    %ebx,%eax
     887:	5b                   	pop    %ebx
     888:	5e                   	pop    %esi
     889:	5f                   	pop    %edi
     88a:	5d                   	pop    %ebp
     88b:	c3                   	ret    
     88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     890:	6a 00                	push   $0x0
     892:	6a 00                	push   $0x0
     894:	57                   	push   %edi
     895:	56                   	push   %esi
     896:	e8 15 fc ff ff       	call   4b0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     89b:	58                   	pop    %eax
     89c:	5a                   	pop    %edx
     89d:	57                   	push   %edi
     89e:	56                   	push   %esi
     89f:	e8 ac ff ff ff       	call   850 <parsepipe>
     8a4:	89 5d 08             	mov    %ebx,0x8(%ebp)
     8a7:	83 c4 10             	add    $0x10,%esp
     8aa:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     8ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8b0:	5b                   	pop    %ebx
     8b1:	5e                   	pop    %esi
     8b2:	5f                   	pop    %edi
     8b3:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8b4:	e9 37 fb ff ff       	jmp    3f0 <pipecmd>
     8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008c0 <parseline>:
{
     8c0:	f3 0f 1e fb          	endbr32 
     8c4:	55                   	push   %ebp
     8c5:	89 e5                	mov    %esp,%ebp
     8c7:	57                   	push   %edi
     8c8:	56                   	push   %esi
     8c9:	53                   	push   %ebx
     8ca:	83 ec 14             	sub    $0x14,%esp
     8cd:	8b 75 08             	mov    0x8(%ebp),%esi
     8d0:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     8d3:	57                   	push   %edi
     8d4:	56                   	push   %esi
     8d5:	e8 76 ff ff ff       	call   850 <parsepipe>
  while(peek(ps, es, "&")){
     8da:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     8dd:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     8df:	eb 1f                	jmp    900 <parseline+0x40>
     8e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     8e8:	6a 00                	push   $0x0
     8ea:	6a 00                	push   $0x0
     8ec:	57                   	push   %edi
     8ed:	56                   	push   %esi
     8ee:	e8 bd fb ff ff       	call   4b0 <gettoken>
    cmd = backcmd(cmd);
     8f3:	89 1c 24             	mov    %ebx,(%esp)
     8f6:	e8 75 fb ff ff       	call   470 <backcmd>
     8fb:	83 c4 10             	add    $0x10,%esp
     8fe:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     900:	83 ec 04             	sub    $0x4,%esp
     903:	68 fa 12 00 00       	push   $0x12fa
     908:	57                   	push   %edi
     909:	56                   	push   %esi
     90a:	e8 01 fd ff ff       	call   610 <peek>
     90f:	83 c4 10             	add    $0x10,%esp
     912:	85 c0                	test   %eax,%eax
     914:	75 d2                	jne    8e8 <parseline+0x28>
  if(peek(ps, es, ";")){
     916:	83 ec 04             	sub    $0x4,%esp
     919:	68 f6 12 00 00       	push   $0x12f6
     91e:	57                   	push   %edi
     91f:	56                   	push   %esi
     920:	e8 eb fc ff ff       	call   610 <peek>
     925:	83 c4 10             	add    $0x10,%esp
     928:	85 c0                	test   %eax,%eax
     92a:	75 14                	jne    940 <parseline+0x80>
}
     92c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     92f:	89 d8                	mov    %ebx,%eax
     931:	5b                   	pop    %ebx
     932:	5e                   	pop    %esi
     933:	5f                   	pop    %edi
     934:	5d                   	pop    %ebp
     935:	c3                   	ret    
     936:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     93d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     940:	6a 00                	push   $0x0
     942:	6a 00                	push   $0x0
     944:	57                   	push   %edi
     945:	56                   	push   %esi
     946:	e8 65 fb ff ff       	call   4b0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     94b:	58                   	pop    %eax
     94c:	5a                   	pop    %edx
     94d:	57                   	push   %edi
     94e:	56                   	push   %esi
     94f:	e8 6c ff ff ff       	call   8c0 <parseline>
     954:	89 5d 08             	mov    %ebx,0x8(%ebp)
     957:	83 c4 10             	add    $0x10,%esp
     95a:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     95d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     960:	5b                   	pop    %ebx
     961:	5e                   	pop    %esi
     962:	5f                   	pop    %edi
     963:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     964:	e9 c7 fa ff ff       	jmp    430 <listcmd>
     969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000970 <parseblock>:
{
     970:	f3 0f 1e fb          	endbr32 
     974:	55                   	push   %ebp
     975:	89 e5                	mov    %esp,%ebp
     977:	57                   	push   %edi
     978:	56                   	push   %esi
     979:	53                   	push   %ebx
     97a:	83 ec 10             	sub    $0x10,%esp
     97d:	8b 5d 08             	mov    0x8(%ebp),%ebx
     980:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     983:	68 dc 12 00 00       	push   $0x12dc
     988:	56                   	push   %esi
     989:	53                   	push   %ebx
     98a:	e8 81 fc ff ff       	call   610 <peek>
     98f:	83 c4 10             	add    $0x10,%esp
     992:	85 c0                	test   %eax,%eax
     994:	74 4a                	je     9e0 <parseblock+0x70>
  gettoken(ps, es, 0, 0);
     996:	6a 00                	push   $0x0
     998:	6a 00                	push   $0x0
     99a:	56                   	push   %esi
     99b:	53                   	push   %ebx
     99c:	e8 0f fb ff ff       	call   4b0 <gettoken>
  cmd = parseline(ps, es);
     9a1:	58                   	pop    %eax
     9a2:	5a                   	pop    %edx
     9a3:	56                   	push   %esi
     9a4:	53                   	push   %ebx
     9a5:	e8 16 ff ff ff       	call   8c0 <parseline>
  if(!peek(ps, es, ")"))
     9aa:	83 c4 0c             	add    $0xc,%esp
     9ad:	68 18 13 00 00       	push   $0x1318
  cmd = parseline(ps, es);
     9b2:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     9b4:	56                   	push   %esi
     9b5:	53                   	push   %ebx
     9b6:	e8 55 fc ff ff       	call   610 <peek>
     9bb:	83 c4 10             	add    $0x10,%esp
     9be:	85 c0                	test   %eax,%eax
     9c0:	74 2b                	je     9ed <parseblock+0x7d>
  gettoken(ps, es, 0, 0);
     9c2:	6a 00                	push   $0x0
     9c4:	6a 00                	push   $0x0
     9c6:	56                   	push   %esi
     9c7:	53                   	push   %ebx
     9c8:	e8 e3 fa ff ff       	call   4b0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     9cd:	83 c4 0c             	add    $0xc,%esp
     9d0:	56                   	push   %esi
     9d1:	53                   	push   %ebx
     9d2:	57                   	push   %edi
     9d3:	e8 b8 fc ff ff       	call   690 <parseredirs>
}
     9d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9db:	5b                   	pop    %ebx
     9dc:	5e                   	pop    %esi
     9dd:	5f                   	pop    %edi
     9de:	5d                   	pop    %ebp
     9df:	c3                   	ret    
    panic("parseblock");
     9e0:	83 ec 0c             	sub    $0xc,%esp
     9e3:	68 fc 12 00 00       	push   $0x12fc
     9e8:	e8 73 f7 ff ff       	call   160 <panic>
    panic("syntax - missing )");
     9ed:	83 ec 0c             	sub    $0xc,%esp
     9f0:	68 07 13 00 00       	push   $0x1307
     9f5:	e8 66 f7 ff ff       	call   160 <panic>
     9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000a00 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     a00:	f3 0f 1e fb          	endbr32 
     a04:	55                   	push   %ebp
     a05:	89 e5                	mov    %esp,%ebp
     a07:	53                   	push   %ebx
     a08:	83 ec 04             	sub    $0x4,%esp
     a0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     a0e:	85 db                	test   %ebx,%ebx
     a10:	0f 84 9a 00 00 00    	je     ab0 <nulterminate+0xb0>
    return 0;

  switch(cmd->type){
     a16:	83 3b 05             	cmpl   $0x5,(%ebx)
     a19:	77 6d                	ja     a88 <nulterminate+0x88>
     a1b:	8b 03                	mov    (%ebx),%eax
     a1d:	3e ff 24 85 58 13 00 	notrack jmp *0x1358(,%eax,4)
     a24:	00 
     a25:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     a28:	83 ec 0c             	sub    $0xc,%esp
     a2b:	ff 73 04             	pushl  0x4(%ebx)
     a2e:	e8 cd ff ff ff       	call   a00 <nulterminate>
    nulterminate(lcmd->right);
     a33:	58                   	pop    %eax
     a34:	ff 73 08             	pushl  0x8(%ebx)
     a37:	e8 c4 ff ff ff       	call   a00 <nulterminate>
    break;
     a3c:	83 c4 10             	add    $0x10,%esp
     a3f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a44:	c9                   	leave  
     a45:	c3                   	ret    
     a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(bcmd->cmd);
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	ff 73 04             	pushl  0x4(%ebx)
     a56:	e8 a5 ff ff ff       	call   a00 <nulterminate>
    break;
     a5b:	89 d8                	mov    %ebx,%eax
     a5d:	83 c4 10             	add    $0x10,%esp
}
     a60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a63:	c9                   	leave  
     a64:	c3                   	ret    
     a65:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     a68:	8b 4b 04             	mov    0x4(%ebx),%ecx
     a6b:	8d 43 08             	lea    0x8(%ebx),%eax
     a6e:	85 c9                	test   %ecx,%ecx
     a70:	74 16                	je     a88 <nulterminate+0x88>
     a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     a78:	8b 50 24             	mov    0x24(%eax),%edx
     a7b:	83 c0 04             	add    $0x4,%eax
     a7e:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     a81:	8b 50 fc             	mov    -0x4(%eax),%edx
     a84:	85 d2                	test   %edx,%edx
     a86:	75 f0                	jne    a78 <nulterminate+0x78>
  switch(cmd->type){
     a88:	89 d8                	mov    %ebx,%eax
}
     a8a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a8d:	c9                   	leave  
     a8e:	c3                   	ret    
     a8f:	90                   	nop
    nulterminate(rcmd->cmd);
     a90:	83 ec 0c             	sub    $0xc,%esp
     a93:	ff 73 04             	pushl  0x4(%ebx)
     a96:	e8 65 ff ff ff       	call   a00 <nulterminate>
    *rcmd->efile = 0;
     a9b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     a9e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     aa1:	c6 00 00             	movb   $0x0,(%eax)
    break;
     aa4:	89 d8                	mov    %ebx,%eax
}
     aa6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     aa9:	c9                   	leave  
     aaa:	c3                   	ret    
     aab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     aaf:	90                   	nop
    return 0;
     ab0:	31 c0                	xor    %eax,%eax
     ab2:	eb 8d                	jmp    a41 <nulterminate+0x41>
     ab4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     abb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     abf:	90                   	nop

00000ac0 <parsecmd>:
{
     ac0:	f3 0f 1e fb          	endbr32 
     ac4:	55                   	push   %ebp
     ac5:	89 e5                	mov    %esp,%ebp
     ac7:	56                   	push   %esi
     ac8:	53                   	push   %ebx
  es = s + strlen(s);
     ac9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     acc:	83 ec 0c             	sub    $0xc,%esp
     acf:	53                   	push   %ebx
     ad0:	e8 db 00 00 00       	call   bb0 <strlen>
  cmd = parseline(&s, es);
     ad5:	59                   	pop    %ecx
     ad6:	5e                   	pop    %esi
  es = s + strlen(s);
     ad7:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     ad9:	8d 45 08             	lea    0x8(%ebp),%eax
     adc:	53                   	push   %ebx
     add:	50                   	push   %eax
     ade:	e8 dd fd ff ff       	call   8c0 <parseline>
  peek(&s, es, "");
     ae3:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(&s, es);
     ae6:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     ae8:	8d 45 08             	lea    0x8(%ebp),%eax
     aeb:	68 a1 12 00 00       	push   $0x12a1
     af0:	53                   	push   %ebx
     af1:	50                   	push   %eax
     af2:	e8 19 fb ff ff       	call   610 <peek>
  if(s != es){
     af7:	8b 45 08             	mov    0x8(%ebp),%eax
     afa:	83 c4 10             	add    $0x10,%esp
     afd:	39 d8                	cmp    %ebx,%eax
     aff:	75 12                	jne    b13 <parsecmd+0x53>
  nulterminate(cmd);
     b01:	83 ec 0c             	sub    $0xc,%esp
     b04:	56                   	push   %esi
     b05:	e8 f6 fe ff ff       	call   a00 <nulterminate>
}
     b0a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b0d:	89 f0                	mov    %esi,%eax
     b0f:	5b                   	pop    %ebx
     b10:	5e                   	pop    %esi
     b11:	5d                   	pop    %ebp
     b12:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     b13:	52                   	push   %edx
     b14:	50                   	push   %eax
     b15:	68 1a 13 00 00       	push   $0x131a
     b1a:	6a 02                	push   $0x2
     b1c:	e8 ff 03 00 00       	call   f20 <printf>
    panic("syntax");
     b21:	c7 04 24 de 12 00 00 	movl   $0x12de,(%esp)
     b28:	e8 33 f6 ff ff       	call   160 <panic>
     b2d:	66 90                	xchg   %ax,%ax
     b2f:	90                   	nop

00000b30 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     b30:	f3 0f 1e fb          	endbr32 
     b34:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     b35:	31 c0                	xor    %eax,%eax
{
     b37:	89 e5                	mov    %esp,%ebp
     b39:	53                   	push   %ebx
     b3a:	8b 4d 08             	mov    0x8(%ebp),%ecx
     b3d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
     b40:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     b44:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     b47:	83 c0 01             	add    $0x1,%eax
     b4a:	84 d2                	test   %dl,%dl
     b4c:	75 f2                	jne    b40 <strcpy+0x10>
    ;
  return os;
}
     b4e:	89 c8                	mov    %ecx,%eax
     b50:	5b                   	pop    %ebx
     b51:	5d                   	pop    %ebp
     b52:	c3                   	ret    
     b53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000b60 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     b60:	f3 0f 1e fb          	endbr32 
     b64:	55                   	push   %ebp
     b65:	89 e5                	mov    %esp,%ebp
     b67:	53                   	push   %ebx
     b68:	8b 4d 08             	mov    0x8(%ebp),%ecx
     b6b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
     b6e:	0f b6 01             	movzbl (%ecx),%eax
     b71:	0f b6 1a             	movzbl (%edx),%ebx
     b74:	84 c0                	test   %al,%al
     b76:	75 19                	jne    b91 <strcmp+0x31>
     b78:	eb 26                	jmp    ba0 <strcmp+0x40>
     b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b80:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
     b84:	83 c1 01             	add    $0x1,%ecx
     b87:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     b8a:	0f b6 1a             	movzbl (%edx),%ebx
     b8d:	84 c0                	test   %al,%al
     b8f:	74 0f                	je     ba0 <strcmp+0x40>
     b91:	38 d8                	cmp    %bl,%al
     b93:	74 eb                	je     b80 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     b95:	29 d8                	sub    %ebx,%eax
}
     b97:	5b                   	pop    %ebx
     b98:	5d                   	pop    %ebp
     b99:	c3                   	ret    
     b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ba0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     ba2:	29 d8                	sub    %ebx,%eax
}
     ba4:	5b                   	pop    %ebx
     ba5:	5d                   	pop    %ebp
     ba6:	c3                   	ret    
     ba7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bae:	66 90                	xchg   %ax,%ax

00000bb0 <strlen>:

uint
strlen(const char *s)
{
     bb0:	f3 0f 1e fb          	endbr32 
     bb4:	55                   	push   %ebp
     bb5:	89 e5                	mov    %esp,%ebp
     bb7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     bba:	80 3a 00             	cmpb   $0x0,(%edx)
     bbd:	74 21                	je     be0 <strlen+0x30>
     bbf:	31 c0                	xor    %eax,%eax
     bc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bc8:	83 c0 01             	add    $0x1,%eax
     bcb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     bcf:	89 c1                	mov    %eax,%ecx
     bd1:	75 f5                	jne    bc8 <strlen+0x18>
    ;
  return n;
}
     bd3:	89 c8                	mov    %ecx,%eax
     bd5:	5d                   	pop    %ebp
     bd6:	c3                   	ret    
     bd7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bde:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
     be0:	31 c9                	xor    %ecx,%ecx
}
     be2:	5d                   	pop    %ebp
     be3:	89 c8                	mov    %ecx,%eax
     be5:	c3                   	ret    
     be6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bed:	8d 76 00             	lea    0x0(%esi),%esi

00000bf0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     bf0:	f3 0f 1e fb          	endbr32 
     bf4:	55                   	push   %ebp
     bf5:	89 e5                	mov    %esp,%ebp
     bf7:	57                   	push   %edi
     bf8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     bfb:	8b 4d 10             	mov    0x10(%ebp),%ecx
     bfe:	8b 45 0c             	mov    0xc(%ebp),%eax
     c01:	89 d7                	mov    %edx,%edi
     c03:	fc                   	cld    
     c04:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     c06:	89 d0                	mov    %edx,%eax
     c08:	5f                   	pop    %edi
     c09:	5d                   	pop    %ebp
     c0a:	c3                   	ret    
     c0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c0f:	90                   	nop

00000c10 <strchr>:

char*
strchr(const char *s, char c)
{
     c10:	f3 0f 1e fb          	endbr32 
     c14:	55                   	push   %ebp
     c15:	89 e5                	mov    %esp,%ebp
     c17:	8b 45 08             	mov    0x8(%ebp),%eax
     c1a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     c1e:	0f b6 10             	movzbl (%eax),%edx
     c21:	84 d2                	test   %dl,%dl
     c23:	75 16                	jne    c3b <strchr+0x2b>
     c25:	eb 21                	jmp    c48 <strchr+0x38>
     c27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c2e:	66 90                	xchg   %ax,%ax
     c30:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     c34:	83 c0 01             	add    $0x1,%eax
     c37:	84 d2                	test   %dl,%dl
     c39:	74 0d                	je     c48 <strchr+0x38>
    if(*s == c)
     c3b:	38 d1                	cmp    %dl,%cl
     c3d:	75 f1                	jne    c30 <strchr+0x20>
      return (char*)s;
  return 0;
}
     c3f:	5d                   	pop    %ebp
     c40:	c3                   	ret    
     c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     c48:	31 c0                	xor    %eax,%eax
}
     c4a:	5d                   	pop    %ebp
     c4b:	c3                   	ret    
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c50 <gets>:

char*
gets(char *buf, int max)
{
     c50:	f3 0f 1e fb          	endbr32 
     c54:	55                   	push   %ebp
     c55:	89 e5                	mov    %esp,%ebp
     c57:	57                   	push   %edi
     c58:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c59:	31 f6                	xor    %esi,%esi
{
     c5b:	53                   	push   %ebx
     c5c:	89 f3                	mov    %esi,%ebx
     c5e:	83 ec 1c             	sub    $0x1c,%esp
     c61:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     c64:	eb 33                	jmp    c99 <gets+0x49>
     c66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c6d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     c70:	83 ec 04             	sub    $0x4,%esp
     c73:	8d 45 e7             	lea    -0x19(%ebp),%eax
     c76:	6a 01                	push   $0x1
     c78:	50                   	push   %eax
     c79:	6a 00                	push   $0x0
     c7b:	e8 2b 01 00 00       	call   dab <read>
    if(cc < 1)
     c80:	83 c4 10             	add    $0x10,%esp
     c83:	85 c0                	test   %eax,%eax
     c85:	7e 1c                	jle    ca3 <gets+0x53>
      break;
    buf[i++] = c;
     c87:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     c8b:	83 c7 01             	add    $0x1,%edi
     c8e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     c91:	3c 0a                	cmp    $0xa,%al
     c93:	74 23                	je     cb8 <gets+0x68>
     c95:	3c 0d                	cmp    $0xd,%al
     c97:	74 1f                	je     cb8 <gets+0x68>
  for(i=0; i+1 < max; ){
     c99:	83 c3 01             	add    $0x1,%ebx
     c9c:	89 fe                	mov    %edi,%esi
     c9e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     ca1:	7c cd                	jl     c70 <gets+0x20>
     ca3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     ca5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     ca8:	c6 03 00             	movb   $0x0,(%ebx)
}
     cab:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cae:	5b                   	pop    %ebx
     caf:	5e                   	pop    %esi
     cb0:	5f                   	pop    %edi
     cb1:	5d                   	pop    %ebp
     cb2:	c3                   	ret    
     cb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cb7:	90                   	nop
     cb8:	8b 75 08             	mov    0x8(%ebp),%esi
     cbb:	8b 45 08             	mov    0x8(%ebp),%eax
     cbe:	01 de                	add    %ebx,%esi
     cc0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     cc2:	c6 03 00             	movb   $0x0,(%ebx)
}
     cc5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cc8:	5b                   	pop    %ebx
     cc9:	5e                   	pop    %esi
     cca:	5f                   	pop    %edi
     ccb:	5d                   	pop    %ebp
     ccc:	c3                   	ret    
     ccd:	8d 76 00             	lea    0x0(%esi),%esi

00000cd0 <stat>:

int
stat(const char *n, struct stat *st)
{
     cd0:	f3 0f 1e fb          	endbr32 
     cd4:	55                   	push   %ebp
     cd5:	89 e5                	mov    %esp,%ebp
     cd7:	56                   	push   %esi
     cd8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     cd9:	83 ec 08             	sub    $0x8,%esp
     cdc:	6a 00                	push   $0x0
     cde:	ff 75 08             	pushl  0x8(%ebp)
     ce1:	e8 ed 00 00 00       	call   dd3 <open>
  if(fd < 0)
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	85 c0                	test   %eax,%eax
     ceb:	78 2b                	js     d18 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     ced:	83 ec 08             	sub    $0x8,%esp
     cf0:	ff 75 0c             	pushl  0xc(%ebp)
     cf3:	89 c3                	mov    %eax,%ebx
     cf5:	50                   	push   %eax
     cf6:	e8 f0 00 00 00       	call   deb <fstat>
  close(fd);
     cfb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     cfe:	89 c6                	mov    %eax,%esi
  close(fd);
     d00:	e8 b6 00 00 00       	call   dbb <close>
  return r;
     d05:	83 c4 10             	add    $0x10,%esp
}
     d08:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d0b:	89 f0                	mov    %esi,%eax
     d0d:	5b                   	pop    %ebx
     d0e:	5e                   	pop    %esi
     d0f:	5d                   	pop    %ebp
     d10:	c3                   	ret    
     d11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
     d18:	be ff ff ff ff       	mov    $0xffffffff,%esi
     d1d:	eb e9                	jmp    d08 <stat+0x38>
     d1f:	90                   	nop

00000d20 <atoi>:

int
atoi(const char *s)
{
     d20:	f3 0f 1e fb          	endbr32 
     d24:	55                   	push   %ebp
     d25:	89 e5                	mov    %esp,%ebp
     d27:	53                   	push   %ebx
     d28:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     d2b:	0f be 02             	movsbl (%edx),%eax
     d2e:	8d 48 d0             	lea    -0x30(%eax),%ecx
     d31:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     d34:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     d39:	77 1a                	ja     d55 <atoi+0x35>
     d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d3f:	90                   	nop
    n = n*10 + *s++ - '0';
     d40:	83 c2 01             	add    $0x1,%edx
     d43:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     d46:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     d4a:	0f be 02             	movsbl (%edx),%eax
     d4d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     d50:	80 fb 09             	cmp    $0x9,%bl
     d53:	76 eb                	jbe    d40 <atoi+0x20>
  return n;
}
     d55:	89 c8                	mov    %ecx,%eax
     d57:	5b                   	pop    %ebx
     d58:	5d                   	pop    %ebp
     d59:	c3                   	ret    
     d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d60 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     d60:	f3 0f 1e fb          	endbr32 
     d64:	55                   	push   %ebp
     d65:	89 e5                	mov    %esp,%ebp
     d67:	57                   	push   %edi
     d68:	8b 45 10             	mov    0x10(%ebp),%eax
     d6b:	8b 55 08             	mov    0x8(%ebp),%edx
     d6e:	56                   	push   %esi
     d6f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d72:	85 c0                	test   %eax,%eax
     d74:	7e 0f                	jle    d85 <memmove+0x25>
     d76:	01 d0                	add    %edx,%eax
  dst = vdst;
     d78:	89 d7                	mov    %edx,%edi
     d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
     d80:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     d81:	39 f8                	cmp    %edi,%eax
     d83:	75 fb                	jne    d80 <memmove+0x20>
  return vdst;
}
     d85:	5e                   	pop    %esi
     d86:	89 d0                	mov    %edx,%eax
     d88:	5f                   	pop    %edi
     d89:	5d                   	pop    %ebp
     d8a:	c3                   	ret    

00000d8b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     d8b:	b8 01 00 00 00       	mov    $0x1,%eax
     d90:	cd 40                	int    $0x40
     d92:	c3                   	ret    

00000d93 <exit>:
SYSCALL(exit)
     d93:	b8 02 00 00 00       	mov    $0x2,%eax
     d98:	cd 40                	int    $0x40
     d9a:	c3                   	ret    

00000d9b <wait>:
SYSCALL(wait)
     d9b:	b8 03 00 00 00       	mov    $0x3,%eax
     da0:	cd 40                	int    $0x40
     da2:	c3                   	ret    

00000da3 <pipe>:
SYSCALL(pipe)
     da3:	b8 04 00 00 00       	mov    $0x4,%eax
     da8:	cd 40                	int    $0x40
     daa:	c3                   	ret    

00000dab <read>:
SYSCALL(read)
     dab:	b8 05 00 00 00       	mov    $0x5,%eax
     db0:	cd 40                	int    $0x40
     db2:	c3                   	ret    

00000db3 <write>:
SYSCALL(write)
     db3:	b8 10 00 00 00       	mov    $0x10,%eax
     db8:	cd 40                	int    $0x40
     dba:	c3                   	ret    

00000dbb <close>:
SYSCALL(close)
     dbb:	b8 15 00 00 00       	mov    $0x15,%eax
     dc0:	cd 40                	int    $0x40
     dc2:	c3                   	ret    

00000dc3 <kill>:
SYSCALL(kill)
     dc3:	b8 06 00 00 00       	mov    $0x6,%eax
     dc8:	cd 40                	int    $0x40
     dca:	c3                   	ret    

00000dcb <exec>:
SYSCALL(exec)
     dcb:	b8 07 00 00 00       	mov    $0x7,%eax
     dd0:	cd 40                	int    $0x40
     dd2:	c3                   	ret    

00000dd3 <open>:
SYSCALL(open)
     dd3:	b8 0f 00 00 00       	mov    $0xf,%eax
     dd8:	cd 40                	int    $0x40
     dda:	c3                   	ret    

00000ddb <mknod>:
SYSCALL(mknod)
     ddb:	b8 11 00 00 00       	mov    $0x11,%eax
     de0:	cd 40                	int    $0x40
     de2:	c3                   	ret    

00000de3 <unlink>:
SYSCALL(unlink)
     de3:	b8 12 00 00 00       	mov    $0x12,%eax
     de8:	cd 40                	int    $0x40
     dea:	c3                   	ret    

00000deb <fstat>:
SYSCALL(fstat)
     deb:	b8 08 00 00 00       	mov    $0x8,%eax
     df0:	cd 40                	int    $0x40
     df2:	c3                   	ret    

00000df3 <link>:
SYSCALL(link)
     df3:	b8 13 00 00 00       	mov    $0x13,%eax
     df8:	cd 40                	int    $0x40
     dfa:	c3                   	ret    

00000dfb <mkdir>:
SYSCALL(mkdir)
     dfb:	b8 14 00 00 00       	mov    $0x14,%eax
     e00:	cd 40                	int    $0x40
     e02:	c3                   	ret    

00000e03 <chdir>:
SYSCALL(chdir)
     e03:	b8 09 00 00 00       	mov    $0x9,%eax
     e08:	cd 40                	int    $0x40
     e0a:	c3                   	ret    

00000e0b <dup>:
SYSCALL(dup)
     e0b:	b8 0a 00 00 00       	mov    $0xa,%eax
     e10:	cd 40                	int    $0x40
     e12:	c3                   	ret    

00000e13 <getpid>:
SYSCALL(getpid)
     e13:	b8 0b 00 00 00       	mov    $0xb,%eax
     e18:	cd 40                	int    $0x40
     e1a:	c3                   	ret    

00000e1b <sbrk>:
SYSCALL(sbrk)
     e1b:	b8 0c 00 00 00       	mov    $0xc,%eax
     e20:	cd 40                	int    $0x40
     e22:	c3                   	ret    

00000e23 <sleep>:
SYSCALL(sleep)
     e23:	b8 0d 00 00 00       	mov    $0xd,%eax
     e28:	cd 40                	int    $0x40
     e2a:	c3                   	ret    

00000e2b <uptime>:
SYSCALL(uptime)
     e2b:	b8 0e 00 00 00       	mov    $0xe,%eax
     e30:	cd 40                	int    $0x40
     e32:	c3                   	ret    

00000e33 <thread_create>:
SYSCALL(thread_create)
     e33:	b8 16 00 00 00       	mov    $0x16,%eax
     e38:	cd 40                	int    $0x40
     e3a:	c3                   	ret    

00000e3b <thread_join>:
SYSCALL(thread_join)
     e3b:	b8 17 00 00 00       	mov    $0x17,%eax
     e40:	cd 40                	int    $0x40
     e42:	c3                   	ret    

00000e43 <mtx_create>:
SYSCALL(mtx_create)
     e43:	b8 18 00 00 00       	mov    $0x18,%eax
     e48:	cd 40                	int    $0x40
     e4a:	c3                   	ret    

00000e4b <mtx_lock>:
SYSCALL(mtx_lock)
     e4b:	b8 19 00 00 00       	mov    $0x19,%eax
     e50:	cd 40                	int    $0x40
     e52:	c3                   	ret    

00000e53 <mtx_unlock>:
SYSCALL(mtx_unlock)
     e53:	b8 1a 00 00 00       	mov    $0x1a,%eax
     e58:	cd 40                	int    $0x40
     e5a:	c3                   	ret    

00000e5b <clone>:
SYSCALL(clone)
     e5b:	b8 1b 00 00 00       	mov    $0x1b,%eax
     e60:	cd 40                	int    $0x40
     e62:	c3                   	ret    

00000e63 <join>:
     e63:	b8 1c 00 00 00       	mov    $0x1c,%eax
     e68:	cd 40                	int    $0x40
     e6a:	c3                   	ret    
     e6b:	66 90                	xchg   %ax,%ax
     e6d:	66 90                	xchg   %ax,%ax
     e6f:	90                   	nop

00000e70 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     e70:	55                   	push   %ebp
     e71:	89 e5                	mov    %esp,%ebp
     e73:	57                   	push   %edi
     e74:	56                   	push   %esi
     e75:	53                   	push   %ebx
     e76:	83 ec 3c             	sub    $0x3c,%esp
     e79:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     e7c:	89 d1                	mov    %edx,%ecx
{
     e7e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
     e81:	85 d2                	test   %edx,%edx
     e83:	0f 89 7f 00 00 00    	jns    f08 <printint+0x98>
     e89:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     e8d:	74 79                	je     f08 <printint+0x98>
    neg = 1;
     e8f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
     e96:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
     e98:	31 db                	xor    %ebx,%ebx
     e9a:	8d 75 d7             	lea    -0x29(%ebp),%esi
     e9d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     ea0:	89 c8                	mov    %ecx,%eax
     ea2:	31 d2                	xor    %edx,%edx
     ea4:	89 cf                	mov    %ecx,%edi
     ea6:	f7 75 c4             	divl   -0x3c(%ebp)
     ea9:	0f b6 92 78 13 00 00 	movzbl 0x1378(%edx),%edx
     eb0:	89 45 c0             	mov    %eax,-0x40(%ebp)
     eb3:	89 d8                	mov    %ebx,%eax
     eb5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
     eb8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
     ebb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
     ebe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
     ec1:	76 dd                	jbe    ea0 <printint+0x30>
  if(neg)
     ec3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
     ec6:	85 c9                	test   %ecx,%ecx
     ec8:	74 0c                	je     ed6 <printint+0x66>
    buf[i++] = '-';
     eca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
     ecf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
     ed1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
     ed6:	8b 7d b8             	mov    -0x48(%ebp),%edi
     ed9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
     edd:	eb 07                	jmp    ee6 <printint+0x76>
     edf:	90                   	nop
     ee0:	0f b6 13             	movzbl (%ebx),%edx
     ee3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
     ee6:	83 ec 04             	sub    $0x4,%esp
     ee9:	88 55 d7             	mov    %dl,-0x29(%ebp)
     eec:	6a 01                	push   $0x1
     eee:	56                   	push   %esi
     eef:	57                   	push   %edi
     ef0:	e8 be fe ff ff       	call   db3 <write>
  while(--i >= 0)
     ef5:	83 c4 10             	add    $0x10,%esp
     ef8:	39 de                	cmp    %ebx,%esi
     efa:	75 e4                	jne    ee0 <printint+0x70>
    putc(fd, buf[i]);
}
     efc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     eff:	5b                   	pop    %ebx
     f00:	5e                   	pop    %esi
     f01:	5f                   	pop    %edi
     f02:	5d                   	pop    %ebp
     f03:	c3                   	ret    
     f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     f08:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
     f0f:	eb 87                	jmp    e98 <printint+0x28>
     f11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f1f:	90                   	nop

00000f20 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     f20:	f3 0f 1e fb          	endbr32 
     f24:	55                   	push   %ebp
     f25:	89 e5                	mov    %esp,%ebp
     f27:	57                   	push   %edi
     f28:	56                   	push   %esi
     f29:	53                   	push   %ebx
     f2a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f2d:	8b 75 0c             	mov    0xc(%ebp),%esi
     f30:	0f b6 1e             	movzbl (%esi),%ebx
     f33:	84 db                	test   %bl,%bl
     f35:	0f 84 b4 00 00 00    	je     fef <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
     f3b:	8d 45 10             	lea    0x10(%ebp),%eax
     f3e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
     f41:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
     f44:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
     f46:	89 45 d0             	mov    %eax,-0x30(%ebp)
     f49:	eb 33                	jmp    f7e <printf+0x5e>
     f4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f4f:	90                   	nop
     f50:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
     f53:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
     f58:	83 f8 25             	cmp    $0x25,%eax
     f5b:	74 17                	je     f74 <printf+0x54>
  write(fd, &c, 1);
     f5d:	83 ec 04             	sub    $0x4,%esp
     f60:	88 5d e7             	mov    %bl,-0x19(%ebp)
     f63:	6a 01                	push   $0x1
     f65:	57                   	push   %edi
     f66:	ff 75 08             	pushl  0x8(%ebp)
     f69:	e8 45 fe ff ff       	call   db3 <write>
     f6e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
     f71:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     f74:	0f b6 1e             	movzbl (%esi),%ebx
     f77:	83 c6 01             	add    $0x1,%esi
     f7a:	84 db                	test   %bl,%bl
     f7c:	74 71                	je     fef <printf+0xcf>
    c = fmt[i] & 0xff;
     f7e:	0f be cb             	movsbl %bl,%ecx
     f81:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     f84:	85 d2                	test   %edx,%edx
     f86:	74 c8                	je     f50 <printf+0x30>
      }
    } else if(state == '%'){
     f88:	83 fa 25             	cmp    $0x25,%edx
     f8b:	75 e7                	jne    f74 <printf+0x54>
      if(c == 'd'){
     f8d:	83 f8 64             	cmp    $0x64,%eax
     f90:	0f 84 9a 00 00 00    	je     1030 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     f96:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     f9c:	83 f9 70             	cmp    $0x70,%ecx
     f9f:	74 5f                	je     1000 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     fa1:	83 f8 73             	cmp    $0x73,%eax
     fa4:	0f 84 d6 00 00 00    	je     1080 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     faa:	83 f8 63             	cmp    $0x63,%eax
     fad:	0f 84 8d 00 00 00    	je     1040 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     fb3:	83 f8 25             	cmp    $0x25,%eax
     fb6:	0f 84 b4 00 00 00    	je     1070 <printf+0x150>
  write(fd, &c, 1);
     fbc:	83 ec 04             	sub    $0x4,%esp
     fbf:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     fc3:	6a 01                	push   $0x1
     fc5:	57                   	push   %edi
     fc6:	ff 75 08             	pushl  0x8(%ebp)
     fc9:	e8 e5 fd ff ff       	call   db3 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
     fce:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
     fd1:	83 c4 0c             	add    $0xc,%esp
     fd4:	6a 01                	push   $0x1
     fd6:	83 c6 01             	add    $0x1,%esi
     fd9:	57                   	push   %edi
     fda:	ff 75 08             	pushl  0x8(%ebp)
     fdd:	e8 d1 fd ff ff       	call   db3 <write>
  for(i = 0; fmt[i]; i++){
     fe2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
     fe6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
     fe9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
     feb:	84 db                	test   %bl,%bl
     fed:	75 8f                	jne    f7e <printf+0x5e>
    }
  }
}
     fef:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff2:	5b                   	pop    %ebx
     ff3:	5e                   	pop    %esi
     ff4:	5f                   	pop    %edi
     ff5:	5d                   	pop    %ebp
     ff6:	c3                   	ret    
     ff7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ffe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1000:	83 ec 0c             	sub    $0xc,%esp
    1003:	b9 10 00 00 00       	mov    $0x10,%ecx
    1008:	6a 00                	push   $0x0
    100a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    100d:	8b 45 08             	mov    0x8(%ebp),%eax
    1010:	8b 13                	mov    (%ebx),%edx
    1012:	e8 59 fe ff ff       	call   e70 <printint>
        ap++;
    1017:	89 d8                	mov    %ebx,%eax
    1019:	83 c4 10             	add    $0x10,%esp
      state = 0;
    101c:	31 d2                	xor    %edx,%edx
        ap++;
    101e:	83 c0 04             	add    $0x4,%eax
    1021:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1024:	e9 4b ff ff ff       	jmp    f74 <printf+0x54>
    1029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1030:	83 ec 0c             	sub    $0xc,%esp
    1033:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1038:	6a 01                	push   $0x1
    103a:	eb ce                	jmp    100a <printf+0xea>
    103c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1040:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1043:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1046:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1048:	6a 01                	push   $0x1
        ap++;
    104a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    104d:	57                   	push   %edi
    104e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1051:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1054:	e8 5a fd ff ff       	call   db3 <write>
        ap++;
    1059:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    105c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    105f:	31 d2                	xor    %edx,%edx
    1061:	e9 0e ff ff ff       	jmp    f74 <printf+0x54>
    1066:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    106d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1070:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1073:	83 ec 04             	sub    $0x4,%esp
    1076:	e9 59 ff ff ff       	jmp    fd4 <printf+0xb4>
    107b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    107f:	90                   	nop
        s = (char*)*ap;
    1080:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1083:	8b 18                	mov    (%eax),%ebx
        ap++;
    1085:	83 c0 04             	add    $0x4,%eax
    1088:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    108b:	85 db                	test   %ebx,%ebx
    108d:	74 17                	je     10a6 <printf+0x186>
        while(*s != 0){
    108f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1092:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1094:	84 c0                	test   %al,%al
    1096:	0f 84 d8 fe ff ff    	je     f74 <printf+0x54>
    109c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    109f:	89 de                	mov    %ebx,%esi
    10a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10a4:	eb 1a                	jmp    10c0 <printf+0x1a0>
          s = "(null)";
    10a6:	bb 70 13 00 00       	mov    $0x1370,%ebx
        while(*s != 0){
    10ab:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    10ae:	b8 28 00 00 00       	mov    $0x28,%eax
    10b3:	89 de                	mov    %ebx,%esi
    10b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10bf:	90                   	nop
  write(fd, &c, 1);
    10c0:	83 ec 04             	sub    $0x4,%esp
          s++;
    10c3:	83 c6 01             	add    $0x1,%esi
    10c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    10c9:	6a 01                	push   $0x1
    10cb:	57                   	push   %edi
    10cc:	53                   	push   %ebx
    10cd:	e8 e1 fc ff ff       	call   db3 <write>
        while(*s != 0){
    10d2:	0f b6 06             	movzbl (%esi),%eax
    10d5:	83 c4 10             	add    $0x10,%esp
    10d8:	84 c0                	test   %al,%al
    10da:	75 e4                	jne    10c0 <printf+0x1a0>
    10dc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    10df:	31 d2                	xor    %edx,%edx
    10e1:	e9 8e fe ff ff       	jmp    f74 <printf+0x54>
    10e6:	66 90                	xchg   %ax,%ax
    10e8:	66 90                	xchg   %ax,%ax
    10ea:	66 90                	xchg   %ax,%ax
    10ec:	66 90                	xchg   %ax,%ax
    10ee:	66 90                	xchg   %ax,%ax

000010f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    10f5:	a1 c4 19 00 00       	mov    0x19c4,%eax
{
    10fa:	89 e5                	mov    %esp,%ebp
    10fc:	57                   	push   %edi
    10fd:	56                   	push   %esi
    10fe:	53                   	push   %ebx
    10ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1102:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1104:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1107:	39 c8                	cmp    %ecx,%eax
    1109:	73 15                	jae    1120 <free+0x30>
    110b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    110f:	90                   	nop
    1110:	39 d1                	cmp    %edx,%ecx
    1112:	72 14                	jb     1128 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1114:	39 d0                	cmp    %edx,%eax
    1116:	73 10                	jae    1128 <free+0x38>
{
    1118:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    111a:	8b 10                	mov    (%eax),%edx
    111c:	39 c8                	cmp    %ecx,%eax
    111e:	72 f0                	jb     1110 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1120:	39 d0                	cmp    %edx,%eax
    1122:	72 f4                	jb     1118 <free+0x28>
    1124:	39 d1                	cmp    %edx,%ecx
    1126:	73 f0                	jae    1118 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1128:	8b 73 fc             	mov    -0x4(%ebx),%esi
    112b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    112e:	39 fa                	cmp    %edi,%edx
    1130:	74 1e                	je     1150 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1132:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1135:	8b 50 04             	mov    0x4(%eax),%edx
    1138:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    113b:	39 f1                	cmp    %esi,%ecx
    113d:	74 28                	je     1167 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    113f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1141:	5b                   	pop    %ebx
  freep = p;
    1142:	a3 c4 19 00 00       	mov    %eax,0x19c4
}
    1147:	5e                   	pop    %esi
    1148:	5f                   	pop    %edi
    1149:	5d                   	pop    %ebp
    114a:	c3                   	ret    
    114b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    114f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1150:	03 72 04             	add    0x4(%edx),%esi
    1153:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1156:	8b 10                	mov    (%eax),%edx
    1158:	8b 12                	mov    (%edx),%edx
    115a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    115d:	8b 50 04             	mov    0x4(%eax),%edx
    1160:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1163:	39 f1                	cmp    %esi,%ecx
    1165:	75 d8                	jne    113f <free+0x4f>
    p->s.size += bp->s.size;
    1167:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    116a:	a3 c4 19 00 00       	mov    %eax,0x19c4
    p->s.size += bp->s.size;
    116f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1172:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1175:	89 10                	mov    %edx,(%eax)
}
    1177:	5b                   	pop    %ebx
    1178:	5e                   	pop    %esi
    1179:	5f                   	pop    %edi
    117a:	5d                   	pop    %ebp
    117b:	c3                   	ret    
    117c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001180 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1180:	f3 0f 1e fb          	endbr32 
    1184:	55                   	push   %ebp
    1185:	89 e5                	mov    %esp,%ebp
    1187:	57                   	push   %edi
    1188:	56                   	push   %esi
    1189:	53                   	push   %ebx
    118a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    118d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1190:	8b 3d c4 19 00 00    	mov    0x19c4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1196:	8d 70 07             	lea    0x7(%eax),%esi
    1199:	c1 ee 03             	shr    $0x3,%esi
    119c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    119f:	85 ff                	test   %edi,%edi
    11a1:	0f 84 a9 00 00 00    	je     1250 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11a7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    11a9:	8b 48 04             	mov    0x4(%eax),%ecx
    11ac:	39 f1                	cmp    %esi,%ecx
    11ae:	73 6d                	jae    121d <malloc+0x9d>
    11b0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    11b6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    11bb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    11be:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    11c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    11c8:	eb 17                	jmp    11e1 <malloc+0x61>
    11ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11d0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    11d2:	8b 4a 04             	mov    0x4(%edx),%ecx
    11d5:	39 f1                	cmp    %esi,%ecx
    11d7:	73 4f                	jae    1228 <malloc+0xa8>
    11d9:	8b 3d c4 19 00 00    	mov    0x19c4,%edi
    11df:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    11e1:	39 c7                	cmp    %eax,%edi
    11e3:	75 eb                	jne    11d0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    11e5:	83 ec 0c             	sub    $0xc,%esp
    11e8:	ff 75 e4             	pushl  -0x1c(%ebp)
    11eb:	e8 2b fc ff ff       	call   e1b <sbrk>
  if(p == (char*)-1)
    11f0:	83 c4 10             	add    $0x10,%esp
    11f3:	83 f8 ff             	cmp    $0xffffffff,%eax
    11f6:	74 1b                	je     1213 <malloc+0x93>
  hp->s.size = nu;
    11f8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    11fb:	83 ec 0c             	sub    $0xc,%esp
    11fe:	83 c0 08             	add    $0x8,%eax
    1201:	50                   	push   %eax
    1202:	e8 e9 fe ff ff       	call   10f0 <free>
  return freep;
    1207:	a1 c4 19 00 00       	mov    0x19c4,%eax
      if((p = morecore(nunits)) == 0)
    120c:	83 c4 10             	add    $0x10,%esp
    120f:	85 c0                	test   %eax,%eax
    1211:	75 bd                	jne    11d0 <malloc+0x50>
        return 0;
  }
}
    1213:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1216:	31 c0                	xor    %eax,%eax
}
    1218:	5b                   	pop    %ebx
    1219:	5e                   	pop    %esi
    121a:	5f                   	pop    %edi
    121b:	5d                   	pop    %ebp
    121c:	c3                   	ret    
    if(p->s.size >= nunits){
    121d:	89 c2                	mov    %eax,%edx
    121f:	89 f8                	mov    %edi,%eax
    1221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1228:	39 ce                	cmp    %ecx,%esi
    122a:	74 54                	je     1280 <malloc+0x100>
        p->s.size -= nunits;
    122c:	29 f1                	sub    %esi,%ecx
    122e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1231:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1234:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1237:	a3 c4 19 00 00       	mov    %eax,0x19c4
}
    123c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    123f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1242:	5b                   	pop    %ebx
    1243:	5e                   	pop    %esi
    1244:	5f                   	pop    %edi
    1245:	5d                   	pop    %ebp
    1246:	c3                   	ret    
    1247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1250:	c7 05 c4 19 00 00 c8 	movl   $0x19c8,0x19c4
    1257:	19 00 00 
    base.s.size = 0;
    125a:	bf c8 19 00 00       	mov    $0x19c8,%edi
    base.s.ptr = freep = prevp = &base;
    125f:	c7 05 c8 19 00 00 c8 	movl   $0x19c8,0x19c8
    1266:	19 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1269:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    126b:	c7 05 cc 19 00 00 00 	movl   $0x0,0x19cc
    1272:	00 00 00 
    if(p->s.size >= nunits){
    1275:	e9 36 ff ff ff       	jmp    11b0 <malloc+0x30>
    127a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1280:	8b 0a                	mov    (%edx),%ecx
    1282:	89 08                	mov    %ecx,(%eax)
    1284:	eb b1                	jmp    1237 <malloc+0xb7>