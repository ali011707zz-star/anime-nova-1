.class public final Lcom/facebook/ads/redexgen/X/MD;
.super Lcom/facebook/ads/redexgen/X/Zd;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Landroid/widget/HorizontalScrollView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/LinearLayout;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/Og;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1379
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MD;->A01()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    .line 1380
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MD;->A08:I

    .line 1381
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MD;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V
    .locals 6

    .line 51250
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V

    .line 51251
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 51252
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    .line 51253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    .line 51254
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/MD;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/MD;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/MD;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/MD;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51257
    sget v1, Lcom/facebook/ads/redexgen/X/MD;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/MD;->A07:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51258
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51259
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    .line 51260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51261
    const/4 v0, -0x2

    const/4 v2, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51262
    .local v1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    .line 51264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 51265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51266
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    .line 51268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 51271
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51273
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 51275
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MD;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MD;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x20t
        0x22t
        0x2at
        0x3t
        0x2ct
        0x2ft
        0x33t
        0x25t
        0x60t
        0x1t
        0x24t
        0x60t
        0x12t
        0x25t
        0x30t
        0x2ft
        0x32t
        0x34t
        0x29t
        0x2et
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A0O()V
    .locals 8

    .line 51276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zm;-><init>(Lcom/facebook/ads/redexgen/X/MD;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51278
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51280
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51281
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zn;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Zn;-><init>(Lcom/facebook/ads/redexgen/X/MD;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51283
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51284
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zo;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Zo;-><init>(Lcom/facebook/ads/redexgen/X/MD;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51286
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    .line 51287
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A06:Lcom/facebook/ads/redexgen/X/YM;

    .line 51288
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51289
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Zp;-><init>(Lcom/facebook/ads/redexgen/X/MD;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51290
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51291
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51297
    return-void
.end method

.method public final A0P()V
    .locals 0

    .line 51298
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0I(Landroid/view/View;)V

    .line 51299
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 51300
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 4

    .line 51301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51302
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MD;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51303
    .local v0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 51304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A04:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51305
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51308
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51309
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zd;->A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V

    .line 51310
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 6

    .line 51311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0L:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zq;-><init>(Lcom/facebook/ads/redexgen/X/MD;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51314
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MD;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MD;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 51317
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51318
    .local v0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/MD;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51319
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ok;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ok;

    .line 51320
    .local v2, "option":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51321
    .local v3, "optionView":Lcom/facebook/ads/redexgen/X/Zh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ok;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51322
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zr;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Zr;-><init>(Lcom/facebook/ads/redexgen/X/MD;Lcom/facebook/ads/redexgen/X/Zh;Lcom/facebook/ads/redexgen/X/Ok;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51324
    .end local v2    # "option":Lcom/facebook/ads/redexgen/X/Ok;
    .end local v3    # "optionView":Lcom/facebook/ads/redexgen/X/Zh;
    goto :goto_0

    .line 51325
    :cond_0
    return-void
.end method

.method public final A0S()Z
    .locals 1

    .line 51326
    const/4 v0, 0x1

    return v0
.end method
