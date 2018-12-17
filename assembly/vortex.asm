FORMAT PE GUI
entry start

section '.text' code readable executable

start:
  push 0
  call isDebuggerPresent
  cmp eax,0
  jnz exit


exit:
  call ExitProcess

section '.data' data readable writeable
db 0
db 0

section '.idata' import data reabable writeable

li
