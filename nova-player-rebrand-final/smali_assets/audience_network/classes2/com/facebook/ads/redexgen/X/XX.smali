.class public abstract Lcom/facebook/ads/redexgen/X/XX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:F

.field public static final A03:F

.field public static final A04:Landroid/util/DisplayMetrics;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2374
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oiur5Gbx9Vkb8pNp9gZzU2heRSdk76uI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KcefTCcuaU05Z9sCY8CUGAfDHno7A6Wv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bJXbqvk5sb1jFzs2YeQkTjOgq4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MXk0dIH8gF0Kt4EkqgzdHodGFIc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5Jwp5xVo7ldrls8e1BLn8Q9HzbIas5MN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BGKorZg39BSfa4B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tbwfvdKmgBKRGshTqqnFkMc0Pskkyh5R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DBfe4K11V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XX;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XX;->A02()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    .line 2375
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 2376
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const v0, 0x3fa66666    # 1.3f

    div-float/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/XX;->A03:F

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 3

    .line 72696
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 72697
    .local v0, "windowManager":Landroid/view/WindowManager;
    const/16 v1, 0xd

    if-nez v0, :cond_0

    .line 72698
    return v1

    .line 72699
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 72700
    .local v2, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 72701
    return v1

    .line 72702
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 72703
    :pswitch_1
    const/16 p0, 0x9

    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/XX;->A01:[Ljava/lang/String;

    const-string v1, "CVXSSTaTyGD8rGam3jI5MG2HGxoF6OEi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 72704
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 72705
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x65

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XX;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        0x20t
        0x25t
        0x1bt
        0x26t
        0x2et
    .end array-data
.end method
