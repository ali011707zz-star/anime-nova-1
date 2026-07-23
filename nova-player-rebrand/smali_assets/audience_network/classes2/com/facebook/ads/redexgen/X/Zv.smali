.class public final Lcom/facebook/ads/redexgen/X/Zv;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Ok;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Lcom/facebook/ads/redexgen/X/Zf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2589
    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zv;->A03:I

    .line 2590
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    .line 2591
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Zf;Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 6

    .line 75975
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Zf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 75976
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Zf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 7

    .line 75977
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75978
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 75979
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    .line 75980
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Lcom/facebook/ads/redexgen/X/Zf;

    .line 75981
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Zv;->setOrientation(I)V

    .line 75982
    const/4 v0, -0x2

    const/4 v5, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75983
    .local v1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 75984
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Zv;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 75985
    .local v2, "headerView":Landroid/view/View;
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 75986
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75987
    .local v5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75988
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 75989
    invoke-virtual {p0, v2, v4}, Lcom/facebook/ads/redexgen/X/Zv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75990
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Zv;->addView(Landroid/view/View;)V

    .line 75991
    .end local v2    # "headerView":Landroid/view/View;
    .end local v5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ok;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ok;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A00(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 75993
    .local v0, "subHeaderView":Landroid/view/View;
    sget v1, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    invoke-virtual {v2, v3, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75994
    invoke-virtual {p0, v2, v4}, Lcom/facebook/ads/redexgen/X/Zv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75995
    .end local v0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zv;->A03()Lcom/facebook/ads/redexgen/X/a1;

    move-result-object v1

    .line 75996
    .local v0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 75997
    invoke-virtual {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/Zv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75998
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 75999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76000
    .local v0, "iconView":Landroid/widget/ImageView;
    const v2, -0x9f9890

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76001
    sget v1, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76002
    .local v2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76003
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76005
    .local v3, "textView":Landroid/widget/TextView;
    const/16 v0, 0xe

    const/4 v4, 0x1

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 76006
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76007
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76008
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76009
    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76010
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 76011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76012
    .local v4, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76013
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76014
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76015
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 76016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76017
    .local v0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76018
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0L:Lcom/facebook/ads/redexgen/X/YM;

    .line 76019
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76020
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76021
    sget v2, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A05:I

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76022
    sget v1, Lcom/facebook/ads/redexgen/X/Zv;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76023
    .local v1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zt;-><init>(Lcom/facebook/ads/redexgen/X/Zv;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76024
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76025
    .local v2, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 76026
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76027
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 76028
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76029
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76030
    .local v5, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Zv;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 76031
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76032
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zv;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76033
    .local v3, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76034
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76035
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76036
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zv;)Lcom/facebook/ads/redexgen/X/Zf;
    .locals 0

    .line 76037
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Lcom/facebook/ads/redexgen/X/Zf;

    return-object p0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/a1;
    .locals 6

    .line 76038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/a1;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/a1;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 76039
    .local v0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/a1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ok;->A05()Ljava/util/List;

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

    .line 76040
    .local v2, "reason":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 76041
    .local v3, "chipView":Lcom/facebook/ads/redexgen/X/Zh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ok;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 76042
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zu;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Zu;-><init>(Lcom/facebook/ads/redexgen/X/Zv;Lcom/facebook/ads/redexgen/X/Zh;Lcom/facebook/ads/redexgen/X/Ok;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76043
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/a1;->addView(Landroid/view/View;)V

    .line 76044
    .end local v2    # "reason":Lcom/facebook/ads/redexgen/X/Ok;
    .end local v3    # "chipView":Lcom/facebook/ads/redexgen/X/Zh;
    goto :goto_0

    .line 76045
    :cond_0
    return-object v5
.end method
