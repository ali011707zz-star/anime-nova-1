.class public final Lcom/facebook/ads/redexgen/X/Sm;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:Z

.field public static A05:[B

.field public static final A06:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Sn;

.field public final A01:Lcom/facebook/ads/redexgen/X/So;

.field public final A02:Lcom/facebook/ads/redexgen/X/ge;

.field public final A03:Lcom/facebook/ads/redexgen/X/gK;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1670
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sm;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;Lcom/facebook/ads/redexgen/X/Sn;Lcom/facebook/ads/redexgen/X/So;)V
    .locals 2

    .line 64300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64301
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 64302
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A06:Lcom/facebook/ads/redexgen/X/gL;

    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/CY;->A5U(Lcom/facebook/ads/redexgen/X/gL;)Lcom/facebook/ads/redexgen/X/gK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:Lcom/facebook/ads/redexgen/X/gK;

    .line 64303
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:Lcom/facebook/ads/redexgen/X/Sn;

    .line 64304
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:Lcom/facebook/ads/redexgen/X/So;

    .line 64305
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:Lcom/facebook/ads/redexgen/X/gK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gq;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gK;->A41(Lcom/facebook/ads/redexgen/X/gM;)V

    .line 64306
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A02()V

    .line 64307
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sm;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1f

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x6ct
        0x47t
        0x7dt
        0x60t
        0x6ct
        0x6at
        0x79t
        0x6bt
    .end array-data
.end method

.method private declared-synchronized A02()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    move-object v3, p0

    .line 64308
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Sm;
    :try_start_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A03:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->AAe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64309
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64310
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Sm;
    monitor-exit p0

    return-void

    .line 64311
    :cond_1
    :try_start_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A03:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->A7i()Lorg/json/JSONObject;

    move-result-object v4

    .line 64312
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64313
    .local v2, "btExtras":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64314
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Sm;->A00:Lcom/facebook/ads/redexgen/X/Sn;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Sn;->A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 64315
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A04:Z

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/ge;

    .line 64316
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64317
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A04:Z

    .line 64318
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Sm;->A01:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/So;->A07()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64319
    :cond_3
    monitor-exit p0

    return-void

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "btExtras":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 64320
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sm;)V
    .locals 0

    .line 64321
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A02()V

    return-void
.end method
