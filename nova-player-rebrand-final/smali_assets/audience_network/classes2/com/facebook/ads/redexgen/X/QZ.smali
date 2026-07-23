.class public final Lcom/facebook/ads/redexgen/X/QZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeInfo"
.end annotation


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/RK;

.field public A05:Lcom/facebook/ads/redexgen/X/RK;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QZ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 0

    .line 60233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60234
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QZ;->A05:Lcom/facebook/ads/redexgen/X/RK;

    .line 60235
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Lcom/facebook/ads/redexgen/X/RK;

    .line 60236
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RK;IIII)V
    .locals 0

    .line 60237
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60238
    iput p3, p0, Lcom/facebook/ads/redexgen/X/QZ;->A00:I

    .line 60239
    iput p4, p0, Lcom/facebook/ads/redexgen/X/QZ;->A01:I

    .line 60240
    iput p5, p0, Lcom/facebook/ads/redexgen/X/QZ;->A02:I

    .line 60241
    iput p6, p0, Lcom/facebook/ads/redexgen/X/QZ;->A03:I

    .line 60242
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QZ;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

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

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QZ;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x7at
        0x3ct
        0x28t
        0x35t
        0x37t
        0x2t
        0x67t
        0xet
        0x2t
        0x44t
        0x50t
        0x4dt
        0x4ft
        0x7bt
        0x1ft
        0x4ct
        0x40t
        0xet
        0x5t
        0x17t
        0x28t
        0xft
        0xct
        0x4t
        0x5t
        0x12t
        0x5dt
        0x56t
        0x5at
        0xet
        0x15t
        0x22t
        0x47t
        0x47t
        0x4bt
        0x1ft
        0x4t
        0x32t
        0x56t
        0x6dt
        0x46t
        0x4ft
        0x40t
        0x49t
        0x4bt
        0x67t
        0x40t
        0x48t
        0x41t
        0x55t
        0x41t
        0x42t
        0x4at
        0x66t
        0x41t
        0x42t
        0x4at
        0x4bt
        0x5ct
        0x13t
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 60243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v1, 0x15

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A05:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0xc

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A04:Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1c

    const/4 v1, 0x6

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x22

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/QZ;->A03:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
