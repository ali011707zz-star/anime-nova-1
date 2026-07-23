.class public final Lcom/facebook/ads/redexgen/X/HZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/HZ;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 796
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W2JHeYWWa9ELcHAI15RIxe4rxnXWWmwk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jvlLQF6rExXNlz19WHgISGbwTL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EBuySnurnPPVASsat8Xhk3v9TkFPfMa7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RYPW7gHfiH7qYGvVsJs3ktsr8U93g5tm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZClNIsWZ1G8A3MTEGXpjjoEPMiXhgtof"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "D5tWHlyJf58ulipH56j910ebLUAuxbL6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RihQcpykaCTUXmmxq9jMexUaOMIMy6Jg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z9jj6O5eYN9H67mnhWcCV55A3djqvCt0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HZ;->A01()V

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/HZ;->A04:Lcom/facebook/ads/redexgen/X/HZ;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 39557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39558
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    .line 39559
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:J

    .line 39560
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x23

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

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HZ;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        0x74t
        0x24t
        0x3bt
        0x27t
        0x3dt
        0x20t
        0x3dt
        0x3bt
        0x3at
        0x69t
        0x3at
        0x15t
        0x8t
        0xct
        0x4t
        0x34t
        0x12t
        0x5ct
        0x25t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 39561
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 39562
    return v6

    .line 39563
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HZ;->A03:[Ljava/lang/String;

    const-string v1, "xxeEFU0wzywmupm5o82U4LrsfSXadp98"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "8tPKtjPFESzwuJv9uBTgFsWt41X19Dg4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_3

    .line 39564
    .end local v2
    :cond_2
    return v5

    .line 39565
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/HZ;

    .line 39566
    .local v2, "other":Lcom/facebook/ads/redexgen/X/HZ;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HZ;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    :goto_0
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 39567
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    long-to-int v0, v1

    .line 39568
    .local v1, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 39569
    .end local v1    # "result":I
    .local v0, "result":I
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 39570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HZ;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x13

    const/4 v1, 0x1

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
