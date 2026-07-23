.class public final Lcom/facebook/ads/redexgen/X/FW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FV;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:I

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[Lcom/facebook/ads/redexgen/X/FV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 734
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yeCTR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vbYpGeRKHwsNyxajpSfuheCIvaYNa3MM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oEndzsHg4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8UJlx4orYPxMpFHWptRgD2Ht"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cT5Bq67DmISXhs3jX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HBUYvmEJLfhzIFqS0furUTPx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yflab"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bdcCFsYTxOJVXsfU13RZ00QELBiL0cIH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/FW;->A08:Ljava/util/Comparator;

    .line 735
    new-instance v0, Lcom/facebook/ads/redexgen/X/FT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FT;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/FW;->A09:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35809
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 35810
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/FV;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:[Lcom/facebook/ads/redexgen/X/FV;

    .line 35811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    .line 35812
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 35813
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FV;Lcom/facebook/ads/redexgen/X/FV;)I
    .locals 1

    .line 35814
    iget p0, p0, Lcom/facebook/ads/redexgen/X/FV;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FV;->A01:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FV;Lcom/facebook/ads/redexgen/X/FV;)I
    .locals 1

    .line 35815
    iget p0, p0, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method private A02()V
    .locals 3

    .line 35816
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 35817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/FW;->A08:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35818
    iput v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 35819
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 2

    .line 35820
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    if-eqz v0, :cond_0

    .line 35821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/FW;->A09:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35822
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 35823
    :cond_0
    return-void
.end method

.method private final A04(IF)V
    .locals 4

    .line 35824
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FW;->A02()V

    .line 35825
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:[Lcom/facebook/ads/redexgen/X/FV;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    aget-object v2, v1, v0

    .line 35826
    .local v0, "newSample":Lcom/facebook/ads/redexgen/X/FV;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/FV;->A01:I

    .line 35827
    iput p1, v2, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    .line 35828
    iput p2, v2, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    .line 35829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35830
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 35831
    :cond_0
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    if-le v1, v0, :cond_3

    .line 35832
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    sub-int/2addr v1, v0

    .line 35833
    .local v1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/FV;

    .line 35834
    .local v2, "oldestSample":Lcom/facebook/ads/redexgen/X/FV;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    if-gt v0, v1, :cond_1

    .line 35835
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 35836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35837
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 35838
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:[Lcom/facebook/ads/redexgen/X/FV;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    aput-object v3, v2, v1

    goto :goto_1

    .line 35839
    :cond_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    .line 35840
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    goto :goto_1

    .line 35841
    :cond_2
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Lcom/facebook/ads/redexgen/X/FU;)V

    goto :goto_0

    .line 35842
    :cond_3
    return-void
.end method


# virtual methods
.method public final A05(F)F
    .locals 7

    .line 35843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FW;->A03()V

    .line 35844
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    int-to-float v4, v0

    mul-float/2addr v4, p1

    .line 35845
    .local v0, "desiredWeight":F
    const/4 v5, 0x0

    .line 35846
    .local v1, "accumulatedWeight":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const-string v1, "tMnKu67VMHjg0RGb1V9fdd44wq1tOS9W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v6, :cond_2

    .line 35847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/FV;

    .line 35848
    .local v3, "currentSample":Lcom/facebook/ads/redexgen/X/FV;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    add-int/2addr v5, v0

    .line 35849
    int-to-float v0, v5

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 35850
    iget v0, v1, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    return v0

    .line 35851
    .end local v3    # "currentSample":Lcom/facebook/ads/redexgen/X/FV;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35852
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_1
    return v0

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    goto :goto_1
.end method

.method public final A06()V
    .locals 1

    .line 35853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35854
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 35855
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    .line 35856
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 35857
    return-void
.end method

.method public final A07(IF)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D20155618 Samples OutOfBounds Error Check Fix"
    .end annotation

    .line 35858
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1F:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35859
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FW;->A04(IF)V

    .line 35860
    return-void

    .line 35861
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FW;->A02()V

    .line 35862
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:[Lcom/facebook/ads/redexgen/X/FV;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    aget-object v2, v1, v0

    .line 35863
    .local v0, "newSample":Lcom/facebook/ads/redexgen/X/FV;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/FV;->A01:I

    .line 35864
    iput p1, v2, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    .line 35865
    iput p2, v2, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    .line 35866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35867
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 35868
    :cond_1
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    if-le v1, v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35869
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    sub-int/2addr v1, v0

    .line 35870
    .local v1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/FV;

    .line 35871
    .local v2, "oldestSample":Lcom/facebook/ads/redexgen/X/FV;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    if-gt v0, v1, :cond_4

    .line 35872
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35873
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const-string v1, "3KNEloHV0yOGYGtjjhul0kjR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "CQhg8nP9eAQ7nTj9eI4Xv7HE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35874
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    .line 35875
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:[Lcom/facebook/ads/redexgen/X/FV;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A07:[Ljava/lang/String;

    const-string v1, "1EJuh5GaS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pMRpDkTII4u81yBOo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    aput-object v3, v4, v1

    goto/16 :goto_1

    .line 35876
    :cond_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/FV;->A02:I

    .line 35877
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    goto/16 :goto_1

    .line 35878
    :cond_5
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Lcom/facebook/ads/redexgen/X/FU;)V

    goto/16 :goto_0

    .line 35879
    :cond_6
    return-void
.end method
