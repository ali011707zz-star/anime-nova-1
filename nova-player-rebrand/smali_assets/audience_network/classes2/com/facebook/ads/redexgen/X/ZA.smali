.class public final Lcom/facebook/ads/redexgen/X/ZA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MW;->A06()Lcom/facebook/ads/redexgen/X/Kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2552
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IOR0l14leYwQNQq2I2rEV1zfIXqFKI0a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zW7tVYcZ3dM5iQVsFi8VOfvAOil8nrCv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ieKj8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GAk2VDgzwLQ7mEx4yT9NQx4ape"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "m3zKFeg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MHRS5EwiRnbElfi8E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iluOaWOCUNCvaeFHk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XDQmqUnzQcQqnZe226mcFYKNf4olT5Vx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZA;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74840
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZA;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x37t
        -0x39t
        -0x47t
        -0x3at
        -0x49t
        -0x40t
        -0x43t
        -0x49t
        -0x41t
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 74841
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ZA;
    .local p0, "v":Landroid/view/View;
    :try_start_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/ZA;->A00:Lcom/facebook/ads/redexgen/X/MW;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZA;->A00(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0U(Lcom/facebook/ads/redexgen/X/MW;ZLjava/lang/String;)V

    .line 74842
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ZA;
    .end local p0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZA;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZA;->A02:[Ljava/lang/String;

    const-string v1, "H8CDprpa1Cplh5AC0usdDw9yybstLgCh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void
.end method
