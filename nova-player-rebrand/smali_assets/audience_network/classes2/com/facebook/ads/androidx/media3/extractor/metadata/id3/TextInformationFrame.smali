.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList with MetaExoPlayerCustomizedCollections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 540
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PRzzvuBjwgRBlybrfgCXUu0h8kRE0BYl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wpvJm9E3j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XMJYjWJhpM05jCuEk8g1dCDyUY0olBpf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qsgwd6eZwkpqny4yz6zyMy2XfivsvALV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "clQMjNTRp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2j6tBuGV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VJB8QHv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YZxxVdDySmA2nPcuTgf4p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.copyOf with MetaExoPlayerCustomizedCollections"
    .end annotation

    .line 23828
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23829
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 23830
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 23831
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A02([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 23832
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23833
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IJ;)V
    .locals 0

    .line 23834
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.copyOf with MetaExoPlayerCustomizedCollections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23835
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 23836
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 23837
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    .line 23838
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 23839
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A02([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    .line 23840
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A01:Ljava/lang/String;

    .line 23841
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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
    .locals 4

    const/16 v0, 0x17

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const-string v1, "yRSPqh3aRsAylVpe1hOBm5YLh5Sq4zVd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "7kqk0liQnwbAMo7HBLnU1F6wmq1Tne5o"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x63t
        -0x7dt
        -0x39t
        -0x38t
        -0x2at
        -0x3at
        -0x2bt
        -0x34t
        -0x2dt
        -0x29t
        -0x34t
        -0x2et
        -0x2ft
        -0x60t
        -0x21t
        -0x3bt
        0x1bt
        0x6t
        0x11t
        0x1at
        0xat
        0x18t
        -0x1et
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 23842
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 23843
    return v6

    .line 23844
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const-string v1, "8D2Ula8sxyLo2Sqvwa2MzZhuaia5hg34"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0hDX4qrnX3efe3zY5D7tm747s1qsajWd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_3

    .line 23845
    .end local v2
    :cond_2
    return v5

    .line 23846
    :cond_3
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 23847
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    .line 23848
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A04:[Ljava/lang/String;

    const-string v1, "aAA9QqK2VvJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    .line 23849
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23850
    :goto_0
    return v6

    .line 23851
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 23852
    const/16 v0, 0x11

    .line 23853
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 23854
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 23855
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 23856
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 23857
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 23858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 23859
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23860
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23861
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 23862
    return-void
.end method
