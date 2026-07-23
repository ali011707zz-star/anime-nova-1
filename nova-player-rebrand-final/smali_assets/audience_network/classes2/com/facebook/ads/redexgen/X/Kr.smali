.class public final Lcom/facebook/ads/redexgen/X/Kr;
.super Lcom/facebook/ads/redexgen/X/bb;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/graphics/Bitmap;

.field public A03:Landroid/graphics/Paint;

.field public A04:Landroid/graphics/Rect;

.field public A05:Lcom/facebook/ads/redexgen/X/gi;

.field public A06:Lcom/facebook/ads/redexgen/X/XO;

.field public A07:Lcom/facebook/ads/redexgen/X/Kx;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/bV;

.field public final A0D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 960
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zJy5N3L509NIqOAGCBmq2SY7W4xK8HwT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vMyDxD7xbIgTd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0bWjMiKAxESivC84rSJqWsF4vTTr4zpm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NIsgbM1VoVKu1UXdUm6ipB03AExBFzGo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2iAtRdiONhZPMieR3MSLVzPYox5YjbDW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kr;->A04()V

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Kr;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Xh;)V
    .locals 11

    .line 48674
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v2

    .line 48675
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Z

    move-result v4

    .line 48676
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v9

    .line 48677
    move-object v0, p0

    move-object/from16 v10, p8

    move-object/from16 v8, p7

    move-object/from16 v6, p5

    move-object v5, p4

    move-object v3, p3

    move-object/from16 v7, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Xh;)V

    .line 48678
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/bV;->A08(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 48679
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 10

    .line 48680
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move-object/from16 v7, p6

    move-object v6, p5

    move-object v5, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 48681
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 10

    .line 48682
    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/bb;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;)V

    .line 48683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    .line 48684
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0B:Z

    .line 48685
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/Kr;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 48686
    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0A:Z

    .line 48687
    new-instance v2, Lcom/facebook/ads/redexgen/X/bV;

    move-object/from16 v8, p9

    move-object/from16 v6, p8

    move-object v7, p5

    move-object/from16 v5, p7

    move-object v4, p2

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    .line 48688
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Kr;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48689
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 48690
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Xh;)V
    .locals 11

    .line 48691
    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/bb;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;)V

    .line 48692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    .line 48693
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0B:Z

    .line 48694
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/Kr;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 48695
    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0A:Z

    .line 48696
    new-instance v2, Lcom/facebook/ads/redexgen/X/bV;

    move-object/from16 v10, p10

    move-object/from16 v8, p9

    move-object/from16 v6, p8

    move-object/from16 v7, p5

    move-object/from16 v5, p7

    move-object v4, p2

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Xh;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    .line 48697
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Kr;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48698
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 48699
    return-void
.end method

.method public static A00(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 48700
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 48701
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 48702
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48703
    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 48704
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 48705
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48706
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48707
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

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
    .locals 4

    .line 48708
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48709
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A0q:Lcom/facebook/ads/redexgen/X/YM;

    .line 48710
    .local v0, "encodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 48711
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YN;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48712
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A00(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    .line 48713
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A03:Landroid/graphics/Paint;

    .line 48714
    sget v2, Lcom/facebook/ads/redexgen/X/Kr;->A0G:I

    sget v1, Lcom/facebook/ads/redexgen/X/Kr;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 48715
    .end local v0    # "encodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :cond_0
    return-void

    .line 48716
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/YM;->A1E:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_0
.end method

.method private A03()V
    .locals 4

    .line 48717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_1

    .line 48718
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Lcom/facebook/ads/redexgen/X/XO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A0F:[Ljava/lang/String;

    const-string v1, "Jn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "nM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 48719
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Lcom/facebook/ads/redexgen/X/Kx;

    if-eqz v0, :cond_2

    .line 48720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Lcom/facebook/ads/redexgen/X/Kx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kx;->A04()V

    .line 48721
    :cond_2
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0x15t
        -0x18t
        -0x1et
        -0x16t
        -0x22t
        -0xet
        -0x12t
        -0xct
        -0xft
        -0x1et
        -0x1ct
        -0x17t
        -0x1bt
        -0x50t
        -0x10t
        -0x18t
        -0xat
        -0xat
        -0x18t
        -0xft
        -0x16t
        -0x18t
        -0xbt
        0x1ct
        0x26t
        0x12t
        0x29t
        -0x1bt
        0x12t
        0x17t
        0x18t
        0x26t
        0x1ct
        0x1at
        0x21t
        0x5dt
        0x5bt
        0x4dt
        0x5at
        0x4bt
        0x54t
        0x51t
        0x4bt
        0x53t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/jd;)Z
    .locals 5

    .line 48722
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A23()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 5

    .line 48723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48724
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0

    .line 48725
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;->A03()V

    .line 48726
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48727
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0B:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0xc

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48728
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kr;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 9

    .line 48729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Lcom/facebook/ads/redexgen/X/XO;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48730
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48731
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A01()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48732
    :cond_0
    return v1

    .line 48733
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Kx;

    .line 48734
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A23()I

    move-result v2

    .line 48735
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v3

    .line 48736
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A24()I

    move-result v4

    .line 48737
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A02()Ljava/lang/String;

    move-result-object v5

    .line 48738
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A01()Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Kx;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/Kr;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Lcom/facebook/ads/redexgen/X/Kx;

    .line 48739
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Lcom/facebook/ads/redexgen/X/Kx;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Lcom/facebook/ads/redexgen/X/XO;

    .line 48740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 48741
    const/4 v0, 0x1

    return v0

    .line 48742
    :cond_2
    return v1
.end method

.method public getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;
    .locals 1

    .line 48743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 48744
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Kr;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    const/16 v2, 0x24

    const/16 v1, 0x9

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 48745
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Kr;
    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 48746
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/bb;->onDetachedFromWindow()V

    .line 48747
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;->A03()V

    .line 48748
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 48749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A04:Landroid/graphics/Rect;

    .line 48751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    .line 48752
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A00:I

    .line 48753
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A00:I

    add-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    .line 48754
    .local v0, "shift":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48755
    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48756
    .end local v0    # "shift":I
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->onDraw(Landroid/graphics/Canvas;)V

    .line 48757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 48758
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kr;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kr;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v2, v0

    .line 48759
    .local v0, "textWidth":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kr;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A00:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v4, v1

    .line 48760
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kr;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 48761
    .local v2, "top":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    add-int/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A01:I

    add-int/2addr v0, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48762
    .local v3, "destRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A04:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48763
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48764
    .end local v0    # "textWidth":F
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "destRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 48765
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bb;->onVisibilityChanged(Landroid/view/View;I)V

    .line 48766
    if-eqz p2, :cond_0

    .line 48767
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;->A03()V

    .line 48768
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 48769
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->onWindowFocusChanged(Z)V

    .line 48770
    if-nez p1, :cond_0

    .line 48771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;->A03()V

    .line 48772
    :cond_0
    return-void
.end method

.method public setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 1

    .line 48773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bV;->A09(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 48774
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48775
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 48776
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Xh;",
            "Lcom/facebook/ads/redexgen/X/bU;",
            ")V"
        }
    .end annotation

    .line 48777
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 48778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/bV;->A0A(Lcom/facebook/ads/redexgen/X/Xh;)V

    .line 48779
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/bU;",
            ")V"
        }
    .end annotation

    .line 48780
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kr;->A08:Ljava/lang/String;

    .line 48781
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    .line 48782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0D:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/bV;->A0B(Lcom/facebook/ads/redexgen/X/bU;)V

    .line 48784
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v1

    .line 48785
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48786
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setVisibility(I)V

    .line 48787
    return-void

    .line 48788
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/bb;->setText(Ljava/lang/String;)V

    .line 48789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;->A02()V

    .line 48790
    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .locals 1

    .line 48791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0C:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bV;->A0C(Z)V

    .line 48792
    return-void
.end method

.method public setV2Design(Z)V
    .locals 0

    .line 48793
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kr;->A0B:Z

    .line 48794
    return-void
.end method
