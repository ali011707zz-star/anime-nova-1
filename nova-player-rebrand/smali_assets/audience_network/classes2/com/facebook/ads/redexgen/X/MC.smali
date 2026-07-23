.class public final Lcom/facebook/ads/redexgen/X/MC;
.super Lcom/facebook/ads/redexgen/X/Zd;
.source ""


# static fields
.field public static A05:[B

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/Og;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1376
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MC;->A01()V

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    .line 1377
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MC;->A07:I

    .line 1378
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MC;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V
    .locals 5

    .line 51153
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;)V

    .line 51154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 51155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    .line 51156
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    .line 51157
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/MC;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/MC;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/MC;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/MC;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51158
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51159
    sget v2, Lcom/facebook/ads/redexgen/X/MC;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/MC;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51160
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    .line 51163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 51164
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51165
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    .line 51166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51167
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51168
    const/4 v0, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51169
    .local v1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51171
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MC;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x18

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/MC;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        -0x15t
        -0x13t
        -0xbt
        0x78t
        -0x5ft
        -0x5ct
        -0x58t
        -0x66t
        0x55t
        0x76t
        -0x67t
        0x55t
        -0x79t
        -0x66t
        -0x5bt
        -0x5ct
        -0x59t
        -0x57t
        -0x62t
        -0x5dt
        -0x64t
    .end array-data
.end method


# virtual methods
.method public final A0O()V
    .locals 9

    .line 51172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zw;-><init>(Lcom/facebook/ads/redexgen/X/MC;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51174
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51176
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51177
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zx;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Zx;-><init>(Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51179
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51180
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zy;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Zy;-><init>(Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51182
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Zh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    .line 51183
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A06:Lcom/facebook/ads/redexgen/X/YM;

    .line 51184
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51185
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zz;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Zz;-><init>(Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51186
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51187
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/MC;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51188
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51189
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MC;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51190
    .local v6, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51191
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51192
    .local v4, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51193
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51198
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51199
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51200
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51201
    return-void
.end method

.method public final A0P()V
    .locals 0

    .line 51202
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0I(Landroid/view/View;)V

    .line 51203
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 51204
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 6

    .line 51205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51206
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A06:Lcom/facebook/ads/redexgen/X/Oi;

    if-ne p2, v0, :cond_0

    .line 51207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0F()Ljava/lang/String;

    move-result-object v5

    .line 51208
    .local v0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    .line 51209
    .local v1, "icon":Lcom/facebook/ads/redexgen/X/YM;
    const v3, -0x86dc5

    .line 51210
    .local v2, "iconBackground":I
    .restart local v2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Za;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Zf;)V

    .line 51211
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Za;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    .line 51212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    .line 51213
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ok;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->A0J(Z)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51215
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Za;->A0D(Lcom/facebook/ads/redexgen/X/YM;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51216
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Za;->A0C(I)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51217
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->A0K(Z)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51218
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->A0I(Z)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0L()Lcom/facebook/ads/redexgen/X/Zb;

    move-result-object v3

    .line 51220
    .local v3, "adHiddenView":Lcom/facebook/ads/redexgen/X/Zb;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51221
    .local v4, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51222
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 51225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51227
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zd;->A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V

    .line 51228
    return-void

    .line 51229
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "icon":Lcom/facebook/ads/redexgen/X/YM;
    .end local v2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0H()Ljava/lang/String;

    move-result-object v5

    .line 51230
    .restart local v0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    .line 51231
    .restart local v1    # "icon":Lcom/facebook/ads/redexgen/X/YM;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 6

    .line 51232
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A06:Lcom/facebook/ads/redexgen/X/Oi;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 51233
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    .line 51234
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/Zv;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Zf;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51235
    .local v2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51236
    .local v1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51237
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0L:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a0;-><init>(Lcom/facebook/ads/redexgen/X/MC;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51240
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 51243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51246
    return-void

    .line 51247
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_1

    .line 51248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0S()Z
    .locals 1

    .line 51249
    const/4 v0, 0x1

    return v0
.end method
