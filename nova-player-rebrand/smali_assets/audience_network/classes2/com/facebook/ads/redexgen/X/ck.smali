.class public final Lcom/facebook/ads/redexgen/X/ck;
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
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2678
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UbVTWMkCbiTkCH46K3jgevn4ZrjXJwTz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QhkEmn79eJKUC441fbjRvFrP8rMFuK10"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M1y17FrLcKCq9CffRIAOFt9KL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7BuiCs8qfizRNQQacuqpq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NMEBAQB23JfGHe29j4ICw6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "w4e9O4TDm2cMnnpInxw7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "enarAElxAt9QJNN7p9xKH4Zm0Hlbhkd5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ck;->A01:[Ljava/lang/String;

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

    .line 79363
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 79364
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ck;
    .local p2, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A09(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79365
    return-void

    .line 79366
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A09(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v2

    .line 79367
    .local v1, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 79368
    return-void

    .line 79369
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0z(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 79370
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A1A(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 79371
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0j(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    .line 79372
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79373
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ACQ()V

    .line 79374
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ck;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0A(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-ltz v0, :cond_4

    .line 79375
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A05(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/os/Handler;

    move-result-object v5

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    .line 79376
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0K(Lcom/facebook/ads/redexgen/X/Ji;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0A(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0q()J

    move-result-wide v0

    .line 79377
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79378
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0G(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79379
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0G(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/bT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bT;->A0B()V

    .line 79380
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0H(Lcom/facebook/ads/redexgen/X/Ji;Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/bT;

    .line 79381
    :cond_5
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ck;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0z(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    invoke-static {v1, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A0k(Lcom/facebook/ads/redexgen/X/Ji;Z)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 79382
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local p2
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ck;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/ck;->A01:[Ljava/lang/String;

    const-string v1, "NGdQEP5eIhe6T0Nr5s0Gdk"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "GP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
