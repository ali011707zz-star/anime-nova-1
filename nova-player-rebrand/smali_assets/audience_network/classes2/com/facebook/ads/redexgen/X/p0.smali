.class public Lcom/facebook/ads/redexgen/X/p0;
.super Lcom/facebook/ads/redexgen/X/5u;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/63;,
        Lcom/facebook/ads/androidx/media3/decoder/DecoderInputBuffer$BufferReplacementMode;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Keep track of the non-adjusted timestamp"
    .end annotation
.end field

.field public A01:J

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/5z;

.field public final A06:I

.field public final A07:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3340
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2IbL45Ge7WjUS4gtY5SZcZFVqhRirSld"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R240sFcJ0pzYp66WnJ67Fmsy55XV16O5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VUex99WpL2gwlvzu7iug41y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dnMRZWWEUUUJRwdjb1Aq9wn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gu9WZr0VQrtP2JtflAIpRNlkyE1rsTK5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oyOSTbE54dsFuYwfZhcf3OLki3UIwS0J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/p0;->A05()V

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/p0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A03(Ljava/lang/String;)V

    .line 3341
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 103823
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/p0;-><init>(II)V

    .line 103824
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 103825
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5u;-><init>()V

    .line 103826
    new-instance v0, Lcom/facebook/ads/redexgen/X/5z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5z;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A05:Lcom/facebook/ads/redexgen/X/5z;

    .line 103827
    iput p1, p0, Lcom/facebook/ads/redexgen/X/p0;->A06:I

    .line 103828
    iput p2, p0, Lcom/facebook/ads/redexgen/X/p0;->A07:I

    .line 103829
    return-void
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/p0;
    .locals 2

    .line 103830
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/p0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/p0;-><init>(I)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/p0;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const-string v1, "TMnkcu7Wbc02Avo68LXTGXdgCiHDzCoJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "32B0HSZuRu1EwrCyQNusNP3p455vxDa3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 103831
    iget v1, p0, Lcom/facebook/ads/redexgen/X/p0;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 103832
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 103833
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/p0;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const-string v1, "Xhbg2bf7wDHhg84e2eXJTK6LXJwKWSr7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Xvqd08ordVMo4CmGxDs2k5pAuekgSSjU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 103834
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 103835
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 103836
    .local v0, "currentCapacity":I
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/63;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/63;-><init>(II)V

    throw v0

    .line 103837
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/p0;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x20t
        0x20t
        0x28t
        0x61t
        0x2at
        0x37t
        0x20t
        0x61t
        0x2bt
        0x2at
        0x2ct
        0x20t
        0x2bt
        0x2at
        0x3dt
    .end array-data
.end method


# virtual methods
.method public A0A()V
    .locals 1

    .line 103838
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5u;->A0A()V

    .line 103839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 103840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 103841
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 103842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 103843
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A04:Z

    .line 103844
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 103845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 103846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103847
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 103848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103849
    :cond_1
    return-void
.end method

.method public final A0C(I)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 103850
    iget v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A07:I

    add-int/2addr p1, v0

    .line 103851
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    .line 103852
    .local v0, "currentData":Ljava/nio/ByteBuffer;
    if-nez v4, :cond_0

    .line 103853
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/p0;->A04(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    .line 103854
    return-void

    .line 103855
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 103856
    .local v1, "capacity":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 103857
    .local v2, "position":I
    add-int v0, v1, p1

    .line 103858
    .local v3, "requiredCapacity":I
    if-lt v2, v0, :cond_1

    .line 103859
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    .line 103860
    return-void

    .line 103861
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/p0;->A04(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 103862
    .local v4, "newData":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103863
    if-lez v1, :cond_3

    .line 103864
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 103865
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/p0;->A09:[Ljava/lang/String;

    const-string v1, "fNtiW8alSIVNhAh4w2LF63Pxxp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 103866
    :cond_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    .line 103867
    return-void
.end method

.method public final A0D(I)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "supplementalData"
        }
    .end annotation

    .line 103868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 103869
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    .line 103870
    :goto_0
    return-void

    .line 103871
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/p0;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 103872
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5u;->A09(I)Z

    move-result v0

    return v0
.end method
