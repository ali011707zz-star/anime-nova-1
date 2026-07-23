.class public final Lcom/facebook/ads/redexgen/X/PU;
.super Lcom/facebook/ads/redexgen/X/Yb;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/gi;

.field public A01:Lcom/facebook/ads/redexgen/X/Ya;

.field public final A02:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PU;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V
    .locals 2

    .line 57676
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Landroid/content/Context;)V

    .line 57677
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/gi;

    .line 57678
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PU;->setGravity(I)V

    .line 57679
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PU;->A04()V

    .line 57680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {v0, v1, p2, p3}, Lcom/facebook/ads/redexgen/X/ZM;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    .line 57681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PU;->A03()V

    .line 57682
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/PU;)Lcom/facebook/ads/redexgen/X/Ya;
    .locals 0

    .line 57683
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PU;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/PU;)Lcom/facebook/ads/redexgen/X/ZM;
    .locals 0

    .line 57684
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PU;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5

    .line 57685
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57686
    .local v0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PU;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yr;-><init>(Lcom/facebook/ads/redexgen/X/PU;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 57688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/PU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57689
    return-void
.end method

.method private A04()V
    .locals 4

    .line 57690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57691
    .local v0, "dummyView":Landroid/view/View;
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57692
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/PU;->addView(Landroid/view/View;)V

    .line 57693
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PU;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x4bt
        -0x22t
        -0x1ft
        -0x1bt
        -0x29t
        -0x6et
        -0x4dt
        -0x2at
    .end array-data
.end method


# virtual methods
.method public final A09()V
    .locals 0

    .line 57694
    return-void
.end method

.method public final A0A()V
    .locals 0

    .line 57695
    return-void
.end method

.method public final A0B()V
    .locals 0

    .line 57696
    return-void
.end method

.method public final A0C(FI)V
    .locals 0

    .line 57697
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V
    .locals 0

    .line 57698
    return-void
.end method

.method public final A0E()Z
    .locals 1

    .line 57699
    const/4 v0, 0x0

    return v0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 57700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZM;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 57701
    sget v0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Ya;
    .locals 1

    .line 57702
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 0

    .line 57703
    return-void
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 57704
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 0

    .line 57705
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 57706
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 57707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZM;->setInitialUnskippableSeconds(I)V

    .line 57708
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ns;)V
    .locals 1

    .line 57709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ZM;->setInitialUnskippableSeconds(I)V

    .line 57710
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 0

    .line 57711
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 57712
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 57713
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 0

    .line 57714
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 0

    .line 57715
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 57716
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 0

    .line 57717
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 57718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PU;->A02:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZM;->setToolbarActionMode(I)V

    .line 57719
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V
    .locals 0

    .line 57720
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PU;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    .line 57721
    return-void
.end method
