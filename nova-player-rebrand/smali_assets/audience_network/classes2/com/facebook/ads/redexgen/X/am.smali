.class public final Lcom/facebook/ads/redexgen/X/am;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:I


# instance fields
.field public A00:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/TextView;

.field public A02:Landroid/widget/TextView;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2614
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jr0WeKM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aLyr78qnX3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WDzI2yCoQnaG5WlFPMLzJUV1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NMdl8UzP9SICP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nTr6FgA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dLt28u1n76"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "a9DRmwxXZv9mu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zh83YRMbL55XtKeOm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/am;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/am;->A02()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sput v0, Lcom/facebook/ads/redexgen/X/am;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 76771
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76772
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/am;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 76773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/am;->A01()V

    .line 76774
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/am;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/am;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/am;->A05:[Ljava/lang/String;

    const-string v1, "ZRUGDW6hHHeRJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Carw9iBjdVQlg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    xor-int/2addr p1, p2

    xor-int/lit8 v0, p1, 0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 8

    .line 76775
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/am;->setOrientation(I)V

    .line 76776
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/am;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    .line 76777
    const/4 v0, -0x1

    const/4 v7, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76778
    .local v1, "titleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const v0, -0xf7f7f7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 76784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/am;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76786
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/am;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    .line 76787
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76788
    .local v2, "subtitleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 76789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    const v0, -0x8c8c8d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 76792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 76796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/am;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76800
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/am;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1et
        0x2t
        0x2t
        0x6t
        0x5t
    .end array-data
.end method

.method private getPadlockBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 76801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 76802
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0S:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Landroid/graphics/Bitmap;

    .line 76803
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Landroid/graphics/Bitmap;

    sget v2, Lcom/facebook/ads/redexgen/X/am;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/am;->A06:I

    const/4 v0, 0x1

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Landroid/graphics/Bitmap;

    .line 76804
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public setSubtitle(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 76806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76807
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/am;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/am;->A05:[Ljava/lang/String;

    const-string v1, "pcOg4Bl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wYgGrPO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76808
    .end local v0
    :goto_0
    return-void

    .line 76809
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76810
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76811
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    .line 76812
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/am;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76813
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/am;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/am;->getPadlockBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 76814
    :goto_1
    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76815
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A01:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76816
    :cond_1
    move-object v0, v5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 76817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76820
    :goto_0
    return-void

    .line 76821
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
