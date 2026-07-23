.class public Lcom/facebook/ads/redexgen/X/MZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/MZ;",
        ">;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static final A07:Ljava/lang/String;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Ljava/io/File;

.field public final A04:Ljava/lang/String;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1397
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MZ;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MZ;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 1

    .line 52139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    .line 52141
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    .line 52142
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    .line 52143
    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    .line 52144
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    .line 52145
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:J

    .line 52146
    return-void

    .line 52147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MZ;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

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

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MZ;->A06:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0x43t
        0x4et
        0x5bt
        0x15t
        0x41t
        0x11t
        0xet
        0x12t
        0x5bt
        0x41t
        0x77t
        0x24t
        0x3et
        0x2dt
        0x32t
        0x6dt
        0x77t
        0x41t
        0x63t
        0x61t
        0x6at
        0x67t
        0x51t
        0x72t
        0x63t
        0x6ct
        0x79t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/MZ;)I
    .locals 5

    .line 52148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 52150
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    sub-long/2addr v3, v0

    .line 52151
    .local v0, "startOffsetDiff":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final A03()Z
    .locals 1

    .line 52152
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A04()Z
    .locals 5

    .line 52153
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 52154
    check-cast p1, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/MZ;->A02(Lcom/facebook/ads/redexgen/X/MZ;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 52155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0xa

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x7

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
