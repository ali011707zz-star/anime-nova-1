.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A06:[B

.field public static final A07:Lcom/facebook/ads/redexgen/X/qI;

.field public static final A08:Lcom/facebook/ads/redexgen/X/qI;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3250
    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 3251
    const/16 v2, 0x27

    const/16 v1, 0xf

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 3252
    new-instance v3, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 3253
    const/16 v2, 0x36

    const/16 v1, 0x14

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A08:Lcom/facebook/ads/redexgen/X/qI;

    .line 3254
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hz;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 98832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98833
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    .line 98834
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    .line 98835
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    .line 98836
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    .line 98837
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    .line 98838
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0

    .line 98839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98840
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    .line 98841
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    .line 98842
    iput-wide p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    .line 98843
    iput-wide p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    .line 98844
    iput-object p7, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    .line 98845
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x79

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

    const/16 v0, 0xac

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x2ft
        0x6bt
        0x7at
        0x7dt
        0x6et
        0x7bt
        0x66t
        0x60t
        0x61t
        0x42t
        0x7ct
        0x32t
        0x6t
        0xat
        0x43t
        0x4et
        0x17t
        0x7t
        0xbt
        0x5dt
        0x4at
        0x47t
        0x5et
        0x4et
        0x16t
        0x77t
        0x7ft
        0x61t
        0x75t
        0x8t
        0x12t
        0x41t
        0x51t
        0x5at
        0x57t
        0x5ft
        0x57t
        0xft
        0x38t
        0x29t
        0x29t
        0x35t
        0x30t
        0x3at
        0x38t
        0x2dt
        0x30t
        0x36t
        0x37t
        0x76t
        0x30t
        0x3dt
        0x6at
        0x65t
        0x74t
        0x74t
        0x68t
        0x6dt
        0x67t
        0x65t
        0x70t
        0x6dt
        0x6bt
        0x6at
        0x2bt
        0x7ct
        0x29t
        0x77t
        0x67t
        0x70t
        0x61t
        0x37t
        0x31t
        0x23t
        0x3ft
        0x3ft
        0x3bt
        0x38t
        0x71t
        0x64t
        0x64t
        0x2at
        0x24t
        0x26t
        0x2et
        0x2ft
        0x22t
        0x2at
        0x65t
        0x24t
        0x39t
        0x2ct
        0x64t
        0x2et
        0x26t
        0x38t
        0x2ct
        0x64t
        0x2t
        0xft
        0x78t
        0x63t
        0x7ft
        0x7ft
        0x7bt
        0x78t
        0x31t
        0x24t
        0x24t
        0x6ft
        0x6et
        0x7dt
        0x6et
        0x67t
        0x64t
        0x7bt
        0x6et
        0x79t
        0x25t
        0x6at
        0x7bt
        0x7bt
        0x67t
        0x6et
        0x25t
        0x68t
        0x64t
        0x66t
        0x24t
        0x78t
        0x7ft
        0x79t
        0x6et
        0x6at
        0x66t
        0x62t
        0x65t
        0x6ct
        0x24t
        0x6et
        0x66t
        0x78t
        0x6ct
        0x26t
        0x62t
        0x6ft
        0x38t
        0x4bt
        0x4ct
        0x50t
        0x4t
        0x4dt
        0x5dt
        0x4at
        0x5bt
        0x4t
        0x4dt
        0x5dt
        0x4at
        0x5bt
        0xdt
        0xbt
        0x4t
        0xct
        0xet
        0xft
        0xat
        0x4t
        0x5ct
        0x57t
        0x50t
    .end array-data
.end method


# virtual methods
.method public final A9a()[B
    .locals 1

    .line 98846
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A9b()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9b()Lcom/facebook/ads/redexgen/X/qI;
    .locals 4

    .line 98847
    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98848
    const/4 v0, 0x0

    return-object v0

    .line 98849
    :sswitch_0
    const/16 v2, 0x66

    const/16 v1, 0x2e

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x4a

    const/16 v1, 0x1c

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x94

    const/16 v1, 0x18

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 98850
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A08:Lcom/facebook/ads/redexgen/X/qI;

    return-object v0

    .line 98851
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A07:Lcom/facebook/ads/redexgen/X/qI;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x578730ab -> :sswitch_2
        -0x2f712a89 -> :sswitch_1
        0x4db418c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .line 98852
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 98853
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 98854
    return v5

    .line 98855
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98856
    .end local v2
    :cond_1
    return v2

    .line 98857
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;

    .line 98858
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    .line 98859
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    .line 98860
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    .line 98861
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98862
    :goto_0
    return v5

    .line 98863
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 98864
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00:I

    if-nez v0, :cond_1

    .line 98865
    const/16 v0, 0x11

    .line 98866
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 98867
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 98868
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 98869
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 98870
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 98871
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00:I

    .line 98872
    .end local v1    # "result":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00:I

    return v0

    .line 98873
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v1, 0xd

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x8

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98875
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A03:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98876
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A04:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98877
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98878
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98879
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/emsg/EventMessage;->A05:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98880
    return-void
.end method
