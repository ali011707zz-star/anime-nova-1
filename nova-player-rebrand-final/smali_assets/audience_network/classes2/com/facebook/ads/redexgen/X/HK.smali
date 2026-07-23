.class public final Lcom/facebook/ads/redexgen/X/HK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Ljava/util/regex/Pattern;


# instance fields
.field public A00:I

.field public A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 779
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HK;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HK;->A03:Ljava/util/regex/Pattern;

    .line 780
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38780
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    .line 38781
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 38782
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

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

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x3et
        0x45t
        0x2et
        0x33t
        0x27t
        0x7ft
        0x33t
        0x78t
        0x5ft
        0x33t
        0x58t
        0x43t
        0x65t
        0x26t
        0x63t
        0x3et
        0x36t
        0x45t
        0x2et
        0x33t
        0x27t
        0x7ft
        0x33t
        0x78t
        0x5ft
        0x33t
        0x58t
        0x43t
        0x65t
        0x26t
        0x63t
        0x37t
        0x3et
        0x36t
        0x45t
        0x2et
        0x33t
        0x27t
        0x7ft
        0x33t
        0x78t
        0x5ft
        0x33t
        0x58t
        0x43t
        0x65t
        0x26t
        0x63t
        0x37t
        0x28t
        0x24t
        0x26t
        0x65t
        0x2at
        0x3bt
        0x3bt
        0x27t
        0x2et
        0x65t
        0x22t
        0x1ft
        0x3et
        0x25t
        0x2et
        0x38t
        0x56t
        0x6bt
        0x4at
        0x51t
        0x6ct
        0x72t
        0x6ft
        0x7dt
    .end array-data
.end method

.method private A02(Ljava/lang/String;)Z
    .locals 5

    .line 38783
    sget-object v0, Lcom/facebook/ads/redexgen/X/HK;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 38784
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38785
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 38786
    .local v2, "encoderDelay":I
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 38787
    .local v3, "encoderPadding":I
    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 38788
    .restart local v2    # "encoderDelay":I
    .restart local v3    # "encoderPadding":I
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    .line 38789
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 38790
    return v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38791
    :catch_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A03()Z
    .locals 2

    .line 38792
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(I)Z
    .locals 2

    .line 38793
    shr-int/lit8 v1, p1, 0xc

    .line 38794
    .local v0, "encoderDelay":I
    and-int/lit16 v0, p1, 0xfff

    .line 38795
    .local v1, "encoderPadding":I
    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 38796
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    .line 38797
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 38798
    const/4 v0, 0x1

    return v0

    .line 38799
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A05(Lcom/facebook/ads/androidx/media3/common/Metadata;)Z
    .locals 8

    .line 38800
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 38801
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v5

    .line 38802
    .local v1, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    instance-of v7, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;

    const/16 v2, 0x42

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A00(III)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    if-eqz v7, :cond_0

    .line 38803
    check-cast v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;

    .line 38804
    .local v2, "commentFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;
    iget-object v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    .line 38805
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38806
    return v4

    .line 38807
    .end local v2    # "commentFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;
    :cond_0
    instance-of v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;

    if-eqz v0, :cond_1

    .line 38808
    check-cast v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;

    .line 38809
    .local v2, "internalFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;
    const/16 v2, 0x32

    const/16 v1, 0x10

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    .line 38810
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    .line 38811
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38812
    return v4

    .line 38813
    .end local v1    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38814
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
