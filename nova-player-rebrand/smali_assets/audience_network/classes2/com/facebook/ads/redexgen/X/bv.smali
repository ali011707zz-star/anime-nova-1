.class public final Lcom/facebook/ads/redexgen/X/bv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Kc;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Kc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2659
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OcC8Yw10ta4EzUHryW8qF9f8Kw9JuvuB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8f8LYzxOMmLQdsAhKRfNVONBERHkcGt2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CzyGp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2PtxVvqYppmcLS4cwbsjetyeZ5i3nCKD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x35AdtEajADMGuwsONv03k5bW5eRm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TNmYMyEiRrCRNh2BAihsQXhXdDRTY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KzXNDxf0CUBsvqnb9B4FND8KZCDQkeqp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bZ2905qMAeosph8FN3SjH9j5ipegj0aG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bv;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kc;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bv;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

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

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bv;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3et
        0x3at
        0x36t
        0x30t
        0x32t
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 78624
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bv;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 78625
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78626
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bv;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 78627
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bv;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bv;->A02:[Ljava/lang/String;

    const-string v1, "i9GBCPULPHC1kq3f4RL3YMSEVPUJV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
