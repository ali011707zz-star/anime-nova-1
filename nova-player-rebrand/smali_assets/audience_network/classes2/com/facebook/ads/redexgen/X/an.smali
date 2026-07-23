.class public final Lcom/facebook/ads/redexgen/X/an;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:I


# instance fields
.field public A00:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/TextView;

.field public A02:Landroid/widget/TextView;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2615
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Mfdbn5Fl8k5qESsaG0tegRjcib9VHyOt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "n0hxWP15hSbsHLgypwcG0GAEv81vEzmV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Vpnz2oFEzE2IYGPVAE8ZMW29wyhZcEwz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XXuq8LnmLUMAtFguuOE2ao"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "65dSWN68FJcVNMzXlJchEDZxxrt4hqBN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4lVNSswaDDObG8m1C4PrWCxrHhrY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bBsj4v6TxeKFgxIfhKXDpm0rApYDu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O9LsOEgR32mEkKEZI9qaQe7VINaI1GfC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/an;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/an;->A02()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0O:I

    sput v0, Lcom/facebook/ads/redexgen/X/an;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 76823
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76824
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/an;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 76825
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/an;->A01()V

    .line 76826
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/an;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/an;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/an;->A05:[Ljava/lang/String;

    const-string v1, "BgS7v0vuK4FmmS5TgN4Oq9qrsj8N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "egQQbAPCKiEugSC3TXQQi3lfGkkhl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 9

    .line 76827
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/an;->setOrientation(I)V

    .line 76828
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/an;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    .line 76829
    const/4 v0, -0x1

    const/4 v8, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76830
    .local v1, "titleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76831
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 76836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76837
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/an;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    .line 76838
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76839
    .local v2, "subtitleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 76840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/an;->A06:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 76843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 76847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76849
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/an;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/an;->A05:[Ljava/lang/String;

    const-string v1, "YCLa9ko3h9BxKjOoBFpqdrzQ8S4ZW0px"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76851
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/an;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x1at
        0x1at
        0x1et
        0x1dt
    .end array-data
.end method

.method private getPadlockDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 76852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 76853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A03:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0R:Lcom/facebook/ads/redexgen/X/YM;

    .line 76854
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YN;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Landroid/graphics/drawable/Drawable;

    .line 76855
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A00:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public setSubtitle(Ljava/lang/String;)V
    .locals 6

    .line 76856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 76857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76859
    .end local v0
    :goto_0
    return-void

    .line 76860
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76861
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76862
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    .line 76863
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/an;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/an;->getPadlockDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76864
    :goto_1
    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A01:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76866
    :cond_1
    move-object v0, v5

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 76867
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76870
    :goto_0
    return-void

    .line 76871
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/an;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
