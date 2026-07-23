.class public final Lcom/facebook/ads/redexgen/X/3i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFormat"
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:Lcom/facebook/ads/redexgen/X/3i;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3i;->A01()V

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/3i;-><init>(III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 10829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10830
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    .line 10831
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    .line 10832
    iput p3, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    .line 10833
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/5C;->A15(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10834
    invoke-static {p3, p2}, Lcom/facebook/ads/redexgen/X/5C;->A06(II)I

    move-result v0

    .line 10835
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    .line 10836
    return-void

    .line 10837
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

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

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        -0x23t
        0x20t
        0x25t
        0x1et
        0x2bt
        0x2bt
        0x22t
        0x29t
        0x0t
        0x2ct
        0x32t
        0x2bt
        0x31t
        -0x6t
        0xet
        0x2t
        0x47t
        0x50t
        0x45t
        0x51t
        0x46t
        0x4bt
        0x50t
        0x49t
        0x1ft
        -0x21t
        0x13t
        0x2t
        0x7t
        0xdt
        -0x1ct
        0xdt
        0x10t
        0xbt
        -0x1t
        0x12t
        -0x7t
        0x11t
        -0x1t
        0xbt
        0xet
        0xat
        0x3t
        -0x10t
        -0x1t
        0x12t
        0x3t
        -0x25t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 10838
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 10839
    return v2

    .line 10840
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/3i;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 10841
    return v0

    .line 10842
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/3i;

    .line 10843
    .local v1, "that":Lcom/facebook/ads/redexgen/X/3i;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    if-ne v1, v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .line 10844
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/CB;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 10845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v1, 0x17

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
