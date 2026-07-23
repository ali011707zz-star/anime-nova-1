.class public final Lcom/facebook/ads/redexgen/X/HX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/HY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoints"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HZ;

.field public final A01:Lcom/facebook/ads/redexgen/X/HZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 795
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4aEfCmC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2kTu4wHTiMw5FCYmIpZKoA3S7RkYvI9O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MqF3b2p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5cCqnzmPstBPsSiWHPZbbxeHAyWMz3nO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kSg1dz9TqTWY2puBAJqsQN0JUmM78NMM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HX;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HX;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HZ;)V
    .locals 0

    .line 39543
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    .line 39544
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V
    .locals 1

    .line 39545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39546
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    .line 39547
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    .line 39548
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HX;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x52

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

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HX;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x17t
        0x7bt
        0x7t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 39549
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 39550
    return v3

    .line 39551
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 39552
    .end local v2
    :cond_1
    return v2

    .line 39553
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/HX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HX;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39554
    .local v2, "other":Lcom/facebook/ads/redexgen/X/HX;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HX;->A03:[Ljava/lang/String;

    const-string v1, "g"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 39555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HZ;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HZ;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 39556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HX;->A00:Lcom/facebook/ads/redexgen/X/HZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x4c

    sget-object v1, Lcom/facebook/ads/redexgen/X/HX;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HX;->A01:Lcom/facebook/ads/redexgen/X/HZ;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HX;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/HX;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
