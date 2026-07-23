.class public Lcom/facebook/ads/redexgen/X/6M;
.super Lcom/facebook/ads/redexgen/X/Jg;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ke;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ZI;

.field public A01:Lcom/facebook/ads/redexgen/X/cq;

.field public A02:Lcom/facebook/ads/redexgen/X/e8;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/Fy;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0B:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0C:Lcom/facebook/ads/redexgen/X/E0;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Dr;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/c7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 432
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MpRqvkZj1q70y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JmeA7cKwz52Cf66UfzrPr0LMRH4SYAx7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6sdDVsKAMYqDcEUPGSGZSzHS1QCr5tGd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTGZxaoWJV94XtNMqSwvdL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Mc6tnSsqpweEwwZBrEzxWewdD5U0ZBnH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pH8A6EuZ6tOwC2LEaYgoPeYfMAE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hIXMP87egv28CzL5Z81pRvvAccgq29VA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kjeLkimcHFb7T02SebLVQF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    .line 433
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6M;->A0M:I

    .line 434
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6M;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 4

    .line 16676
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 16677
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    .line 16678
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0H:Landroid/graphics/RectF;

    .line 16679
    new-instance v0, Lcom/facebook/ads/redexgen/X/6S;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6S;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0D:Lcom/facebook/ads/redexgen/X/Dr;

    .line 16680
    new-instance v0, Lcom/facebook/ads/redexgen/X/6R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6R;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A09:Lcom/facebook/ads/redexgen/X/EA;

    .line 16681
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0B:Lcom/facebook/ads/redexgen/X/E2;

    .line 16682
    new-instance v0, Lcom/facebook/ads/redexgen/X/6O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6O;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0A:Lcom/facebook/ads/redexgen/X/E4;

    .line 16683
    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6N;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0C:Lcom/facebook/ads/redexgen/X/E0;

    .line 16684
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    .line 16685
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/6M;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    .line 16686
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6M;->A0E:Ljava/lang/String;

    .line 16687
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 16688
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6M;->setGravity(I)V

    .line 16689
    sget v3, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    sget v2, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    sget v1, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/6M;->setPadding(IIII)V

    .line 16690
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 16691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6M;->setUpView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 16692
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    .line 16693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16697
    return-void
.end method

.method private A00()V
    .locals 5

    .line 16698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_1

    .line 16700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const-string v1, "7Tm7E6hvxl2lrINlaGqN4b4kJs9I709m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "njm7q4dCrj2NJr9FsCrNNlLowJdEGDJD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/DZ;->AAv(Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 16701
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A09(Z)V

    .line 16703
    :cond_1
    return-void
.end method

.method private A01()V
    .locals 2

    .line 16704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A06()V

    .line 16706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    .line 16707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->AKV(Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 16708
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 4

    .line 16709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A01:Lcom/facebook/ads/redexgen/X/cq;

    if-nez v0, :cond_0

    .line 16710
    return-void

    .line 16711
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const-string v1, "H2PvwmHOgvOi5klEuL8elNjNTBtJADxS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A04:Z

    if-eqz v0, :cond_3

    .line 16712
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A01:Lcom/facebook/ads/redexgen/X/cq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cq;->ACz()V

    .line 16713
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Landroid/view/View;)V
    .locals 3

    .line 16714
    if-nez p1, :cond_0

    .line 16715
    return-void

    .line 16716
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16717
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_1

    .line 16718
    return-void

    .line 16719
    :cond_1
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16720
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16721
    return-void
.end method

.method public static A04(Landroid/view/View;)V
    .locals 3

    .line 16722
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16723
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 16724
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0

    .line 16725
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6M;->A01()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0

    .line 16726
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6M;->A00()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0

    .line 16727
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6M;->A02()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/6M;Z)Z
    .locals 0

    .line 16728
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A05:Z

    return p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/6M;Z)Z
    .locals 0

    .line 16729
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 16811
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6M;->setUpImageView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 16812
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6M;->setUpVideoView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 16813
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6M;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 16814
    return-void
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 16730
    const/4 v0, 0x0

    return v0
.end method

.method public final A1O()Z
    .locals 1

    .line 16731
    const/4 v0, 0x0

    return v0
.end method

.method public final A1R()V
    .locals 4

    .line 16732
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    .line 16733
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const-string v1, "PPsdw83Xwgr8n"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5ciU0wOzbld7CiHKSmuHpDfStOE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/e8;->A01()V

    .line 16734
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1S()V
    .locals 2

    .line 16735
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16736
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1T()V

    .line 16737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    .line 16738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A05(Lcom/facebook/ads/redexgen/X/et;)V

    .line 16739
    :cond_0
    return-void
.end method

.method public final A1T()V
    .locals 2

    .line 16740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0P()Lcom/facebook/ads/redexgen/X/ct;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ct;->getVolume()F

    move-result v1

    .line 16741
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 16742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/e8;->setVolume(F)V

    .line 16743
    :cond_0
    return-void
.end method

.method public final A1U()Z
    .locals 1

    .line 16744
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1V()Z
    .locals 1

    .line 16745
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A03:Z

    return v0
.end method

.method public final A1W(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16746
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    .line 16747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->A02()V

    .line 16748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16749
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->A04(Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Ljava/util/Map;)V

    .line 16750
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/e8;
    .locals 1

    .line 16751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 16752
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16753
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 16754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 16755
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16756
    const/4 v5, 0x0

    .line 16757
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 16758
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 16759
    sget v5, Lcom/facebook/ads/redexgen/X/6M;->A0K:I

    .line 16760
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16762
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6M;->A0H:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/6M;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16763
    if-eqz v6, :cond_1

    .line 16764
    sget v5, Lcom/facebook/ads/redexgen/X/6M;->A0M:I

    .line 16765
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16767
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jg;->onDraw(Landroid/graphics/Canvas;)V

    .line 16768
    return-void

    .line 16769
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/Nc;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16770
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0E:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;)V

    .line 16771
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 16772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 16773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->setVisibility(I)V

    .line 16774
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 16775
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/6S;)V

    .line 16776
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 16777
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 16778
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_1

    .line 16779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->setVisibility(I)V

    .line 16780
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 16781
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A03:Z

    .line 16782
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/cq;)V
    .locals 0

    .line 16783
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A01:Lcom/facebook/ads/redexgen/X/cq;

    .line 16784
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 16785
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    .line 16786
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16787
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    .line 16788
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bc;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 16789
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 16790
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A04(Landroid/view/View;)V

    .line 16791
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 16792
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    .line 16793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A04(Landroid/view/View;)V

    .line 16794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 16795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6M;->A03(Landroid/view/View;)V

    .line 16797
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_1

    .line 16798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6M;->A03(Landroid/view/View;)V

    .line 16800
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6M;->addView(Landroid/view/View;)V

    .line 16801
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 16802
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A0E:Ljava/lang/String;

    .line 16803
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 16804
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    new-instance v0, Lcom/facebook/ads/redexgen/X/e8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/e8;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    .line 16805
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16806
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    .line 16807
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1M(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 16808
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 16809
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const-string v1, "tNSgYVifT5FMSy2OwNBjuNxtKDkDnPPF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/6M;->A04(Landroid/view/View;)V

    .line 16810
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 16815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    if-eqz v0, :cond_0

    .line 16816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 16817
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 4

    .line 16818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 16819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->setVisibility(I)V

    .line 16820
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6M;->A0J:[Ljava/lang/String;

    const-string v1, "Key351avhXFGNIES0xzUdjVz8AR1nkGO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 16821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->setVisibility(I)V

    .line 16822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setVideoURI(Ljava/lang/String;)V

    .line 16823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0D:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 16824
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A09:Lcom/facebook/ads/redexgen/X/EA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 16825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0B:Lcom/facebook/ads/redexgen/X/E2;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 16826
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0A:Lcom/facebook/ads/redexgen/X/E4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 16827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0C:Lcom/facebook/ads/redexgen/X/E0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 16828
    :cond_2
    return-void
.end method
