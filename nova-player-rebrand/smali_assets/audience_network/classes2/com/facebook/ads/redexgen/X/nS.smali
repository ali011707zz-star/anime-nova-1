.class public final Lcom/facebook/ads/redexgen/X/nS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/EP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3298
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RZM4uVKUom5lpktBJEyc25x7FZDN3vpb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gyiT966obFesLv2pc6lrzZfv63yxEjKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VIDunhCfmmrKAvVQDuOofVowNsnrOYKS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mSpbf5NAYyyPHT1f9KFsrup9mcKoYOHE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zbmZ0JzF4Zq1L7424UboTB7UCymQSbun"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dFdj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MzILoqUyJ5XWrj98JXnqdIxQxE4zJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8Kz26tJHiwFUzLhIg6rooXB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nS;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nS;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x118

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nS;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x22t
        0x11t
        0x11t
        0x2t
        0xat
        0xdt
        0x11t
        0x2t
        0x1t
        -0x43t
        0x11t
        0xct
        -0x43t
        0x0t
        0xft
        0x2t
        -0x2t
        0x11t
        0x2t
        -0x43t
        0x1t
        0x2t
        0x0t
        0xct
        0x1t
        0x2t
        0xft
        -0x43t
        0x3t
        0xct
        0xft
        -0x43t
        0x12t
        0xbt
        0x10t
        0x12t
        0xdt
        0xdt
        0xct
        0xft
        0x11t
        0x2t
        0x1t
        -0x43t
        -0x16t
        -0x1at
        -0x16t
        -0x1et
        -0x43t
        0x11t
        0x16t
        0xdt
        0x2t
        -0x29t
        -0x43t
        0x13t
        0x22t
        0x22t
        0x1et
        0x1bt
        0x15t
        0x13t
        0x26t
        0x1bt
        0x21t
        0x20t
        -0x1ft
        0x15t
        0x17t
        0x13t
        -0x21t
        -0x18t
        -0x1et
        -0x16t
        0x1dt
        0x2ct
        0x2ct
        0x28t
        0x25t
        0x1ft
        0x1dt
        0x30t
        0x25t
        0x2bt
        0x2at
        -0x15t
        0x1ft
        0x21t
        0x1dt
        -0x17t
        -0xdt
        -0x14t
        -0xct
        -0x38t
        -0x29t
        -0x29t
        -0x2dt
        -0x30t
        -0x36t
        -0x38t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
        -0x6at
        -0x35t
        -0x23t
        -0x37t
        -0x26t
        -0x24t
        -0x37t
        -0x26t
        -0x3t
        0xct
        0xct
        0x8t
        0x5t
        -0x1t
        -0x3t
        0x10t
        0x5t
        0xbt
        0xat
        -0x35t
        0xct
        0x3t
        0xft
        0x3bt
        0x4at
        0x4at
        0x46t
        0x43t
        0x3dt
        0x3bt
        0x4et
        0x43t
        0x49t
        0x48t
        0x9t
        0x4et
        0x4et
        0x47t
        0x46t
        0x5t
        0x52t
        0x47t
        0x46t
        -0x23t
        -0x14t
        -0x14t
        -0x18t
        -0x1bt
        -0x21t
        -0x23t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x55t
        -0xct
        -0x57t
        -0x17t
        -0x14t
        -0x50t
        -0x57t
        -0x21t
        -0x1ft
        -0x23t
        -0x57t
        -0x4et
        -0x54t
        -0x4ct
        0xft
        0x1et
        0x1et
        0x1at
        0x17t
        0x11t
        0xft
        0x22t
        0x17t
        0x1dt
        0x1ct
        -0x23t
        0x26t
        -0x25t
        0x1bt
        0x1et
        -0x1et
        -0x25t
        0x24t
        0x22t
        0x22t
        -0x20t
        -0x11t
        -0x11t
        -0x15t
        -0x18t
        -0x1et
        -0x20t
        -0xdt
        -0x18t
        -0x12t
        -0x13t
        -0x52t
        -0x9t
        -0x54t
        -0x10t
        -0xct
        -0x18t
        -0x1et
        -0x16t
        -0xdt
        -0x18t
        -0x14t
        -0x1ct
        -0x54t
        -0xdt
        -0x9t
        -0x4et
        -0x1at
        -0x37t
        -0x28t
        -0x28t
        -0x2ct
        -0x2ft
        -0x35t
        -0x37t
        -0x24t
        -0x2ft
        -0x29t
        -0x2at
        -0x69t
        -0x20t
        -0x6bt
        -0x25t
        -0x23t
        -0x36t
        -0x26t
        -0x2ft
        -0x28t
        -0x10t
        -0x1ft
        -0xct
        -0x10t
        -0x55t
        -0xet
        -0x10t
        -0x10t
        0x3dt
        0x2et
        0x41t
        0x3dt
        -0x8t
        0x41t
        -0xat
        0x2et
        0x41t
        0x38t
        0x39t
        0x35t
        0x2at
        0x42t
        0x2et
        0x3bt
        -0xat
        0x2ct
        0x3et
        0x2et
        0x3ct
        -0x2dt
        -0x3ct
        -0x29t
        -0x2dt
        -0x72t
        -0x29t
        -0x74t
        -0x2et
        -0x2et
        -0x40t
    .end array-data
.end method


# virtual methods
.method public final A5K(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/lq;
    .locals 5

    .line 100672
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 100673
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 100674
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 100675
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x37

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100676
    :pswitch_0
    const/16 v2, 0xf9

    const/16 v1, 0x15

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 100677
    :pswitch_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/9k;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9k;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x47a1c707
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final AKN(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 7

    .line 100678
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 100679
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0xf1

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100680
    const/16 v2, 0x10e

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100681
    const/16 v2, 0x7f

    const/16 v1, 0x14

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100682
    const/16 v2, 0xac

    const/16 v1, 0x15

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100683
    const/16 v6, 0xdd

    const/16 v5, 0x14

    const/16 v4, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/nS;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nS;->A01:[Ljava/lang/String;

    const-string v1, "ilKJ2fcQQU31mDfBW0rq4wTAOnRwqntF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100684
    const/16 v2, 0xc1

    const/16 v1, 0x1c

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100685
    const/16 v2, 0x37

    const/16 v1, 0x13

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/nS;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nS;->A01:[Ljava/lang/String;

    const-string v1, "zagSEBYMwAryKt6uIWB8fghbt3YyxLCs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "njnOkrTqvKyYsDLdiJrWbCfOV0ebYkea"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    .line 100686
    const/16 v2, 0x93

    const/16 v1, 0x19

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100687
    const/16 v2, 0x4a

    const/16 v1, 0x13

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100688
    const/16 v2, 0x5d

    const/16 v1, 0x13

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100689
    const/16 v2, 0x70

    const/16 v1, 0xf

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100690
    const/16 v2, 0xf9

    const/16 v1, 0x15

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 100691
    :goto_0
    return v0

    .line 100692
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
