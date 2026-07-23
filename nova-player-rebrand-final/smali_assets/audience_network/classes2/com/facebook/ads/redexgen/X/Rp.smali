.class public final Lcom/facebook/ads/redexgen/X/Rp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1629
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "28H1kjICyCSP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QKFmg3qmSW84YfLR5DXewrEtWZ47Hzy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Em"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YyES7HR0UsWs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rGxFrAuyTsOha0QpVFZkpdTTHXBTZM0k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CeAnScf1I32vhT13KQ6XZJy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)Lcom/facebook/ads/redexgen/X/Lt;
    .locals 1

    .line 63108
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lt;
    .locals 0

    .line 63109
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object p0

    .line 63110
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/TA;->A8C(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Lx;

    move-result-object p0

    .line 63111
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/Lx;
    if-eqz p0, :cond_1

    .line 63112
    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lcom/facebook/ads/redexgen/X/Lx;->ACN(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kd;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Lx;->ACM()Lcom/facebook/ads/redexgen/X/kd;

    move-result-object p0

    goto :goto_0

    .line 63113
    :cond_1
    new-instance p0, Lcom/facebook/ads/redexgen/X/kX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kX;-><init>()V

    return-object p0
.end method

.method public static A02(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63114
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 63115
    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63116
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/kX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kX;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63117
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63118
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 63119
    return-object v0

    .line 63120
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A00:[Ljava/lang/String;

    const-string v1, "B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J1bgC2YpAkuTguvKBul5HQJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63121
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Rp;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 63122
    .local v0, "funnel":Lcom/facebook/ads/redexgen/X/Lt;
    const/16 v0, 0x3e8

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJT(I)V

    .line 63123
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63124
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Rp;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 63125
    return-object v0
.end method

.method public static A07(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 3

    .line 63126
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Rp;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 63127
    return-object v0
.end method

.method public static A08(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/76;
    .locals 3

    .line 63128
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A8C(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Lx;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 63129
    return-object v0
.end method

.method public static A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;
    .locals 2

    .line 63130
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/ge;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)V

    return-object v0
.end method

.method public static declared-synchronized A0A()Lcom/facebook/ads/redexgen/X/ZR;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Rp;

    monitor-enter v1

    .line 63131
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZR;->A02()Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
