.class public final Lcom/facebook/ads/redexgen/X/kB;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N8;->A0N(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N8;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kB;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89495
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kB;->A01:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kB;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

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

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kB;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x4dt
        -0x41t
        -0x4et
        -0x42t
        -0x3et
        -0x4et
        -0x45t
        -0x50t
        -0x3at
        -0x54t
        -0x50t
        -0x52t
        -0x43t
        -0x43t
        -0x4at
        -0x45t
        -0x4ct
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 89496
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A06(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 89497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89498
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    .line 89499
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 89500
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89501
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89502
    .local v2, "encryptedId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0I(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89503
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    .line 89504
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Nf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A01:Ljava/lang/String;

    .line 89505
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 89506
    invoke-static {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0D(Lcom/facebook/ads/redexgen/X/N8;Lcom/facebook/ads/redexgen/X/Nf;Ljava/lang/String;Z)V

    goto :goto_0

    .line 89507
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A06()V

    .line 89508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0C(Lcom/facebook/ads/redexgen/X/N8;)V

    .line 89509
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89510
    :catch_0
    move-exception v4

    .line 89511
    .local v0, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0M()V

    .line 89512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89513
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kB;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89514
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_1

    .line 89515
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 89516
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kB;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kB;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1B:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89518
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 89519
    :goto_1
    return-void
.end method
