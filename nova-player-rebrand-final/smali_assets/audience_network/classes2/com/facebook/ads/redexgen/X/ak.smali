.class public final Lcom/facebook/ads/redexgen/X/ak;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aj;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2613
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RCnn6pCzuGmx3q71pxhPkiVufEZFhrue"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mpaFRgKOI8I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wGcy8NSqCuh8w4Qd8eleXwL5PKL6kLu0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yBtS5H9nBGCF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BJontwmfcei8Ydfnpbrw2OUV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oZ3BMmDZvmusmOT443VgfsBrmXcMhGXT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1c3rWqDgJYn0reBhn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "avQkykMwqnpIevrWTEzEvMtO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ak;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ak;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJJ)V
    .locals 0

    .line 76722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ak;->A07:Ljava/lang/String;

    .line 76724
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/ak;->A01:J

    .line 76725
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/ak;->A03:J

    .line 76726
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/ak;->A04:J

    .line 76727
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:J

    .line 76728
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/ak;->A05:J

    .line 76729
    iput-wide p12, p0, Lcom/facebook/ads/redexgen/X/ak;->A02:J

    .line 76730
    iput-wide p14, p0, Lcom/facebook/ads/redexgen/X/ak;->A06:J

    .line 76731
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/redexgen/X/ai;)V
    .locals 0

    .line 76732
    invoke-direct/range {p0 .. p15}, Lcom/facebook/ads/redexgen/X/ak;-><init>(Ljava/lang/String;JJJJJJJ)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ak;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5e

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
    .locals 3

    const/16 v0, 0x79

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ak;->A08:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/ak;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ak;->A09:[Ljava/lang/String;

    const-string v1, "471Kmxz1Me6vVyXXwzQpeRmH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "yPKApIkQtN13Op8uOOE76YlC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        0x68t
        0x63t
        0x61t
        0x53t
        0x6ft
        0x63t
        0x62t
        0x78t
        0x69t
        0x62t
        0x78t
        0x53t
        0x60t
        0x63t
        0x6dt
        0x68t
        0x69t
        0x68t
        0x53t
        0x61t
        0x7ft
        0x70t
        0x79t
        0x76t
        0x7ct
        0x74t
        0x7dt
        0x6at
        0x47t
        0x6ct
        0x71t
        0x75t
        0x7dt
        0x47t
        0x75t
        0x6bt
        0x2et
        0x29t
        0x2et
        0x33t
        0x2et
        0x26t
        0x2bt
        0x18t
        0x32t
        0x35t
        0x2bt
        0x51t
        0x52t
        0x5ct
        0x59t
        0x62t
        0x5bt
        0x54t
        0x53t
        0x54t
        0x4et
        0x55t
        0x62t
        0x50t
        0x4et
        0x59t
        0x5at
        0x54t
        0x51t
        0x6at
        0x46t
        0x41t
        0x54t
        0x47t
        0x41t
        0x6at
        0x58t
        0x46t
        0x22t
        0x35t
        0x23t
        0x20t
        0x3ft
        0x3et
        0x23t
        0x35t
        0xft
        0x35t
        0x3et
        0x34t
        0xft
        0x3dt
        0x23t
        0x5ct
        0x4ct
        0x5dt
        0x40t
        0x43t
        0x43t
        0x70t
        0x5dt
        0x4at
        0x4et
        0x4bt
        0x56t
        0x70t
        0x42t
        0x5ct
        0x44t
        0x52t
        0x44t
        0x44t
        0x5et
        0x58t
        0x59t
        0x68t
        0x51t
        0x5et
        0x59t
        0x5et
        0x44t
        0x5ft
        0x68t
        0x5at
        0x44t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76733
    const/4 v0, 0x7

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 76734
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x24

    const/16 v1, 0xb

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A07:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76735
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A01:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0xf

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76736
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A03:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3d

    const/16 v1, 0xd

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76737
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A04:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4a

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76738
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A00:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76739
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A05:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0xf

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76740
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A02:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76741
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ak;->A06:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x68

    const/16 v1, 0x11

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ak;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76742
    return-object v4
.end method
