.class public final Lcom/facebook/ads/redexgen/X/KI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TextEmphasis$Position;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TextEmphasis$MarkShape;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 890
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Q0QXG7UXIASt6u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y6SVRxSvJsGy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wBfOUWbjS5LHnahIVXYrmUjJKL6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ipHEpqQaRUeTeVi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GLcEQz2dRHwid1MPYevx9K5BLffqxfdD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wfr02cBS22Xusns9ZD5ofvGEf4mY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O3Zlf7dyK7vHpITYdVNftiUJDGPL2j8I"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KI;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KI;->A03()V

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A09:Ljava/util/regex/Pattern;

    .line 891
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x21

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/BO;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A08:Lcom/facebook/ads/redexgen/X/BO;

    .line 892
    const/16 v2, 0x18

    const/4 v1, 0x3

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x30

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x12

    const/4 v1, 0x6

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/BO;->A06(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A06:Lcom/facebook/ads/redexgen/X/BO;

    .line 893
    const/16 v2, 0x1b

    const/4 v1, 0x6

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x25

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/BO;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A05:Lcom/facebook/ads/redexgen/X/BO;

    .line 894
    const/4 v2, 0x3

    const/4 v1, 0x5

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x29

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/BO;->A06(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A07:Lcom/facebook/ads/redexgen/X/BO;

    .line 895
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 46652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46653
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KI;->A01:I

    .line 46654
    iput p2, p0, Lcom/facebook/ads/redexgen/X/KI;->A00:I

    .line 46655
    iput p3, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:I

    .line 46656
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/BO;)Lcom/facebook/ads/redexgen/X/KI;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/KI;"
        }
    .end annotation

    .line 46657
    .local p4, "nodes":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A07:Lcom/facebook/ads/redexgen/X/BO;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/qj;->A02(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Aw;

    move-result-object v3

    .line 46658
    .local v0, "matchingPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v2, 0x29

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/p2;->A00(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 46659
    const/4 v3, 0x1

    .line 46660
    .local v1, "position":I
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A08:Lcom/facebook/ads/redexgen/X/BO;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/qj;->A02(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Aw;

    move-result-object v1

    .line 46661
    .local v2, "matchingSingleStyles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Aw;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46662
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Aw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 46663
    const/4 v1, -0x1

    .line 46664
    .local v3, "markShape":I
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/KI;

    invoke-direct {v0, v1, v7, v3}, Lcom/facebook/ads/redexgen/X/KI;-><init>(III)V

    return-object v0

    .line 46665
    .end local v3    # "markShape":I
    :pswitch_0
    const/4 v1, 0x0

    .line 46666
    .restart local v3    # "markShape":I
    goto :goto_3

    .line 46667
    :sswitch_0
    const/16 v2, 0x21

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 46668
    .end local v1    # "position":I
    :pswitch_1
    const/4 v3, -0x2

    .line 46669
    .restart local v1    # "position":I
    goto :goto_1

    .line 46670
    .end local v1    # "position":I
    :pswitch_2
    const/4 v3, 0x2

    .line 46671
    .restart local v1    # "position":I
    goto :goto_1

    .line 46672
    :sswitch_2
    const/4 v2, 0x3

    const/4 v1, 0x5

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 46673
    .end local v3    # "markShape":I
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A05:Lcom/facebook/ads/redexgen/X/BO;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/qj;->A02(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Aw;

    move-result-object v4

    .line 46674
    .local v3, "matchingFills":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A06:Lcom/facebook/ads/redexgen/X/BO;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/qj;->A02(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Aw;

    move-result-object v5

    .line 46675
    .local v8, "matchingShapes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Aw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Aw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46676
    new-instance v0, Lcom/facebook/ads/redexgen/X/KI;

    invoke-direct {v0, v6, v7, v3}, Lcom/facebook/ads/redexgen/X/KI;-><init>(III)V

    return-object v0

    .line 46677
    :cond_3
    const/16 v2, 0x1b

    const/4 v1, 0x6

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/ads/redexgen/X/p2;->A00(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :cond_4
    const/4 v0, -0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 46678
    const/4 v4, 0x1

    .line 46679
    .local p0, "markFill":I
    :goto_5
    const/16 v2, 0x12

    const/4 v1, 0x6

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/p2;->A00(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    :cond_5
    const/4 v8, -0x1

    :goto_6
    packed-switch v8, :pswitch_data_3

    .line 46680
    const/4 v1, 0x1

    .line 46681
    .local v4, "markShape":I
    :goto_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/KI;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/KI;-><init>(III)V

    return-object v0

    .line 46682
    .end local v4    # "markShape":I
    :pswitch_3
    const/4 v1, 0x3

    .line 46683
    .restart local v4    # "markShape":I
    goto :goto_7

    .line 46684
    .end local v4    # "markShape":I
    :pswitch_4
    const/4 v1, 0x2

    .line 46685
    .restart local v4    # "markShape":I
    goto :goto_7

    .line 46686
    :sswitch_5
    const/16 v2, 0x18

    const/4 v1, 0x3

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    goto :goto_6

    :sswitch_6
    const/16 v6, 0x30

    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A04:[Ljava/lang/String;

    const-string v1, "eITMiFQvxpZW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    goto :goto_6

    :sswitch_7
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    .line 46687
    .end local p0    # "markFill":I
    :pswitch_5
    const/4 v4, 0x2

    .line 46688
    .restart local p0    # "markFill":I
    goto :goto_5

    .line 46689
    :sswitch_8
    const/16 v2, 0x25

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :sswitch_9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5305c081 -> :sswitch_4
        -0x41ecca5b -> :sswitch_3
        0x58705dc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2dddaf -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4bf7529e -> :sswitch_9
        0x34264a -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x51134330 -> :sswitch_7
        -0x35fdaa48 -> :sswitch_6
        0x18549 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/KI;
    .locals 3

    .line 46690
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 46691
    return-object v2

    .line 46692
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46693
    .local v1, "parsingValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46694
    return-object v2

    .line 46695
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KI;->A09:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BO;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A04:[Ljava/lang/String;

    const-string v1, "GSUJCg4XeXOvDUAO5uYW1LZcLl5OFxUg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KI;->A00(Lcom/facebook/ads/redexgen/X/BO;)Lcom/facebook/ads/redexgen/X/KI;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KI;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x17t
        0x4ft
        0x62t
        0x65t
        0x77t
        0x66t
        0x71t
        0x9t
        0x1dt
        0x1ct
        0x7t
        0x41t
        0x46t
        0x45t
        0x4ct
        0x51t
        0x46t
        0x42t
        0x48t
        0x53t
        0x42t
        0x4dt
        0x44t
        0x55t
        0x5et
        0x45t
        0x1bt
        0x14t
        0x11t
        0x11t
        0x18t
        0x19t
        0x5ft
        0x5et
        0x5ft
        0x54t
        0x5et
        0x41t
        0x54t
        0x5ft
        0x48t
        0x52t
        0x53t
        0x54t
        0x4et
        0x43t
        0x42t
        0x79t
        0x6ft
        0x79t
        0x6bt
        0x67t
        0x6ft
    .end array-data
.end method
