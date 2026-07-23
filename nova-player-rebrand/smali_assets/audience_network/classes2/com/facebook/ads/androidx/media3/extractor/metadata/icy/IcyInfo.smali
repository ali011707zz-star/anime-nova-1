.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3246
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nnP96OK6t36Mr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fp9gNvfCMNXuQgLWlYB5lEjFUO4QWdNh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hZObmpkmCubUhQPk0sNPC7HLyRXYLs4E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wb5maXdS5cbTZNKyQcb5C4QnLONrxe0h"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nHFX7Df"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5CI6e8SpgqKAx4NAP8Yv6TwtqqCApbcl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OJNC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2nin"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I6;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98681
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    .line 98682
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A00:Ljava/lang/String;

    .line 98683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A01:Ljava/lang/String;

    .line 98684
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98686
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    .line 98687
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A00:Ljava/lang/String;

    .line 98688
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A01:Ljava/lang/String;

    .line 98689
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A04:[Ljava/lang/String;

    const-string v1, "qKUW1KH6CuSTGDfvrO6Qdp683VdyVHth"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LPZYmu17yBTH9DPNueNU7kcuuOoRtJJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x7at
        -0x70t
        0x71t
        0x57t
        -0x55t
        -0x60t
        -0x55t
        -0x5dt
        -0x64t
        0x74t
        0x59t
        0x5ct
        -0x56t
        0x59t
        0x63t
        0x57t
        -0x54t
        -0x57t
        -0x5dt
        0x74t
        0x59t
        0x5ct
        -0x56t
        0x59t
        0x63t
        0x57t
        -0x57t
        -0x68t
        -0x52t
        -0x7ct
        -0x64t
        -0x55t
        -0x68t
        -0x65t
        -0x68t
        -0x55t
        -0x68t
        0x65t
        -0x5dt
        -0x64t
        -0x5bt
        -0x62t
        -0x55t
        -0x61t
        0x74t
        0x59t
        0x5ct
        -0x56t
        0x59t
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

    .line 98690
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 98691
    if-ne p0, p1, :cond_0

    .line 98692
    const/4 v0, 0x1

    return v0

    .line 98693
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98694
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 98695
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;

    .line 98696
    .local v0, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 98697
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 98698
    iget-object v4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A00:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A01:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    array-length v0, v0

    .line 98699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 98700
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98701
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A02:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98702
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98703
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyInfo;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98704
    return-void
.end method
