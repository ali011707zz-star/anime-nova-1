.class public final Lcom/facebook/ads/redexgen/X/66;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;
.implements Lcom/facebook/ads/redexgen/X/Is;


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Re;

.field public A01:Lcom/facebook/ads/redexgen/X/Rk;

.field public A02:Lcom/facebook/ads/redexgen/X/dI;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/jd;

.field public final A07:Lcom/facebook/ads/redexgen/X/gi;

.field public final A08:Lcom/facebook/ads/redexgen/X/VA;

.field public final A09:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0E:Lcom/facebook/ads/redexgen/X/d4;

.field public final A0F:Lcom/facebook/ads/redexgen/X/dC;

.field public final A0G:Lcom/facebook/ads/redexgen/X/fo;

.field public final A0H:Lcom/facebook/ads/redexgen/X/fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 411
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UTx0mthy689a2sWy4JVu0tmbo5tf7DAX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DpQrJfF4GGVCKG366ycalUQvQmaAeTpv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eTaJ9UlZkoiVo78onrsfkh8qyWU6l07Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ASk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tRl9yBUHWghtVC3MTlEkON1DGIMHt5L9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IjjI8eijgHBxehc5IxL2bCSmbEZHlZYm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ajbOHBl4KDnxYMWXO0J67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uiq3lL8JcMvDgND3txStxUQziaPHduab"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/66;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/66;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/ZU;I)V
    .locals 11

    .line 15554
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15555
    new-instance v1, Lcom/facebook/ads/redexgen/X/Je;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Je;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A01:Lcom/facebook/ads/redexgen/X/Rk;

    .line 15556
    new-instance v1, Lcom/facebook/ads/redexgen/X/Jd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0G:Lcom/facebook/ads/redexgen/X/fo;

    .line 15557
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/66;->A03:Z

    .line 15558
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 15559
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/66;->A08:Lcom/facebook/ads/redexgen/X/VA;

    .line 15560
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    .line 15561
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15562
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    .line 15563
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/dD;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v1

    .line 15564
    .local v7, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/dC;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 15565
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    .line 15566
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/66;->A04:Z

    .line 15567
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0K()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A09:Lcom/facebook/ads/redexgen/X/VI;

    .line 15568
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0L()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0B:Lcom/facebook/ads/redexgen/X/Y2;

    .line 15569
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/dC;->A0c(Lcom/facebook/ads/redexgen/X/dB;)V

    .line 15570
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v2

    const/16 v1, 0x3eb

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 15571
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A1U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15572
    new-instance v2, Lcom/facebook/ads/redexgen/X/d4;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/66;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v6, v1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/66;->A09:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    new-instance v10, Lcom/facebook/ads/redexgen/X/JT;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/JT;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/d4;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/d3;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    .line 15573
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/d4;->A0N()V

    .line 15574
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    .line 15575
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/d0;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/d0;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    .line 15576
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/It;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15577
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/66;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15578
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/66;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 15579
    .local v2, "mediaView":Landroid/view/ViewGroup;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0G:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    .line 15580
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15581
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v1

    .line 15582
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 15583
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 15584
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/dC;->A0e(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 15585
    new-instance v1, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0A:Lcom/facebook/ads/redexgen/X/Xx;

    .line 15586
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A0A:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 15587
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/66;->setBackgroundColor(I)V

    .line 15588
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15589
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v4

    .line 15590
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/VM;->AKp(Landroid/view/View;Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 15591
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    goto :goto_1

    .line 15592
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/dC;

    move/from16 v4, p6

    invoke-direct {v1, v2, p4, p2, v4}, Lcom/facebook/ads/redexgen/X/dC;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;I)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    .line 15593
    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/66;->A04:Z

    goto/16 :goto_0

    .line 15594
    :cond_2
    :goto_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15595
    .local v0, "config":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/jd;->A2L()Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x44

    const/16 v2, 0x12

    const/16 v1, 0x14

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    const/16 v2, 0x10

    const/16 v1, 0x6b

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v5, 0x34

    const/16 v2, 0x10

    const/16 v1, 0x61

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x1a

    const/16 v2, 0xa

    const/4 v1, 0x1

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_3

    .line 15596
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15597
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15598
    const/4 v1, 0x0

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15599
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0r()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 15600
    :cond_3
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NQ;->A0z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XC;->A05(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15601
    const/4 v1, 0x1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15602
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15603
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15604
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0r()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15605
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/dC;->A0j(Lorg/json/JSONObject;)V

    goto :goto_4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15606
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    .line 15607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0M()Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Td;->A15:I

    .line 15608
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/cz;->A04(ILjava/lang/String;)V

    .line 15609
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 15610
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Re;
    .locals 0

    .line 15611
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/Re;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 15612
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 0

    .line 15613
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A08:Lcom/facebook/ads/redexgen/X/VA;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 15614
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A09:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 15615
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0B:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 15616
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/ZU;
    .locals 0

    .line 15617
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/d4;
    .locals 0

    .line 15618
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/dC;
    .locals 0

    .line 15619
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 15620
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/66;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0C()V
    .locals 4

    .line 15621
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/do;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/do;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15624
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/do;->A0A(Lcom/facebook/ads/redexgen/X/Na;)Lcom/facebook/ads/redexgen/X/do;

    move-result-object v0

    .line 15625
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/do;->A0F()Lcom/facebook/ads/redexgen/X/dq;

    move-result-object v2

    .line 15626
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/dq;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/66;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15627
    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/dq;->A04(Lcom/facebook/ads/redexgen/X/dp;)V

    .line 15628
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x6b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/66;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0x18t
        0x2ft
        0x2ft
        0x32t
        0x2ft
        0x7dt
        0x3et
        0x2ft
        0x38t
        0x3ct
        0x29t
        0x34t
        0x33t
        0x3at
        0x7dt
        0x3et
        0x32t
        0x33t
        0x3bt
        0x34t
        0x3at
        0x7dt
        0x17t
        0xet
        0x12t
        0x13t
        0x4et
        0x45t
        0x4ct
        0x44t
        0x43t
        0x48t
        0x49t
        0x72t
        0x4ct
        0x49t
        0x24t
        0x2ft
        0x26t
        0x2et
        0x29t
        0x22t
        0x23t
        0x18t
        0x26t
        0x23t
        0x18t
        0x2et
        0x29t
        0x23t
        0x22t
        0x3ft
        0x2et
        0x25t
        0x2ct
        0x24t
        0x23t
        0x28t
        0x29t
        0x12t
        0x2ct
        0x29t
        0x12t
        0x39t
        0x22t
        0x39t
        0x2ct
        0x21t
        0x5bt
        0x50t
        0x59t
        0x51t
        0x56t
        0x5dt
        0x5ct
        0x67t
        0x4ct
        0x51t
        0x55t
        0x5dt
        0x67t
        0x4bt
        0x48t
        0x5dt
        0x56t
        0x4ct
        0x23t
        0x2ct
        0x29t
        0x23t
        0x2bt
        0x1ft
        0x33t
        0x2ft
        0x35t
        0x32t
        0x23t
        0x25t
        0x4at
        0x4ct
        0x5at
        0x4dt
        0x5ct
        0x53t
        0x56t
        0x5ct
        0x54t
    .end array-data
.end method

.method private final A0E()V
    .locals 5

    .line 15629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/dC;->A0d(Lcom/facebook/ads/redexgen/X/Is;)V

    .line 15630
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/66;->A04:Z

    if-nez v0, :cond_1

    .line 15631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A66()V

    .line 15632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0X()V

    .line 15633
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/It;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 15634
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 15635
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    sget-object v2, Lcom/facebook/ads/redexgen/X/66;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15636
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A67()V

    .line 15637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/66;->AKD()V

    .line 15639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VM;->ADb()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/66;->A0J:[Ljava/lang/String;

    const-string v1, "m5i7x933C7hHEFpC39NkE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15641
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    .line 15642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15643
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/66;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 15645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1V()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/66;->A0A:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A03:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 15647
    :cond_4
    return-void
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 13

    .line 15648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15649
    return-void

    .line 15650
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/bV;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    .line 15651
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7M()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/66;->A0B:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/66;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15652
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 15653
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/bV;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15654
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x62

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/66;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/bV;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 15656
    return-void
.end method

.method private getMediaView()Landroid/view/ViewGroup;
    .locals 1

    .line 15727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    .line 15729
    :goto_0
    return-object v0

    .line 15730
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A9f()V
    .locals 1

    .line 15657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/66;->A0F(Ljava/lang/String;)V

    .line 15658
    return-void
.end method

.method public final A9g(Ljava/lang/String;)V
    .locals 0

    .line 15659
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/66;->A0F(Ljava/lang/String;)V

    .line 15660
    return-void
.end method

.method public final A9k()V
    .locals 5

    .line 15661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A6l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 15662
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/66;->A0D:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15663
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/66;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ea;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ea;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 15664
    .local v0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/ea;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ea;->A06()V

    .line 15665
    return-void
.end method

.method public final AAm()V
    .locals 2

    .line 15666
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/JN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JN;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    .line 15667
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15668
    return-void
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 1

    .line 15669
    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A01:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 15671
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/Re;

    .line 15672
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/66;->A0E()V

    .line 15673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15674
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/66;->A0C()V

    .line 15675
    :goto_0
    return-void

    .line 15676
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0W()V

    goto :goto_0
.end method

.method public final AE0()V
    .locals 0

    .line 15677
    return-void
.end method

.method public final AE4()V
    .locals 1

    .line 15678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/d4;->A0P()V

    .line 15680
    :cond_0
    return-void
.end method

.method public final AEu(Z)V
    .locals 1

    .line 15681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/d4;->A0R(Z)V

    .line 15683
    :cond_0
    return-void
.end method

.method public final AFA(Z)V
    .locals 1

    .line 15684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/d4;->A0S(Z)V

    .line 15686
    :cond_0
    if-eqz p1, :cond_1

    .line 15687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0Q()V

    .line 15688
    :goto_0
    return-void

    .line 15689
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0T()V

    goto :goto_0
.end method

.method public final AFi(Z)V
    .locals 1

    .line 15690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/d4;->A0T(Z)V

    .line 15692
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/66;->A03:Z

    if-eqz v0, :cond_1

    .line 15693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/66;->A03:Z

    .line 15694
    return-void

    .line 15695
    :cond_1
    if-eqz p1, :cond_2

    .line 15696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0P()V

    .line 15697
    :goto_0
    return-void

    .line 15698
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0F:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0Y()V

    goto :goto_0
.end method

.method public final AFz()V
    .locals 1

    .line 15699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/d4;->A0Q()V

    .line 15701
    :cond_0
    return-void
.end method

.method public final AGX(Z)V
    .locals 1

    .line 15702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/d4;->A0U(Z)V

    .line 15704
    :cond_0
    return-void
.end method

.method public final AGZ(Z)V
    .locals 1

    .line 15705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    if-eqz v0, :cond_0

    .line 15706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/d4;->A0V(Z)V

    .line 15707
    :cond_0
    return-void
.end method

.method public final AGo(Ljava/lang/String;)V
    .locals 4

    .line 15708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/jd;->A2F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15709
    .local v0, "urlString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 15710
    return-void

    .line 15711
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 15712
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15713
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 15714
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 15715
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 15716
    return-void
.end method

.method public final AKD()V
    .locals 1

    .line 15717
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/66;->A05:Z

    if-nez v0, :cond_0

    .line 15718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 15719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/66;->A05:Z

    .line 15720
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 15721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/Re;

    if-nez v0, :cond_0

    .line 15722
    return-void

    .line 15723
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 15724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/Re;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 15725
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 15726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 15731
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 15732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/66;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 15734
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/66;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/66;->A0J:[Ljava/lang/String;

    const-string v1, "GZe1biqFkGajjfTMFdC84"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 15735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0E:Lcom/facebook/ads/redexgen/X/d4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/d4;->A0O()V

    .line 15736
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0A:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xx;->A03()V

    .line 15737
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/66;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0B:Lcom/facebook/ads/redexgen/X/Y2;

    .line 15739
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A0H:Lcom/facebook/ads/redexgen/X/fp;

    .line 15740
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 15741
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 15742
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 15743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A01:Lcom/facebook/ads/redexgen/X/Rk;

    .line 15744
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A02:Lcom/facebook/ads/redexgen/X/dI;

    .line 15745
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/Re;

    .line 15746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/66;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dD;->A04(Ljava/lang/String;)V

    .line 15747
    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 15748
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 15749
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/66;->requestDisallowInterceptTouchEvent(Z)V

    .line 15750
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 15751
    return-void
.end method

.method public setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/dI;)V
    .locals 0

    .line 15752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/66;->A02:Lcom/facebook/ads/redexgen/X/dI;

    .line 15753
    return-void
.end method
