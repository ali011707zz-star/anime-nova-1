.class public final Lcom/facebook/ads/redexgen/X/DZ;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/animation/ObjectAnimator;

.field public A03:Lcom/facebook/ads/redexgen/X/Ek;

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/widget/ProgressBar;

.field public final A07:Lcom/facebook/ads/redexgen/X/UN;

.field public final A08:Lcom/facebook/ads/redexgen/X/UN;

.field public final A09:Lcom/facebook/ads/redexgen/X/UN;

.field public final A0A:Lcom/facebook/ads/redexgen/X/UN;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 693
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QrML4Ecz92sfYCeCtaSnFCosFmipGlTz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VhmrcYjsqpOA7Iy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZK9HRS350jRidth"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZjYoflRzQYTDfI0m0JAvuVl9vp7GlkSu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MmC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZvQ3uBw3DQ7M1xesozkO3pU9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XD5i8EmzP8U96tjWoOsk6YaJBmNCgDM7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cjtQcAKtxYCLU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DZ;->A03()V

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/DZ;->A0D:I

    .line 694
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/DZ;->A0E:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;I)V
    .locals 6

    .line 33942
    sget v2, Lcom/facebook/ads/redexgen/X/DZ;->A0E:I

    const v3, -0xbf7f01

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V

    .line 33943
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;II)V
    .locals 6

    .line 33944
    const v3, -0xbf7f01

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p3

    move v5, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V

    .line 33945
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V
    .locals 5

    .line 33946
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33947
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DZ;->A04:Z

    .line 33948
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    .line 33949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A05:Z

    .line 33950
    new-instance v0, Lcom/facebook/ads/redexgen/X/33;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/33;-><init>(Lcom/facebook/ads/redexgen/X/DZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A0A:Lcom/facebook/ads/redexgen/X/UN;

    .line 33951
    new-instance v0, Lcom/facebook/ads/redexgen/X/31;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/31;-><init>(Lcom/facebook/ads/redexgen/X/DZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A08:Lcom/facebook/ads/redexgen/X/UN;

    .line 33952
    new-instance v0, Lcom/facebook/ads/redexgen/X/2z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2z;-><init>(Lcom/facebook/ads/redexgen/X/DZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A09:Lcom/facebook/ads/redexgen/X/UN;

    .line 33953
    new-instance v0, Lcom/facebook/ads/redexgen/X/2w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/DZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A07:Lcom/facebook/ads/redexgen/X/UN;

    .line 33954
    iput p5, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    .line 33955
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    .line 33956
    invoke-virtual {p0, p3, p4, v4}, Lcom/facebook/ads/redexgen/X/DZ;->A08(IIZ)V

    .line 33957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 33958
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33959
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33960
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DZ;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 33961
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DZ;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 33962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 33963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 33964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 33965
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    .line 33966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 33967
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 4

    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const-string v1, "F3xM2b87YXaGRbor1WnSFNsn05JfW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DZ;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x5t
        -0x3t
        -0x6t
        -0xet
        -0x3t
        -0x10t
        -0x2t
        -0x2t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/DZ;)V
    .locals 0

    .line 33968
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DZ;->A02()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/DZ;)Z
    .locals 0

    .line 33969
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A05:Z

    return p0
.end method


# virtual methods
.method public final A06()V
    .locals 5

    .line 33970
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DZ;->A02()V

    .line 33971
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    .line 33972
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 33973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 33975
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    .line 33976
    return-void
.end method

.method public final A07(I)V
    .locals 7

    .line 33977
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A04:Z

    if-eqz v0, :cond_0

    .line 33978
    return-void

    .line 33979
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DZ;->A02()V

    .line 33980
    iget v4, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    .line 33981
    .local v0, "duration":I
    if-lez v4, :cond_1

    mul-int/lit16 v3, p1, 0x2710

    div-int/2addr v3, v4

    .line 33982
    .local v1, "progress":I
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33983
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const-string v1, "EPor81PzILPcuU6FixKr7Fru1uzRlGJl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "FnG13n1zUgJ6jZbSKNpX0gvuGbObv9dX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_3

    .line 33984
    if-gt v4, p1, :cond_5

    .line 33985
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_4

    .line 33986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33987
    :cond_4
    return-void

    .line 33988
    :cond_5
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    filled-new-array {v0, v3}, [I

    move-result-object v5

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    .line 33989
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 33990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 33992
    iput v3, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    .line 33993
    return-void
.end method

.method public final A08(IIZ)V
    .locals 7

    .line 33994
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 33995
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 33996
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 33997
    .local v1, "progressBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 33998
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 33999
    .local v2, "secProgressDr":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p3, :cond_0

    .line 34000
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34001
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34002
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34003
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const v0, 0x800003

    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1, v4, v0, v3, v2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    .line 34004
    .local v3, "progressDr":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v6, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 34005
    .local v4, "resultDr":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 34006
    const v0, 0x102000f

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 34007
    const v0, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 34008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34009
    return-void
.end method

.method public final A09(Z)V
    .locals 8

    .line 34010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    if-nez v0, :cond_0

    .line 34011
    return-void

    .line 34012
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DZ;->A02()V

    .line 34013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v7

    .line 34014
    .local v0, "position":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v6

    .line 34015
    .local v1, "duration":I
    :goto_0
    if-lez v6, :cond_2

    mul-int/lit16 v4, v7, 0x2710

    div-int/2addr v4, v6

    .line 34016
    .local v3, "progress":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    if-ge v0, v4, :cond_1

    if-gt v6, v7, :cond_6

    .line 34017
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    if-eq v0, v1, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34018
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 34019
    :cond_3
    iget v6, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const-string v1, "qF0L9nDi3kEsuJUK3R2iV2qYkdzV6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v0, 0x2710

    if-ge v1, v0, :cond_5

    .line 34020
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34021
    :cond_5
    return-void

    .line 34022
    :cond_6
    if-eqz p1, :cond_7

    .line 34023
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    filled-new-array {v0, v4}, [I

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    .line 34024
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A02:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 34027
    :goto_2
    iput v4, p0, Lcom/facebook/ads/redexgen/X/DZ;->A01:I

    .line 34028
    return-void

    .line 34029
    :cond_7
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DZ;->A06:Landroid/widget/ProgressBar;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/DZ;->A0C:[Ljava/lang/String;

    const-string v1, "fU59jt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34030
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34031
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A08:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A09:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A0A:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A07:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    .line 34032
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34033
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34034
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A0A:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A09:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A08:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A07:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    .line 34035
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A03:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34037
    return-void
.end method

.method public getCustomDuration()I
    .locals 1

    .line 34038
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    return v0
.end method

.method public setCustomDuration(I)V
    .locals 0

    .line 34039
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A00:I

    .line 34040
    return-void
.end method

.method public setShouldClearAnimationWhenVideoCompleted(Z)V
    .locals 0

    .line 34041
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DZ;->A05:Z

    .line 34042
    return-void
.end method
