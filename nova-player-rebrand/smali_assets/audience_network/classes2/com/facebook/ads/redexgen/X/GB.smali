.class public final Lcom/facebook/ads/redexgen/X/GB;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# static fields
.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Re;

.field public A01:Lcom/facebook/ads/redexgen/X/Yi;

.field public A02:Landroid/content/Intent;

.field public A03:Landroid/os/Bundle;

.field public A04:Lcom/facebook/ads/redexgen/X/Yi;

.field public final A05:Lcom/facebook/ads/redexgen/X/jd;

.field public final A06:Lcom/facebook/ads/redexgen/X/jd;

.field public final A07:Lcom/facebook/ads/redexgen/X/No;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/WK;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0E:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 749
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W4Q5rze9OaCj8zYeEqMqJDKHVn1jlwCj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tfMK6ikBUwqELtuMuu5Kubqydzlt1dTF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vHKgDETdn9HfwlFLESHxJfcBT5o8ovHI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7Mubz7OjQQHbSYG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "T8sk6PPloyPWHv5iczs8jf8QHRZ1ZSou"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3ZCO1Nznw11DnI4nXgj4IK6CNfFIYy0N"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GB;->A0F:[Ljava/lang/String;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/GB;->A0G:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Re;Lcom/facebook/ads/redexgen/X/WK;)V
    .locals 2

    .line 36942
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36943
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GB;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 36944
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GB;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 36945
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GB;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 36946
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    .line 36947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    .line 36948
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    .line 36949
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    .line 36950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 36951
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/GB;->A0A:Lcom/facebook/ads/redexgen/X/WK;

    .line 36952
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A0A:Lcom/facebook/ads/redexgen/X/WK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_2

    .line 36953
    new-instance v0, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    .line 36954
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    .line 36956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    .line 36957
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A0E:Z

    .line 36958
    :goto_1
    return-void

    .line 36959
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A0E:Z

    goto :goto_1

    .line 36960
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/MH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/GB;)Landroid/content/Intent;
    .locals 0

    .line 36961
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A02:Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/GB;)Landroid/os/Bundle;
    .locals 0

    .line 36962
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A03:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 36963
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/No;
    .locals 0

    .line 36964
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 36965
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/Boolean;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 11

    .line 36966
    move-object v1, p0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v9, p1

    if-eqz v0, :cond_0

    .line 36967
    new-instance v2, Lcom/facebook/ads/redexgen/X/MW;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/GB;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/GB;->A09:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    .line 36968
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v8

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)V

    .line 36969
    return-object v2

    .line 36970
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/NO;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/GB;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/GB;->A09:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    .line 36971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;Z)V

    .line 36972
    return-object v3
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 0

    .line 36973
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/GB;Lcom/facebook/ads/redexgen/X/Yi;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 0

    .line 36974
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    return-object p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/GB;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/Boolean;)Lcom/facebook/ads/redexgen/X/Yi;
    .locals 0

    .line 36975
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GB;->A05(Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/Boolean;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/ZU;
    .locals 0

    .line 36976
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    return-object p0
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/4V;
    .locals 8

    .line 36977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    if-eqz v0, :cond_0

    .line 36978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0X()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1R(Z)V

    .line 36979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    .line 36980
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0c()Z

    move-result v0

    .line 36981
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1S(Z)V

    .line 36982
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/4V;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GB;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GB;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/GB;->A09:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/GB;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4V;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 36983
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/4V;
    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Lcom/facebook/ads/redexgen/X/GB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->setVideoLeadingPlayableAdListener(Lcom/facebook/ads/redexgen/X/dy;)V

    .line 36984
    return-object v1
.end method

.method private A0B()V
    .locals 2

    .line 36985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_0

    .line 36986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yi;->onDestroy()V

    .line 36987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 36988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    check-cast v1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/GB;->removeView(Landroid/view/View;)V

    .line 36990
    :cond_0
    return-void
.end method

.method private final A0C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 3

    .line 36991
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GB;->A0A()Lcom/facebook/ads/redexgen/X/4V;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    .line 36992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yi;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V

    .line 36993
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    if-eqz v0, :cond_0

    .line 36994
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GB;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A07:Lcom/facebook/ads/redexgen/X/No;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A05:Lcom/facebook/ads/redexgen/X/jd;

    .line 36995
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36996
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A05(Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/Boolean;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A01:Lcom/facebook/ads/redexgen/X/Yi;

    .line 36997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A01:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yi;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V

    .line 36998
    :cond_0
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/GB;)V
    .locals 0

    .line 36999
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GB;->A0B()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/GB;)Z
    .locals 0

    .line 37000
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/GB;->A0E:Z

    return p0
.end method


# virtual methods
.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 37001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GB;->A02:Landroid/content/Intent;

    .line 37002
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GB;->A03:Landroid/os/Bundle;

    .line 37003
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GB;->A00:Lcom/facebook/ads/redexgen/X/Re;

    .line 37004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GB;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/GB;->A0G:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 37005
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GB;->A0C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V

    .line 37006
    return-void
.end method

.method public final AFA(Z)V
    .locals 0

    .line 37007
    return-void
.end method

.method public final AFi(Z)V
    .locals 4

    .line 37008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/MW;

    if-eqz v0, :cond_0

    .line 37009
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GB;->A0F:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sBQPYruyJOWbMZu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/Yi;->AFi(Z)V

    .line 37010
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 37011
    return-void
.end method

.method public getContentView()Lcom/facebook/ads/redexgen/X/Yi;
    .locals 1

    .line 37012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 37013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 37014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_0

    .line 37015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yi;->onActivityResult(IILandroid/content/Intent;)Z

    .line 37016
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 37017
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/MW;

    if-eqz v0, :cond_0

    .line 37019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GB;->A04:Lcom/facebook/ads/redexgen/X/Yi;

    check-cast v0, Lcom/facebook/ads/redexgen/X/MW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MW;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37020
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 37021
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 37022
    return-void
.end method
