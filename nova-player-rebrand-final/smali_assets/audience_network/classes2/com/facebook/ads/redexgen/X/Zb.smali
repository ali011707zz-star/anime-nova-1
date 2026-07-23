.class public final Lcom/facebook/ads/redexgen/X/Zb;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Za;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Og;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/Zf;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2565
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    .line 2566
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    .line 2567
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0D:I

    .line 2568
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    .line 2569
    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/Zb;->A07:I

    .line 2570
    const/high16 v1, 0x42960000    # 75.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0E:I

    .line 2571
    const/high16 v1, 0x41c80000    # 25.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0B:I

    .line 2572
    const/high16 v1, 0x42340000    # 45.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    .line 2573
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A0C:I

    .line 2574
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zb;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Za;)V
    .locals 10

    .line 75663
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A01(Lcom/facebook/ads/redexgen/X/Za;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75664
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A01(Lcom/facebook/ads/redexgen/X/Za;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 75665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A02:Lcom/facebook/ads/redexgen/X/Og;

    .line 75666
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A03(Lcom/facebook/ads/redexgen/X/Za;)Lcom/facebook/ads/redexgen/X/Zf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A04:Lcom/facebook/ads/redexgen/X/Zf;

    .line 75667
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A09(Lcom/facebook/ads/redexgen/X/Za;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0E:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A01:I

    .line 75668
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A09(Lcom/facebook/ads/redexgen/X/Za;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0B:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A00:I

    .line 75669
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A0A(Lcom/facebook/ads/redexgen/X/Za;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A05:Z

    .line 75670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Zb;->setFocusable(Z)V

    .line 75671
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zb;->A01(Lcom/facebook/ads/redexgen/X/Za;)Landroid/view/View;

    move-result-object v8

    .line 75672
    .local v0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zb;->A00(Lcom/facebook/ads/redexgen/X/Za;)Landroid/view/View;

    move-result-object v9

    .line 75673
    .local v1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getFooterView()Landroid/view/View;

    move-result-object v7

    .line 75674
    .local v2, "footerView":Landroid/view/View;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 75675
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 75676
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 75677
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75678
    .local v3, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75679
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75680
    .local v6, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75681
    const/4 v1, 0x3

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75682
    const/4 v1, 0x2

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75683
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75684
    .local v4, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75685
    sget v3, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 75686
    invoke-virtual {p0, v8, v6}, Lcom/facebook/ads/redexgen/X/Zb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75687
    invoke-virtual {p0, v9, v5}, Lcom/facebook/ads/redexgen/X/Zb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75688
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/Zb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75689
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75690
    return-void

    .line 75691
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0C:I

    goto :goto_1

    .line 75692
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Za;Lcom/facebook/ads/redexgen/X/ZY;)V
    .locals 0

    .line 75693
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zb;-><init>(Lcom/facebook/ads/redexgen/X/Za;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Za;)Landroid/view/View;
    .locals 14

    .line 75694
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75695
    .local v1, "iconView":Landroid/widget/ImageView;
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Zb;->A00:I

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Zb;->A00:I

    iget v1, v8, Lcom/facebook/ads/redexgen/X/Zb;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Zb;->A00:I

    invoke-virtual {v13, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75696
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A02(Lcom/facebook/ads/redexgen/X/Za;)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75697
    const/4 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75698
    iget v1, v8, Lcom/facebook/ads/redexgen/X/Zb;->A01:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Zb;->A01:I

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75699
    .local v3, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75700
    .local v4, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75701
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A00(Lcom/facebook/ads/redexgen/X/Za;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75702
    invoke-static {v13, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 75703
    const/16 v10, 0x11

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75704
    sget v4, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    const/4 v2, 0x0

    invoke-virtual {v12, v4, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75705
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75706
    .local v7, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v11, v6, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75707
    const v0, -0xe3e1df

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75708
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A07(Lcom/facebook/ads/redexgen/X/Za;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75709
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 75710
    const/4 v1, -0x2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75711
    .local v8, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v5, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v4, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    invoke-virtual {v9, v5, v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75712
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75713
    .local v11, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v7, v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75714
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75715
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A04(Lcom/facebook/ads/redexgen/X/Za;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75716
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 75717
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75718
    .local v2, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75719
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75720
    .local v12, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75721
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75722
    invoke-virtual {v5, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75723
    invoke-virtual {v5, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75724
    invoke-virtual {v5, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75725
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A08(Lcom/facebook/ads/redexgen/X/Za;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75726
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75727
    .local v13, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75728
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75729
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A05(Lcom/facebook/ads/redexgen/X/Za;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75730
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Zb;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 75731
    .local v6, "logoView":Lcom/facebook/ads/redexgen/X/bk;
    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75732
    .local v9, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75733
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/bk;->setFullCircleCorners(Z)V

    .line 75734
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Zb;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v7, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0F:I

    .line 75735
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 75736
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A05(Lcom/facebook/ads/redexgen/X/Za;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 75737
    invoke-virtual {v4, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75738
    .end local v6    # "logoView":Lcom/facebook/ads/redexgen/X/bk;
    .end local v9    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Zb;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 75739
    .local v6, "selectedOptionView":Lcom/facebook/ads/redexgen/X/Zh;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A06(Lcom/facebook/ads/redexgen/X/Za;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0T:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 75740
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Zh;->setSelected(Z)V

    .line 75741
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75742
    .local v5, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75743
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75744
    .end local v5    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "selectedOptionView":Lcom/facebook/ads/redexgen/X/Zh;
    .end local v13    # "chipContainer":Landroid/widget/LinearLayout;
    :cond_1
    return-object v5
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Za;)Landroid/view/View;
    .locals 7

    .line 75745
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75746
    .local v0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75747
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Za;->A0B(Lcom/facebook/ads/redexgen/X/Za;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75749
    .local v1, "closeButton":Landroid/widget/ImageView;
    sget v3, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A08:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75750
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75751
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75752
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZY;-><init>(Lcom/facebook/ads/redexgen/X/Zb;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75753
    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0D:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75754
    .local v2, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Zb;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/Zb;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75755
    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75756
    .end local v1    # "closeButton":Landroid/widget/ImageView;
    .end local v2    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v6
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zb;)Lcom/facebook/ads/redexgen/X/Zf;
    .locals 0

    .line 75757
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A04:Lcom/facebook/ads/redexgen/X/Zf;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zb;)Z
    .locals 0

    .line 75758
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A05:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 9

    .line 75759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75760
    .local v0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A17:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75761
    const v2, -0xca871b

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75762
    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A06:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75763
    .local v2, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75764
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75765
    .local v4, "managePrefsText":Landroid/widget/TextView;
    const/16 v0, 0x10

    const/4 v4, 0x0

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75766
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75767
    sget v3, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zb;->A0A:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zb;->A02:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75769
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75770
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75771
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75772
    .local v5, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75773
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75774
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZZ;-><init>(Lcom/facebook/ads/redexgen/X/Zb;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75775
    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75776
    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75777
    return-object v1
.end method
