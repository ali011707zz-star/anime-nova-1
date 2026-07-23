.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3249
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rI5TEheYOJp05VNApergGrEEHCWaES4C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "o6wWfrjUdw4LevlhwfZASZQrY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UWoyLLtEqu034Q80pJxgHqQ3TFbt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jnvUxVCjnhOQIYYcwBh2GPR5wbhVDTOy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "29XTtQExfztCGetR3Cqmh5L0E52wuoLu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Hd1JIMrPWoRu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ETzUd0wMReQVTdTsGtn8YYwfqZIUbVPg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sLyN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/I2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I2;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    .line 98766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98767
    iput p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    .line 98768
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    .line 98769
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    .line 98770
    iput p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    .line 98771
    iput p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    .line 98772
    iput p6, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    .line 98773
    iput p7, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    .line 98774
    iput-object p8, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    .line 98775
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    .line 98778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    .line 98779
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    .line 98780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    .line 98781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    .line 98782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    .line 98783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    .line 98784
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    .line 98785
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 10

    .line 98786
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 98787
    .local p0, "pictureType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 98788
    .local p1, "mimeTypeLength":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 98789
    .local p2, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 98790
    .local p3, "descriptionLength":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v4

    .line 98791
    .local p4, "description":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v5

    .line 98792
    .local p5, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v6

    .line 98793
    .local p6, "height":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v7

    .line 98794
    .local p7, "depth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v8

    .line 98795
    .local p8, "colors":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 98796
    .local v9, "pictureDataLength":I
    new-array v9, v1, [B

    .line 98797
    .local v8, "pictureData":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 98798
    new-instance v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    .end local v8    # "pictureData":[B
    .local p10, "pictureData":[B
    .end local v9    # "pictureDataLength":I
    .local p11, "pictureDataLength":I
    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x40t
        0x4t
        0x5t
        0x13t
        0x3t
        0x12t
        0x9t
        0x10t
        0x14t
        0x9t
        0xft
        0xet
        0x5dt
        0x3dt
        0x4t
        0xet
        0x19t
        0x18t
        0x1ft
        0x8t
        0x57t
        0x4dt
        0x0t
        0x4t
        0x0t
        0x8t
        0x39t
        0x14t
        0x1dt
        0x8t
        0x50t
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

    .line 98799
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 98800
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 98801
    return v4

    .line 98802
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98803
    .end local v2
    :cond_1
    return v2

    .line 98804
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    .line 98805
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    if-ne v1, v0, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98806
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 98807
    :cond_4
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A09:[Ljava/lang/String;

    const-string v1, "EI2VBd4ee1IoRa9rBnnoAwg1aEDf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    .line 98808
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    .line 98809
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    .line 98810
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98811
    :goto_0
    return v4
.end method

.method public final hashCode()I
    .locals 2

    .line 98812
    const/16 v0, 0x11

    .line 98813
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    add-int/2addr v1, v0

    .line 98814
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 98815
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 98816
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    add-int/2addr v1, v0

    .line 98817
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    add-int/2addr v1, v0

    .line 98818
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    add-int/2addr v1, v0

    .line 98819
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    add-int/2addr v1, v0

    .line 98820
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 98821
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x12

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98823
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A03:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98824
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A06:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98825
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A05:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98826
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A04:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98827
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98828
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98829
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98830
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A07:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98831
    return-void
.end method
