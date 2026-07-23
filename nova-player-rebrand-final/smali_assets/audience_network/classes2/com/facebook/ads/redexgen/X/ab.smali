.class public final Lcom/facebook/ads/redexgen/X/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/M8;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/M8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2610
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sP3gpwd6Zoi5atkrMGPTc5EXN8BQ3Rhb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CuI3HGsHCqf5OUDiTkLeplOhcTm9T7NI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qUh1oDSzqsBPPR1tLa2Ioa4F3OHVyWz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9USBf0H8rgb5C7JYpIITcKF8xtKeHlI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rVv7rCrqZ3PnTP4EIzYeJpV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KXSca88saLVPZ5uec2yV3IdyBKC0ygXP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JOf8s03jk9aSXntkdxYTuuj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1B5kCc4TTNYrg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ab;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ab;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const-string v1, "NOG9o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

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

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ab;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x43t
        -0x36t
        -0x30t
        -0x31t
        -0x6bt
        -0x43t
        -0x39t
        -0x44t
        -0x37t
        -0x3at
        -0x6at
        -0x5dt
        -0x6ct
        -0x6at
        -0x68t
        -0x57t
        -0x62t
        -0x55t
        -0x62t
        -0x57t
        -0x52t
        0x14t
        0x21t
        0x17t
        0x25t
        0x22t
        0x1ct
        0x17t
        -0x1ft
        0x1ct
        0x21t
        0x27t
        0x18t
        0x21t
        0x27t
        -0x1ft
        0x14t
        0x16t
        0x27t
        0x1ct
        0x22t
        0x21t
        -0x1ft
        0x9t
        -0x4t
        -0x8t
        0xat
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 76620
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ab;
    .local p3, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A07(Lcom/facebook/ads/redexgen/X/M8;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M8;->A07(Lcom/facebook/ads/redexgen/X/M8;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 76621
    :cond_1
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    .line 76622
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M8;->A07(Lcom/facebook/ads/redexgen/X/M8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76623
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76624
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A04(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A9y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76625
    :try_start_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A04(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->A0D(Lcom/facebook/ads/redexgen/X/gi;Landroid/content/Intent;)Z

    .line 76626
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A05(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/au;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76627
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A05(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->AF0()V

    goto :goto_0
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/Ws; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76628
    :catch_0
    move-exception v4

    .line 76629
    .local v2, "e":Lcom/facebook/ads/redexgen/X/Ws;
    :try_start_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ws;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 76630
    .local v3, "exceptionToLog":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A04(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 76631
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;->A00(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A00:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 76632
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 76633
    .end local v2    # "e":Lcom/facebook/ads/redexgen/X/Ws;
    .end local v3    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void

    .line 76634
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76635
    .end local p3
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
