.class public final Lcom/facebook/ads/redexgen/X/KB;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""


# static fields
.field public static A0W:[B

.field public static A0X:[Ljava/lang/String;

.field public static final A0Y:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Landroid/widget/LinearLayout;

.field public A05:Lcom/facebook/ads/redexgen/X/Og;

.field public A06:Lcom/facebook/ads/redexgen/X/aJ;

.field public A07:Lcom/facebook/ads/redexgen/X/aN;

.field public A08:Lcom/facebook/ads/redexgen/X/dx;

.field public A09:Lcom/facebook/ads/redexgen/X/Eu;

.field public A0A:Lcom/facebook/ads/redexgen/X/4L;

.field public final A0B:Landroid/os/Handler;

.field public final A0C:Landroid/widget/ImageView;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/RelativeLayout;

.field public final A0G:Landroid/widget/RelativeLayout;

.field public final A0H:Landroid/widget/RelativeLayout;

.field public final A0I:Landroid/widget/TextView;

.field public final A0J:Landroid/widget/TextView;

.field public final A0K:Landroid/widget/TextView;

.field public final A0L:Landroid/widget/TextView;

.field public final A0M:Landroid/widget/TextView;

.field public final A0N:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0O:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0P:Lcom/facebook/ads/redexgen/X/bk;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/bm;

.field public final A0R:Lcom/facebook/ads/redexgen/X/c7;

.field public final A0S:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A0T:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0U:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0V:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 866
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UQ7TFs74lcUdZuEisIQQex1S2hJkyBQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "myvpLMPCiy1Db21mRiA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GFipZK8NVLufipAPgP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AfraUSEhnPTRS4j1c1sVruXnc5XHPJ9d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5o2PCnXzYQrRDOC9DPzRLQmHH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zC9Q5dVrf3DuizGN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cBKGhAcqgckkizLMVTE8MrLSp3snJrYL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vsEAc6f0BLlcSapFKHSSbJlGpIzpiVSU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KB;->A0R()V

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/KB;->A0Y:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;)V
    .locals 5

    .line 45215
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 45216
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0B:Landroid/os/Handler;

    .line 45217
    new-instance v0, Lcom/facebook/ads/redexgen/X/6E;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6E;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0U:Lcom/facebook/ads/redexgen/X/E2;

    .line 45218
    new-instance v0, Lcom/facebook/ads/redexgen/X/6D;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6D;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0T:Lcom/facebook/ads/redexgen/X/EA;

    .line 45219
    new-instance v0, Lcom/facebook/ads/redexgen/X/cX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cX;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0V:Ljava/lang/Runnable;

    .line 45220
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 45221
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45223
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0O:Lcom/facebook/ads/redexgen/X/VI;

    .line 45224
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0O:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0f:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 45225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KB;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 45226
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    .line 45227
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    .line 45228
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0G()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    .line 45229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v1

    .line 45231
    .local v2, "videoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 45232
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 45233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0U:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0T:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 45234
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A06()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    .line 45235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45236
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0L()V

    .line 45237
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0M()V

    .line 45238
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0D()Lcom/facebook/ads/redexgen/X/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    .line 45239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45240
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0B()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    .line 45241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45242
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0E()Lcom/facebook/ads/redexgen/X/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    .line 45243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45244
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A09()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0J:Landroid/widget/TextView;

    .line 45245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0J:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45246
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A01()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0C:Landroid/widget/ImageView;

    .line 45247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0C:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45248
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A08()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0I:Landroid/widget/TextView;

    .line 45249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0I:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45250
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A05()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0E:Landroid/widget/RelativeLayout;

    .line 45251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0E:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45252
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    .line 45253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45254
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0A()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    .line 45255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45256
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0C()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    .line 45257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45258
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getWatchAdCtaText()Ljava/lang/String;

    move-result-object v1

    const v0, 0x26ffffff

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    .line 45259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45261
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1A()Ljava/lang/String;

    move-result-object v1

    .line 45262
    const v0, -0xf79901

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    .line 45263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45265
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 45267
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 45268
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KB;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 45269
    .local v0, "orientation":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0h(I)V

    .line 45270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45271
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0S(I)V

    .line 45272
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0K()V

    .line 45273
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KB;)Landroid/os/Handler;
    .locals 0

    .line 45274
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0B:Landroid/os/Handler;

    return-object p0
.end method

.method private A01()Landroid/widget/ImageView;
    .locals 3

    .line 45275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45276
    .local v0, "appDownloadIconView":Landroid/widget/ImageView;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45277
    .local v1, "appDownloadIconViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45278
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0e:Lcom/facebook/ads/redexgen/X/YM;

    .line 45279
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45280
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45281
    return-object v2
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KB;)Landroid/widget/ImageView;
    .locals 0

    .line 45282
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    return-object p0
.end method

.method private A03()Landroid/widget/LinearLayout;
    .locals 4

    .line 45283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    .line 45284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    .line 45285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45286
    .local v0, "adReportingLayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0B:Lcom/facebook/ads/redexgen/X/YM;

    .line 45288
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45289
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45291
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0C:Lcom/facebook/ads/redexgen/X/YM;

    .line 45293
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45294
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45296
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45297
    .local v1, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45298
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45299
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45300
    return-object v2
.end method

.method private A04()Landroid/widget/RelativeLayout;
    .locals 5

    .line 45301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45302
    .local v0, "adInfoContainer":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0J:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45306
    :goto_0
    return-object v4

    .line 45307
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KB;->A0E:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "DGMgcqNKmRBhEzUZj1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "QbI2wW46F5loixSEU5hnRqKbb5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()Landroid/widget/RelativeLayout;
    .locals 3

    .line 45308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45309
    .local v0, "appDownloadContainer":Landroid/widget/RelativeLayout;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45310
    .local v1, "appDownloadContainerParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0C:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0I:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45313
    return-object v2
.end method

.method private A06()Landroid/widget/RelativeLayout;
    .locals 4

    .line 45314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45315
    .local v0, "secondaryLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45316
    .local v1, "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45317
    return-object v3
.end method

.method private A07(Ljava/lang/String;I)Landroid/widget/RelativeLayout;
    .locals 5

    .line 45318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45319
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 45320
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45321
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 45322
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 45323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45324
    .local v1, "contentTextView":Landroid/widget/TextView;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45325
    .local v2, "contentTextViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45326
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45327
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45328
    const/4 v0, 0x1

    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 45329
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45330
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45331
    return-object v4
.end method

.method private A08()Landroid/widget/TextView;
    .locals 2

    .line 45332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45333
    .local v0, "appDownloadTextView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45334
    const v0, -0x7f000001

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45335
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45336
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45337
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45338
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45339
    return-object v1
.end method

.method private A09()Landroid/widget/TextView;
    .locals 2

    .line 45340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45341
    .local v0, "ratingView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getRatingText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45342
    const v0, -0x7f000001

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45343
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45344
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45345
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45346
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45347
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 45348
    return-object v1
.end method

.method private A0A()Landroid/widget/TextView;
    .locals 6

    .line 45349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45350
    .local v0, "rewardInfoView":Landroid/widget/TextView;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1B()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45352
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 45353
    invoke-static {v5, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45354
    .local v1, "rewardInfoText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45355
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45356
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45357
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45358
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45359
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45360
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 45361
    return-object v3
.end method

.method private A0B()Landroid/widget/TextView;
    .locals 2

    .line 45362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45363
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45364
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45365
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45366
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45367
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45368
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45369
    return-object v1
.end method

.method private A0C()Landroid/widget/TextView;
    .locals 2

    .line 45370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45371
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getWatchAdCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45372
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45373
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45374
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45375
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45376
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45377
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 45378
    return-object v1
.end method

.method private A0D()Lcom/facebook/ads/redexgen/X/bk;
    .locals 4

    .line 45379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 45380
    .local v0, "iconView":Lcom/facebook/ads/redexgen/X/bk;
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 45381
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v1, v0

    const v0, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 45382
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 45383
    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45384
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 45385
    return-object v3
.end method

.method private A0E()Lcom/facebook/ads/redexgen/X/bm;
    .locals 7

    .line 45386
    new-instance v1, Lcom/facebook/ads/redexgen/X/bm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    sget v3, Lcom/facebook/ads/redexgen/X/KB;->A0Y:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x5

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bm;-><init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V

    .line 45387
    .local v0, "startRatingContainer":Lcom/facebook/ads/redexgen/X/bm;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getRating()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bm;->setRating(F)V

    .line 45388
    return-object v1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/KB;)Lcom/facebook/ads/redexgen/X/dx;
    .locals 0

    .line 45389
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KB;->A08:Lcom/facebook/ads/redexgen/X/dx;

    return-object p0
.end method

.method private A0G()Lcom/facebook/ads/redexgen/X/Ek;
    .locals 11

    .line 45390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 45391
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/Ek;
    new-instance v1, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 45392
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;IIZLandroid/os/Bundle;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    .line 45394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45395
    new-instance v1, Lcom/facebook/ads/redexgen/X/Eu;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 45396
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45397
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/EF;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A09:Lcom/facebook/ads/redexgen/X/Eu;

    .line 45398
    :goto_0
    const/high16 v0, 0x42300000    # 44.0f

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setRoundedCornerVideoView(F)V

    .line 45399
    return-object v4

    .line 45400
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "hx8qxgvoIW6xceGAWf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wYZsMrXjcXuhFUuKsEl8E0dQOo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/KB;->A09:Lcom/facebook/ads/redexgen/X/Eu;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/KB;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 45401
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/KB;)Ljava/lang/Runnable;
    .locals 0

    .line 45402
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0V:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A0W:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0K()V
    .locals 2

    .line 45403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cZ;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ca;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ca;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45406
    :goto_0
    return-void

    .line 45407
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cb;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A0L()V
    .locals 6

    .line 45408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45410
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KB;->A0O:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v4, Lcom/facebook/ads/redexgen/X/aM;->A06:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45411
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v5

    .line 45412
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/c3;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/Yh;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    .line 45413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45414
    :cond_0
    :goto_0
    return-void

    .line 45415
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A05:Lcom/facebook/ads/redexgen/X/Og;

    .line 45417
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A03()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    .line 45418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45419
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0O()V

    goto :goto_0
.end method

.method private A0M()V
    .locals 2

    .line 45420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45421
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A06:Lcom/facebook/ads/redexgen/X/aM;

    .line 45422
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    .line 45423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 45424
    :cond_0
    return-void
.end method

.method private A0N()V
    .locals 3

    .line 45425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getRating()F

    move-result v2

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    .line 45426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bm;->setVisibility(I)V

    .line 45429
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45430
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45433
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45434
    return-void
.end method

.method private A0O()V
    .locals 2

    .line 45435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 45436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cY;-><init>(Lcom/facebook/ads/redexgen/X/KB;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45437
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0T(I)V

    .line 45438
    return-void
.end method

.method private A0P()V
    .locals 5

    .line 45439
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0O:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 45440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v4

    .line 45441
    .local v0, "pageDetails":Lcom/facebook/ads/redexgen/X/Nm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A05:Lcom/facebook/ads/redexgen/X/Og;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A05:Lcom/facebook/ads/redexgen/X/Og;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 45442
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Og;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Yh;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 45446
    :cond_0
    :goto_0
    return-void

    .line 45447
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45448
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KB;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 45449
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 45451
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private A0Q()V
    .locals 3

    .line 45452
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45453
    .local v0, "appDownloadTextParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45454
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0d:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45455
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45457
    return-void
.end method

.method public static A0R()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A0W:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        0x1at
        0x29t
        0x3ct
        0x31t
        0x36t
        0x2ft
        -0x4dt
        -0x44t
        -0x41t
        -0xct
    .end array-data
.end method

.method private A0S(I)V
    .locals 3

    .line 45458
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 45459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 45466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45467
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45468
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45470
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 45471
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45472
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 45478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45479
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 45480
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 45481
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "keLlcznYvctfEvjur1LzpEy2BPaBqrBv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SZjrRhAKecjSc6vp3MPbWHckPYKJoG5j"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 45482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45483
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->addView(Landroid/view/View;)V

    .line 45485
    :cond_7
    return-void
.end method

.method private A0T(I)V
    .locals 2

    .line 45486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 45487
    :cond_0
    return-void

    .line 45488
    :cond_1
    if-nez p1, :cond_2

    .line 45489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45491
    :goto_0
    return-void

    .line 45492
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private A0U(I)V
    .locals 3

    .line 45494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 45495
    return-void

    .line 45496
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    .line 45497
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45498
    .local v0, "adChoiceLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 45499
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    .line 45500
    .local v1, "rightMargin":I
    .restart local v1    # "rightMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45502
    return-void

    .line 45503
    .end local v1    # "rightMargin":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_0
.end method

.method private A0V(I)V
    .locals 4

    .line 45504
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45505
    .local v0, "adInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 45506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 45507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45508
    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45509
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45510
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45511
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0N()V

    .line 45512
    return-void

    .line 45513
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 45514
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45515
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A0W(I)V
    .locals 3

    .line 45516
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45517
    .local v0, "appDownloadContainerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45518
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45519
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45520
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45521
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45522
    return-void
.end method

.method private A0X(I)V
    .locals 4

    .line 45523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    if-nez v0, :cond_0

    .line 45524
    return-void

    .line 45525
    :cond_0
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45526
    .local v0, "creditLineV2ViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .line 45527
    .local v1, "leftMargin":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 45528
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    .line 45529
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45530
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45531
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/aN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45533
    return-void
.end method

.method private A0Y(I)V
    .locals 5

    .line 45534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    if-nez v0, :cond_0

    .line 45535
    return-void

    .line 45536
    :cond_0
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45537
    .local v0, "creditLineViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .line 45538
    .local v1, "leftMargin":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 45539
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    .line 45540
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    const/16 v2, 0x9

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 45541
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45542
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45543
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    invoke-virtual {v4, v3, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45544
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45545
    return-void

    .line 45546
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45547
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45548
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0Z(I)V
    .locals 8

    .line 45549
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 45550
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v1, v0

    const v0, 0x3e051eb8    # 0.13f

    mul-float/2addr v1, v0

    float-to-int v5, v1

    .line 45551
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45552
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v6, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "T7WF8ct6Ecp3fFl6k8FlzT3xp8EZwOPe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "49nlYj8CnceEqKl67yYD9azFmPqqLBPu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/bk;->setVisibility(I)V

    .line 45553
    :goto_0
    const/4 v6, 0x0

    .line 45554
    .local v3, "topMargin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45555
    .local v4, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-ne p1, v3, :cond_0

    .line 45556
    neg-int v0, v5

    div-int/lit8 v6, v0, 0x2

    .line 45557
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45559
    :cond_0
    invoke-virtual {v2, v4, v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45561
    return-void

    .line 45562
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    goto :goto_0

    .line 45563
    .end local v2    # "size":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v0

    float-to-int v5, v1

    .line 45564
    .restart local v2    # "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 45565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bk;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0a(I)V
    .locals 3

    .line 45566
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45567
    .local v0, "starRatingContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45568
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45569
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    .line 45570
    .local v1, "topMargin":I
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45571
    .restart local v1    # "topMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bm;->setItemSpacing(I)V

    .line 45574
    return-void

    .line 45575
    .end local v1    # "topMargin":I
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    goto :goto_0
.end method

.method private A0b(I)V
    .locals 4

    .line 45576
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45577
    .local v0, "ratingParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0Q:Lcom/facebook/ads/redexgen/X/bm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bm;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45578
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 45579
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    .line 45580
    .local v2, "topMargin":I
    .restart local v2    # "topMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45581
    if-ne p1, v2, :cond_0

    .line 45582
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45583
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45584
    return-void

    .line 45585
    .end local v2    # "topMargin":I
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    goto :goto_0
.end method

.method private A0c(I)V
    .locals 5

    .line 45586
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45587
    .local v0, "rewardInfoTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45588
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 45589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45590
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    invoke-virtual {v4, v2, v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45591
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45592
    return-void

    .line 45593
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45594
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0d(I)V
    .locals 5

    .line 45595
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45596
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45597
    .local v0, "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0k()D

    move-result-wide v3

    .line 45599
    .local v1, "aspectRatio":D
    double-to-float v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getId()I

    move-result v1

    const/4 v0, 0x6

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45601
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 45602
    .local v3, "rightMargin":I
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45603
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45606
    .end local v0    # "secondaryLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "aspectRatio":D
    .end local v3    # "rightMargin":I
    :cond_0
    return-void

    .line 45607
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private A0e(I)V
    .locals 6

    .line 45608
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45609
    .local v0, "skipToInstallButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_1

    .line 45610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45611
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    .line 45612
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    .line 45613
    .local v3, "bottomMargin":I
    .restart local v3    # "bottomMargin":I
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    invoke-virtual {v3, v1, v5, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45614
    const/4 v1, 0x2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45615
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "bottomMargin":I
    .end local v1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45616
    return-void

    .line 45617
    .end local v1
    .end local v3
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    .line 45618
    .restart local v1    # "view":Landroid/view/View;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    goto :goto_0

    .line 45619
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    .line 45620
    .local v1, "topMargin":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45621
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0f:I

    .line 45622
    :cond_2
    invoke-virtual {v3, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private A0f(I)V
    .locals 4

    .line 45624
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45625
    .local v0, "titleTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 45627
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0p:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0p:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45628
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45629
    return-void

    .line 45630
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0L:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method private A0g(I)V
    .locals 10

    .line 45631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0k()D

    move-result-wide v2

    .line 45632
    .local v0, "aspectRatio":D
    const/4 v7, 0x0

    .line 45633
    .local v2, "leftMargin":I
    const/4 v4, 0x0

    .line 45634
    .local v3, "rightMargin":I
    const/4 v6, 0x0

    .line 45635
    .local v4, "topMargin":I
    const/4 v0, 0x1

    const/4 v5, -0x2

    const v1, 0x3e4ccccd    # 0.2f

    const v9, 0x3dcccccd    # 0.1f

    if-ne p1, v0, :cond_5

    .line 45636
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45637
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45638
    .end local v7
    :cond_1
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A04(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45639
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 45640
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .restart local v7
    goto :goto_0

    .line 45641
    .end local v7
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 45642
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    int-to-float v3, v0

    const v8, 0x3ecccccd    # 0.4f

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "VrmCvLPumx9qmsQ5AqX8D26sv2xEwmDs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "M5pl3CqSLX5dAxkk9LSq9NmEjnkhG5Xr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "itXi3sFkhsJNNNlf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "UwAjH2H8fcKmgRPVcHr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    goto :goto_0

    .line 45643
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "r4F6E4irn5aDyLCCoL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HLlNT1vJDSE83AAt2A8wGZErAg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .local v7, "videoHeight":I
    move v6, v3

    .line 45644
    .restart local v7    # "videoHeight":I
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45645
    .end local v7    # "videoHeight":I
    .local v5, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 45646
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(F)Z

    move-result v0

    const v8, 0x3e19999a    # 0.15f

    if-eqz v0, :cond_7

    .line 45647
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 45648
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 45649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 45650
    .local v5, "videoWidth":I
    .restart local v5    # "videoWidth":I
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45651
    .local v5, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45652
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 45653
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45654
    :goto_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45655
    return-void

    .line 45656
    :cond_6
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 45657
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v4, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "ZplkNnpiZffIY1LttQt1XVs2T7MKHARy"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "uFxfhHDbtwTjfaa8IDnniTCsCIFPOnZP"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-eqz v7, :cond_8

    .line 45658
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    move v7, v4

    .line 45659
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .restart local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 45660
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    double-to-float v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A04(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45661
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    .line 45662
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 45663
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .restart local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 45664
    .end local v5    # "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v7, v0

    .line 45665
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v4, v0

    .line 45666
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    int-to-float v1, v0

    const v0, 0x3e5c28f6    # 0.215f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_1
.end method

.method private A0h(I)V
    .locals 3

    .line 45667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KB;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 45668
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A00:I

    .line 45669
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A01:I

    .line 45670
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0d(I)V

    .line 45671
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0g(I)V

    .line 45672
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0Z(I)V

    .line 45673
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0f(I)V

    .line 45674
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0b(I)V

    .line 45675
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0Q()V

    .line 45676
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0W(I)V

    .line 45677
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0a(I)V

    .line 45678
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0V(I)V

    .line 45679
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0c(I)V

    .line 45680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45681
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0j(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 45682
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "aYm4mmhUzY2q09M7FsCiyOSpkxFbKaZW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "02gWjTBSQrtOfJ7daRHeBoWCiPeJp89r"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0U(I)V

    .line 45683
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0Y(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 45684
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "tL7wIN5OEPzS4IRzlt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pnOaA9DlQTYkC3KVcwnBrIvrHl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0X(I)V

    .line 45685
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0e(I)V

    .line 45686
    return-void

    .line 45687
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0i(I)V

    goto :goto_0

    .line 45688
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "MDf5St22kcgabUjosByBKwB24Lkknw12"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UByTvfFM4cGo3K13JgxsnaHo1RTqGnlv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0X(I)V

    .line 45689
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0e(I)V

    .line 45690
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0i(I)V
    .locals 5

    .line 45691
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45692
    .local v0, "watchAdButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_3

    .line 45693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_2

    .line 45694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_0

    .line 45695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45696
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .line 45697
    .local v1, "bottomMargin":I
    .restart local v1    # "bottomMargin":I
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0n:I

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45698
    .end local v1    # "bottomMargin":I
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "xJXeUykDDwk7QxqpMI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KNHMaHGzFmfIejDiEBJDCMbgtc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45699
    return-void

    .line 45700
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45701
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45702
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    .restart local v1    # "bottomMargin":I
    goto :goto_0

    .line 45703
    .end local v1    # "bottomMargin":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45704
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .restart local v1    # "bottomMargin":I
    goto :goto_0

    .line 45705
    .end local v1    # "bottomMargin":I
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45706
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    goto :goto_0

    .line 45707
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45708
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0j(I)V
    .locals 6

    .line 45709
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45710
    .local v0, "watchAdTextParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-ne p1, v0, :cond_3

    .line 45711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    const/16 v5, 0xc

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_2

    .line 45712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_0

    .line 45713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45714
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .line 45715
    .local v1, "bottomMargin":I
    .restart local v1    # "bottomMargin":I
    :goto_0
    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45716
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45717
    .end local v1    # "bottomMargin":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45718
    return-void

    .line 45719
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45720
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45721
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0m:I

    .restart local v1    # "bottomMargin":I
    goto :goto_0

    .line 45722
    .end local v1    # "bottomMargin":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45723
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    .restart local v1    # "bottomMargin":I
    goto :goto_0

    .line 45724
    .end local v1    # "bottomMargin":I
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45725
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    goto :goto_0

    .line 45726
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45728
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public static synthetic A0k(Lcom/facebook/ads/redexgen/X/KB;)V
    .locals 0

    .line 45729
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->A0P()V

    return-void
.end method

.method public static synthetic A0l(Lcom/facebook/ads/redexgen/X/KB;I)V
    .locals 0

    .line 45730
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0T(I)V

    return-void
.end method

.method private getRating()F
    .locals 1

    .line 45745
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 45747
    .local v0, "rating":F
    return v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45748
    .end local v0    # "rating":F
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getRatingText()Ljava/lang/String;
    .locals 5

    .line 45749
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KB;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45750
    .local v0, "ratingText":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWatchAdCtaText()Ljava/lang/String;
    .locals 5

    .line 45751
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45752
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1C()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0R:Lcom/facebook/ads/redexgen/X/c7;

    .line 45753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 45754
    invoke-static {v4, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 45731
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0
.end method

.method public final A1C()V
    .locals 5

    .line 45732
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 45733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A09:Lcom/facebook/ads/redexgen/X/Eu;

    if-eqz v0, :cond_0

    .line 45734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A09:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A07()V

    .line 45735
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A0X:[Ljava/lang/String;

    const-string v1, "tdEFFGfq1cVEZpxqy9rgZPT1BZ8plSyJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "YynlqIxuvciXAw4AWnNfF7pWFOOJrehC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 45736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0p()V

    .line 45737
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0B:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0S:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0U:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0T:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 45739
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/KB;->A08:Lcom/facebook/ads/redexgen/X/dx;

    .line 45740
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1O()Z
    .locals 1

    .line 45741
    const/4 v0, 0x1

    return v0
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/4L;)V
    .locals 1

    .line 45742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    if-eqz v0, :cond_0

    .line 45743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0A:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/EF;->A0o(Lcom/facebook/ads/redexgen/X/EF;)V

    .line 45744
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 45755
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45756
    const/16 v0, 0xa

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0P:Lcom/facebook/ads/redexgen/X/bk;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0D:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0K:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0F:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0H:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0M:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A04:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A06:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A07:Lcom/facebook/ads/redexgen/X/aN;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KB;->A0G:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 45757
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0h(I)V

    .line 45758
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0S(I)V

    .line 45759
    return-void
.end method

.method public setVideoAdViewListener(Lcom/facebook/ads/redexgen/X/dx;)V
    .locals 0

    .line 45760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KB;->A08:Lcom/facebook/ads/redexgen/X/dx;

    .line 45761
    return-void
.end method
