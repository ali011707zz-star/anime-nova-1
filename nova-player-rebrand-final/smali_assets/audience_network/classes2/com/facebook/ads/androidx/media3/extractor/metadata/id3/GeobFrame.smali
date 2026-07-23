.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 551
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ORThrcUDJ8oSWKnVQcP1uIGpcR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uxmFmJC1LwPq1ifvsUVY6A58XUxn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tgzXw0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3YcwGpAqsC36LlJyS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bWi6NBg7EuEHzXqjFfskJtL267SBWFe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "P49DRZyRWhn5lVJGsfOn1rO7sNGr7nlu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aaseJjWnl2zrNSL329JSGdGKj2FyDGUc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EYKDzopnaqy6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ID;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ID;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 24547
    const/16 v2, 0x24

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    .line 24549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 24550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    .line 24551
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    .line 24552
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    .line 24553
    const/16 v2, 0x24

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24554
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    .line 24555
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 24556
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    .line 24557
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    .line 24558
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "xm9FRjRm82kK4gS3u270gaYNqume"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x50t
        0x14t
        0x15t
        0x3t
        0x13t
        0x2t
        0x19t
        0x0t
        0x4t
        0x19t
        0x1ft
        0x1et
        0x4dt
        0x75t
        0x79t
        0x3ft
        0x30t
        0x35t
        0x3ct
        0x37t
        0x38t
        0x34t
        0x3ct
        0x64t
        0x4et
        0x54t
        0x19t
        0x1dt
        0x19t
        0x11t
        0x20t
        0xdt
        0x4t
        0x11t
        0x49t
        0x3ct
        0x3et
        0x34t
        0x39t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 24559
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 24560
    return v5

    .line 24561
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 24562
    .end local v2
    :cond_1
    return v2

    .line 24563
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;

    .line 24564
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 24565
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    .line 24566
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "HEIn71RMT8F4EhFByQAG1BwlOeNZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    .line 24567
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24568
    :goto_0
    return v5

    .line 24569
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 6

    .line 24570
    const/16 v0, 0x11

    .line 24571
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "jAIu8v1143XL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v4, v0

    .line 24572
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 24573
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "5ETNk8FDhPWD3cLm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "kmHBQ6UCcTgjP77v2ijZb3Aa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    :cond_2
    :goto_3
    add-int/2addr v4, v5

    .line 24574
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 24575
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1

    :cond_3
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "wEfpGayZOaM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 24576
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 24577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x19

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 24578
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24579
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24580
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24581
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;->A03:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 24582
    return-void
.end method
