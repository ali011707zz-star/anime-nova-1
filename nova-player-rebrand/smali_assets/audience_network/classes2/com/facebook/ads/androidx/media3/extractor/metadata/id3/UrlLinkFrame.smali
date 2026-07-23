.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 539
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xxXPcCrNJGLODnntRXdDXuTLETzeRSPk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BM6YzmnlcmbfbcRTXZNQ791eRQEfQtzt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fhJqw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jLA8WfPPASI7lTWhNaBhUXLjINWrZlwE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SaNh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wiu8Q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gydj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3rZ3NkXCEjz6xD1XlhGn8ySTpct48s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IK;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 23800
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 23801
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 23802
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23803
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 23804
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 23805
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 23806
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x70

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x54t
        -0x6et
        -0x19t
        -0x1ct
        -0x22t
        -0x51t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 23807
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 23808
    return v3

    .line 23809
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 23810
    .end local v2
    :cond_1
    return v2

    .line 23811
    :cond_2
    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    const-string v1, "KGgHB7WLO7OsYt6jFaU1vF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;

    .line 23812
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 23813
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 23814
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23815
    :goto_0
    return v3

    .line 23816
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 23817
    const/16 v0, 0x11

    .line 23818
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 23819
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 23820
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 23821
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 23822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 23823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 23824
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23825
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23826
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23827
    return-void
.end method
