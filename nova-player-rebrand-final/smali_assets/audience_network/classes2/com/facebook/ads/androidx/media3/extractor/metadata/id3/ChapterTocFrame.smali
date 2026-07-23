.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:Z

.field public final A03:[Ljava/lang/String;

.field public final A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 553
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "41NC5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "e5KnEwX30al5HhEfsapKBEHe3tkNzIRg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hjAEStB30D9jY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8lRM69KUqjxin5EqodPaG36"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AeGUWh3YVhB7McaTEUzGpI1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ViWv54Lb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YmmztsHdSeGoBz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IB;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 24615
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 24617
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    .line 24618
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    .line 24619
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 24620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 24621
    .local v0, "subFrameCount":I
    new-array v0, v3, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24622
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 24623
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    const-class v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    aput-object v0, v1, v2

    .line 24624
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24625
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 24626
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 3

    .line 24627
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24628
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 24629
    iput-boolean p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    .line 24630
    iput-boolean p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    .line 24631
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 24632
    iput-object p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24633
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A05:[B

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
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x13t
        -0x2t
        -0x7t
        -0x13t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 24634
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 24635
    return v5

    .line 24636
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const-string v1, "Y5qiRripW3638QaK8HmAYdCRHbvBTlaE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_2

    .line 24637
    .end local v2
    :cond_1
    return v4

    .line 24638
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 24639
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const-string v1, "3ADh3DGYZ0lZXq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "8CiyD2GMUXgUE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    if-ne v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 24640
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 24641
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24642
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24643
    :goto_0
    return v5

    .line 24644
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

    .line 24645
    const/16 v0, 0x11

    .line 24646
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    add-int/2addr v1, v0

    .line 24647
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    add-int/2addr v1, v0

    .line 24648
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 24649
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 24650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 24651
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24652
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A02:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 24653
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A01:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 24654
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 24655
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24656
    iget-object v4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    .line 24657
    .local v4, "subFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24658
    .end local v4    # "subFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24659
    :cond_0
    return-void
.end method
