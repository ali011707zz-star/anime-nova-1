.class public final Lcom/facebook/ads/redexgen/X/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KZ;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2660
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aUyhDgZzCxx0Fo0aLoCtiuJX5lt1Em7h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IU9gnqoqDa2n7WEe3wiWby57KruBSWfN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "57fa1VpsBY39tHMgQ3Qgx4ZAKOvpZO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "l1cFWBsWpb1xIqaJVfDZzdeVbcwmQJ4W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uLRqkE9KSQI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XsB4rZ8TcHUkKOxnTnbB33RXLsHLV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pJcUqIp9KWRXB2hM3LzKI8otqYa3cTkH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iQ2u1wDEylPYZ9kZrZj99NoP6udHs7RH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c0;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c0;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78642
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c0;->A00:Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c0;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

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
    .locals 4

    const/4 v0, 0x5

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/c0;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/c0;->A02:[Ljava/lang/String;

    const-string v1, "S9ialwmDFK349gex3NgP3vDabM3jB4SC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "CB0B92gOKY82Q5M73UaMoIgaE8byLodA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/c0;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x55t
        -0x51t
        -0x5dt
        -0x57t
        -0x59t
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

    .line 78643
    .local v0, "this":Lcom/facebook/ads/redexgen/X/c0;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/c0;->A00:Lcom/facebook/ads/redexgen/X/KZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 78644
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/c0;
    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
