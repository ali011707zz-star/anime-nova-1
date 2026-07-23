.class public final Lcom/facebook/ads/redexgen/X/kC;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N8;->A0O(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N8;

.field public final synthetic A01:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N8;Lorg/json/JSONObject;)V
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

    .line 89520
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kC;->A01:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kC;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/kC;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x61t
        0x76t
        0x62t
        0x66t
        0x76t
        0x7dt
        0x70t
        0x6at
        0x4ct
        0x70t
        0x72t
        0x63t
        0x63t
        0x7at
        0x7dt
        0x74t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 89521
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A05(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 89522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89523
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A01:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A0B(Lorg/json/JSONObject;)V

    .line 89524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A06(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89525
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89526
    :catch_0
    move-exception v4

    .line 89527
    .local v0, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0M()V

    .line 89528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89529
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kC;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89530
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 89531
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 89532
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kC;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    .line 89533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kC;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1B:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 89534
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 89535
    :goto_0
    return-void
.end method
