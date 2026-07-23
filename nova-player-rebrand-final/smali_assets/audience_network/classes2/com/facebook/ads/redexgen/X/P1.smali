.class public final Lcom/facebook/ads/redexgen/X/P1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiverRecord"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Landroid/content/BroadcastReceiver;

.field public final A03:Landroid/content/IntentFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1517
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GkkO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YJmuGc85y4OuUVwghPHMw6H0hrXdCbsK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rRyyH1Ry9JSt7GwazL3CF5Rf19vLBzF0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Kr8SfiAbBQlS981voHWRhKuNeYVS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2bjqqKstFSNs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YCJEv0AAmy9EO19MFuS1eY2psLita0He"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8nMnppK8MJ669xw0eU6fQM63oOjVziX6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UtNvkE6PgDf4Bgx19r2HgtE5txVeLiPN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P1;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P1;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 56465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56466
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A03:Landroid/content/IntentFilter;

    .line 56467
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P1;->A02:Landroid/content/BroadcastReceiver;

    .line 56468
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/P1;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/P1;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/P1;->A05:[Ljava/lang/String;

    const-string v1, "RuLyFqXzbhnlmQeuw5cGDVAvivNnSqaB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x17

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/P1;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/P1;->A05:[Ljava/lang/String;

    const-string v1, "goVzQt2K0L2BtiDyFGHqLLcsDevd1QlQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/P1;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x49t
        0x2dt
        0x2ct
        0x28t
        0x2dt
        0xft
        0x49t
        0x46t
        0x43t
        0x5bt
        0x4at
        0x5dt
        0x12t
        0x54t
        0x63t
        0x65t
        0x63t
        0x6ft
        0x70t
        0x63t
        0x74t
        0x7dt
        0x6ct
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 56469
    const/16 v0, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56470
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0xd

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A02:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56472
    const/4 v2, 0x5

    const/16 v1, 0x8

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56474
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A01:Z

    if-eqz v0, :cond_0

    .line 56475
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56476
    :cond_0
    const/16 v2, 0x16

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
