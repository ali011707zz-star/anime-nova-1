.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 546
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EWOInCaIHCzogpd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fs9ugozw1c5kvUCIqsvCcWemveC1sf1J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NT8OM95pl0Jx8yQ64hFxmReoXGuhAEeW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iJI9GReRfI7hh21r5IzNiPRGAwsaTEq4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tJNEz0EhemzaODezwv68GjVKxVwF2XHD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CfB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "doDcIJ4JyUsYbIdMITVPy357"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yuRfgYSExXdGEzX5nOmQsyIvKxDppAIu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/II;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/II;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 23977
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 23978
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    .line 23979
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    .line 23980
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    .line 23981
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 23982
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    .line 23983
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    .line 23984
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A03:[Ljava/lang/String;

    const-string v1, "DmEtIuuy4dqW5fO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x43t
        0xct
        0x14t
        0xdt
        0x6t
        0x11t
        0x5et
        0x58t
        0x5at
        0x41t
        0x5et
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 23985
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 23986
    return v3

    .line 23987
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 23988
    .end local v2
    :cond_1
    return v2

    .line 23989
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;

    .line 23990
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 23991
    const/16 v0, 0x11

    .line 23992
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 23993
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 23994
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 23995
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 23996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 23997
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23998
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;->A01:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 23999
    return-void
.end method
