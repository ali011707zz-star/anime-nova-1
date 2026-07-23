.class public final Lcom/facebook/ads/redexgen/X/YZ;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[B

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/Og;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2517
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YZ;->A03()V

    const/high16 v1, 0x42480000    # 50.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YZ;->A08:I

    .line 2518
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    .line 2519
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YZ;->A06:I

    .line 2520
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YZ;->A09:I

    .line 2521
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YZ;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;I)V
    .locals 1

    .line 74190
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74191
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YZ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 74192
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A02:Lcom/facebook/ads/redexgen/X/Og;

    .line 74193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setOrientation(I)V

    .line 74194
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Landroid/widget/ImageView;

    .line 74195
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A01:Landroid/widget/ImageView;

    .line 74196
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/YZ;->A04(I)V

    .line 74197
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/YZ;)Lcom/facebook/ads/redexgen/X/Og;
    .locals 0

    .line 74198
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A02:Lcom/facebook/ads/redexgen/X/Og;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YZ;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 74199
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YZ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

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

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YZ;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x42t
    .end array-data
.end method

.method private A04(I)V
    .locals 7

    .line 74200
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A06:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 74201
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 74202
    sget v6, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    div-int/lit8 v2, v0, 0x3

    sget v1, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setPadding(IIII)V

    .line 74203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74204
    .local v3, "adTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74205
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74206
    sget v2, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    div-int/2addr v2, v3

    sget v1, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    div-int/2addr v1, v3

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    div-int/2addr v0, v3

    invoke-virtual {v6, v4, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74207
    const/16 v0, 0xd

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 74208
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74209
    .local v0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74210
    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/YZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74211
    sget v2, Lcom/facebook/ads/redexgen/X/YZ;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A07:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74212
    .local v2, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74214
    .end local v0    # "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "adTextView":Landroid/widget/TextView;
    .end local v0
    .end local v2
    .end local v4
    :goto_0
    return-void

    .line 74215
    :cond_0
    sget v3, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A05:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setPadding(IIII)V

    .line 74216
    if-ne p1, v5, :cond_1

    .line 74217
    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A0I:Lcom/facebook/ads/redexgen/X/YM;

    .line 74218
    .local v0, "infoIconImage":Lcom/facebook/ads/redexgen/X/YM;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A01:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 74219
    sget v2, Lcom/facebook/ads/redexgen/X/YZ;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74220
    .local v2, "infoButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74222
    sget v2, Lcom/facebook/ads/redexgen/X/YZ;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74223
    .local v4, "adChoicesParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A09:I

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74224
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 74226
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A0c:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_1
.end method

.method public static A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 1

    .line 74227
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74228
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74229
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74230
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 6

    .line 74231
    new-instance v0, Lcom/facebook/ads/redexgen/X/YY;

    move-object v1, p0

    move-object v3, p4

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/YY;-><init>(Lcom/facebook/ads/redexgen/X/YZ;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74232
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 74233
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 74234
    .local v0, "backgroundStyle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 74235
    sget v0, Lcom/facebook/ads/redexgen/X/YZ;->A08:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 74236
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74237
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 74238
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 74239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YZ;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74241
    return-void
.end method
