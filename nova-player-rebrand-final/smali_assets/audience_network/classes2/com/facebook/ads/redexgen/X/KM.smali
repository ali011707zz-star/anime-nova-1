.class public final Lcom/facebook/ads/redexgen/X/KM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/KM;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/KM;

.field public final A04:Lcom/facebook/ads/redexgen/X/KT;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Z

.field public final A0A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 896
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GeuvjWmU0qMIecUET3rH1sSpSiCCpV8d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VWuGBdV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "r1UddSi70yifv9lgmWBFhDm81yvqf6sz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XTFXH6doUzlPXpn0lOcCpEMXSJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gs3RvICYSdgYtTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LUo1PxiU5xdJ1hZxjmijWXp8gfNxa8cO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PBxwyL5R7nlTE13P8yY94OOBBe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AYtcaoWRC0gFrEQm0SEPSBapgfKgyhaj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KM;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KM;)V
    .locals 1

    .line 46709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46710
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    .line 46711
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KM;->A08:Ljava/lang/String;

    .line 46712
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/KM;->A05:Ljava/lang/String;

    .line 46713
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    .line 46714
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/KM;->A0C:[Ljava/lang/String;

    .line 46715
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A09:Z

    .line 46716
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    .line 46717
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    .line 46718
    invoke-static {p9}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    .line 46719
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/KM;

    .line 46720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Ljava/util/HashMap;

    .line 46721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Ljava/util/HashMap;

    .line 46722
    return-void

    .line 46723
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3o;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 46724
    .local p1, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46725
    new-instance v1, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    .line 46726
    .local v0, "regionOutput":Lcom/facebook/ads/redexgen/X/3o;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    .line 46727
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46728
    .end local v0    # "regionOutput":Lcom/facebook/ads/redexgen/X/3o;
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 46729
    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/KM;
    .locals 14

    .line 46730
    new-instance v3, Lcom/facebook/ads/redexgen/X/KM;

    .line 46731
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KO;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    const/4 p0, 0x0

    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/KM;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KM;)V

    .line 46732
    return-object v3
.end method

.method public static A02(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KM;)Lcom/facebook/ads/redexgen/X/KM;
    .locals 12

    .line 46733
    new-instance v0, Lcom/facebook/ads/redexgen/X/KM;

    const/4 v2, 0x0

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-wide v5, p3

    move-object/from16 v8, p6

    move-wide v3, p1

    move-object/from16 v7, p5

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/KM;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KM;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KM;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "X7T2v9MzXPQN9wm4iApZn5l"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0xet
        0x26t
        0x2bt
        0x34t
        0x5ct
        0x54t
        0x45t
        0x50t
        0x55t
        0x50t
        0x45t
        0x50t
        0x5ft
    .end array-data
.end method

.method private A05(JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 46734
    .local p4, "regionImageList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46735
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KM;->A0B(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A05:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46736
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A05:Ljava/lang/String;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46737
    return-void

    .line 46738
    :cond_0
    iget-object p3, p0, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    goto :goto_0

    .line 46739
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KM;->A0C()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 46740
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KM;->A05(JLjava/lang/String;Ljava/util/List;)V

    .line 46741
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46742
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KN;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3o;",
            ">;)V"
        }
    .end annotation

    .line 46743
    .local p0, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p1, "regionMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p3, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object v2, v2

    move-wide/from16 v14, p1

    invoke-direct {v2, v14, v15}, Lcom/facebook/ads/redexgen/X/KM;->A0B(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46744
    return-void

    .line 46745
    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46746
    .local v14, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KM;->A0A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move-object/from16 v5, p6

    move-object/from16 v4, p4

    move-object/from16 v9, p3

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 46747
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46748
    .local v9, "regionId":Ljava/lang/String;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KM;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KM;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 46749
    .local v10, "start":I
    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 46750
    .local v11, "end":I
    if-eq v11, v12, :cond_1

    .line 46751
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/3o;

    .line 46752
    .local v12, "regionOutput":Lcom/facebook/ads/redexgen/X/3o;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KN;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/KN;->A08:I

    .line 46753
    .local v5, "verticalType":I
    move-object v8, v2

    .end local v5    # "verticalType":I
    .local v16, "verticalType":I
    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/KM;->A09(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/3o;III)V

    goto :goto_1

    .line 46754
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 46755
    :cond_3
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    goto :goto_0

    .line 46756
    :cond_4
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KM;->A0C()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 46757
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v13

    .line 46758
    move-object/from16 v16, v9

    move-object/from16 v19, v5

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/KM;->A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 46759
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 46760
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private A07(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3o;",
            ">;)V"
        }
    .end annotation

    .line 46761
    .local p3, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    move-object v9, p4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46763
    const/4 v2, 0x5

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46764
    return-void

    .line 46765
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46766
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A09:Z

    move-object/from16 v10, p5

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 46767
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/KM;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46768
    .end local v7
    :cond_1
    :goto_1
    return-void

    .line 46769
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 46770
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/KM;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "DvePMvlINfUrHf8oCshP3y2zgWJgm1y9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "g33vhajkRJhloC0qEKLO4Zm1g9rQEkrd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 46771
    :cond_3
    move-wide v6, p1

    invoke-direct {p0, v6, v7}, Lcom/facebook/ads/redexgen/X/KM;->A0B(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46772
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46773
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Ljava/util/HashMap;

    .line 46774
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46775
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46776
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    goto :goto_2

    .line 46777
    :cond_4
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 46778
    .local v7, "isPNode":Z
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KM;->A0C()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 46779
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/KM;->A0D(I)Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    if-nez p3, :cond_5

    :goto_4
    if-eqz v4, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 46780
    :goto_5
    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/KM;->A07(JZLjava/lang/String;Ljava/util/Map;)V

    .line 46781
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 46782
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "BxcnzhC5XqKLAs"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez p3, :cond_5

    goto :goto_4

    .line 46783
    .end local v8    # "i":I
    :cond_8
    if-eqz v4, :cond_9

    .line 46784
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/KM;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KO;->A07(Landroid/text/SpannableStringBuilder;)V

    .line 46785
    :cond_9
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46786
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Ljava/util/HashMap;

    .line 46787
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3o;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "NvsWEQBQe6VAGnQhJA54b4pVjA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "RDTsakCOEzYFACc9hnpkZM81VS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46788
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46789
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    goto :goto_6

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "CHxe0vxZr8lPRHvaCG5LBeS6gh9aVBuv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HeV50lBh9JGf3GNHX7ZdMbjxgTQZONIp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46790
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46791
    .end local v2
    goto :goto_6

    .line 46792
    :cond_b
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Landroid/text/SpannableStringBuilder;)V
    .locals 9

    .line 46793
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v0, Lcom/facebook/ads/redexgen/X/KF;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/facebook/ads/redexgen/X/KF;

    .line 46794
    .local v0, "deleteTextSpans":[Lcom/facebook/ads/redexgen/X/KF;
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v8, v6

    .line 46795
    .local v4, "deleteTextSpan":Lcom/facebook/ads/redexgen/X/KF;
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v3, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46796
    .end local v4    # "deleteTextSpan":Lcom/facebook/ads/redexgen/X/KF;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 46797
    :cond_0
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ge v5, v0, :cond_5

    .line 46798
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 46799
    add-int/lit8 v6, v5, 0x1

    .line 46800
    .local v3, "j":I
    :goto_2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "TbkeKkbvotKRDkL3aJkR6CKPV2CRZepO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "HOyzJt7YVHsiDEtesdPQS8q1On7uoMtF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_3

    .line 46801
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 46802
    :cond_3
    add-int/lit8 v3, v5, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "2IIAODStabB9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v6, v3

    .line 46803
    .local v4, "spacesToDelete":I
    if-lez v6, :cond_4

    .line 46804
    add-int v0, v5, v6

    invoke-virtual {p0, v5, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46805
    .end local v3    # "j":I
    .end local v4    # "spacesToDelete":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46806
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 46807
    invoke-virtual {p0, v4, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46808
    :cond_6
    const/4 v5, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/16 v4, 0xa

    if-ge v5, v0, :cond_8

    .line 46809
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_7

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    .line 46810
    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46811
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 46812
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_9

    .line 46813
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46814
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_b

    .line 46815
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_a

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a

    .line 46816
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46817
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 46818
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_c

    .line 46819
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46820
    :cond_c
    return-void
.end method

.method private A09(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/3o;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/3o;",
            "III)V"
        }
    .end annotation

    .line 46821
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0C:[Ljava/lang/String;

    move-object v5, p1

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/KO;->A02(Lcom/facebook/ads/redexgen/X/KT;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v3

    .line 46822
    .local v0, "resolvedStyle":Lcom/facebook/ads/redexgen/X/KT;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 46823
    .local v1, "text":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_0

    .line 46824
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 46825
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    .line 46826
    :cond_0
    if-eqz v3, :cond_3

    .line 46827
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/KM;

    move v6, p5

    move v2, p4

    move v1, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/KO;->A06(Landroid/text/Spannable;IILcom/facebook/ads/redexgen/X/KT;Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;I)V

    .line 46828
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46829
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A04()F

    move-result v1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 46830
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A04()F

    move-result v1

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/3o;->A05(F)Lcom/facebook/ads/redexgen/X/3o;

    .line 46831
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A0C()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46832
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A0C()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;

    .line 46833
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46834
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KT;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;

    .line 46835
    :cond_3
    return-void
.end method

.method private A0A(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 46836
    .local p2, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 46837
    .local v0, "isPNode":Z
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 46838
    .local v1, "isDivNode":Z
    if-nez p2, :cond_0

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A05:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46839
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 46840
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 46841
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 46842
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 46843
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    if-nez v0, :cond_3

    .line 46844
    return-void

    .line 46845
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 46846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/KM;

    if-nez p2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A0A(Ljava/util/TreeSet;Z)V

    .line 46847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46848
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 46849
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private final A0B(J)Z
    .locals 7

    .line 46850
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "RgXDLQ3a08cIBfoVnl1r1eLIg5MUrfoW"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "Ter36j0QNwpTucwH0VATqUwzgkfFz8sj"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_4

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:J

    cmp-long v0, p1, v1

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0C()I
    .locals 4

    .line 46851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KM;->A0E:[Ljava/lang/String;

    const-string v1, "iiL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(I)Lcom/facebook/ads/redexgen/X/KM;
    .locals 1

    .line 46852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KM;

    return-object v0

    .line 46854
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final A0E(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KN;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 46855
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46856
    .local v15, "regionImageOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    move-wide/from16 v4, p1

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/KM;->A05(JLjava/lang/String;Ljava/util/List;)V

    .line 46857
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 46858
    .local v5, "regionTextOutputs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    const/4 v13, 0x0

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    move-object/from16 v10, p0

    move-wide v11, v4

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/KM;->A07(JZLjava/lang/String;Ljava/util/Map;)V

    .line 46859
    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/KM;->A06:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v2, p4

    move-object v7, v2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/KM;->A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 46860
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46861
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 46862
    .local v2, "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46863
    .local v3, "encodedBitmapData":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0

    .line 46864
    :cond_0
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 46865
    .local v7, "bitmapData":[B
    array-length v0, v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46866
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/KN;

    .line 46867
    .local v9, "region":Lcom/facebook/ads/redexgen/X/KN;
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    .line 46868
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3o;->A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A02:F

    .line 46869
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 46870
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A01:F

    .line 46871
    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A05:I

    .line 46872
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A04:F

    .line 46873
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A00:F

    .line 46874
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A03(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KN;->A08:I

    .line 46875
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0B(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 46876
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 46877
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46878
    .end local v2    # "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "encodedBitmapData":Ljava/lang/String;
    .end local v7    # "bitmapData":[B
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "region":Lcom/facebook/ads/redexgen/X/KN;
    goto :goto_0

    .line 46879
    :cond_1
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46880
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/KN;

    .line 46881
    .local v3, "region":Lcom/facebook/ads/redexgen/X/KN;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/3o;

    .line 46882
    .local v6, "regionOutput":Lcom/facebook/ads/redexgen/X/3o;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3o;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KM;->A08(Landroid/text/SpannableStringBuilder;)V

    .line 46883
    iget v1, v4, Lcom/facebook/ads/redexgen/X/KN;->A01:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A06:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    .line 46884
    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A05:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 46885
    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A02:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    .line 46886
    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A04:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    .line 46887
    iget v1, v4, Lcom/facebook/ads/redexgen/X/KN;->A03:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A07:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A08(FI)Lcom/facebook/ads/redexgen/X/3o;

    .line 46888
    iget v0, v4, Lcom/facebook/ads/redexgen/X/KN;->A08:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0B(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 46889
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46890
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    .end local v3    # "region":Lcom/facebook/ads/redexgen/X/KN;
    .end local v6    # "regionOutput":Lcom/facebook/ads/redexgen/X/3o;
    goto :goto_1

    .line 46891
    :cond_2
    return-object v5
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/KM;)V
    .locals 1

    .line 46892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    .line 46894
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46895
    return-void
.end method

.method public final A0G()[J
    .locals 6

    .line 46896
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 46897
    .local v0, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KM;->A0A(Ljava/util/TreeSet;Z)V

    .line 46898
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v5, v0, [J

    .line 46899
    .local v1, "eventTimes":[J
    const/4 v4, 0x0

    .line 46900
    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 46901
    .local v4, "eventTimeUs":J
    add-int/lit8 v0, v4, 0x1

    .end local v2    # "i":I
    .local p0, "i":I
    aput-wide v1, v5, v4

    .line 46902
    .end local v4    # "eventTimeUs":J
    move v4, v0

    goto :goto_0

    .line 46903
    .end local p0    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v5
.end method

.method public final A0H()[Ljava/lang/String;
    .locals 1

    .line 46904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A0C:[Ljava/lang/String;

    return-object v0
.end method
