.class public final Lcom/facebook/ads/redexgen/X/aJ;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Lcom/facebook/ads/redexgen/X/aK;

.field public A03:Ljava/lang/Runnable;

.field public A04:Z

.field public final A05:I

.field public final A06:Landroid/graphics/Bitmap;

.field public final A07:Landroid/graphics/Bitmap;

.field public final A08:Landroid/graphics/Bitmap;

.field public final A09:Landroid/graphics/Bitmap;

.field public final A0A:Landroid/graphics/Bitmap;

.field public final A0B:Landroid/graphics/Bitmap;

.field public final A0C:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0D:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0E:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0G:Lcom/facebook/ads/redexgen/X/aM;

.field public final A0H:Lcom/facebook/ads/redexgen/X/aP;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2595
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jjhv1QqAIW86EmEZitDWSXUy5KAygWmD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Knznf5NxnzMSGuCyCavmDPpLrbg6IGSX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ILZruYKannRuDYsFiZYXNynBpyms"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eZKheB7115JCtr5xxUXw9oXkLPe4M5DC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "o2TLnhgUMatQJZ63WkSJRDhfBnbI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vZrVQG4SvGUnBHUUGdfxrKmAlJmFc80m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RT8BtEaKHOdmDtB2bzxk3zMCIxucDNYE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yGiX4fEKWzcCLDIcRuEbwAcVWGPLZUB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aK;Lcom/facebook/ads/redexgen/X/aP;)V
    .locals 8

    .line 76231
    move-object v0, p0

    move-object/from16 v7, p8

    move-object v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)V

    .line 76232
    iput-object p7, v0, Lcom/facebook/ads/redexgen/X/aJ;->A02:Lcom/facebook/ads/redexgen/X/aK;

    .line 76233
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)V
    .locals 1

    .line 76234
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76235
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0X:Lcom/facebook/ads/redexgen/X/YM;

    .line 76236
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A07:Landroid/graphics/Bitmap;

    .line 76237
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0W:Lcom/facebook/ads/redexgen/X/YM;

    .line 76238
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A06:Landroid/graphics/Bitmap;

    .line 76239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    .line 76240
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A09:Lcom/facebook/ads/redexgen/X/YM;

    .line 76241
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A08:Landroid/graphics/Bitmap;

    .line 76242
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0A:Lcom/facebook/ads/redexgen/X/YM;

    .line 76243
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A09:Landroid/graphics/Bitmap;

    .line 76244
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0D:Lcom/facebook/ads/redexgen/X/YM;

    .line 76245
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0A:Landroid/graphics/Bitmap;

    .line 76246
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0Z:Lcom/facebook/ads/redexgen/X/YM;

    .line 76247
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0B:Landroid/graphics/Bitmap;

    .line 76248
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A27()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A05:I

    .line 76249
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0E:Lcom/facebook/ads/redexgen/X/VI;

    .line 76250
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0F:Lcom/facebook/ads/redexgen/X/Yh;

    .line 76251
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0G:Lcom/facebook/ads/redexgen/X/aM;

    .line 76252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 76253
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0C:Lcom/facebook/ads/redexgen/X/jd;

    .line 76254
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    .line 76255
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A05()V

    .line 76256
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/aJ;->A0K(Z)V

    .line 76257
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aJ;)Landroid/widget/ImageView;
    .locals 0

    .line 76258
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aJ;)Lcom/facebook/ads/redexgen/X/aP;
    .locals 0

    .line 76259
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    return-object p0
.end method

.method private A02()V
    .locals 4

    .line 76260
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v1, 0x64

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0M(Landroid/view/View;FFI)V

    .line 76261
    new-instance v3, Lcom/facebook/ads/redexgen/X/MA;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/MA;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    const/4 v1, 0x3

    const/16 v0, 0x12c

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/aJ;->A0E(IILcom/facebook/ads/redexgen/X/a6;Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 76262
    new-instance v2, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aJ;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76263
    return-void
.end method

.method private A03()V
    .locals 4

    .line 76264
    new-instance v3, Lcom/facebook/ads/redexgen/X/MB;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/MB;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    const/4 v1, 0x2

    const/16 v0, 0x12c

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/aJ;->A0E(IILcom/facebook/ads/redexgen/X/a6;Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 76265
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0M(Landroid/view/View;FFI)V

    .line 76266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76267
    return-void
.end method

.method private A04()V
    .locals 1

    .line 76268
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76269
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A06()V

    .line 76270
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A02()V

    .line 76271
    :cond_0
    return-void
.end method

.method private A05()V
    .locals 2

    .line 76272
    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aP;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76273
    :goto_0
    return-void

    .line 76274
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0G:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    goto :goto_0

    .line 76275
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0G:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76276
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A06()V
    .locals 4

    .line 76277
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    .line 76280
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const-string v1, "PZwK6paCNaN1NNUi7D9zVsXgJs4CpRYo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    .line 76281
    return-void
.end method

.method private A07()V
    .locals 4

    .line 76282
    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aP;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76283
    const v3, -0x33e3d4cd    # -4.09387E7f

    sget-object v1, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const-string v1, "J4Bl2paDruPebaLnqzXafrD0wXfUXyp3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 76284
    :goto_0
    return-void

    .line 76285
    :pswitch_0
    const v0, -0x33363637

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 76286
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private A08()V
    .locals 5

    .line 76287
    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aP;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76288
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76289
    :goto_0
    return-void

    .line 76290
    :pswitch_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76291
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76292
    goto :goto_0

    .line 76293
    :pswitch_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const-string v1, "IwvL04OrKqzmIeLShS8Q4SIdnVqi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Ml3LYYHXQPQgDXepFoLqaPfqy73Y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76294
    goto :goto_0

    .line 76295
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A09()V
    .locals 8

    .line 76296
    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aP;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A06:Landroid/graphics/Bitmap;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    const/4 v7, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76298
    :goto_0
    return-void

    .line 76299
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0B:Landroid/graphics/Bitmap;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A02:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A02:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    const/4 v7, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76300
    goto :goto_0

    .line 76301
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A09:Landroid/graphics/Bitmap;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v7, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76302
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0A()V
    .locals 10

    .line 76303
    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aP;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76304
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A07:Landroid/graphics/Bitmap;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    const/4 v7, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76305
    :goto_0
    return-void

    .line 76306
    :pswitch_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0A:Landroid/graphics/Bitmap;

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v7, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v8, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    const/4 v9, -0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aJ;->A0I:[Ljava/lang/String;

    const-string v1, "BqxrFQJIBIExT1rCMndHo1bmHb8U1dtr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4mbJeCFNsEoBSiTcA819Z9qBG38wKlHe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76307
    goto :goto_0

    .line 76308
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A08:Landroid/graphics/Bitmap;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v7, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aJ;->A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V

    .line 76309
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0B()V
    .locals 3

    .line 76310
    new-instance v0, Lcom/facebook/ads/redexgen/X/a9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a9;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    .line 76311
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A03:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A05:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aJ;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76312
    return-void
.end method

.method private A0C()V
    .locals 2

    .line 76313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    .line 76314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76315
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0B()V

    .line 76316
    return-void
.end method

.method private final A0D()V
    .locals 5

    .line 76317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    if-ne v1, v0, :cond_0

    .line 76320
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76321
    :goto_0
    return-void

    .line 76322
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private A0E(IILcom/facebook/ads/redexgen/X/a6;Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 2

    .line 76323
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 76324
    .local v0, "transition":Landroid/animation/LayoutTransition;
    new-instance v0, Lcom/facebook/ads/redexgen/X/aH;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/aH;-><init>(Lcom/facebook/ads/redexgen/X/aJ;ILcom/facebook/ads/redexgen/X/a6;)V

    invoke-virtual {v1, p1, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 76325
    invoke-virtual {v1, p4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 76326
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 76327
    return-void
.end method

.method private A0F(Landroid/widget/ImageView;Landroid/graphics/Bitmap;IIIII)V
    .locals 2

    .line 76328
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 76329
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76330
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76331
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76332
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76333
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76334
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76335
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/aJ;)V
    .locals 0

    .line 76336
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A08()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/aJ;)V
    .locals 0

    .line 76337
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0B()V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/aJ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A03()V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/aJ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A02()V

    return-void
.end method

.method private A0K(Z)V
    .locals 5

    .line 76338
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setOrientation(I)V

    .line 76339
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setPadding(IIII)V

    .line 76340
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setClipToPadding(Z)V

    .line 76341
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setGravity(I)V

    .line 76342
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A07()V

    .line 76343
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0C:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setCornerRadius(F)V

    .line 76344
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aJ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    .line 76345
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0A()V

    .line 76346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->addView(Landroid/view/View;)V

    .line 76347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    if-ne v1, v0, :cond_0

    .line 76348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76349
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aJ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    .line 76350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A09()V

    .line 76351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->addView(Landroid/view/View;)V

    .line 76352
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aJ;->A0L(Z)V

    .line 76353
    new-instance v0, Lcom/facebook/ads/redexgen/X/a8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a8;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76354
    return-void
.end method

.method private A0L(Z)V
    .locals 2

    .line 76355
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/aP;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    if-ne v1, v0, :cond_1

    .line 76356
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0C()V

    .line 76357
    :goto_0
    return-void

    .line 76358
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76359
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/aJ;)Z
    .locals 0

    .line 76360
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/aJ;Z)Z
    .locals 0

    .line 76361
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    return p1
.end method

.method private setCornerRadius(F)V
    .locals 1

    .line 76399
    new-instance v0, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aC;-><init>(Lcom/facebook/ads/redexgen/X/aJ;F)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 76400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setClipToOutline(Z)V

    .line 76401
    return-void
.end method


# virtual methods
.method public final A0O()V
    .locals 0

    .line 76362
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A06()V

    .line 76363
    return-void
.end method

.method public final A0P()V
    .locals 0

    .line 76364
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A06()V

    .line 76365
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0D()V

    .line 76366
    return-void
.end method

.method public final A0Q()V
    .locals 1

    .line 76367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    .line 76368
    new-instance v0, Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aB;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aJ;->post(Ljava/lang/Runnable;)Z

    .line 76369
    return-void
.end method

.method public final synthetic A0R()V
    .locals 2

    .line 76370
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    return-void
.end method

.method public final synthetic A0S()V
    .locals 3

    .line 76371
    new-instance v2, Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aJ;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic A0T(Landroid/view/View;)V
    .locals 5

    .line 76372
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A04:Z

    if-eqz v0, :cond_2

    .line 76373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0H:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    if-ne v1, v0, :cond_0

    .line 76374
    return-void

    .line 76375
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A04()V

    .line 76376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A02:Lcom/facebook/ads/redexgen/X/aK;

    if-eqz v0, :cond_1

    .line 76377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A02:Lcom/facebook/ads/redexgen/X/aK;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/aK;->ADW(Landroid/view/View;)V

    .line 76378
    return-void

    .line 76379
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0E:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0F:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0C:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A0G:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A07(Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/aM;)V

    goto :goto_0

    .line 76380
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aJ;->A0Q()V

    .line 76381
    :goto_0
    return-void
.end method

.method public final synthetic A0U(Ljava/lang/Object;J)V
    .locals 3

    .line 76382
    check-cast p1, Landroid/view/View;

    .line 76383
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 76384
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aJ;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76385
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x3fc00000    # 1.5f

    new-instance v0, Lcom/facebook/ads/redexgen/X/X7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/X7;-><init>(F)V

    .line 76386
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aG;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    .line 76387
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76388
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76389
    return-void
.end method

.method public final synthetic A0V(Ljava/lang/Object;J)V
    .locals 3

    .line 76390
    check-cast p1, Landroid/view/View;

    .line 76391
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aJ;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 76392
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 76393
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76394
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Lcom/facebook/ads/redexgen/X/aJ;)V

    .line 76395
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x3fc00000    # 1.5f

    new-instance v0, Lcom/facebook/ads/redexgen/X/X8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/X8;-><init>(F)V

    .line 76396
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76397
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76398
    return-void
.end method
