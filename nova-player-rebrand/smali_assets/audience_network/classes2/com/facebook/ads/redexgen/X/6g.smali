.class public final Lcom/facebook/ads/redexgen/X/6g;
.super Lcom/facebook/ads/redexgen/X/Oq;
.source ""


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4L;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/view/ViewGroup;

.field public final A04:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A05:Lcom/facebook/ads/redexgen/X/VA;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A07:Lcom/facebook/ads/redexgen/X/EA;

.field public final A08:Lcom/facebook/ads/redexgen/X/E8;

.field public final A09:Lcom/facebook/ads/redexgen/X/Dj;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Dg;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Df;

.field public final A0C:Lcom/facebook/ads/redexgen/X/fo;

.field public final A0D:Lcom/facebook/ads/redexgen/X/fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 442
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vPMRmT88mgqFEke8ATcV4DjUXhfKSOnR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vcxzG3inNeckkmEQerBRT2lbis8VS7m7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eUyvpit7R4E8S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "81xoNnBskiL3NHuExK0jouL0xNUbAz24"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9rRUUXnOqMhF40SMgnak6Kzhg0roR6HI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NGPySEd1uSK0pWi3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "38FqFi34P3eGFZ4PzNWUjtJ56H9UGtdy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zzAANKTeXLAH5LLCmw3IQOJWh4jGOg5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6g;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VI;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 3

    .line 17704
    invoke-direct {p0, p1, p5, p4, p6}, Lcom/facebook/ads/redexgen/X/Oq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 17705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A02:Z

    .line 17706
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A01:Z

    .line 17707
    new-instance v0, Lcom/facebook/ads/redexgen/X/6p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6p;-><init>(Lcom/facebook/ads/redexgen/X/6g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A07:Lcom/facebook/ads/redexgen/X/EA;

    .line 17708
    new-instance v0, Lcom/facebook/ads/redexgen/X/6o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6o;-><init>(Lcom/facebook/ads/redexgen/X/6g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A08:Lcom/facebook/ads/redexgen/X/E8;

    .line 17709
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/VA;

    .line 17710
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    .line 17711
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A00()Lcom/facebook/ads/redexgen/X/Op;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0C:Lcom/facebook/ads/redexgen/X/fo;

    .line 17712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A07()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    .line 17713
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A03:Landroid/view/ViewGroup;

    .line 17714
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6g;->A03:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17715
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/6g;->A01(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    .line 17716
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A04()Lcom/facebook/ads/redexgen/X/Dg;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    .line 17717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A03()Lcom/facebook/ads/redexgen/X/Dj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A09:Lcom/facebook/ads/redexgen/X/Dj;

    .line 17718
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/6g;->A06(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/Df;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    .line 17719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 17720
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->A0F()V

    .line 17721
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Op;
    .locals 1

    .line 17722
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/6g;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 5

    .line 17723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 17724
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/Ek;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 17725
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 17726
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A07:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A08:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 17727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17728
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 17729
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17730
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yy;-><init>(Lcom/facebook/ads/redexgen/X/6g;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17731
    :cond_1
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17732
    .local v1, "videoLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17733
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17734
    return-object v2
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 17735
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/Dj;
    .locals 3

    .line 17736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 17737
    .local v0, "countdownPlugin":Lcom/facebook/ads/redexgen/X/Dj;
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Dj;->setTextColor(I)V

    .line 17738
    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 17739
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Dj;->setGravity(I)V

    .line 17740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 17741
    return-object v2
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/Dg;
    .locals 2

    .line 17742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 17743
    .local v0, "playPausePlugin":Lcom/facebook/ads/redexgen/X/Dg;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 17744
    return-object v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Dg;
    .locals 0

    .line 17745
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    return-object p0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/Df;
    .locals 3

    .line 17746
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/Df;

    invoke-direct {v1, v2, p1, v0}, Lcom/facebook/ads/redexgen/X/Df;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 17747
    .local v0, "muteButtonPlugin":Lcom/facebook/ads/redexgen/X/Df;
    const/high16 v0, 0x33000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->setBackgroundPaintColor(I)V

    .line 17748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 17749
    return-object v1
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/fp;
    .locals 7

    .line 17750
    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0C:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v3, 0x32

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 17751
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/fp;
    return-object v1
.end method

.method private A08()V
    .locals 1

    .line 17752
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A01:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 17754
    :goto_0
    return-void

    .line 17755
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_1

    .line 17756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 17757
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/6g;)Z
    .locals 0

    .line 17758
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/6g;->A02:Z

    return p0
.end method


# virtual methods
.method public final A0D()V
    .locals 4

    .line 17759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 17760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A07:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A08:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 17761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0W()V

    .line 17762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 17763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 17764
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/4L;

    if-eqz v0, :cond_2

    .line 17766
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/4L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6g;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6g;->A0E:[Ljava/lang/String;

    const-string v1, "QSSPJpdXUUt8XbGqouva3DO5ILergMU2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4L;->A0p()V

    .line 17767
    :cond_2
    return-void
.end method

.method public final A0E()V
    .locals 1

    .line 17768
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0E()V

    .line 17769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    .line 17770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A02:Z

    .line 17771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 17772
    return-void
.end method

.method public final A0F()V
    .locals 4

    .line 17773
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0F()V

    .line 17774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1W(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 17775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/Oq;->A0C(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;)V

    .line 17778
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A09:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A09:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {p0, v3, v3}, Lcom/facebook/ads/redexgen/X/Oq;->A0C(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A09:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;)V

    .line 17782
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {p0, v2, v2}, Lcom/facebook/ads/redexgen/X/Oq;->A0C(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;)V

    .line 17786
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6g;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6g;->A0E:[Ljava/lang/String;

    const-string v1, "QWCSfSUWuFerXIpv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7tLHnRgEmKXMN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 17787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 17788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Lcom/facebook/ads/redexgen/X/Df;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0A(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17790
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;)V

    .line 17791
    :cond_4
    return-void

    .line 17792
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0A(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final A0G()Z
    .locals 1

    .line 17793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0l()Z

    move-result v0

    return v0
.end method

.method public final A0H()Z
    .locals 6

    .line 17794
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getMeasuredWidth()I

    move-result v0

    const/4 v5, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 17795
    .end local v0
    :cond_0
    return v5

    .line 17796
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-double v3, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 17797
    .local v0, "widthGap":I
    sget v1, Lcom/facebook/ads/redexgen/X/Oq;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    if-le v2, v1, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final A0I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6g;
    .locals 4

    .line 17798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Sx;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17799
    .local v0, "cachedVideoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 17800
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, v3, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/4L;

    .line 17801
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17802
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6g;->A03:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A03:Landroid/view/ViewGroup;

    .line 17803
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A03:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(Lcom/facebook/ads/redexgen/X/6g;)V

    .line 17804
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 17805
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 17806
    :cond_0
    if-eqz p5, :cond_1

    .line 17807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Dg;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 17808
    :cond_1
    if-eqz p5, :cond_2

    .line 17809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A0A:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/Dg;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 17810
    :cond_2
    return-object p0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 17811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getId()I

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 17812
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->onAttachedToWindow()V

    .line 17813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A01:Z

    .line 17814
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A08()V

    .line 17815
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 17816
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oq;->onDetachedFromWindow()V

    .line 17817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6g;->A01:Z

    .line 17818
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A08()V

    .line 17819
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 17820
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oq;->onVisibilityChanged(Landroid/view/View;I)V

    .line 17821
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A08()V

    .line 17822
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 17823
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->onWindowFocusChanged(Z)V

    .line 17824
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6g;->A08()V

    .line 17825
    return-void
.end method
