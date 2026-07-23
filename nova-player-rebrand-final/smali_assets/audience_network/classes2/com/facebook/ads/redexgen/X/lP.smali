.class public final Lcom/facebook/ads/redexgen/X/lP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3190
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "H5L2tIFZt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7T8ctTOgfri2uFWYkrl4fLjFw3zYZmyw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rpSuNqLmPSNrp8BaktpsZc4frut4njZi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OS1ujTmztQNXT6hqD6nsoX0kfRSYmmsY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PkY6KfFeVbpCvwlFdEj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TmaVkoyYGnCbszGh0vcMc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "p0AihzwiszaEN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "o1l4pHohEGjnpBhSGl6NtukXiQnI0CCo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lP;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lP;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94076
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;-><init>(I)V

    .line 94077
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
    .end annotation

    .line 94078
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lP;-><init>(ILjava/util/List;)V

    .line 94079
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;)V"
        }
    .end annotation

    .line 94080
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94081
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lP;->A00:I

    .line 94082
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lP;->A01:Ljava/util/List;

    .line 94083
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/L9;
    .locals 2

    .line 94084
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lP;->A03(Lcom/facebook/ads/redexgen/X/LD;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/L9;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LJ;
    .locals 2

    .line 94085
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lP;->A03(Lcom/facebook/ads/redexgen/X/LD;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lP;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/LD;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/LD;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation

    .line 94086
    move-object v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94087
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/lP;->A01:Ljava/util/List;

    return-object v0

    .line 94088
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LD;->A03:[B

    new-instance v7, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    .line 94089
    .local v1, "scratchDescriptorData":Lcom/facebook/ads/redexgen/X/4v;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/lP;->A01:Ljava/util/List;

    .line 94090
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_7

    .line 94091
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 94092
    .local v4, "descriptorTag":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 94093
    .local v5, "descriptorLength":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    add-int/2addr v6, v0

    .line 94094
    .local v6, "nextDescriptorPosition":I
    const/16 v0, 0x86

    if-ne v1, v0, :cond_6

    .line 94095
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94096
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    .line 94097
    .local v7, "numberOfServices":I
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 94098
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v8

    .line 94099
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v9

    .line 94100
    .local v10, "captionTypeByte":I
    and-int/lit16 v0, v9, 0x80

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    const/4 v12, 0x1

    .line 94101
    .local v11, "isDigital":Z
    :goto_2
    if-eqz v12, :cond_4

    .line 94102
    const/16 v2, 0x13

    const/16 v1, 0x13

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lP;->A02(III)Ljava/lang/String;

    move-result-object v10

    .line 94103
    .local p1, "mimeType":Ljava/lang/String;
    and-int/lit8 v9, v9, 0x3f

    .line 94104
    .local p2, "accessibilityChannel":I
    .restart local p2
    :goto_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    int-to-byte v0, v0

    .line 94105
    .local v12, "flags":B
    invoke-virtual {v7, v11}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 94106
    const/4 v1, 0x0

    .line 94107
    .local p4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v12, :cond_3

    .line 94108
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/lP;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v11, 0x0

    goto :goto_4

    .line 94109
    .local p0, "isWideAspectRatio":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lP;->A03:[Ljava/lang/String;

    const-string v1, "Fx9tcNCtSciYr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fWuzF8xs7o61BMX22RC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/46;->A04(Z)Ljava/util/List;

    move-result-object v1

    .line 94110
    .end local p4
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 94111
    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94112
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94113
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2p;->A0Z(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94114
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 94115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 94116
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94117
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "captionTypeByte":I
    .end local v11    # "isDigital":Z
    .end local v12    # "flags":B
    .end local p0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p1    # "mimeType":Ljava/lang/String;
    .end local p2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94118
    .end local p1
    .end local p2
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lP;->A02(III)Ljava/lang/String;

    move-result-object v10

    .line 94119
    .restart local p1    # "mimeType":Ljava/lang/String;
    const/4 v9, 0x1

    goto :goto_3

    .line 94120
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 94121
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94122
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    goto/16 :goto_0

    .line 94123
    :cond_7
    return-object v5
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lP;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0xft
        -0xft
        -0x13t
        -0x16t
        -0x1ct
        -0x1et
        -0xbt
        -0x16t
        -0x10t
        -0x11t
        -0x50t
        -0x1ct
        -0x1at
        -0x1et
        -0x52t
        -0x49t
        -0x4ft
        -0x47t
        -0x28t
        -0x19t
        -0x19t
        -0x1dt
        -0x20t
        -0x26t
        -0x28t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x5at
        -0x26t
        -0x24t
        -0x28t
        -0x5ct
        -0x52t
        -0x59t
        -0x51t
        0xct
        0x1bt
        0x1bt
        0x17t
        0x14t
        0xet
        0xct
        0x1ft
        0x14t
        0x1at
        0x19t
        -0x26t
        0x21t
        0x19t
        0xft
        -0x27t
        0xft
        0x21t
        0xdt
        -0x27t
        0xct
        0x14t
        0x1ft
        -0x3dt
        -0x2et
        -0x2et
        -0x32t
        -0x35t
        -0x3bt
        -0x3dt
        -0x2at
        -0x35t
        -0x2ft
        -0x30t
        -0x6ft
        -0x26t
        -0x71t
        -0x2bt
        -0x3bt
        -0x2at
        -0x39t
        -0x6bt
        -0x69t
    .end array-data
.end method

.method private A05(I)Z
    .locals 1

    .line 94124
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lP;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A5Q()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/LH;",
            ">;"
        }
    .end annotation

    .line 94125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A5V(ILcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 4

    .line 94126
    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 94127
    return-object v1

    .line 94128
    :sswitch_0
    const/16 v2, 0x26

    const/16 v1, 0x17

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lP;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/lF;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lF;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/l9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/l9;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    return-object v0

    .line 94129
    :sswitch_1
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lT;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lT;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94130
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    .line 94131
    :cond_0
    const/16 v2, 0x3d

    const/16 v1, 0x14

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lP;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lF;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/l9;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/l9;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    goto :goto_0

    .line 94132
    :sswitch_3
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94133
    return-object v1

    .line 94134
    :cond_1
    :sswitch_4
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lO;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lO;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94135
    :sswitch_5
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lW;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lW;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94136
    :sswitch_6
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/LD;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lN;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lN;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94137
    :sswitch_7
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/lP;->A00(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/lJ;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;-><init>(Lcom/facebook/ads/redexgen/X/L9;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94138
    :sswitch_8
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-object v1

    .line 94139
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/lP;->A00(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v3

    .line 94140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v2

    .line 94141
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lK;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/lK;-><init>(Lcom/facebook/ads/redexgen/X/L9;ZZ)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    goto :goto_1

    .line 94142
    :sswitch_9
    new-instance v1, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lI;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94143
    :sswitch_a
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    return-object v1

    .line 94144
    :cond_3
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lH;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    goto :goto_2

    .line 94145
    :sswitch_b
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/lP;->A01(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/lL;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lL;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94146
    :sswitch_c
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lP;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    return-object v1

    .line 94147
    :cond_4
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lQ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lQ;-><init>(ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    goto :goto_3

    .line 94148
    :sswitch_d
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/LD;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lG;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lG;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    .line 94149
    :sswitch_e
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/lP;->A01(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/lM;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/lM;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x4 -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x15 -> :sswitch_9
        0x1b -> :sswitch_8
        0x24 -> :sswitch_7
        0x59 -> :sswitch_6
        0x80 -> :sswitch_e
        0x81 -> :sswitch_5
        0x82 -> :sswitch_3
        0x86 -> :sswitch_2
        0x87 -> :sswitch_5
        0x8a -> :sswitch_4
        0xac -> :sswitch_1
        0x101 -> :sswitch_0
    .end sparse-switch
.end method
