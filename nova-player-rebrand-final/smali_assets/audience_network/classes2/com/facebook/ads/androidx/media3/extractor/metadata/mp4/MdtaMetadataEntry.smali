.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3245
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vi1I9CRdusR9OaQ73IhU0VuYAQE3JPGL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aaPaOTNU2UwB2EPxZU6V6pdLQfW3q2ZN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cNMGidnwzPmYHHMcqjEgA9zyn89XSS4i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P9rZmlchwJyRaPgTXoQm1OTIZlc4jW3D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Srm5cyc3D2Bvnp8lTnaaETMhNrvRWpkC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "soHBe5cubenrEdU4cSgBG01poHSX3ae1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VauPfgPsA5JB7q1Lz1RQs26dxgaS0pLj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    .line 98640
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    .line 98641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    .line 98642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    .line 98643
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 0

    .line 98644
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 98645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98646
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    .line 98647
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    .line 98648
    iput p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    .line 98649
    iput p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    .line 98650
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

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

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        -0x2t
        0xet
        -0x5t
        -0x2ct
        -0x46t
        0x5t
        -0x1t
        0x13t
        -0x29t
    .end array-data
.end method


# virtual methods
.method public final synthetic A9a()[B
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A9b()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 98651
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 98652
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 98653
    return v5

    .line 98654
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98655
    .end local v2
    :cond_1
    return v2

    .line 98656
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

    .line 98657
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A05:[Ljava/lang/String;

    const-string v1, "ER0xmSd6UN1zW0bdX1OFC0qdco0m4mUZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    .line 98658
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    iget v3, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A05:[Ljava/lang/String;

    const-string v1, "F56Xno7FqUwIc5sxnGwPweIkgWLWP8mz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    if-ne v1, v0, :cond_3

    .line 98659
    :goto_0
    return v5

    .line 98660
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 98661
    const/16 v0, 0x11

    .line 98662
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 98663
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 98664
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    add-int/2addr v1, v0

    .line 98665
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    add-int/2addr v1, v0

    .line 98666
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98668
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98669
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A03:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98670
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98671
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98672
    return-void
.end method
