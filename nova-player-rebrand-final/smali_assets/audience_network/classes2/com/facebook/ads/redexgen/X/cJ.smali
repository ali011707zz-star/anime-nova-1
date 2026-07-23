.class public final Lcom/facebook/ads/redexgen/X/cJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Lcom/facebook/ads/redexgen/X/aJ;

.field public A09:Lcom/facebook/ads/redexgen/X/aJ;

.field public A0A:Lcom/facebook/ads/redexgen/X/Kr;

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public final A0F:I

.field public final A0G:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0H:Lcom/facebook/ads/redexgen/X/NN;

.field public final A0I:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Nd;

.field public final A0K:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0L:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Yh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2669
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pFRbUbIPvfwTsTWtR68DyqtfsQzo0Y9e"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Jmt0yS7cxIqywVTLVazlNOZqViG4fijG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7JVXgwFSulrh0z9RNSntkrow2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "W96LwBzZpPkBapcy7gGTKWs8B4GUDBcq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "br88nFbBZbLJ3vTh4p9wwCNTIA57FmIY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mzQptMR0Z3d1fPQPbwNf4EthVYWzR3DW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IPE7BiI9pZn923UUuncSvZhUL3wMHGrT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "br6hrssh6VRKiVV1vNUkmhf3WWjX02F0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cJ;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 2

    .line 78920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78921
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    .line 78922
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A02:I

    .line 78923
    const/16 v1, 0xa

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    .line 78924
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    .line 78925
    const/16 v0, 0x28

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A05:I

    .line 78926
    const/16 v0, 0x34

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A06:I

    .line 78927
    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A00:I

    .line 78928
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A07:I

    .line 78929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0D:Z

    .line 78930
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    .line 78931
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0M:Lcom/facebook/ads/redexgen/X/Yh;

    .line 78932
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0I:Lcom/facebook/ads/redexgen/X/NY;

    .line 78933
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0J:Lcom/facebook/ads/redexgen/X/Nd;

    .line 78934
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0H:Lcom/facebook/ads/redexgen/X/NN;

    .line 78935
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2T()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0E:Z

    .line 78936
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0C:Z

    .line 78937
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eU;->A00(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    .line 78938
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    .line 78939
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 78940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cJ;->A03()V

    .line 78941
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/widget/ImageView;
    .locals 5

    .line 78942
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0w:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78943
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    const/4 v2, 0x1

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78944
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78945
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78946
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 78947
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78948
    .local v4, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 78949
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78950
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78951
    iget v3, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 78952
    new-instance v0, Lcom/facebook/ads/redexgen/X/cG;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/cG;-><init>(Lcom/facebook/ads/redexgen/X/Kr;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78953
    const v2, 0x800035

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 78954
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 78955
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78956
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78957
    return-object v4
.end method

.method private A01()Landroid/widget/TextView;
    .locals 2

    .line 78958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78959
    const/4 v0, 0x0

    return-object v0

    .line 78960
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78961
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78962
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78963
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78964
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 78965
    return-object v1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cJ;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "XwNXbwlUcFi7qEktIehGuIyqazGrk614"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hx9Csixc74t4pIrSAOrr1o5nquGlqFF4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 2

    .line 78966
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    .line 78967
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A02:I

    .line 78968
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    .line 78969
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    .line 78970
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A05:I

    .line 78971
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A06:I

    .line 78972
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A00:I

    .line 78973
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0F:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A07:I

    .line 78974
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cJ;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x76t
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x7et
        0x4t
        0x61t
        0x61t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x25t
        0x29t
        0x2bt
        0x68t
        0x20t
        0x27t
        0x25t
        0x23t
        0x24t
        0x29t
        0x29t
        0x2dt
        0x68t
        0x27t
        0x22t
        0x35t
        0x68t
        0x2ft
        0x28t
        0x32t
        0x23t
        0x34t
        0x35t
        0x32t
        0x2ft
        0x32t
        0x2ft
        0x27t
        0x2at
        0x68t
        0x20t
        0x2ft
        0x28t
        0x2ft
        0x35t
        0x2et
        0x19t
        0x27t
        0x25t
        0x32t
        0x2ft
        0x30t
        0x2ft
        0x32t
        0x3ft
        0x2at
        0x32t
        0x30t
        0x29t
    .end array-data
.end method

.method private A05(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 78975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78976
    .local v0, "view":Landroid/view/View;
    const/16 v2, 0x9

    const/16 v1, 0x9

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78977
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 78978
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78979
    return-void
.end method

.method private A06(Landroid/widget/FrameLayout;)V
    .locals 12

    .line 78980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78981
    .local v0, "frameLayoutForCreditLine":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0M:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v10, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 78982
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v11

    .line 78983
    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    .line 78984
    const/4 v1, -0x2

    const v0, 0x800055

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 78985
    .local v1, "creditLineLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 78986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78987
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78988
    return-void
.end method

.method private A07(Landroid/widget/FrameLayout;)V
    .locals 12

    .line 78989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78990
    .local v0, "frameLayoutForCreditLineV2":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0M:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v10, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    sget-object v11, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    .line 78991
    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    .line 78992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 78993
    const/4 v1, -0x2

    const v0, 0x800053

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 78994
    .local v1, "creditLineLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 78995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78996
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78997
    return-void
.end method

.method private A08(Landroid/widget/FrameLayout;)V
    .locals 6

    .line 78998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78999
    .local v0, "frameLayoutForCreditLineV2":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 79000
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v4

    .line 79001
    .local v1, "creditLineStaticView":Lcom/facebook/ads/redexgen/X/aN;
    const/4 v1, -0x2

    const v0, 0x800053

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 79002
    .local v2, "creditLineLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 79003
    invoke-virtual {v5, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79004
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79005
    return-void
.end method

.method private A09(Landroid/widget/FrameLayout;Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 13

    .line 79006
    move-object v12, p0

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79007
    .local v2, "parent":Landroid/widget/FrameLayout;
    iget v2, v12, Lcom/facebook/ads/redexgen/X/cJ;->A06:I

    iget v1, v12, Lcom/facebook/ads/redexgen/X/cJ;->A02:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A02:I

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 79008
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0E:Z

    if-eqz v0, :cond_0

    .line 79009
    new-instance v0, Lcom/facebook/ads/redexgen/X/cI;

    invoke-direct {v0, v12, p2}, Lcom/facebook/ads/redexgen/X/cI;-><init>(Lcom/facebook/ads/redexgen/X/cJ;Lcom/facebook/ads/redexgen/X/Kr;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79010
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0t:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79011
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget v1, v12, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    const/4 v2, 0x1

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79012
    .local v4, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79013
    .local v5, "imageView":Landroid/widget/ImageView;
    const/16 v0, 0x3ea

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 79014
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79015
    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 79016
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 79017
    .local v9, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 79018
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79019
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79020
    iget v3, v12, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v2, v12, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v1, v12, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    iget v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A01:I

    invoke-virtual {v6, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 79021
    const v0, 0x800035

    const/4 v4, -0x2

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 79022
    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v11, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 79023
    new-instance v0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {v0, v12}, Lcom/facebook/ads/redexgen/X/cF;-><init>(Lcom/facebook/ads/redexgen/X/cJ;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79024
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0J:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v2

    .line 79025
    .local v12, "delay":J
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0B:Z

    if-eqz v0, :cond_2

    .line 79026
    iget-object v3, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0J:Lcom/facebook/ads/redexgen/X/Nd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "EDg5a4vgNKTBN5Vd4K7j2JAWQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nd;->A01()J

    move-result-wide v2

    .line 79027
    :cond_2
    iget-boolean v9, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0D:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_6

    sget-object v8, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "lPr3oecF17Vr0ETjxWpa6eT7xUG7TKGz"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "pN0Dd6Okr1h1scp4h6gPnTJrQwG996nC"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_4

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 79028
    const/4 v10, 0x0

    .line 79029
    .local v6, "dubiousSkip":Landroid/widget/ImageView;
    iget-boolean v9, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0C:Z

    sget-object v8, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v8, v0

    const/4 v0, 0x6

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v8, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "NBSSb5i8vB7h2DITQFZ0JVIGTEGpjtjm"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "r6oo3XDBH3cPwN6mP2aoTtDXeEGymFZK"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_3

    :goto_1
    if-eqz p2, :cond_3

    .line 79030
    invoke-direct {v12, p2}, Lcom/facebook/ads/redexgen/X/cJ;->A00(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/widget/ImageView;

    move-result-object v10

    .line 79031
    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79032
    :cond_3
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v6, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/eU;->A01(Landroid/content/Context;Landroid/view/View;JLandroid/view/View;)V

    .line 79033
    .end local v6    # "dubiousSkip":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v7, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79034
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/cJ;->A0D:Z

    if-nez v0, :cond_8

    .line 79035
    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v8, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "LTYB5M4Mhdd1oprOtejFkg7YcKqdK9Vm"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "s8tsGyr3r09N1mPmkZSZvoZyMzIeZ0vJ"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_6
    sget-object v8, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "tzOwMkw7uDsuhpEAhy55DDXkTNG5R2eG"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "LVlHDeBQ28ZWrMMDEXcUdCCcU9GvuA6m"

    const/4 v0, 0x1

    aput-object v1, v8, v0

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "Yzc02jbTluogikiQi2Wv962AcLGu9uF1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JahYjLhPUhQBnUZY2LL7YeIOJlGmyCNi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79036
    :cond_8
    const/16 v1, 0x30

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79037
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 5

    .line 79038
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79039
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79040
    iget v3, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 79041
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setTextSize(F)V

    .line 79042
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bb;->A0D()V

    .line 79043
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setIncludeFontPadding(Z)V

    .line 79044
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79045
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setTextColor(I)V

    .line 79046
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A00:I

    .line 79047
    const/4 v0, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79048
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 79049
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setId(I)V

    .line 79050
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79052
    :cond_0
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Kr;Landroid/view/View;)V
    .locals 3

    .line 79053
    const/16 v2, 0x3f

    const/4 v1, 0x4

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 79054
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setVisibility(I)V

    .line 79055
    return-void
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/view/View;
    .locals 1

    .line 79056
    if-eqz p1, :cond_0

    .line 79057
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setV2Design(Z)V

    .line 79058
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0D(Lcom/facebook/ads/redexgen/X/Kr;Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Kr;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 17

    .line 79059
    move-object/from16 v2, p0

    move-object v2, v2

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0A:Lcom/facebook/ads/redexgen/X/Kr;

    .line 79060
    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object/from16 v3, p2

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0B:Z

    .line 79061
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79062
    .local v5, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v7, -0x1

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79063
    new-instance v11, Lcom/facebook/ads/redexgen/X/bq;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0H:Lcom/facebook/ads/redexgen/X/NN;

    .line 79064
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;ZZZ)V

    .line 79065
    .local v6, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/bq;
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0I:Lcom/facebook/ads/redexgen/X/NY;

    .line 79066
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v12

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0I:Lcom/facebook/ads/redexgen/X/NY;

    .line 79067
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/NY;->A0E()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 79068
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 79069
    const/16 v7, 0x11

    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 79070
    const/16 v6, 0x1c

    invoke-virtual {v11, v6}, Lcom/facebook/ads/redexgen/X/bq;->setTitleTextSize(I)V

    .line 79071
    const/16 v6, 0xd

    invoke-virtual {v11, v6}, Lcom/facebook/ads/redexgen/X/bq;->setDescriptionTextSize(I)V

    .line 79072
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/bq;->A02()V

    .line 79073
    iget v8, v2, Lcom/facebook/ads/redexgen/X/cJ;->A05:I

    iget v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A05:I

    invoke-virtual {v11, v8, v1, v6, v1}, Lcom/facebook/ads/redexgen/X/bq;->setPadding(IIII)V

    .line 79074
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79075
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 79076
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Up;->A1D(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79077
    new-instance v6, Lcom/facebook/ads/redexgen/X/cH;

    invoke-direct {v6, v2, v4}, Lcom/facebook/ads/redexgen/X/cH;-><init>(Lcom/facebook/ads/redexgen/X/cJ;Lcom/facebook/ads/redexgen/X/Kr;)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79078
    :cond_0
    iget v6, v2, Lcom/facebook/ads/redexgen/X/cJ;->A04:I

    neg-int v6, v6

    invoke-virtual {v8, v1, v6, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79079
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79080
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79081
    if-eqz v3, :cond_2

    .line 79082
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 79083
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79084
    :cond_1
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79085
    :cond_2
    const/4 v10, -0x2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79086
    .local v3, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/cJ;->A07:I

    invoke-virtual {v9, v1, v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79087
    invoke-virtual {v8, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79088
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/cJ;->A01()Landroid/widget/TextView;

    move-result-object v7

    .line 79089
    .local v9, "partnershipADTextView":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 79090
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79091
    .local v7, "partnershipADParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Lcom/facebook/ads/redexgen/X/cJ;->A07:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/cJ;->A03:I

    invoke-virtual {v6, v1, v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79092
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79093
    .end local v7    # "partnershipADParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    if-eqz v4, :cond_4

    .line 79094
    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/cJ;->A0A(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 79095
    invoke-virtual {v8, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79096
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Kr;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79097
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 79098
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 79099
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A05(Landroid/widget/FrameLayout;)V

    .line 79100
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79101
    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/cJ;->A09(Landroid/widget/FrameLayout;Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 79102
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79103
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A06(Landroid/widget/FrameLayout;)V

    .line 79104
    :cond_5
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    sget-object v4, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v4, v1

    const/4 v1, 0x6

    aget-object v4, v4, v1

    const/16 v1, 0x1f

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v3, v1, :cond_9

    sget-object v4, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v3, "4iwGVt394BTmmSYCgqRVgc6es"

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79105
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A08(Landroid/widget/FrameLayout;)V

    .line 79106
    :cond_6
    :goto_1
    return-object v0

    .line 79107
    :cond_7
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/cJ;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/jd;->A2V()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79108
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A07(Landroid/widget/FrameLayout;)V

    goto :goto_1

    .line 79109
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 1

    .line 79110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0A:Lcom/facebook/ads/redexgen/X/Kr;

    return-object v0
.end method

.method public final A0F()V
    .locals 4

    .line 79111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 79112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 79113
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cJ;->A0O:[Ljava/lang/String;

    const-string v1, "2Z0HXqlllvltE4fpmlk2k5YgzqGJ81zY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EMsyCAj6WMyQurvXYMEHBK7qX1GDVftC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 79114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 79115
    :cond_2
    return-void
.end method

.method public final synthetic A0G(Landroid/view/View;)V
    .locals 4

    .line 79116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0K:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 79117
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0M:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v2, 0x12

    const/16 v1, 0x2d

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 79118
    return-void
.end method

.method public final A0H(Z)V
    .locals 1

    .line 79119
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 79120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A08:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 79121
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_1

    .line 79122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cJ;->A09:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 79123
    :cond_1
    return-void
.end method

.method public final A0I(Z)V
    .locals 0

    .line 79124
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cJ;->A0D:Z

    .line 79125
    return-void
.end method
