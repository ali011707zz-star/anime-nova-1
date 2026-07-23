.class public abstract Lcom/facebook/ads/redexgen/X/Gj;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Z

.field public A01:Landroid/view/ViewGroup;

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/jd;

.field public final A04:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/VA;

.field public final A07:Lcom/facebook/ads/redexgen/X/VI;

.field public final A08:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A09:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0B:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0C:Lcom/facebook/ads/redexgen/X/fp;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0E:Lcom/facebook/ads/redexgen/X/fo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 755
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TjJo4iSgng0vXhs45r72rqpPNY8skILr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "91ouIxxhnH3Z5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W0nriFofCJUyd1UjJ1D34NnkecurTiQg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "io9DF8pP4zbnzlMZ0cU9ebyf5c8MGTpw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GW5XhaY0JB8EDDs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wmyPNYIHMh217"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CqbXOmo7iYNySqq5By1vz3nqMfrwlLlZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8HyCFF6UzaJGyjOzTS3wQDIkiaQQj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gj;->A0b()V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A0H:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 4

    .line 37575
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37576
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A02:Z

    .line 37577
    new-instance v0, Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/H8;-><init>(Lcom/facebook/ads/redexgen/X/Gj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0E:Lcom/facebook/ads/redexgen/X/fo;

    .line 37578
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    .line 37579
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:Z

    .line 37580
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 37581
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0B:Lcom/facebook/ads/redexgen/X/ZU;

    .line 37582
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    .line 37583
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37584
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Gj;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    .line 37585
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    .line 37586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37587
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    .line 37588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0E:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 37589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v0

    .line 37591
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 37592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 37593
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0Y()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    .line 37594
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0D:Lcom/facebook/ads/redexgen/X/Xx;

    .line 37595
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0D:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 37596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0m()Z

    move-result v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 37597
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Gj;->setFitsSystemWindows(Z)V

    .line 37598
    :cond_0
    return-void
.end method

.method private A0Y()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 6

    .line 37599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0c()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 37600
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Yb;->setFullscreen(Z)V

    .line 37601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v4

    .line 37602
    .local v2, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37604
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37605
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 37606
    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ns;)V

    .line 37607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37608
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37609
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    .line 37610
    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V

    .line 37611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v0

    if-nez v0, :cond_2

    .line 37612
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A02:Z

    .line 37613
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37614
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v0

    if-ltz v0, :cond_1

    .line 37615
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 37616
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gl;-><init>(Lcom/facebook/ads/redexgen/X/Gj;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 37617
    return-object v1

    .line 37618
    :cond_2
    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37619
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public static A0Z(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0a()V
    .locals 4

    .line 37620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37621
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/do;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/do;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37624
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/do;->A0A(Lcom/facebook/ads/redexgen/X/Na;)Lcom/facebook/ads/redexgen/X/do;

    move-result-object v0

    .line 37625
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/do;->A0F()Lcom/facebook/ads/redexgen/X/dq;

    move-result-object v2

    .line 37626
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/dq;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0U:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VK;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 37627
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A0H:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Gj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37628
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;-><init>(Lcom/facebook/ads/redexgen/X/Gj;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/dq;->A04(Lcom/facebook/ads/redexgen/X/dp;)V

    .line 37629
    .end local v0    # "introView":Lcom/facebook/ads/redexgen/X/dq;
    :goto_0
    return-void

    .line 37630
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0h()V

    goto :goto_0
.end method

.method public static A0b()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x16t
        -0x13t
        -0x4t
        -0x17t
        -0x18t
    .end array-data
.end method

.method private getAppOpenAdVariant()Lcom/facebook/ads/redexgen/X/Yg;
    .locals 4

    .line 37675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0v()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37676
    sget-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A08:Lcom/facebook/ads/redexgen/X/Yg;

    return-object v0

    .line 37677
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A09:Lcom/facebook/ads/redexgen/X/Yg;

    return-object v0
.end method


# virtual methods
.method public A0c()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 10

    .line 37631
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37633
    new-instance v3, Lcom/facebook/ads/redexgen/X/Pe;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 37634
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gj;->getAppOpenAdVariant()Lcom/facebook/ads/redexgen/X/Yg;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Gp;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/Gp;-><init>(Lcom/facebook/ads/redexgen/X/Gj;)V

    const/16 v7, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Pe;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yg;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Yf;)V

    .line 37635
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    .restart local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :goto_0
    return-object v3

    .line 37636
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x1

    new-instance v3, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V

    .restart local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    goto :goto_0

    .line 37637
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :cond_1
    new-instance v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37638
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A22()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1s()Z

    move-result v9

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IIZ)V

    goto :goto_0
.end method

.method public A0d()V
    .locals 6

    .line 37640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37641
    return-void

    .line 37642
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getRequestedMargins()Landroid/graphics/Rect;

    move-result-object v5

    .line 37643
    .local v0, "margins":Landroid/graphics/Rect;
    if-nez v5, :cond_1

    .line 37644
    return-void

    .line 37645
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 37646
    .local v1, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 37647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37648
    return-void
.end method

.method public final A0e()V
    .locals 1

    .line 37649
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:Z

    if-nez v0, :cond_0

    .line 37650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 37651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:Z

    .line 37652
    :cond_0
    return-void
.end method

.method public final A0f()V
    .locals 2

    .line 37653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 37654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37655
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/No;->A0S(I)V

    .line 37657
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/jd;->A2K(Z)V

    .line 37658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0M(I)V

    .line 37659
    return-void
.end method

.method public abstract A0g()V
.end method

.method public abstract A0h()V
.end method

.method public final A0i(ILcom/facebook/ads/redexgen/X/Wc;Lcom/facebook/ads/redexgen/X/DZ;)V
    .locals 2

    .line 37660
    new-instance v1, Lcom/facebook/ads/redexgen/X/H0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/facebook/ads/redexgen/X/H0;-><init>(Lcom/facebook/ads/redexgen/X/Gj;ILcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/Wc;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    .line 37661
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 37662
    return-void
.end method

.method public final A0j(Landroid/view/ViewGroup;)V
    .locals 3

    .line 37663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gj;->getAppOpenAdVariant()Lcom/facebook/ads/redexgen/X/Yg;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A08:Lcom/facebook/ads/redexgen/X/Yg;

    if-ne v1, v0, :cond_0

    .line 37664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/bl;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 37665
    .local v0, "roundedCornersView":Lcom/facebook/ads/redexgen/X/bl;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/bl;->setRadius(I)V

    .line 37666
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/bl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37667
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    .line 37668
    .end local v0    # "roundedCornersView":Lcom/facebook/ads/redexgen/X/bl;
    :goto_0
    return-void

    .line 37669
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public abstract A0k(Lcom/facebook/ads/redexgen/X/Re;)V
.end method

.method public abstract A0l()Z
.end method

.method public abstract A0m()Z
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 37670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A0H:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 37671
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Gj;->A0k(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 37672
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0a()V

    .line 37673
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 37674
    return-void
.end method

.method public getBackgroundColorForToolbar()Ljava/lang/Integer;
    .locals 1

    .line 37678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37679
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gj;->getAppOpenAdVariant()Lcom/facebook/ads/redexgen/X/Yg;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Yg;->A03:Ljava/lang/Integer;

    return-object v0

    .line 37680
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 37681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 37682
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 37683
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37684
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0m()Z

    move-result v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 37685
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Gj;->setFitsSystemWindows(Z)V

    .line 37686
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0d()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    .line 37687
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A0G:[Ljava/lang/String;

    const-string v1, "kF6RESICu85JPno09mseATff07y9WxI4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .line 37688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0D:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xx;->A03()V

    .line 37689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37690
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37691
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 37692
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    .line 37693
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 37694
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 37695
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 37696
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37697
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Y2;->A06(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 37698
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 37699
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 37700
    if-eqz p1, :cond_0

    .line 37701
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A03:Lcom/facebook/ads/redexgen/X/Xw;

    .line 37702
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/Xw;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0D:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 37703
    return-void

    .line 37704
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    goto :goto_0
.end method
