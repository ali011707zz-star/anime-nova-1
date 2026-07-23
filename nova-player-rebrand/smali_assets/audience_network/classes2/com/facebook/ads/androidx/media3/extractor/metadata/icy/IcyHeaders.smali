.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3247
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ghaGnAUOt2SitSRHHz423X90tSKTPAXx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FBrp2nvQgqmyeffboeTEyGvTZbETTMzG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eMo1BdFVOzvhBgFL81jHh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7Uh1kBGFxd7GLg5A0JuRGjBqdN4vVDce"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZLGEUlzQT0qHH0ct6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "61ApNNUKl6RqFIc15O7NgM3p8KU8Sqmx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LSx5TaQkP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Wz18oCr93"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I5;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    .line 98707
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    .line 98708
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    .line 98709
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    .line 98710
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A1C(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A05:Z

    .line 98711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    .line 98712
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

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

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x53t
        0x5ft
        0x1dt
        0x16t
        0xbt
        0xdt
        0x1et
        0xbt
        0x1at
        0x42t
        0x6et
        0x60t
        0x6ct
        0x2bt
        0x29t
        0x22t
        0x3et
        0x29t
        0x71t
        0x6et
        0x67t
        0x6bt
        0x26t
        0x2et
        0x3ft
        0x2at
        0x2ft
        0x2at
        0x3ft
        0x2at
        0x2t
        0x25t
        0x3ft
        0x2et
        0x39t
        0x3dt
        0x2at
        0x27t
        0x76t
        0x4t
        0x2et
        0x34t
        0x5t
        0x28t
        0x2ct
        0x29t
        0x28t
        0x3ft
        0x3et
        0x77t
        0x6dt
        0x23t
        0x2ct
        0x20t
        0x28t
        0x70t
        0x6ft
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

    .line 98713
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 98714
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 98715
    return v4

    .line 98716
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98717
    .end local v2
    :cond_1
    return v2

    .line 98718
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 98719
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    .line 98720
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A07:[Ljava/lang/String;

    const-string v1, "I4GVatcg3Odw2bdDZmPqVg6Hl1I8OBM0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    .line 98721
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    .line 98722
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A05:Z

    iget-boolean v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A05:Z

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    if-ne v1, v0, :cond_3

    .line 98723
    :goto_0
    return v4

    .line 98724
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 98725
    const/16 v0, 0x11

    .line 98726
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    add-int/2addr v1, v0

    .line 98727
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 98728
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 98729
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 98730
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A05:Z

    add-int/2addr v1, v0

    .line 98731
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    add-int/2addr v1, v0

    .line 98732
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 98733
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 98734
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v1, 0x12

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xa

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0x13

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98736
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98737
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98738
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A03:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98739
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A04:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98740
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A05:Z

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0w(Landroid/os/Parcel;Z)V

    .line 98741
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98742
    return-void
.end method
