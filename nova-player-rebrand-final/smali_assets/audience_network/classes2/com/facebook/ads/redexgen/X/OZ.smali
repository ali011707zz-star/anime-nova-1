.class public final Lcom/facebook/ads/redexgen/X/OZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Ljava/lang/String;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OZ;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OZ;->A01:Ljava/util/List;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OZ;->A00:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OZ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2a

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

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OZ;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x70t
        0x7bt
        0x76t
        0x67t
        0x6ct
        0x65t
        0x61t
        0x70t
        0x71t
        0x4at
        0x76t
        0x65t
        0x78t
        0x39t
        0x3dt
        0x20t
        0x22t
        0x35t
        0x23t
        0x23t
        0x39t
        0x3ft
        0x3et
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v6, p0

    .line 55880
    .local v0, "this":Lcom/facebook/ads/redexgen/X/OZ;
    :try_start_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/OZ;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/AdSDKNotificationListener;

    .line 55881
    .local v2, "l":Lcom/facebook/ads/AdSDKNotificationListener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 55882
    .local v3, "data":Landroid/os/Bundle;
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/OZ;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55883
    const/16 v2, 0xd

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/AdSDKNotificationListener;->onAdEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 55884
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/OZ;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
