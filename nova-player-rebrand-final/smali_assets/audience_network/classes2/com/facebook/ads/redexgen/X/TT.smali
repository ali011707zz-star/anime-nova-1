.class public final Lcom/facebook/ads/redexgen/X/TT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TS;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ge;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ta;

.field public final A02:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TT;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TS;)V
    .locals 1

    .line 65277
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tb;->A00()Lcom/facebook/ads/redexgen/X/Ta;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/TT;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TS;Lcom/facebook/ads/redexgen/X/Ta;)V

    .line 65278
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TS;Lcom/facebook/ads/redexgen/X/Ta;)V
    .locals 3

    .line 65279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TT;->A02:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 65281
    if-eqz p2, :cond_0

    .line 65282
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 65283
    invoke-interface {p3, p2}, Lcom/facebook/ads/redexgen/X/TS;->A97(Lcom/facebook/ads/redexgen/X/ge;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A03:Ljava/util/Map;

    .line 65284
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/TT;->A01:Lcom/facebook/ads/redexgen/X/Ta;

    .line 65285
    return-void

    .line 65286
    :cond_0
    const/4 v2, 0x2

    const/16 v1, 0xf

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x4ft
        -0x33t
        -0x66t
        -0x4at
        -0x40t
        -0x40t
        -0x4at
        -0x45t
        -0x4ct
        0x6dt
        -0x70t
        -0x44t
        -0x45t
        -0x3ft
        -0x4et
        -0x3bt
        -0x3ft
        -0x66t
        -0x5at
        -0x5ct
        0x65t
        -0x63t
        -0x68t
        -0x66t
        -0x64t
        -0x67t
        -0x5at
        -0x5at
        -0x5et
        0x65t
        -0x68t
        -0x65t
        -0x56t
        0x2t
        0x11t
        0x0t
        0x12t
        0x7t
        0x7t
        0x9t
        -0xat
        0x8t
        0xdt
        0x4t
        -0x7t
        -0x14t
        -0x12t
        -0x25t
        -0x13t
        -0xet
        -0x17t
        -0x22t
        -0x28t
        -0x24t
        -0x18t
        -0x23t
        -0x22t
    .end array-data
.end method

.method public static A02()V
    .locals 1

    .line 65287
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65288
    :catchall_0
    const/16 v0, 0xa

    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65289
    :catchall_1
    return-void
.end method

.method private A03(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 65290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A02:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 65291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A02:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65292
    :goto_0
    return-void

    .line 65293
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TT;->A02()V

    goto :goto_0
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 65294
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Xt;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 65295
    .local v0, "stackTraceString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0x11

    const/16 v1, 0x10

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 65296
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TT;->A03:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/TR;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 65298
    .local v1, "crashReportData":Lcom/facebook/ads/redexgen/X/TR;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TR;->A02()Ljava/util/Map;

    move-result-object v4

    .line 65299
    .local v2, "crashReportDataDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x26

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x21

    const/4 v2, 0x5

    const/16 v0, 0x6f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65300
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WP;->A00()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2d

    const/16 v1, 0xc

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-ne v5, p2, :cond_0

    .line 65301
    :try_start_1
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65302
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65303
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 65304
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A01()D

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 65305
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U7;->A02()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Th;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/Th;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    .line 65306
    .local v3, "report":Lcom/facebook/ads/redexgen/X/Th;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TT;->A01:Lcom/facebook/ads/redexgen/X/Ta;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ta;->AL7(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/ge;)V

    .line 65307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65309
    :catch_0
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TT;->A03(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65310
    return-void
.end method
