.class public final Lcom/facebook/ads/redexgen/X/MI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZP;
    }
.end annotation


# static fields
.field public static A0D:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Eu;

.field public A02:Lcom/facebook/ads/redexgen/X/4L;

.field public A03:Ljava/lang/String;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;

.field public final A05:Lcom/facebook/ads/redexgen/X/VA;

.field public final A06:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A07:Lcom/facebook/ads/redexgen/X/ZP;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A09:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/E8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0C:Lcom/facebook/ads/redexgen/X/E2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MI;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZP;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 5

    .line 51499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51500
    new-instance v0, Lcom/facebook/ads/redexgen/X/6d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6d;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0C:Lcom/facebook/ads/redexgen/X/E2;

    .line 51501
    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0B:Lcom/facebook/ads/redexgen/X/E4;

    .line 51502
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A09:Lcom/facebook/ads/redexgen/X/EA;

    .line 51503
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6Y;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0A:Lcom/facebook/ads/redexgen/X/E8;

    .line 51504
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MI;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 51505
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MI;->A05:Lcom/facebook/ads/redexgen/X/VA;

    .line 51506
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MI;->A07:Lcom/facebook/ads/redexgen/X/ZP;

    .line 51507
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    .line 51508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3q;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3q;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 51509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    .line 51510
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0C:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0B:Lcom/facebook/ads/redexgen/X/E4;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A09:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v3, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A0A:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v0, v3, v1

    .line 51511
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 51512
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    .line 51513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ek;->setIsFullScreen(Z)V

    .line 51514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 51515
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51516
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51518
    new-instance v1, Lcom/facebook/ads/redexgen/X/Yp;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Yp;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51519
    .local v1, "closeButton":Lcom/facebook/ads/redexgen/X/Yp;
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZN;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51520
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Yp;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51521
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 51522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/ZP;
    .locals 0

    .line 51523
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MI;->A07:Lcom/facebook/ads/redexgen/X/ZP;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MI;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

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

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MI;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x38t
        0x39t
        0x22t
        0x3dt
        0x21t
        0x2ct
        0x34t
        0x7at
        0x75t
        0x70t
        0x7ct
        0x77t
        0x6dt
        0x4dt
        0x76t
        0x72t
        0x7ct
        0x77t
        0x14t
        0x12t
        0x4t
        0x2ft
        0x0t
        0x15t
        0x8t
        0x17t
        0x4t
        0x22t
        0x15t
        0x0t
        0x23t
        0x14t
        0x15t
        0x15t
        0xet
        0xft
        0x37t
        0x28t
        0x25t
        0x24t
        0x2et
        0x8t
        0x2ft
        0x35t
        0x24t
        0x33t
        0x32t
        0x35t
        0x28t
        0x35t
        0x20t
        0x2dt
        0x4t
        0x37t
        0x24t
        0x2ft
        0x35t
        0x51t
        0x4et
        0x43t
        0x42t
        0x48t
        0x6bt
        0x48t
        0x40t
        0x40t
        0x42t
        0x55t
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x4ft
        0x52t
        0x46t
        0x67t
        0x78t
        0x75t
        0x74t
        0x7et
        0x42t
        0x74t
        0x74t
        0x7at
        0x45t
        0x78t
        0x7ct
        0x74t
        0x3ft
        0x20t
        0x2dt
        0x2ct
        0x26t
        0x1ct
        0x1bt
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 51524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoProgressReportIntervalMs(I)V

    .line 51525
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 51526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setControlsAnchorView(Landroid/view/View;)V

    .line 51527
    return-void
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 11

    .line 51528
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_4

    .line 51529
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A03:Ljava/lang/String;

    .line 51530
    :goto_0
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51531
    .local v0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/e3;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/e3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)V

    .line 51533
    .local v1, "ctaButton":Lcom/facebook/ads/redexgen/X/e3;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51534
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 51535
    .local v3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 51536
    .local v4, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51537
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51538
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51539
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/MI;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/e3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51541
    .end local v1    # "ctaButton":Lcom/facebook/ads/redexgen/X/e3;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "density":F
    .end local v4    # "margin":I
    :cond_0
    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A00:I

    .line 51542
    new-instance v4, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MI;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/MI;->A05:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/MI;->A03:Ljava/lang/String;

    .line 51543
    const/16 v3, 0x3a

    const/16 v2, 0xb

    const/16 v1, 0x41

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A02:Lcom/facebook/ads/redexgen/X/4L;

    .line 51544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51545
    new-instance v1, Lcom/facebook/ads/redexgen/X/Eu;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MI;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MI;->A05:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MI;->A03:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/MI;->A02:Lcom/facebook/ads/redexgen/X/4L;

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/EF;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    .line 51546
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    const/16 v3, 0x45

    const/16 v2, 0x8

    const/16 v1, 0x64

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoMPD(Ljava/lang/String;)V

    .line 51547
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    const/16 v3, 0x5a

    const/16 v2, 0x8

    const/16 v1, 0x2f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 51548
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A00:I

    if-lez v1, :cond_1

    .line 51549
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A00:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0a(I)V

    .line 51550
    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/16 v1, 0x2b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51551
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 51552
    :cond_2
    return-void

    .line 51553
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    goto :goto_1

    .line 51554
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A03:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final AFA(Z)V
    .locals 5

    .line 51555
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v3, Lcom/facebook/ads/redexgen/X/E6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/E6;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 51556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0X()V

    .line 51557
    return-void
.end method

.method public final AFi(Z)V
    .locals 5

    .line 51558
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v3, Lcom/facebook/ads/redexgen/X/E5;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/E5;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 51559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51560
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 51561
    :cond_0
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 51562
    return-void
.end method

.method public final getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 51563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 51564
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 5

    .line 51565
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MI;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    .line 51566
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Dy;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;-><init>(II)V

    .line 51567
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 51568
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A02:Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0j(I)V

    .line 51569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    if-eqz v0, :cond_0

    .line 51570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A08()V

    .line 51571
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0b(I)V

    .line 51572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A08:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0W()V

    .line 51573
    return-void
.end method
