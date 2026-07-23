.class public final Lcom/facebook/ads/redexgen/X/Qu;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XK;->A09(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1603
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s6McyFvuEc1XiqBn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hcEKpUAFoi0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uxw7Yfkl7Y0EbUXumb1zp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2eIZNGpCiZfiyfWjpoEHXYEZ89sKOMjU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P6wJZ5NPzNm0cd9T3B6a4kCxx00um"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "avjdKGQRQHprL3nlmChXTO66aPxw1Ezk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jTYXriUGWk0Q5Onqj2MBy1ZRmPDEVS5l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vP4DO0q8Z4bTalFPzqbCoE7Mp2WJV4fR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qu;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qu;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qu;->A00:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qu;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qu;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qu;->A02:[Ljava/lang/String;

    const-string v1, "yencg2WQyjWgLr4Htapu7BwNwN3x2Tit"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qu;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x7ft
        -0x50t
        -0x50t
        -0x73t
        -0x57t
        -0x52t
        -0x6dt
        -0x5ct
        -0x55t
        -0x6at
        -0x5bt
        -0x4et
        -0x4dt
        -0x57t
        -0x51t
        -0x52t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 60625
    sget-object v1, Lcom/facebook/ads/redexgen/X/XK;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    if-ne v1, v0, :cond_0

    .line 60626
    return-void

    .line 60627
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qu;->A00:Landroid/content/Context;

    .line 60628
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 60629
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qu;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60630
    .local v3, "returnMinSdkVersion":I
    if-eq v0, v1, :cond_2

    .line 60631
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XK;->A00(I)I

    .line 60632
    sget-object v3, Lcom/facebook/ads/redexgen/X/XJ;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qu;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qu;->A02:[Ljava/lang/String;

    const-string v1, "hUCmhtQ8p32Ulvvxz3h93PNa760nZTZ8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/XK;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 60633
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60634
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_3

    .line 60635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qu;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XK;->A04(Landroid/content/Context;)I

    move-result v1

    .line 60636
    .end local v3    # "returnMinSdkVersion":I
    .local v2, "returnMinSdkVersion":I
    .end local v3
    .restart local v2    # "returnMinSdkVersion":I
    :goto_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XK;->A00(I)I

    .line 60637
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60638
    sget-object v0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    sput-object v0, Lcom/facebook/ads/redexgen/X/XK;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 60639
    return-void

    .line 60640
    .end local v2    # "returnMinSdkVersion":I
    .restart local v3    # "returnMinSdkVersion":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qu;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XK;->A02(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method
