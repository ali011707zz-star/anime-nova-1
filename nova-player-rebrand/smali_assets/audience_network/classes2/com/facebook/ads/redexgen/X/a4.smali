.class public final Lcom/facebook/ads/redexgen/X/a4;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Lcom/facebook/ads/redexgen/X/Nm;

.field public final A04:Lcom/facebook/ads/redexgen/X/Og;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/VI;

.field public final A07:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 2

    .line 76113
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Landroid/os/Handler;

    .line 76115
    new-instance v0, Lcom/facebook/ads/redexgen/X/a2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a2;-><init>(Lcom/facebook/ads/redexgen/X/a4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A08:Ljava/lang/Runnable;

    .line 76116
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a4;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 76117
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A09:Ljava/lang/String;

    .line 76118
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    .line 76119
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/a4;->A07:Lcom/facebook/ads/redexgen/X/Yh;

    .line 76120
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/a4;->A06:Lcom/facebook/ads/redexgen/X/VI;

    .line 76121
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A04:Lcom/facebook/ads/redexgen/X/Og;

    .line 76122
    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A0B:Lcom/facebook/ads/redexgen/X/YM;

    .line 76123
    const/16 v0, 0x450

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/a4;->A01(Lcom/facebook/ads/redexgen/X/YM;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Landroid/widget/ImageView;

    .line 76124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a4;->addView(Landroid/view/View;)V

    .line 76125
    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A0C:Lcom/facebook/ads/redexgen/X/YM;

    .line 76126
    const/16 v0, 0x451

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/a4;->A01(Lcom/facebook/ads/redexgen/X/YM;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A02:Landroid/widget/ImageView;

    .line 76127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a4;->addView(Landroid/view/View;)V

    .line 76128
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a4;->A07(I)V

    .line 76129
    new-instance v0, Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a3;-><init>(Lcom/facebook/ads/redexgen/X/a4;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76130
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/a4;)Landroid/os/Handler;
    .locals 0

    .line 76131
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Landroid/os/Handler;

    return-object p0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/YM;I)Landroid/widget/ImageView;
    .locals 3

    .line 76132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76133
    .local v0, "adChoiceView":Landroid/widget/ImageView;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76134
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76135
    invoke-static {p2, v2}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 76136
    return-object v2
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/a4;)Landroid/widget/ImageView;
    .locals 0

    .line 76137
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a4;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/a4;)Ljava/lang/Runnable;
    .locals 0

    .line 76138
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a4;->A08:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 76139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76140
    return-void
.end method

.method public final A05()V
    .locals 2

    .line 76141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76142
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a4;->A07(I)V

    .line 76143
    return-void
.end method

.method public final A06()V
    .locals 4

    .line 76144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A06:Lcom/facebook/ads/redexgen/X/VI;

    if-eqz v0, :cond_0

    .line 76145
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a4;->A06:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 76146
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a4;->A04:Lcom/facebook/ads/redexgen/X/Og;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Og;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76147
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a4;->A07:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a4;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 76148
    :cond_1
    :goto_0
    return-void

    .line 76149
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76150
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a4;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    .line 76151
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A09:Ljava/lang/String;

    .line 76152
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final A07(I)V
    .locals 3

    .line 76153
    const/4 v2, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 76154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76156
    :goto_0
    return-void

    .line 76157
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
