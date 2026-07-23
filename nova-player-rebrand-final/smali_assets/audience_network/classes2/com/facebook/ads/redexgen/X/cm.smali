.class public final Lcom/facebook/ads/redexgen/X/cm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cm;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cm;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

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

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cm;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3et
        0x25t
        0x25t
        0x26t
        0x28t
        0x2bt
        0x38t
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

    .line 79389
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cm;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0h(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    .line 79390
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79391
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 79392
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cm;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
