.class public final Lcom/facebook/ads/redexgen/X/N0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Landroid/app/Application;

.field public A03:Lcom/facebook/ads/redexgen/X/Mq;

.field public A04:Lcom/facebook/ads/redexgen/X/Ms;

.field public A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/VA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1420
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jjDsG8QlYrxY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TMhFK0S9G1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6qW7u5SP6R0wlmhQUiBuXDFp8yf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "n7Dasyj9dq5sG0xOL43e0c5rVQV9l70l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dOqhBdKnx9bW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "a7CXWDqETze4gqUmjqRBhcRjVGu0d2y8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nE3PHSl6bqsIePbBJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/N0;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/N0;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N0;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VA;Landroid/app/Activity;I)V
    .locals 2

    .line 52706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52707
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:J

    .line 52708
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:J

    .line 52709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A06:Ljava/lang/String;

    .line 52710
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A03:Lcom/facebook/ads/redexgen/X/Mq;

    .line 52711
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N0;->A08:Lcom/facebook/ads/redexgen/X/VA;

    .line 52712
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    .line 52713
    new-instance v0, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    invoke-direct {v0, p2, p0}, Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/N0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    .line 52714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A07:Z

    .line 52715
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/VA;Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/N0;
    .locals 1

    .line 52716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A01(Lcom/facebook/ads/redexgen/X/VA;Landroid/app/Activity;I)Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/VA;Landroid/app/Activity;I)Lcom/facebook/ads/redexgen/X/N0;
    .locals 1

    .line 52717
    if-eqz p1, :cond_0

    const/16 v0, 0xe

    if-lt p2, v0, :cond_0

    .line 52718
    new-instance v0, Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/VA;Landroid/app/Activity;I)V

    return-object v0

    .line 52719
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/N0;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N0;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x68t
        0x53t
        0x5ct
        0x5ft
        0x51t
        0x58t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x71t
        0x52t
        0x5at
        0x1dt
        0x68t
        0x4et
        0x58t
        0x4ft
        0x1dt
        0x6ft
        0x58t
        0x49t
        0x48t
        0x4ft
        0x53t
        0x1dt
        0x4at
        0x55t
        0x58t
        0x53t
        0x1dt
        0x49t
        0x52t
        0x56t
        0x58t
        0x53t
        0x1dt
        0x54t
        0x4et
        0x1dt
        0x53t
        0x48t
        0x51t
        0x51t
        0x13t
        0x2t
        0x1t
        0x3t
        0xbt
        0x3ft
        0x14t
        0x9t
        0xdt
        0x5t
        0x12t
        0x1bt
        0x1ft
        0x8t
        0x1bt
        0x21t
        0xat
        0x17t
        0x13t
        0x1bt
        0x3ct
        0x26t
        0x27t
        0x30t
        0x3ct
        0x3et
        0x36t
        0x76t
        0x61t
        0x74t
        0x6bt
        0x76t
        0x70t
        0x6dt
        0x6at
        0x63t
    .end array-data
.end method

.method private A04(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Mq;)V
    .locals 4

    .line 52720
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52721
    .local v0, "userReturnDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x36

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52722
    const/16 v2, 0x2d

    const/16 v1, 0x9

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52723
    if-eqz p6, :cond_0

    .line 52724
    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6}, Lcom/facebook/ads/redexgen/X/Mq;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52725
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A08:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/VA;->AC9(Ljava/lang/String;Ljava/util/Map;)V

    .line 52726
    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 7

    .line 52727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:J

    .line 52728
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x7d0

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A04:Lcom/facebook/ads/redexgen/X/Ms;

    if-eqz v0, :cond_1

    .line 52729
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/N0;->A04:Lcom/facebook/ads/redexgen/X/Ms;

    sget-object v1, Lcom/facebook/ads/redexgen/X/N0;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/N0;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Ms;->AFa()V

    .line 52730
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A06:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 52731
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N0;->A06:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:J

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/N0;->A03:Lcom/facebook/ads/redexgen/X/Mq;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/N0;->A04(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Mq;)V

    .line 52732
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    if-eqz v0, :cond_2

    .line 52733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 52734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A07:Z

    .line 52735
    :cond_2
    return-void

    .line 52736
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(III)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    .line 52737
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_4

    .line 52738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gi;

    .line 52739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A22:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 52740
    const/16 v2, 0x47

    const/16 v1, 0x9

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 52741
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/N0;->A0B:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Mq;)V
    .locals 0

    .line 52742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N0;->A03:Lcom/facebook/ads/redexgen/X/Mq;

    .line 52743
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Ms;)V
    .locals 0

    .line 52744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N0;->A04:Lcom/facebook/ads/redexgen/X/Ms;

    .line 52745
    return-void
.end method

.method public final A08(Ljava/lang/String;)V
    .locals 8

    .line 52746
    move-object v2, p1

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/N0;->A06:Ljava/lang/String;

    .line 52747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:J

    .line 52748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A07:Z

    if-nez v0, :cond_0

    .line 52749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A07:Z

    .line 52750
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Landroid/app/Application;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A05:Lcom/facebook/ads/internal/action/UserReturnTracker$UserReturnListener;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 52751
    :goto_0
    return-void

    .line 52752
    :cond_0
    const-wide/16 v5, -0x1

    sget-object v7, Lcom/facebook/ads/redexgen/X/Mq;->A05:Lcom/facebook/ads/redexgen/X/Mq;

    const-wide/16 v3, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/N0;->A04(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Mq;)V

    goto :goto_0
.end method
