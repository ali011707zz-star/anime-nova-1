.class public final Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H5;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/H5;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/H5;

.field public static final A0H:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList with List"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3269
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XjRCK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YKKzt2Kz2K7V0l18n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uXpf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oBPf3SXxcwKIIjUAiSrSO2O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bGsaI0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ItuqzfwzHHPicVJR9bxtDiYARBCa2uxZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TYxjAZ909gRPDezWj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NTeqQWiGfYp1zE0qSPlL6iBK546ff9Um"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A05()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    .line 3270
    new-instance v1, Lcom/facebook/ads/redexgen/X/mw;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/mw;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/H5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/H5;-><init>(Lcom/facebook/ads/redexgen/X/H4;)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0F:Lcom/facebook/ads/redexgen/X/H5;

    .line 3271
    new-instance v1, Lcom/facebook/ads/redexgen/X/mv;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/mv;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/H5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/H5;-><init>(Lcom/facebook/ads/redexgen/X/H4;)V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0G:Lcom/facebook/ads/redexgen/X/H5;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
    .end annotation

    .line 99603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99604
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A08:I

    .line 99605
    const v0, 0x1b8a0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A09:I

    .line 99606
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0A:Ljava/util/List;

    .line 99607
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 99608
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99609
    const/16 v2, 0x7c

    const/16 v1, 0x3f

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 99610
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v3, [Ljava/lang/Object;

    .line 99611
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99612
    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99613
    .local v0, "isFlacNativeLibraryAvailable":Z
    if-eqz v0, :cond_0

    .line 99614
    const/16 v2, 0x3b

    const/16 v1, 0x41

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/H9;

    .line 99615
    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v3

    .line 99616
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 99617
    return-object v0

    .line 99618
    :cond_0
    return-object v1
.end method

.method public static A02()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 99619
    const/4 v2, 0x0

    const/16 v1, 0x3b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/H9;

    .line 99620
    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 99621
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 99622
    return-object v0
.end method

.method public static synthetic A03()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A01()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A04()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xc6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x56t
        0x54t
        0x15t
        0x4dt
        0x48t
        0x4at
        0x4ct
        0x49t
        0x56t
        0x56t
        0x52t
        0x15t
        0x48t
        0x4bt
        0x5at
        0x15t
        0x48t
        0x55t
        0x4bt
        0x59t
        0x56t
        0x50t
        0x4bt
        0x5ft
        0x15t
        0x54t
        0x4ct
        0x4bt
        0x50t
        0x48t
        0x1at
        0x15t
        0x4bt
        0x4ct
        0x4at
        0x56t
        0x4bt
        0x4ct
        0x59t
        0x15t
        0x54t
        0x50t
        0x4bt
        0x50t
        0x15t
        0x34t
        0x50t
        0x4bt
        0x50t
        0x2ct
        0x5ft
        0x5bt
        0x59t
        0x48t
        0x4at
        0x5bt
        0x56t
        0x59t
        -0x6t
        0x6t
        0x4t
        -0x3bt
        -0x3t
        -0x8t
        -0x6t
        -0x4t
        -0x7t
        0x6t
        0x6t
        0x2t
        -0x3bt
        -0x8t
        -0x5t
        0xat
        -0x3bt
        -0x2t
        0x6t
        0x6t
        -0x2t
        0x3t
        -0x4t
        -0x3bt
        -0x8t
        0x5t
        -0x5t
        0x9t
        0x6t
        0x0t
        -0x5t
        -0x3bt
        -0x4t
        0xft
        0x6t
        0x7t
        0x3t
        -0x8t
        0x10t
        -0x4t
        0x9t
        -0x37t
        -0x3bt
        -0x4t
        0xft
        0xbt
        -0x3bt
        -0x3t
        0x3t
        -0x8t
        -0x6t
        -0x3bt
        -0x23t
        0x3t
        -0x8t
        -0x6t
        -0x24t
        0xft
        0xbt
        0x9t
        -0x8t
        -0x6t
        0xbt
        0x6t
        0x9t
        0x1bt
        0x27t
        0x25t
        -0x1at
        0x1et
        0x19t
        0x1bt
        0x1dt
        0x1at
        0x27t
        0x27t
        0x23t
        -0x1at
        0x19t
        0x1ct
        0x2bt
        -0x1at
        0x1ft
        0x27t
        0x27t
        0x1ft
        0x24t
        0x1dt
        -0x1at
        0x19t
        0x26t
        0x1ct
        0x2at
        0x27t
        0x21t
        0x1ct
        -0x1at
        0x1dt
        0x30t
        0x27t
        0x28t
        0x24t
        0x19t
        0x31t
        0x1dt
        0x2at
        -0x16t
        -0x1at
        0x1dt
        0x30t
        0x2ct
        -0x1at
        0x1et
        0x24t
        0x19t
        0x1bt
        -0x1at
        -0x2t
        0x24t
        0x19t
        0x1bt
        0x4t
        0x21t
        0x1at
        0x2at
        0x19t
        0x2at
        0x31t
        0x52t
        0x5ct
        0x2at
        0x5ft
        0x4at
        0x52t
        0x55t
        0x4at
        0x4bt
        0x55t
        0x4et
    .end array-data
.end method

.method private A06(ILjava/util/List;)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Removed AVI and JPEG extractors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;)V"
        }
    .end annotation

    .line 99623
    .local p2, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 99624
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99625
    :pswitch_1
    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0G:Lcom/facebook/ads/redexgen/X/H5;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A03([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    .line 99626
    .local v0, "midiExtractor":Lcom/facebook/ads/redexgen/X/H9;
    if-eqz v0, :cond_0

    .line 99627
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99628
    .end local v0    # "midiExtractor":Lcom/facebook/ads/redexgen/X/H9;
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/kz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kz;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99629
    goto :goto_0

    .line 99630
    :pswitch_3
    iget v4, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A08:I

    const-wide/16 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0A:Ljava/util/List;

    new-instance v2, Lcom/facebook/ads/redexgen/X/lP;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lP;-><init>(ILjava/util/List;)V

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A09:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/l3;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/l3;-><init>(ILcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/LE;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99631
    goto :goto_0

    .line 99632
    :pswitch_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/lA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lA;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99633
    goto :goto_0

    .line 99634
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/lw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lw;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99635
    goto :goto_0

    .line 99636
    :pswitch_6
    new-instance v1, Lcom/facebook/ads/redexgen/X/m2;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/m2;-><init>()V

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/m2;->A01(I)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99637
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/m3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/m3;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99638
    goto :goto_0

    .line 99639
    :pswitch_7
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A05:I

    .line 99640
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_2

    .line 99641
    :goto_1
    or-int/2addr v4, v1

    .line 99642
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    if-eqz v0, :cond_1

    .line 99643
    :goto_2
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/mG;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/mG;-><init>(I)V

    .line 99644
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99645
    goto :goto_0

    .line 99646
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 99647
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 99648
    :pswitch_8
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A04:I

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99649
    goto/16 :goto_0

    .line 99650
    :pswitch_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/md;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/md;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99651
    goto/16 :goto_0

    .line 99652
    :pswitch_a
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0F:Lcom/facebook/ads/redexgen/X/H5;

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/H5;->A03([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    .line 99653
    .local v0, "flacExtractor":Lcom/facebook/ads/redexgen/X/H9;
    if-eqz v0, :cond_3

    .line 99654
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99655
    :cond_3
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/mg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mg;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99656
    goto/16 :goto_0

    .line 99657
    .end local v0    # "flacExtractor":Lcom/facebook/ads/redexgen/X/H9;
    :pswitch_b
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A01:I

    .line 99658
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_5

    .line 99659
    :goto_3
    or-int/2addr v4, v1

    .line 99660
    iget-boolean v5, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const-string v1, "88SSgZrekVuE3ZpEu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "yFmqseBd895DxKzOE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 99661
    :goto_4
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/ml;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/ml;-><init>(I)V

    .line 99662
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99663
    goto/16 :goto_0

    .line 99664
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 99665
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 99666
    :pswitch_c
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A00:I

    .line 99667
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0C:Z

    if-eqz v0, :cond_7

    .line 99668
    :goto_5
    or-int/2addr v4, v1

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .line 99669
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0E:[Ljava/lang/String;

    const-string v1, "0JYW4ys9S4cBRo9bfKNpoispKPkvAlfn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ESM27VzyBHwJIaBfhIrCniRSUGwbmbgc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0B:Z

    if-eqz v0, :cond_6

    .line 99670
    :goto_6
    or-int/2addr v3, v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/lR;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/lR;-><init>(I)V

    .line 99671
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99672
    goto/16 :goto_0

    .line 99673
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 99674
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 99675
    :pswitch_d
    new-instance v0, Lcom/facebook/ads/redexgen/X/lU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lU;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99676
    goto/16 :goto_0

    .line 99677
    :pswitch_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/lX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lX;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99678
    goto/16 :goto_0

    .line 99679
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized A5N()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 2

    monitor-enter p0

    .line 99680
    :try_start_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A5O(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5O(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/H9;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/facebook/ads/redexgen/X/H9;"
        }
    .end annotation

    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 99681
    :try_start_0
    sget-object v0, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    array-length v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99682
    .local v0, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/2k;->A02(Ljava/util/Map;)I

    move-result v6

    .line 99683
    .local v1, "responseHeadersInferredFileType":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    .line 99684
    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 99685
    .end local p0    # "this":Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2k;->A00(Landroid/net/Uri;)I

    move-result v5

    .line 99686
    .local v3, "uriInferredFileType":I
    if-eq v5, v1, :cond_1

    if-eq v5, v6, :cond_1

    .line 99687
    invoke-direct {p0, v5, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 99688
    :cond_1
    sget-object v4, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A0H:[I

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget v1, v4, v2

    .line 99689
    .local v6, "fileType":I
    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    .line 99690
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;->A06(ILjava/util/List;)V

    .line 99691
    .end local v6    # "fileType":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99692
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/ads/redexgen/X/H9;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/H9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99693
    .end local v0    # "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    .end local v1    # "responseHeadersInferredFileType":I
    .end local v3    # "uriInferredFileType":I
    .end local p1    # null:Landroid/net/Uri;
    .end local p2    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
