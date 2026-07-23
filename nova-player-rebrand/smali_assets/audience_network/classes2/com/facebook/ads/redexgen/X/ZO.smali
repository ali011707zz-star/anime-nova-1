.class public final Lcom/facebook/ads/redexgen/X/ZO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MI;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2564
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Rngvbb3vMR3b56rBexb50Rjom5JamLMR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BOyMrOLOVyOlAA7tdLfD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PSvH7Ca0GqwbJXrw1OxZU20X4aHcam0S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dzm7VVMnrqblx5opBv2tkfICkL24O513"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rKXY71"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "THxRt8Yss0BlXBXFFRIVlNUaizFLAmop"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EnNQl89tpWVbcex4LtQ2YfadlOVOSM9k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1aWdi1c8aZwiTk2zvtk8Xc2vTbtrER0G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZO;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75460
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZO;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x26

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x15t
        0x2t
        0x16t
        0x1ft
        0x2t
        0x1dt
        0x33t
        0x4t
        0x11t
        0x33t
        0x1ct
        0x19t
        0x13t
        0x1bt
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

    .line 75461
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ZO;
    .local v4, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 75462
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ZO;
    .end local v4    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A02:[Ljava/lang/String;

    const-string v1, "qnEa0qqxoU4sFli1HS9Y3SbmuU3eBkbM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NnijgEsxsjK8xKe1vFUOE7dsdCVZHTLh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
