.class public final Lcom/facebook/ads/redexgen/X/dZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A0T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2717
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iIV4C6PCamFbOwLs9osqMP65CW35qHVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vu8ePLRZods6FhLp1sOjcscbCnKQtV0u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aj5bYqq1P6NsPozz4AKHPhJxq4tExiSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sREORf6VoPUSDy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tYmkAFK6aojaVt6XrGIUitMYwL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t5b15Ic4Fw72vyTqFljisKwND31PO9vi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "k2wG1EEpilyBuA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DdpD6jZ5PRtvRqlim5b1myDycB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dZ;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80226
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 80227
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dZ;
    .local p0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0A(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/85;

    if-eqz v0, :cond_4

    .line 80228
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0n(Lcom/facebook/ads/redexgen/X/5F;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v5, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/dZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    .line 80229
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 80230
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/dZ;->A01:[Ljava/lang/String;

    const-string v1, "JfKhMnDlcffILoVNGoui3HCKoOWuag6G"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 80231
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/5F;->A0y(Lcom/facebook/ads/redexgen/X/5F;Z)Z

    .line 80232
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 80233
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0A(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0c(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;)V

    .line 80234
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_2

    .line 80235
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A08(Lcom/facebook/ads/redexgen/X/5F;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    .line 80236
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5F;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v0

    .line 80237
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80238
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dZ;
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dZ;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0n(Lcom/facebook/ads/redexgen/X/5F;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/5F;->A0e(Lcom/facebook/ads/redexgen/X/5F;Z)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 80239
    :cond_4
    :goto_1
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
