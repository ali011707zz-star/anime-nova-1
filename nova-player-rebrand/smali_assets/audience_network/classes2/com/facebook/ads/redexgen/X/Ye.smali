.class public final Lcom/facebook/ads/redexgen/X/Ye;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionView"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/TextView;

.field public final A03:Lcom/facebook/ads/redexgen/X/jd;

.field public final A04:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/Yg;

.field public final A07:Lcom/facebook/ads/redexgen/X/bZ;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2524
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c7FfjQ6y3HaOHMc3qahze5tazZKFUWq1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dcjzuF3AqOMcB85rWB1c89WERUNuq1B5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XaDq3zOpduRXpYeV6weqhdOc6hHMeHaG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Q9qxFF5jdCSss8nmQrnDrKCnC4cH87bf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mFimVIfUvc9UC82U0ppl8tgspTjbkT4E"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "57zseqNU9OKtNdE63wjpGd4u4uyNaDsl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MUX7fVpzJp514oXL2qVdvbHezKVj77rn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k1MvgkHtcy8fDpGprRj2aO2t64o5A9wC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ye;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yg;I)V
    .locals 9

    .line 74251
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 74253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    .line 74254
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 74255
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A06:Lcom/facebook/ads/redexgen/X/Yg;

    .line 74256
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    .line 74257
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Ljava/lang/String;

    .line 74258
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A00()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 74259
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Ye;->setOrientation(I)V

    .line 74260
    iget v7, p3, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 74261
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A00()I

    move-result v0

    int-to-float v5, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A00()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A00()I

    move-result v0

    int-to-float v8, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A00()I

    move-result v0

    int-to-float v3, v0

    const/16 v0, 0x8

    new-array v2, v0, [F

    aput v5, v2, v4

    const/4 v5, 0x1

    aput v1, v2, v5

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x3

    aput v1, v2, v0

    const/4 v0, 0x4

    aput v1, v2, v0

    const/4 v0, 0x5

    aput v1, v2, v0

    const/4 v0, 0x6

    aput v8, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    .line 74262
    invoke-static {p0, v7, v2}, Lcom/facebook/ads/redexgen/X/YB;->A0T(Landroid/view/View;I[F)V

    .line 74263
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->setPadding(IIII)V

    .line 74264
    sget v1, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74265
    .local v2, "iconLayout":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74266
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0t:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 74267
    if-eqz v6, :cond_0

    .line 74268
    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:Landroid/widget/ImageView;

    .line 74269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74272
    :cond_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74273
    .local v5, "skipLabelLayout":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74274
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    .line 74275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 74276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    iget v0, p3, Lcom/facebook/ads/redexgen/X/Yg;->A01:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 74278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74280
    iget v2, p3, Lcom/facebook/ads/redexgen/X/Yg;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A16:Lcom/facebook/ads/redexgen/X/YM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bZ;

    invoke-direct {v0, p1, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/bZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;IILcom/facebook/ads/redexgen/X/YM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/bZ;

    .line 74281
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74282
    .local v1, "arrowLayout":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/bZ;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74284
    return-void
.end method

.method private A00()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 74285
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A02()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74286
    .local v0, "serverIcon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A01()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74287
    .local v1, "clientIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A20()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 74288
    return-object v2

    .line 74289
    :cond_0
    if-eqz v1, :cond_1

    .line 74290
    return-object v1

    .line 74291
    :cond_1
    return-object v2
.end method

.method private A01()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 74292
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74293
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 74294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 74295
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74296
    :catch_0
    move-exception v1

    .line 74297
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 74298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74299
    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xeda

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74300
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const-string v1, "jUfyBK5zlH0tl8V7sWmOgq7X259zWj2J"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "SGIYZLeU9975u8UEdBoCCWNy5l7CdrBr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 74301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A11()Ljava/lang/String;

    move-result-object v3

    .line 74302
    .local v0, "serverHostAppIconUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74303
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    sget v1, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    .line 74304
    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0O(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74305
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74306
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 74307
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 74308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74309
    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xed9

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74310
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const-string v1, "ZW7Ma5Rt6RF6OtA2ZfTqzGK0I4YaPrZB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "zx4dLaY49jPP5LwtUTckaWLPrAPuKDRF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method private A03()Ljava/lang/String;
    .locals 6

    .line 74311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A12()Ljava/lang/String;

    move-result-object v5

    .line 74312
    .local v0, "serverHostAppName":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A21()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const-string v1, "bWh5ZJLUuxhwdzQeFGE5pJ27zwRBZYtK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "k8oYCR3AxWxSTXJGQikG90YPzIUE2fAr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 74313
    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 74314
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74315
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 74316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 74317
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74318
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74319
    .local v4, "clientHostAppName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74320
    return-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74321
    :catch_0
    move-exception v1

    .line 74322
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 74323
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74324
    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xedb

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74325
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    return-object v5
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0A:[Ljava/lang/String;

    const-string v1, "OzxZ8QvRVggYR8fS16eYEPx7e3FaNVjG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hJPaGMutZvNvi8XFOWZAJRaNW6kshKbn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 74326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 74327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74328
    :cond_0
    return-object p0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ye;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x66t
        0x66t
        0xft
        0x35t
        0x24t
        0x24t
        0x9t
        0x60t
        0x48t
        0x5et
        0x58t
        0x48t
        0x66t
        0x10t
        0x1t
        0x1t
        0x2et
        0x1et
        0x1t
        0x14t
        0x1ft
        0x2et
        0x10t
        0x15t
        0x2t
    .end array-data
.end method

.method private A07(F)V
    .locals 2

    .line 74329
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 74330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/bZ;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bZ;->setVisibility(I)V

    .line 74331
    :goto_0
    return-void

    .line 74332
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/bZ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bZ;->setVisibility(I)V

    goto :goto_0
.end method

.method private A08(F)V
    .locals 6

    .line 74333
    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v3

    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    .line 74334
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 74335
    .local v0, "remainingSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v2, 0x8

    const/4 v1, 0x6

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A04(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_0

    .line 74336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 74337
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 74338
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A07()Ljava/lang/String;

    move-result-object v1

    .line 74339
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 74340
    .local v1, "text":Ljava/lang/String;
    .restart local v1    # "text":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74341
    return-void

    .line 74342
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 74343
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 74344
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Ljava/lang/String;

    .line 74345
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 74346
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74347
    .end local v1
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A08()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 74349
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 74350
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 74351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A04()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Ljava/lang/String;

    .line 74352
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final A09()I
    .locals 1

    .line 74353
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    return v0
.end method

.method public final A0A(F)V
    .locals 0

    .line 74354
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A07(F)V

    .line 74355
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A08(F)V

    .line 74356
    return-void
.end method

.method public final A0B(F)V
    .locals 0

    .line 74357
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A08(F)V

    .line 74358
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A07(F)V

    .line 74359
    return-void
.end method

.method public final A0C(I)V
    .locals 1

    .line 74360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->AGB(I)V

    .line 74361
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    .line 74362
    return-void
.end method
