.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 557
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5o877G0Xn4g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fiOGvUvan2p0zeHSdd1zDEfnnu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Cn8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Biz8k47ZZA2czV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Z3kr8YtjBqxV00IQ2eamuz9uGN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "STDT2GTKdPFkuTZOytQGPqPU77"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1166HsxlVHC8oY9ZvqmOAOxF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I8;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 24965
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24966
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 24967
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 24968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    .line 24969
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    .line 24970
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 3

    .line 24971
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24972
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 24973
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 24974
    iput p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    .line 24975
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    .line 24976
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

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

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0xbt
        0x4ft
        0x50t
        0x5et
        0x4et
        0x5dt
        0x54t
        0x5bt
        0x5ft
        0x54t
        0x5at
        0x59t
        0x28t
        -0x2dt
        -0x47t
        0x6t
        0x2t
        0x6t
        -0x2t
        -0x13t
        0x12t
        0x9t
        -0x2t
        -0x2at
        -0x29t
        -0x1at
        -0x21t
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 24977
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 24978
    return v6

    .line 24979
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

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
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    const-string v1, "Vat9FRYSvb0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_3

    .line 24980
    .end local v2
    :cond_2
    return v5

    .line 24981
    :cond_3
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;

    .line 24982
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 24983
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 24984
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24985
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 24986
    :cond_5
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    const-string v1, "N5mzCkpeHXkGaEeNVH6XxC0l1A"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UQhaCuUYGvgNkUfwyKrX3KpkmF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    .line 24987
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24988
    :goto_0
    return v6
.end method

.method public final hashCode()I
    .locals 3

    .line 24989
    const/16 v0, 0x11

    .line 24990
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    add-int/2addr v1, v0

    .line 24991
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 24992
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 24993
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 24994
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 24995
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 24996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 24997
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24998
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24999
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25000
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;->A03:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 25001
    return-void
.end method
