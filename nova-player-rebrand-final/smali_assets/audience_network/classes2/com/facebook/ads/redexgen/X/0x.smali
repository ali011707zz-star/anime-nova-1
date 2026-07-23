.class public final Lcom/facebook/ads/redexgen/X/0x;
.super Lcom/facebook/ads/redexgen/X/1F;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ys;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Ys;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/6v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J7yX0QGw9CwhbXJlOgK1AZPNtt2UF0On"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oXMSY1TARkqssgt6s8jHvILUEU9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ivvOLLZvAzFcQQYEM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "46hEJr0dkjUa2YxjnqHHZtVzHBYgDtfX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qOyhICr4SrTKnx9gG6JsVKrXp45uLK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kbgvhlczlSdLn8qANYfrfCagYhnCySOb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z6RoLzaVoBLmlhzvAeWOPUTl5laN13sF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YB9cTMd7bVO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0x;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 3702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1F;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 3703
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    .line 3704
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    .line 3705
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    .line 3706
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    .line 3707
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    .line 3708
    new-instance v2, Lcom/facebook/ads/redexgen/X/e0;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/e0;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/dz;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/dz;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6v;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6v;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/e0;Lcom/facebook/ads/redexgen/X/dz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    .line 3709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    .line 3710
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 3

    .line 3711
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1F;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    .line 3712
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    .line 3713
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    .line 3714
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    .line 3715
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    .line 3716
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    .line 3717
    new-instance v2, Lcom/facebook/ads/redexgen/X/e0;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/e0;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/dz;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/dz;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6v;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6v;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/e0;Lcom/facebook/ads/redexgen/X/dz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    .line 3718
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    .line 3719
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3720
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1F;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    .line 3721
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    .line 3722
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    .line 3723
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    .line 3724
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    .line 3725
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    .line 3726
    new-instance v2, Lcom/facebook/ads/redexgen/X/e0;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/e0;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/dz;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/dz;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6v;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6v;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/e0;Lcom/facebook/ads/redexgen/X/dz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    .line 3727
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    .line 3728
    return-void
.end method

.method private A00(I)I
    .locals 7

    .line 3729
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 3730
    .local v0, "spacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    .line 3731
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v4

    .line 3732
    .local v2, "numItems":I
    const/4 v3, 0x0

    .line 3733
    .local v3, "numFullItems":I
    const v0, 0x7fffffff

    .line 3734
    .local v4, "itemSize":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 3735
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_0

    .line 3736
    return p1

    .line 3737
    :cond_0
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    .line 3738
    :cond_1
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0x;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const-string v1, "76s3uTgYoGqvxE8PFJZmOuk3NB8C1jhQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 3739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A2C(I)V

    .line 3740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1F;->setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V

    .line 3741
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/0x;->setSaveEnabled(Z)V

    .line 3742
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1F;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/e2;)V

    .line 3743
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 3744
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0x;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x45t
        -0x63t
        -0x52t
        -0x4ct
        -0x4et
        -0x70t
        -0x4bt
        -0x52t
        -0x45t
        -0x4ct
        -0x4et
        -0x4ft
    .end array-data
.end method

.method private A04(II)V
    .locals 4

    .line 3745
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    if-ne p2, v0, :cond_0

    .line 3746
    return-void

    .line 3747
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    .line 3748
    iput p2, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    .line 3749
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const-string v1, "arB2ao"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 3750
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3751
    :cond_2
    return-void
.end method


# virtual methods
.method public final A20(IZ)V
    .locals 1

    .line 3752
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1F;->A20(IZ)V

    .line 3753
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A04(II)V

    .line 3754
    return-void
.end method

.method public final A8o(I)I
    .locals 3

    .line 3755
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3756
    .local v0, "scrollXAbs":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    if-gt v2, v0, :cond_0

    .line 3757
    const/4 v0, 0x0

    return v0

    .line 3758
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 3759
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 3760
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7M;->onMeasure(II)V

    .line 3761
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 3762
    .local v0, "verticalPadding":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-eqz v0, :cond_2

    .line 3763
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v1, v0

    .line 3764
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0F(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 3765
    .local v1, "height":I
    .restart local v1    # "height":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3766
    :goto_1
    sub-int/2addr v1, v3

    .line 3767
    .local v2, "itemSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-eqz v0, :cond_1

    .line 3768
    sget v0, Lcom/facebook/ads/redexgen/X/Yn;->A09:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3769
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0x;->setMeasuredDimension(II)V

    .line 3770
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-nez v0, :cond_0

    .line 3771
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->setChildWidth(I)V

    .line 3772
    :cond_0
    return-void

    .line 3773
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/0x;->A00(I)I

    move-result v2

    goto :goto_2

    .line 3774
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3775
    goto :goto_1

    .line 3776
    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 3777
    .end local v1    # "height":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V
    .locals 2

    .line 3778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6v;->A2J(I)V

    .line 3779
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 3780
    return-void

    .line 3781
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 3782
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    .line 3783
    return-void
.end method

.method public setChildWidth(I)V
    .locals 6

    .line 3784
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    .line 3785
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v5

    .line 3786
    .local v0, "pageWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 3787
    .local v1, "innerWidth":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6v;->A2K(I)V

    .line 3788
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/6v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/6v;->A2I(D)V

    .line 3789
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 3790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A20(IZ)V

    .line 3791
    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/Ys;)V
    .locals 0

    .line 3792
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A04:Lcom/facebook/ads/redexgen/X/Ys;

    .line 3793
    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .locals 0

    .line 3794
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    .line 3795
    return-void
.end method
