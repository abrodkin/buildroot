From 64678527fbe840645555b3ea86ac9dfdec86d0ce Mon Sep 17 00:00:00 2001
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 9 Jan 2016 01:14:04 +0000
Subject: [PATCH] ustat: Change header from ustat.h to sys/ustat.h

makes it portable for musl, on glibc ustat.h is just including
sys/ustat.h too

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 testcases/kernel/syscalls/ustat/ustat01.c | 2 +-
 testcases/kernel/syscalls/ustat/ustat02.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/testcases/kernel/syscalls/ustat/ustat01.c b/testcases/kernel/syscalls/ustat/ustat01.c
index 01b76882a..494647bc2 100644
--- a/testcases/kernel/syscalls/ustat/ustat01.c
+++ b/testcases/kernel/syscalls/ustat/ustat01.c
@@ -20,8 +20,8 @@
  */
 
 #include <unistd.h>
-#include <ustat.h>
 #include <errno.h>
+#include <sys/ustat.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include "test.h"
diff --git a/testcases/kernel/syscalls/ustat/ustat02.c b/testcases/kernel/syscalls/ustat/ustat02.c
index 4e6623622..edada3107 100644
--- a/testcases/kernel/syscalls/ustat/ustat02.c
+++ b/testcases/kernel/syscalls/ustat/ustat02.c
@@ -21,8 +21,8 @@
  */
 
 #include <unistd.h>
-#include <ustat.h>
 #include <errno.h>
+#include <sys/ustat.h>
 #include <sys/stat.h>
 #include <sys/types.h>
 #include "test.h"
