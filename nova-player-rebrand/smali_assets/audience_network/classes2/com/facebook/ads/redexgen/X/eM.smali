.class public final Lcom/facebook/ads/redexgen/X/eM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/eL;
    }
.end annotation


# static fields
.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A01:Lcom/facebook/ads/redexgen/X/NN;

.field public final A02:Lcom/facebook/ads/redexgen/X/NY;

.field public final A03:Lcom/facebook/ads/redexgen/X/Nd;

.field public final A04:Lcom/facebook/ads/redexgen/X/Nm;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/VI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2751
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/eM;->A09:I

    .line 2752
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/eM;->A07:I

    .line 2753
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/eM;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 2

    .line 81005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 81007
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A06:Lcom/facebook/ads/redexgen/X/VI;

    .line 81008
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A01:Lcom/facebook/ads/redexgen/X/NN;

    .line 81009
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A02:Lcom/facebook/ads/redexgen/X/NY;

    .line 81010
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A04:Lcom/facebook/ads/redexgen/X/Nm;

    .line 81011
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A03:Lcom/facebook/ads/redexgen/X/Nd;

    .line 81012
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/view/View;
    .locals 12

    .line 81013
    new-instance v6, Lcom/facebook/ads/redexgen/X/bq;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A01:Lcom/facebook/ads/redexgen/X/NN;

    .line 81014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;ZZZ)V

    .line 81015
    .local v0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/bq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A02:Lcom/facebook/ads/redexgen/X/NY;

    .line 81016
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A02:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A04()Ljava/lang/String;

    move-result-object v8

    .line 81017
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81018
    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 81019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 81020
    .local v2, "imageView":Lcom/facebook/ads/redexgen/X/bk;
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 81021
    const/16 v0, 0x32

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 81022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 81023
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 81024
    .local v4, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A04:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 81025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81026
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81027
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81028
    sget v2, Lcom/facebook/ads/redexgen/X/eM;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/eM;->A07:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81029
    .local v1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81030
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81031
    .local v6, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/eM;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/eM;->A08:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81032
    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81033
    if-eqz p1, :cond_0

    .line 81034
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 81035
    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81036
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    invoke-virtual {p1, v1, v4, v0, v4}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 81037
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kr;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81038
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 81039
    :cond_0
    return-object v3
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/7M;
    .locals 6

    .line 81040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Landroid/content/Context;)V

    .line 81041
    .local v0, "mScreenshotsRecyclerView":Lcom/facebook/ads/redexgen/X/7M;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/hr;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/hr;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7M;->setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V

    .line 81042
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/eM;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A03:Lcom/facebook/ads/redexgen/X/Nd;

    .line 81043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/eM;->A09:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eM;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/FH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;ILcom/facebook/ads/redexgen/X/Kr;)V

    .line 81044
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 81045
    return-object v5
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/eL;
    .locals 1

    .line 81046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A03:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81047
    sget-object v0, Lcom/facebook/ads/redexgen/X/eL;->A03:Lcom/facebook/ads/redexgen/X/eL;

    return-object v0

    .line 81048
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eL;->A02:Lcom/facebook/ads/redexgen/X/eL;

    return-object v0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/eL;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 81049
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eM;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    .line 81050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eM;->A02()Lcom/facebook/ads/redexgen/X/eL;

    move-result-object v3

    .line 81051
    .local v0, "endCardViewType":Lcom/facebook/ads/redexgen/X/eL;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/eL;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eM;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/eM;->A00(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/view/View;

    move-result-object v2

    .line 81053
    .local v1, "endCardView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eM;->A06:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0S:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VK;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 81054
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 81055
    .end local v1    # "endCardView":Landroid/view/View;
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eM;->A01()Lcom/facebook/ads/redexgen/X/7M;

    move-result-object v2

    .line 81056
    .restart local v1    # "endCardView":Landroid/view/View;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
