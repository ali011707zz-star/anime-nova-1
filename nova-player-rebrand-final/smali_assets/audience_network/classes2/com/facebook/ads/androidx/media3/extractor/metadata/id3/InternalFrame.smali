.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 549
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bh5qox0UH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "89qWhU54NayHc8fpkuIC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mxiDDsG8W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MZNrWcAF8nDVd0pvETTqmBiIClJ2tebz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S0BNh2MYPMBLZaGUzictbU3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "akavPcpCZaXV4BCg0NoMCSRp4weYG0Nb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IjvMVSLxmO4DFFxW0QpqXFC26"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ljqIR0LyySHMAW8jRLUwJIZQ0It"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IG;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 24094
    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    .line 24096
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    .line 24097
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    .line 24098
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24099
    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24100
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    .line 24101
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    .line 24102
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    .line 24103
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x21t
        0x2dt
        0x69t
        0x68t
        0x7et
        0x6et
        0x7ft
        0x64t
        0x7dt
        0x79t
        0x64t
        0x62t
        0x63t
        0x30t
        0x4bt
        0x4bt
        0x4bt
        0x4bt
        0x5ft
        0x45t
        0x1t
        0xat
        0x8t
        0x4t
        0xct
        0xbt
        0x58t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 24104
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 24105
    return v5

    .line 24106
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A04:[Ljava/lang/String;

    const-string v1, "zohAyU4uyJRKihpCm3V8eg4UF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_2

    .line 24107
    .end local v2
    :cond_1
    return v4

    .line 24108
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;

    .line 24109
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    .line 24110
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    .line 24111
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24112
    :goto_0
    return v5

    .line 24113
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

    .line 24114
    const/16 v0, 0x11

    .line 24115
    .local v0, "result":I
    mul-int/lit8 v5, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A04:[Ljava/lang/String;

    const-string v1, "spAelKLfI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "W2t9hTJyD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v5, v0

    .line 24116
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v5, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 24117
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_2
    add-int/2addr v1, v4

    .line 24118
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 24119
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 24120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 24121
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24122
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24123
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24124
    return-void
.end method
