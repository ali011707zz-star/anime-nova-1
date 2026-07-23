.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 556
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mO2v2I8nIlxBj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qTeiOagQgmfIePZq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "e92"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "94hbfjGXx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JfA8eazzapC4ELerSklcK4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A01:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I9;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24946
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24947
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    .line 24948
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 24949
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24950
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    .line 24951
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 24952
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 24953
    return v5

    .line 24954
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_3

    .line 24955
    .end local v2
    :cond_2
    return v4

    .line 24956
    :cond_3
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;

    .line 24957
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 24958
    const/16 v0, 0x11

    .line 24959
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24960
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 24961
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 24962
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24963
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;->A00:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 24964
    return-void
.end method
