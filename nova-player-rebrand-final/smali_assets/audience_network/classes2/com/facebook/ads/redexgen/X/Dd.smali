.class public final Lcom/facebook/ads/redexgen/X/Dd;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;

.field public final A03:Lcom/facebook/ads/redexgen/X/VI;

.field public final A04:Lcom/facebook/ads/redexgen/X/Dr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 695
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4xWU9o1Qdv49zg4k19WdZrOQJ68qlBKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QfpLWsUkij8dLfBb7Aagb5qXzjDoxZj6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QolGMRpELvSET2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SiemLW4oVdpf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXL2k0aAaj67psTeNQKHhn5IgBi2NdXT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OArHsnP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A54GrsZIV89x3qzJRphed5abiMfcDTpl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SQmPw6zIXtGY8y4ylHwiNNuEQdMSmlG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dd;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dd;->A06()V

    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Dd;->A08:I

    .line 696
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Dd;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 4

    .line 34058
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34059
    new-instance v0, Lcom/facebook/ads/redexgen/X/3V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3V;-><init>(Lcom/facebook/ads/redexgen/X/Dd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A04:Lcom/facebook/ads/redexgen/X/Dr;

    .line 34060
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dd;->A03:Lcom/facebook/ads/redexgen/X/VI;

    .line 34061
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dd;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 34062
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A01:Landroid/graphics/Paint;

    .line 34063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dd;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34064
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setColorFilter(I)V

    .line 34065
    sget v3, Lcom/facebook/ads/redexgen/X/Dd;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/Dd;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Dd;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Dd;->A07:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setPadding(IIII)V

    .line 34066
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34067
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dd;->A05()V

    .line 34068
    new-instance v0, Lcom/facebook/ads/redexgen/X/fC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fC;-><init>(Lcom/facebook/ads/redexgen/X/Dd;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34069
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 34070
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A02:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 34071
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A03:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Dd;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 34072
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dd;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 34073
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0m:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34074
    return-void
.end method

.method private A05()V
    .locals 1

    .line 34075
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0o:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34076
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dd;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x64t
        -0x3ct
        -0x3dt
        -0x4ct
        0x6ft
        -0x70t
        -0x4dt
    .end array-data
.end method

.method private A07()Z
    .locals 2

    .line 34077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Dd;)Z
    .locals 0

    .line 34078
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dd;->A07()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A09()V
    .locals 4

    .line 34079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-nez v0, :cond_0

    .line 34080
    return-void

    .line 34081
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dd;->A07()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dd;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dd;->A06:[Ljava/lang/String;

    const-string v1, "aX931uSfPaE8IiOHtPCxhipRkXbTn1t9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ET7wr0zhj8rUQx1GjBOUHwAZuNFVr5BQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 34082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dd;->A04()V

    .line 34083
    :goto_0
    return-void

    .line 34084
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dd;->A05()V

    goto :goto_0
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 2

    .line 34085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A04:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A05(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 34088
    :cond_0
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 5

    .line 34089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dd;->A04:Lcom/facebook/ads/redexgen/X/Dr;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dd;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dd;->A06:[Ljava/lang/String;

    const-string v1, "f5V50lgekxKfxPRjN4EQZ5T7YD8zyqkA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "6bYokHrcutoPgrqwaKTDD5vNcVht1LGT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/UM;->A06(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 34091
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34092
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 34093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dd;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 34094
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dd;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 34095
    .local v1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 34096
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34097
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 34098
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 34099
    sget v1, Lcom/facebook/ads/redexgen/X/Dd;->A08:I

    .line 34100
    .local v0, "width":I
    sget v0, Lcom/facebook/ads/redexgen/X/Dd;->A08:I

    .line 34101
    .local v1, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->setMeasuredDimension(II)V

    .line 34102
    return-void
.end method
