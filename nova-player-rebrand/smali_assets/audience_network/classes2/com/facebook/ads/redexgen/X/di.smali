.class public final Lcom/facebook/ads/redexgen/X/di;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A0T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2720
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oF0UQSO2UkB0Fs6pC959r9dzDMlb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cSj6PPi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9MOBOvfZoPMufYmvf8w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3DUooxDMnkOJWQGgSnbPARGlSWVzZXnv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xtRq8IID5uSiAOfe9JKkWOxw4I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dgOA0KJAxphsFM42TDGlvfhDF1ut8VW0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Hk9WFArlgjOkwb9sMy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/di;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80277
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

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
    move-object v3, p0

    .line 80278
    .local v0, "this":Lcom/facebook/ads/redexgen/X/di;
    .local p0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A06(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/85;

    if-eqz v0, :cond_4

    .line 80279
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0y(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 80280
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0G(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 80281
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/55;->A12(Lcom/facebook/ads/redexgen/X/55;Z)Z

    .line 80282
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A06(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0j(Lcom/facebook/ads/redexgen/X/55;Ljava/lang/String;)V

    .line 80283
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v5, v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/di;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/di;->A01:[Ljava/lang/String;

    const-string v1, "6Dfgyk2EWniD4mtjwsck8hBHMm74mFyH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "XIgrh0tmG1tVXTW5TWFgdcEwNBgdKHOC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ltz v5, :cond_2

    .line 80284
    :try_start_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A04(Lcom/facebook/ads/redexgen/X/55;)Landroid/os/Handler;

    move-result-object v5

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    .line 80285
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0I(Lcom/facebook/ads/redexgen/X/55;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v0

    .line 80286
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80287
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/di;
    :cond_2
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/di;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0y(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/55;->A0m(Lcom/facebook/ads/redexgen/X/55;Z)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 80288
    :cond_4
    :goto_1
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
